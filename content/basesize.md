+++
date = "2019-06-13T23:20:47-04:00"
title = "Low Base Size Warning Release"
description = "When analysing samples below 100, variables / data-bars will now appear grey rather than the usual blue data-bars and black text. Z-score will remain in color."
weight = 20
tags = []
categories = ["feature"]
images = ["https://crunch.io/img/logo-1200x630.png"]
draft = false
+++

From today, analysis using derived values (%, Index) in Profiles will appear grey instead of black if the sample falls below 100. Data-bars are included too, they will appear grey instead of the usual light blue when the sample falls below 100. 

The Z-score column will remain in color showing any statistically significant differences.

The color change is to ensure you are aware of any low base sizes which could impact any insights taken from the data.

## Profiles View
{{< figure src="images/SW1.jpg" class="img-fluid">}}
<figcaption>

1.    The target group bars in the example now appear in grey because the base size is only N = 44
2.    The comparison group bars continue to appear in blue because they have N > 100
3.    Z-scores >2 and <2 continue to appear in color as these represent statistically significant differences
4.    Diff and Index columns are in grey due to the target group base being < 100

</figcaption>

## Browse View
{{< figure src="images/SW2.jpg" class="img-fluid">}}


The Low Base Size Warning, where derived values (%, Index) appear in grey when the sample falls below 100, also now extends into exports but only from the Analyze and Multi-tables views (the Profiles view is not included).   

Below is a partial screenshot illustrating what you will see when you are working in an Excel export.

{{< figure src="images/SW3.png" class="img-fluid">}}


If you have any questions please consult your client services representative.
 
