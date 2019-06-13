# Profiles Documentation and Announcement Site

Our new website is a static site rendered by [Hugo](https://gohugo.io/).

## Local installation

If you don't have Hugo, [install it](https://gohugo.io/getting-started/quick-start/). Likewise with [yarn](https://yarnpkg.com/en/docs/install). Then,

* `yarn install` (first time only, hopefully)
* `npm run build:scss` to render the CSS
    * Alternatively, `yarn run build:scss-dev` will set up a watcher, though you'll then need a second window to...
* `hugo serve`
* Browse

## Building, deploying, and git flow

The `master` branch of this repository is where the current site lives. The `src` branch is our "production" source code branch. Any changes pushed here will be built on Travis-CI and automatically published to https://ygwhatsnew.github.io/, also known as profiles-help.yougov.com.

To make changes or add new content, make a branch off of the `src` branch.

## Adding content to the current site

Posts are .md files inside the `/content` directory. There are templates and other bits that render them. See the [Hugo documentation](https://gohugo.io/documentation/) for how all that works. Generally, if you're adding a new blog post, just follow the examples of the .md files that already exist and you should be fine.

## Release announcements

The Crunch web app uses the [RSS feed](https://profiles-help.yougov.com/index.xml) of the this site to populate the “What's new” notification panel. First, items are fetched from a configured url (ideally the index.xml on this built site) and intermixed by date with those in the Crunch feed. Second, the channel link in the index.xml here is used to override the “see more” link at the bottom of the list of new features in the app. If you configure such an override link, it is recommended to include a link to the Crunch feature blog on your own “see more” landing page.

Feed items are populated using the front matter following these conventions:

* Title: default is to use the same `title` as for the blog post. You may define an alternate `news_title` for use in the in-app notification, in case you want a shorter or otherwise different headline appropriate for the context of the web application.
* Description: likewise, it uses `description` unless you provide an alternative `news_description`. For blog posts, `description` is often a summary sentence or two, while for in-app announcements, you may want a "click here for more" type of call to action. `description` should be plain text only. `news_description` supports html tags.
* Date: the feed will prefer a `publishdate` and fall back to `date`. If the date listed for the item in the RSS feed is newer than the web app user's date of last reading of the notification feed, the user will be alerted that there is a new item. Date fields are a little tricky in Hugo, so the convention we follow is _fill in `date` as the time you start writing the post and do not specify `publishdate`_. When the blog is built and deployed to production, Travis will fill in the `publishdate` as the current time for any new posts--that way, `publishdate` accurately reflects when the post was deployed.

Note that emoji using the `:notation:` are valid in the title and description (but not in `date` ;).

If there is a feature announcement blog post you want to exclude from in-app announcements, include `show_news = false` in the front matter.

### Targeting audiences

We want to show different announcement feeds to different users. To do this, we define audience scope limiters as boolean front matter variables. The default for all is `false`, meaning do not restrict showing the post. Currently used variables are:

* `labs_only`: if `true`, only show to labs users
* `pinned`: if `true`, all pinned items are sorted by date ahead of all configured feeds. If too many pinned items appear, timely (non-pinned) notifications may not be shown to users. **It is advised not to pin more than one item at a time.**

Note that this will not affect what is shown on the feature blog: all posts will appear there. The blog website does not know who is logged into the web app or what role they may have there. These flags only govern who is shown what announcements in the app.

### Example

Given this front matter:

```toml
+++
title = "PowerPoint Deck Exports"
description = "Download your Crunch deck as a PowerPoint presentation complete with embedded graphs"
date = "2018-09-25T10:20:47-04:00"
pinned = true
+++
```

All of the RSS feed, blog post, and blog index here will show the same title and subtitle (description) and a date of September 25, 2018.

If I want different messaging in the news feed, I can add additional fields that will override the title and description in the RSS:

```toml
+++
title = "PowerPoint Deck Exports"
news_title = "New early access feature: PowerPoint export"
description = "Download your Crunch deck as a PowerPoint presentation complete with embedded graphs"
news_description = "Decks can now be downloaded directly to PowerPoint. Click here to learn more."
date = "2018-09-25T10:20:47-04:00"
pinned = true
+++
```

To test locally, use `hugo serve --buildDrafts` to preview locally before pushing to the `src` branch. Travis will do the rest. A `dev` travis flow and output target is not configured for this site.

You may revise `date` to be more contemporary if you update a post, but it isn't strictly necessary; just delete the publishdate on `src` and Travis will update it with the new publishdate. 