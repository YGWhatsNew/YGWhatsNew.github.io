#!/bin/bash
set -ev

publish ()
{
    if ! grep -q -e "^publishdate =" $1; then
        NOW=$(date +%Y-%m-%dT%H:%M:%OS%z)
        echo "Adding publish date for $1"
        # This adds publishdate from NOW
        perl -pe 's/(^date = ".*")/\1\npublishdate = "'"${NOW}"'"/' -i $1
        # This is how to backfill old posts by setting publishdate == date
        #perl -pe 's/(^date = ".*")/\1\npublish\1/' -i $1
    fi
}
export -f publish

install_hugo () {
    git clone --branch v2 https://github.com/go-yaml/yaml $GOPATH/src/gopkg.in/yaml.v2
    mkdir ${TRAVIS_HOME}/src
    cd ${TRAVIS_HOME}/src
    git clone https://github.com/gohugoio/hugo.git
    cd hugo
    go install

    cd ${GOPATH}/src/github.com/YGWhatsNew/YGWhatsNew.github.io
}

build_site () {
    npm install
    npm run build:scss
    hugo
}

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
    git config --global user.email "jehan.shams@yougov.com"
    git config --global user.name "Jehan"

    if [ "${TRAVIS_BRANCH}" = "src" ]; then
        # Production

        # Add publishdate
        find ./content -name "*.md" | xargs -n 1 -I{} bash -c "publish {}"
        git add .
        if git commit -m "Setting publication date: ${NOW}"; then
            # If there are new posts, commit and push them, then exit
            # (let the Travis build for that push be the one to deploy the site)
            #
            # To do this, we need to do a fresh clone with our token so that
            # we're authorized to push, and redo the find/replace there. Lame
            # but that's cheap enough
            git clone -b src https://${GH_TOKEN}@github.com/$TRAVIS_REPO_SLUG.git PUBLISHDATE
            cd PUBLISHDATE
            find ./content -name "*.md" | xargs -n 1 -I{} bash -c "publish {}"
            git add .
            git commit -m "Setting publication date: ${NOW}"
            git push
        else
            # Build and publish the site
            install_hugo
            build_site

            git clone -b master https://${GH_TOKEN}@github.com/$TRAVIS_REPO_SLUG.git OUTPUT
            cd OUTPUT
            git rm -rf .
            cp -r ../public/. .
            git add .
            git commit -m "Updating built site (build ${TRAVIS_BUILD_NUMBER})" || true
            git push origin master || true
        fi
    fi
fi
