+++
date = "2020-10-20"
publishdate = "2020-10-21T00:00:00+0000"
title = "Creating multitables using filters"
description = " Users can now use filters and variables to define columns in their multitables "
weight = 20
tags = []
categories = ["feature"]
images = ["https://crunch.io/img/logo-1200x630.png"]
+++


There is a new way to create multitables. Users can now use combinations of variables and filters to define columns in their multitables. 


**How does it work?** 

To add a filter column to a multitable, use the “Select a filter” option to select the filter group that you want (screenshot below) and then that filter will become a column in your multitable. 

{{< figure src="images/Multitables1.png" class="img-fluid">}}

**Why are we doing this?**

Previously users were not able to use filters as columns in multitables. If there was a filter you wanted to include as a multitable column, you could go through the process of finding the filter, saving it as a variable and then adding it to your multitable as a variable. This new feature consolidates those steps providing a more seamless experience in the creation of multitables in the YouGov Profiles tool.

**When should you use the variable option vs filter option?**

 There are some methodological differences between the two options that you should keep in mind when creating your multitables. 

A filter is a single univariate summary without any built-in comparison defined. As a result when you create a filter based multitable column, you won’t be able to see values for “z-score” or “index”. These are comparative measures and by definition invalid when viewing a multitable column based on a filter. 

However, a multitable column based on a variable will enable you to use our comparative measures like “z-score” and “index”. 

If you have any queries relating to these changes, please do not hesitate to contact your YouGov Client Service Representative.


