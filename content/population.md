+++ date = "2019-09-18" publishdate = "2019-09-18T16:58:25+0000" title = "Population Estimate Calculation Update" description = "Population estimate calculations now use the complete cases base size for all Filters." weight = 20 tags = [] categories = ["feature"] images = ["https://crunch.io/img/logo-1200x630.png"] draft = true +++

Due to the size of the YouGov Database, and the collection methods YouGov uses to assemble the Profiles Data, there can be varying levels of overlap between different audiences. Recently we released a ‘complete cases’ default setting that ensures your audiences are based on respondents who have had the opportunity to answer each component of your definition. We have now updated the population estimates calculation to always be based on the complete cases audiences, regardless of your audience settings. 

{{< figure src="images/Population.png" class="img-fluid">}}

This ensures that your calculation for population estimates is consistent and always based on the respondents we know meet all aspects of your definition. And we have aimed to simplify the approach and have the tool perform the right calculation for your population estimates. 

Please note, that as illustrated in the images above, the complete cases system will often reduce the effective N. If you have deactivated the complete cases setting and would like to know the effective N for your population estimates, you can reference the count for your audience when complete cases was still selected.  

If you have any questions please consult your client services representative.
