+++
date = "2019-12-13"
publishdate = "2019-12-13T00:51:49+0000"
title = "Building custom variables with the interactions of two existing variables"
description = "Cross one variable by another with the new Interaction variable builder. Click here to learn more"
weight = 20
tags = []
categories = ["feature"]
images = ["https://crunch.io/img/logo-1200x630.png"]
+++

In the YouGov Profiles tool there are now 3 ways you can construct a new variable using our variable builder located at the bottom of the variable list. 
{{< figure src="images/Interaction1.png" class="img-fluid">}}

>>1.	In the “Combine Categories” section, you can recode a variable by collapsing options together. For example, if you wanted to create a custom variable of respondents who owned “dogs or cats” you could combine these two “pet ownership” response options into a single response option.
>>2.	In the “Categorical Variable” section you can create a new categorical variable for you to analyze by combining multiple variables using logical conditions. This section would be ideal if you wanted to create a custom segmentation with multiple custom-defined categories.

Categorical variables are defined as variables in which categories are *mutually exclusive* and *exhaustive* — they sum to 100% and every respondent is allocated to one and only one category. 

>>3.	Now we have introduced a new way to build a variable in YouGov Profiles. To look in detail at your data, you sometimes need to create a variable that is the *interaction* of two categorical variables. You want to know not just how results differ between age groups or gender, but by age × gender. The Profiles tool lets you do this in just a few clicks by selecting the variables to interact — give the result a name (or accept the default of ‘x by y’) and you are set.

{{< figure src="images/Interaction2.png" class="img-fluid">}}

To get started, click + then New Variable at the bottom of the variable list, and select “Interaction.”

{{< figure src="images/Interaction3.png" class="img-fluid">}}

{{< figure src="images/Interaction4.png" class="img-fluid">}}

Then select two input variables from the variable list and give it a name. Click save and then you are done. The new interaction should appear in your “My Variables” list.

{{< figure src="images/Interaction5.png" class="img-fluid">}}

Interactions can only be made with categorical variables. In an upcoming release you will be able to combine categories within the Interaction builder but that feature is not currently supported. 

If you have any questions please consult your client services representative.

