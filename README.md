---
title: "ztable Update"
author: "Keon-Woong Moon"
date: "2018-05-13"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{ztable_update}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---



# Introduction

If you are unfamiliar to ztable, please read the ztable vignette: https://cran.r-project.org/web/packages/ztable/vignettes/ztable.html

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

Attaching package: 'magrittr'
The following object is masked from 'package:purrr':

    set_names
The following object is masked from 'package:tidyr':

    extract
options(ztable.type="html")
z=ztable(head(iris),caption="Table 1. Basic Table")
z
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Basic Table</caption><tr>
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

## Use background and font color

You can change background color and font color with bg and color arguments in addRowColor(), addColColor() and addCellColor() functions.


```r
ztable(head(iris),caption="Table 2. Table with desired background and font colors") %>%
    addRowColor(rows=1,bg="#C90000",color="white") %>%
    addCellColor(rows=3,cols=c(4,6), bg="cyan",color="red") 
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 2. Table with desired background and font colors</caption><tr>
<th style="border-left: 0px solid black;background-color: #C90000;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Petal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Species</th>
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
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #00FFFF;color: #FF0000;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #00FFFF;color: #FF0000;">setosa</td>
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

## Conditional Formatting

You can select rows with logical expression. You can select cols with column name.


```r
ztable(head(iris),caption="Table 3. Conditinoal Formatting: Sepal.Width >= 3.5") %>%
    addRowColor(rows=1,bg="#C90000",color="white") %>%
    addCellColor(condition=Sepal.Width>=3.5,cols=Sepal.Width,color="red") 
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 3. Conditinoal Formatting: Sepal.Width >= 3.5</caption><tr>
<th style="border-left: 0px solid black;background-color: #C90000;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Petal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #C90000;color: #FFFFFF;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;color: #FF0000;">3.50</td>
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
<td align="right" style="border-left: 0px solid black;border-top: hidden;color: #FF0000;">3.60</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">6</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">5.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;color: #FF0000;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>



```r
ztable(head(mtcars),caption="Table 4. Cars with mpg > 21 ") %>%
    addCellColor(condition=mpg>21,cols=1:2,bg="cyan",color="red") 
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 4. Cars with mpg > 21 </caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">hp</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">drat</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">wt</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">qsec</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">vs</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">am</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">gear</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">carb</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">160.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">2.62</td>
<td align="right" style="border-left: 0px solid black;">16.46</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">21.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">160.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">110.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">2.88</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">17.02</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #00FFFF; color: #FF0000; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #00FFFF;color: #FF0000;">22.80</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">108.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">93.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.85</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">2.32</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">18.61</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #00FFFF; color: #FF0000; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #00FFFF;color: #FF0000;">21.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">258.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">110.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.08</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.21</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">19.44</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">18.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">8.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">360.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">175.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.15</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.44</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">17.02</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">Valiant</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">18.10</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">225.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">105.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">2.76</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.46</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">20.22</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">1.00</td>
</tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>


## Use of color palette

You can use color palettes from RColorBrewer packages. You can extract colors from palette by using palette2colors() function.


```r
require(RColorBrewer)

reds=palette2colors("Reds")
reds
[1] "#FFF5F0" "#FEE0D2" "#FCBBA1" "#FC9272" "#FB6A4A" "#EF3B2C" "#CB181D"
[8] "#A50F15" "#67000D"
```

You can use the extracted colors to your ztable.


```r
ztable(head(iris),caption="Table 5. Use of color palette") %>% 
    addColColor(bg=reds)
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 5. Use of color palette</caption><tr>
<th style="border-left: 0px solid black;background-color: #FFF5F0;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FEE0D2;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FCBBA1;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FC9272;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FB6A4A;">Petal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #EF3B2C;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFF5F0; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #FEE0D2;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FCBBA1;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FC9272;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FB6A4A;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFF5F0; ">2</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FEE0D2;">4.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FCBBA1;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FC9272;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB6A4A;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFF5F0; ">3</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FEE0D2;">4.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FCBBA1;">3.20</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FC9272;">1.30</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB6A4A;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFF5F0; ">4</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FEE0D2;">4.60</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FCBBA1;">3.10</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FC9272;">1.50</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB6A4A;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFF5F0; ">5</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FEE0D2;">5.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FCBBA1;">3.60</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FC9272;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB6A4A;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFF5F0; ">6</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FEE0D2;">5.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FCBBA1;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FC9272;">1.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB6A4A;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #EF3B2C;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>

```r

ztable(head(mtcars),caption="Table 6. Use of color palette(2)") %>%
    addRowColor(bg=palette2colors("Set3"))
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 6. Use of color palette(2)</caption><tr>
<th style="border-left: 0px solid black;background-color: #8DD3C7;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">mpg</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">cyl</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">disp</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">hp</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">drat</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">wt</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">qsec</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">vs</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">am</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">gear</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #8DD3C7;">carb</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFFFB3; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">2.62</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">16.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFFB3;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFFB3;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #BEBADA; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">21.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">160.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">110.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">2.88</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">17.02</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #BEBADA;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #BEBADA;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FB8072; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">22.80</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">108.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">93.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">3.85</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">2.32</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">18.61</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FB8072;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #FB8072;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #80B1D3; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">21.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">258.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">110.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">3.08</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">3.21</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">19.44</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #80B1D3;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #80B1D3;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FDB462; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">18.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">8.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">360.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">175.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">3.15</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">3.44</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">17.02</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FDB462;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #FDB462;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #B3DE69; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">18.10</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">225.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">105.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">2.76</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">3.46</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">20.22</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #B3DE69;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #B3DE69;">1.00</td>
</tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>

## Make a flextable from a ztable

You can use ztable for html nad latex output. But it is impossible to use ztable in `Microsoft Word` or `Microsoft Powerpoint` output directly. The `officer` package by David Gohel makes it possible to access and manipulate `Microsoft Word` or `Microsoft Powerpoint` document. You can insert a flextable object office documents with officer package.


```r
require(officer)
Loading required package: officer
require(flextable)

ft=regulartable(head(iris))
ft
Error in knit_print.flextable(x, ...): `render_flextable` needs to be used as a renderer for a knitr/rmarkdown R code chunk (render by rmarkdown)
```

You can make a 'Microsoft Word' document  with this flextable. 


```r
read_docx() %>%
    body_add_flextable(ft) %>%
    print(target = "flextable.docx")
[1] "flextable.docx"
```

You can convert an object of class ztable to a flextable object. 


```r
cgroup=c("Sepal","Petal","Species")
n.cgroup=c(2,2,1)
z <- ztable(head(iris),caption="Table 9. Use of column groups") %>%
    addcgroup(cgroup=cgroup,n.cgroup=n.cgroup,color=c("red","green","blue")) %>%
    spanRow(col=4,from=2,to=3,bg="cyan") %>%
    spanCol(row=5,from=2,to=3,bg="cyan",color="blue")
z
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 9. Use of column groups</caption><tr>
<td style="border-top: 2px solid gray; border-bottom: hidden; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray; border-bottom: 1px solid gray; border-left: 0px solid black;color: #FF0000;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray; border-bottom: 1px solid gray; border-left: 0px solid black;color: #00FF00;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray; border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;color: #0000FF;">Species</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Width</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Width</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;">3.50</td>
<td style=""></td>
<td rowspan=" 2 " align="right" style="border-left: 0px solid black;background-color: #00FFFF;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td style=""></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">2</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.90</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.00</td>
<td style="border-top: hidden;"></td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td style="border-top: hidden;"></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">3</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">4.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.20</td>
<td style="border-top: hidden;"></td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.30</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td style="border-top: hidden;"></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">4</td>
<td colspan="2" align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #00FFFF;color: #0000FF;">4.60</td>
<td style="border-top: hidden;"></td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.50</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td style="border-top: hidden;"></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">5</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">5.00</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.60</td>
<td style="border-top: hidden;"></td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.20</td>
<td style="border-top: hidden;"></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">6</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">5.40</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">3.90</td>
<td style="border-top: hidden;"></td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.70</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.40</td>
<td style="border-top: hidden;"></td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;"></td>
</tr>
</table>

```r
ztable2flextable(z)
Error in knit_print.flextable(x, ...): `render_flextable` needs to be used as a renderer for a knitr/rmarkdown R code chunk (render by rmarkdown)
```



```r
fit <- lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)
z=ztable(fit,caption="Table 10. Results of Multiple Regression Analysis ")
z
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 10. Results of Multiple Regression Analysis </caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">t value</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|t|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;">41.2964</td>
<td align="right" style="border-left: 0px solid black;">7.5384</td>
<td align="right" style="border-left: 0px solid black;">5.48</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">< 0.0001</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">cyl</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-1.7940</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.6505</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-2.76</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.0105</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">disp</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0074</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0123</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.60</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.5546</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">wt</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-3.5870</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.2105</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-2.96</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.0064</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">drat</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.0936</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5488</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9523</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">am</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.1730</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5300</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.11</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9109</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;">Call: lm(formula = mpg ~ cyl + disp + wt + drat + am, data = mtcars)</td>
</tr>
</table>

```r
ztable2flextable(z)
Error in knit_print.flextable(x, ...): `render_flextable` needs to be used as a renderer for a knitr/rmarkdown R code chunk (render by rmarkdown)
```

You can change the color of rows in which p value is below the desired level(default value is 0.05).


```r
z1=z %>% addSigColor
z1
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 10. Results of Multiple Regression Analysis </caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">t value</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|t|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E0FFFF; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">41.2964</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">7.5384</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">5.48</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">< 0.0001</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #E0FFFF; ">cyl</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">-1.7940</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">0.6505</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">-2.76</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #E0FFFF;">0.0105</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">disp</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0074</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0123</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.60</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.5546</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #E0FFFF; ">wt</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">-3.5870</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">1.2105</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #E0FFFF;">-2.96</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #E0FFFF;">0.0064</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">drat</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.0936</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5488</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9523</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">am</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.1730</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5300</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.11</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9109</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;">Call: lm(formula = mpg ~ cyl + disp + wt + drat + am, data = mtcars)</td>
</tr>
</table>

```r
ztable2flextable(z1) %>% autofit()
Error in knit_print.flextable(x, ...): `render_flextable` needs to be used as a renderer for a knitr/rmarkdown R code chunk (render by rmarkdown)
```

You can change the significant level and background and font color.


```r
z2= z %>% addSigColor(level=0.01,bg="yellow",color="red")
z2
```

<head><style>
        table {
              font-family: times ;
color:  black ;
text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 10. Results of Multiple Regression Analysis </caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">t value</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|t|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFFF00; color: #FF0000; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFF00;color: #FF0000;">41.2964</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFF00;color: #FF0000;">7.5384</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFFF00;color: #FF0000;">5.48</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;color: #FF0000;">< 0.0001</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">cyl</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-1.7940</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.6505</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-2.76</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.0105</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">disp</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0074</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.0123</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.60</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.5546</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;background-color: #FFFF00; color: #FF0000; ">wt</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FFFF00;color: #FF0000;">-3.5870</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FFFF00;color: #FF0000;">1.2105</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;background-color: #FFFF00;color: #FF0000;">-2.96</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;background-color: #FFFF00;color: #FF0000;">0.0064</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">drat</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.0936</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5488</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">-0.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9523</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; border-top: hidden;">am</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.1730</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">1.5300</td>
<td align="right" style="border-left: 0px solid black;border-top: hidden;">0.11</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;border-top: hidden;">0.9109</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black; border-bottom: hidden;">Call: lm(formula = mpg ~ cyl + disp + wt + drat + am, data = mtcars)</td>
</tr>
</table>

```r
ztable2flextable(z2) 
Error in knit_print.flextable(x, ...): `render_flextable` needs to be used as a renderer for a knitr/rmarkdown R code chunk (render by rmarkdown)
```

For more options of flextable, please read the flextable vignette at https://davidgohel.github.io/flextable/index.html. 

