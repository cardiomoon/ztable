---
title: "ztable Update"
author: "Keon-Woong Moon"
date: "2018-05-14"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{ztable_update}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---


## Installation

You can install R package "ztable" from CRAN. Current version is 0.1.8.


```r
install.packages("ztable")
```

You can install the developmental version of ztable from github. Current github version is 0.1.9.

```r
if(!require(devtools)) install.packages("devtools")
devtools::install_github("cardiomoon/ztable")
```


## Make table from a data.frame

Package "ztable" make everything possible about table. Basically, An object of "ztable" made from a data.frame. The default output format of ztable is RStudio::viewer or web-browser format(type="viewer"). So if you want to use ztable in a "html" format, you should change the parameter ztable.type to "html". If you want to use ztable in latex format, you should change the parameter ztable.type to "latex". 


```r
library(ztable)
library(magrittr)
options(ztable.type="html")
z=ztable(head(iris),caption="Table 1. Basic Table")
z
```

<table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Basic Table</caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;">3.50</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">2</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">3</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.20</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.30</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">4</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.60</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.10</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.50</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">5</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">5.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.60</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">6</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">5.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>


You can see the full vignette here: 

1. ztable vignette: https://cran.r-project.org/web/packages/ztable/vignettes/ztable.html

2. ztable update: http://rpubs.com/cardiomoon/388645
