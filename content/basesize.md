+++
date = "2019-04-02T23:20:47-04:00"
publishdate = "2019-05-13T17:36:33+0000"
title = "Low Base Size Warning Release"
description = When analysing samples below 100, variables / data-bars will now appear grey rather than the usual blue data-bars and black text. Z-score will remain in color"
weight = 20
tags = []
categories = ["feature"]
images = ["https://crunch.io/img/logo-1200x630.png"]
pinned = true
draft = true
+++

From today, analysis using derived values (%, Index) in Profiles will appear gray instead of black if the sample falls below 100. Data-bars are included too, they will appear gray instead of the usual light blue when the sample falls below 100. 

The Z-score column will remain in color showing any statistically significant differences 

The color change is to ensure you are aware of any low base sizes which could impact any insights taken from the data.

*Profiles View*
{{< figure src="src/Sw1.jpg" class="img-fluid" width="300px">}}

*Browse View*
{{< figure src="src/Sw2.jpg" class="img-fluid" width="300px">}}
