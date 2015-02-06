---
title: "Package ztable"
author: "Keon-Woong Moon"
date: "2015-02-05"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{ztable}
  %\VignetteEngine{knitr::rmarkdown}
  \usepackage[utf8]{inputenc}
---

# Introduction

## Table Show

Package "ztable" make everything possible about table. Basically, An object of "ztable" made from a data.frame. The default output format of ztable is RStudio::viewer or web-browser format(type="viewer"). So if you want to use ztable in a "html" format, you should change the parameter ztable.type to "html". If you want to use ztable in latex format, you should change the parameter ztable.type to "latex". 


```r
require(ztable)
options(ztable.type="html")
z=ztable(head(iris))
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
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
<td  style="border-left: 0px solid black; ">2</td>
<td align="right" style="border-left: 0px solid black;">4.90</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="right" style="border-left: 0px solid black;">4.70</td>
<td align="right" style="border-left: 0px solid black;">3.20</td>
<td align="right" style="border-left: 0px solid black;">1.30</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="right" style="border-left: 0px solid black;">4.60</td>
<td align="right" style="border-left: 0px solid black;">3.10</td>
<td align="right" style="border-left: 0px solid black;">1.50</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="right" style="border-left: 0px solid black;">5.00</td>
<td align="right" style="border-left: 0px solid black;">3.60</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="right" style="border-left: 0px solid black;">5.40</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">1.70</td>
<td align="right" style="border-left: 0px solid black;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
You can change the position of data in each cell by adjusting the parameter "align".


```r
z=ztable(head(iris),align="cccccc")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">3.50</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">3.10</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">3.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">3.90</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">0.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can add column groups to ztable using addcgroup function. The n.cgroup means how much columns included in each row group. 


```r
cgroup=c("Sepal","Petal","Species")
n.cgroup=c(2,2,1)
z=addcgroup(z,cgroup=cgroup,n.cgroup=n.cgroup)
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
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
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">3.50</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">3.60</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">3.90</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">0.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>


You can add row groups to ztable using addrgroup function. The n.rgroup means how much rows included in each row group. The cspan.rgroup means how much columns occupied by row group name.


```r
rgroup=c("OneToThree","Four","FiveToSix")
n.rgroup=c(3,1,2)

z=addrgroup(z,rgroup=rgroup,n.rgroup=n.rgroup,cspan.rgroup=1)
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
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
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">OneToThree</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">3.50</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">FiveToSix</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">3.60</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">3.90</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">0.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can add another colname(subcolname), the N count for example.  The length of subcolnames should be same with column count of data.frame. You can use "NA" and the column name spans 2 rows. 


```r
ncount=c(123,120,123,124)
sub=paste("(N=",ncount,")",sep="")
z=addSubColNames(z,c(sub,NA))
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Width</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Width</th>
<th style="">&nbsp;</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=124)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">OneToThree</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">3.50</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">FiveToSix</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">3.60</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">3.90</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">0.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can merge cells by spanRow or spanCol function.


```r
z=spanRow(z,col=2,from=4,to=7,"orange")
z=spanRow(z,col=3,from=5,to=7,"platinum")
z=spanRow(z,col=4,from=6,to=7,"cyan")
z=spanRow(z,col=5,from=5,to=7,"yellow")
z=spanRow(z,col=6,from=3,to=5,"yellow")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Width</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Width</th>
<th style="">&nbsp;</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=124)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">OneToThree</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">3.50</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td rowspan=" 6 " align="center" style="border-left: 0px solid black;background-color: #FF7F00;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #FFFF00;">0.20</td>
<td style="background-color:  #FFFF00 "></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">FiveToSix</td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td></td>
<td rowspan=" 2 " align="center" style="border-left: 0px solid black;background-color: #00FFFF;">1.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td></td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
z=spanCol(z,row=2,from=3,to=4,"yellow")
z=spanCol(z,row=3,from=4,to=5,"lightblue")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Width</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Width</th>
<th style="">&nbsp;</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=124)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">OneToThree</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td colspan="3" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">3.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td colspan="2" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #ADD8E6;">1.40</td>
<td></td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td rowspan=" 6 " align="center" style="border-left: 0px solid black;background-color: #FF7F00;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #FFFF00;">0.20</td>
<td style="background-color:  #FFFF00 "></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">FiveToSix</td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td></td>
<td rowspan=" 2 " align="center" style="border-left: 0px solid black;background-color: #00FFFF;">1.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td></td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can add or adjust vertical lines of table by vlines function


```r
vlines(z,type="all")       # type=1 gets same result
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 1px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">Sepal</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">Petal</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;border-right:1px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 1px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Sepal.Width</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Petal.Width</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 1px solid black;border-right:1px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 1px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=124)</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">OneToThree</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; border-right:1px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">1</td>
<td align="center" style="border-left: 1px solid black;">5.10</td>
<td colspan="2" align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #FFFF00;">3.50</td>
<td align="center" style="border-left: 1px solid black;">0.20</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">2</td>
<td align="center" style="border-left: 1px solid black;">4.90</td>
<td align="center" style="border-left: 1px solid black;">3.00</td>
<td colspan="2" align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #ADD8E6;">1.40</td>
<td rowspan=" 4 " align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #FFFF00;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">3</td>
<td rowspan=" 6 " align="center" style="border-left: 1px solid black;background-color: #FF7F00;">4.70</td>
<td align="center" style="border-left: 1px solid black;">3.20</td>
<td align="center" style="border-left: 1px solid black;">1.30</td>
<td align="center" style="border-left: 1px solid black;">0.20</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">Four</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">4</td>
<td rowspan=" 4 " align="center" style="border-left: 1px solid black;background-color: #E5E4E2;">3.10</td>
<td align="center" style="border-left: 1px solid black;">1.50</td>
<td rowspan=" 4 " align="center" style="border-left: 1px solid black;background-color: #FFFF00;">0.20</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">FiveToSix</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; border-right:1px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">5</td>
<td rowspan=" 2 " align="center" style="border-left: 1px solid black;background-color: #00FFFF;">1.40</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">6</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
z=vlines(z,type="none")      # type=0 gets same result
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Width</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Width</th>
<th style="">&nbsp;</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=124)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">OneToThree</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td colspan="3" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">3.50</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td colspan="2" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #ADD8E6;">1.40</td>
<td></td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td rowspan=" 6 " align="center" style="border-left: 0px solid black;background-color: #FF7F00;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">0.20</td>
<td></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #FFFF00;">0.20</td>
<td style="background-color:  #FFFF00 "></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">FiveToSix</td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td></td>
<td rowspan=" 2 " align="center" style="border-left: 0px solid black;background-color: #00FFFF;">1.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td></td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
z=vlines(z,add=c(1,2,5))
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td style="border-top: 2px solid gray; border-left: 1px solid black;"> </td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">Sepal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 2 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Petal</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 1 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Species</td>
</tr>
<tr>
<th style="border-left: 1px solid black;background-color: #FFFFFF;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Sepal.Width</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;">Petal.Width</th>
<th style="">&nbsp;</th>
<th <th rowspan="2" align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<th style="border-left: 1px solid black;border-bottom: 1px solid gray;background-color: #FFFFFF;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=120)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=123)</th>
<th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=124)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">OneToThree</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">1</td>
<td align="center" style="border-left: 1px solid black;">5.10</td>
<td colspan="3" align="center" style="border-left: 0px solid black;border-right:1px solid black;background-color: #FFFF00;">3.50</td>
<td align="center" style="border-left: 1px solid black;">0.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">2</td>
<td align="center" style="border-left: 1px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">3.00</td>
<td></td>
<td colspan="2" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #ADD8E6;">1.40</td>
<td></td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFFF00;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">3</td>
<td rowspan=" 6 " align="center" style="border-left: 1px solid black;background-color: #FF7F00;">4.70</td>
<td align="center" style="border-left: 0px solid black;">3.20</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 1px solid black;">0.20</td>
<td></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">Four</td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">4</td>
<td rowspan=" 4 " align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td rowspan=" 4 " align="center" style="border-left: 1px solid black;background-color: #FFFF00;">0.20</td>
<td style="background-color:  #FFFF00 "></td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">FiveToSix</td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">5</td>
<td></td>
<td rowspan=" 2 " align="center" style="border-left: 0px solid black;background-color: #00FFFF;">1.40</td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">6</td>
<td></td>
<td></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

Please note that if you add vertical lines between groups, the space between groups(empty columns) disappeared and vice versa.


## Merge two tables

You can bind two or more data.frame by cbind function. 


```r
t1=head(iris,10)[,c(1,3,5)]
t2=tail(iris,10)[,c(1,3,5)]
t=cbind(t1,t2)
z=ztable(t,caption="Table 1. Top 10 and Last 10 Data from iris",align="ccccccc")
```

And then, you can add column groups, row groups, add row colors, add column colors, add cell colors, and merge cells


```r
cgroup=c("Top 10","Last 10")
n.cgroup=c(3,3)
z=addcgroup(z,cgroup=cgroup,n.cgroup=n.cgroup)
z 
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Top 10</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Species</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.60</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.80</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.80</td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.70</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">7</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.30</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">8</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.50</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">9</td>
<td align="center" style="border-left: 0px solid black;">4.40</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.20</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">10</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
rgroup=c("Top 1-3","Top 4-6"," Top 7-10")
n.rgroup=c(3,3,4)
z=addrgroup(z,rgroup=rgroup,n.rgroup=n.rgroup,cspan.rgroup=1)
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Top 10</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Species</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 1-3</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.60</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.80</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 4-6</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.80</td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.70</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; "> Top 7-10</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">7</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.30</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">8</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.50</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">9</td>
<td align="center" style="border-left: 0px solid black;">4.40</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.20</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">10</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
z=addRowColor(z,c(5,10),"pink")
z=addColColor(z,4,"amber")
z=addCellColor(z,rows=c(5,10),cols=4,"orange")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Top 10</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFBF00;">Species</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 1-3</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.60</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.80</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 4-6</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">4</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.60</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.80</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.90</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.70</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; "> Top 7-10</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">7</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.30</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">8</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.50</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">9</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.20</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">10</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
z=spanCol(z,row=2,from=2,to=3,color="lightcyan")
z=spanRow(z,col=7,from=7,to=8,color="cyan")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Top 10</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFBF00;">Species</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 1-3</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td colspan="2" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">5.10</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.60</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.80</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 4-6</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">4</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.60</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.80</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.90</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.70</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td rowspan=" 3 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #00FFFF;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; "> Top 7-10</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">7</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.30</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">8</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.50</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">9</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.20</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">10</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

And you can adjust vertical lines, too.


```r
vlines(z,type=0)  # No vertical lines
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 0px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Top 10</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFBF00;">Species</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 1-3</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td colspan="2" align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">5.10</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.60</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="center" style="border-left: 0px solid black;">4.70</td>
<td align="center" style="border-left: 0px solid black;">1.30</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.80</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; ">Top 4-6</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; border-right:0px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">4</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.60</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.80</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.90</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.70</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="center" style="border-left: 0px solid black;">5.40</td>
<td align="center" style="border-left: 0px solid black;">1.70</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.70</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td rowspan=" 3 " align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #00FFFF;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 0px solid black; "> Top 7-10</td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; background-color:#FFBF00 "></td>
<td></td>
<td style="border-left: 0px solid black; "></td>
<td style="border-left: 0px solid black; "></td>
 </tr>
<tr>
<td  style="border-left: 0px solid black; ">7</td>
<td align="center" style="border-left: 0px solid black;">4.60</td>
<td align="center" style="border-left: 0px solid black;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.30</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">8</td>
<td align="center" style="border-left: 0px solid black;">5.00</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">6.50</td>
<td align="center" style="border-left: 0px solid black;">5.20</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFC0CB; ">9</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">4.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">1.40</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">setosa</td>
<td style="background-color:  #FFC0CB "></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">6.20</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">5.40</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">10</td>
<td align="center" style="border-left: 0px solid black;">4.90</td>
<td align="center" style="border-left: 0px solid black;">1.50</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFBF00;">setosa</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5.90</td>
<td align="center" style="border-left: 0px solid black;">5.10</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">virginica</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
vlines(z,type=1)  # Vertical lines for all column
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Table 1. Top 10 and Last 10 Data from iris</caption><tr>
<td style="border-top: 2px solid gray; border-left: 1px solid black;"> </td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">Top 10</td>
<td colspan=" 3 " align="center" style="font-weight: normal;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;border-right:1px solid black;">Last 10</td>
</tr>
<tr>
<th style="border-left: 1px solid black;background-color: #FFFFFF;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;background-color: #FFBF00;">Species</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-bottom: 1px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: normal;border-left: 1px solid black;border-right:1px solid black;border-bottom: 1px solid gray;">Species</th>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">Top 1-3</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; background-color:#FFBF00 "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; border-right:1px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">1</td>
<td colspan="2" align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #E0FFFF;">5.10</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.70</td>
<td align="center" style="border-left: 1px solid black;">5.60</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">2</td>
<td align="center" style="border-left: 1px solid black;">4.90</td>
<td align="center" style="border-left: 1px solid black;">1.40</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.90</td>
<td align="center" style="border-left: 1px solid black;">5.10</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">3</td>
<td align="center" style="border-left: 1px solid black;">4.70</td>
<td align="center" style="border-left: 1px solid black;">1.30</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">5.80</td>
<td align="center" style="border-left: 1px solid black;">5.10</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; ">Top 4-6</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; background-color:#FFBF00 "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; border-right:1px solid black;"></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; background-color: #FFC0CB; ">4</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">4.60</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">1.50</td>
<td align="center" style="border-left: 1px solid black;background-color: #FF7F00;">setosa</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">6.80</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">5.90</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">5</td>
<td align="center" style="border-left: 1px solid black;">5.00</td>
<td align="center" style="border-left: 1px solid black;">1.40</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.70</td>
<td align="center" style="border-left: 1px solid black;">5.70</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">6</td>
<td align="center" style="border-left: 1px solid black;">5.40</td>
<td align="center" style="border-left: 1px solid black;">1.70</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.70</td>
<td align="center" style="border-left: 1px solid black;">5.20</td>
<td rowspan=" 3 " align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #00FFFF;">virginica</td>
</tr>
<tr>
<td align="left" style="font-weight: bold; border-left: 1px solid black; "> Top 7-10</td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; background-color:#FFBF00 "></td>
<td style="border-left: 1px solid black; "></td>
<td style="border-left: 1px solid black; "></td>
 </tr>
<tr>
<td  style="border-left: 1px solid black; ">7</td>
<td align="center" style="border-left: 1px solid black;">4.60</td>
<td align="center" style="border-left: 1px solid black;">1.40</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.30</td>
<td align="center" style="border-left: 1px solid black;">5.00</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">8</td>
<td align="center" style="border-left: 1px solid black;">5.00</td>
<td align="center" style="border-left: 1px solid black;">1.50</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">6.50</td>
<td align="center" style="border-left: 1px solid black;">5.20</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; background-color: #FFC0CB; ">9</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">4.40</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">1.40</td>
<td align="center" style="border-left: 1px solid black;background-color: #FF7F00;">setosa</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">6.20</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFC0CB;">5.40</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;background-color: #FFC0CB;">virginica</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">10</td>
<td align="center" style="border-left: 1px solid black;">4.90</td>
<td align="center" style="border-left: 1px solid black;">1.50</td>
<td align="center" style="border-left: 1px solid black;background-color: #FFBF00;">setosa</td>
<td align="center" style="border-left: 1px solid black;">5.90</td>
<td align="center" style="border-left: 1px solid black;">5.10</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">virginica</td>
</tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

# Basic Use

Package "ztable" consist of one function: ztable. It's main function is creating zebra zebra striping tables(tables with alternating row colors) in both Latex and html formats easily from mainly data.frame or an R object such as matrix, lm, aov, anova, glm and coxph objects. It is fully customizable and you can get similar tables in both latex and html format without changing source. The default output is Rstudio::viewer, but you can get html format by adding just one sentence.


```r
options(ztable.type="html")
```

It's usage is somewhat similar to xtable, but very simple.

## data.frame

### Basic Use

It's use is very simple. Just use 'ztable()' function. You can get the zebra stripig table by set the parameter zebra=1 (default value is NULL)


```r
require(ztable)
options(ztable.type="html")
options(ztable.zebra=1)
options(ztable.zebra.color="platinum")
options(ztable.colnames.bold=TRUE)
ztable(head(mtcars))
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">hp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">drat</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">wt</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">qsec</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">vs</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">am</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">gear</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">carb</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.62</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">16.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">160.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">2.88</td>
<td align="right" style="border-left: 0px solid black;">17.02</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">108.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">93.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.85</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.32</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">18.61</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;">21.40</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">258.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.08</td>
<td align="right" style="border-left: 0px solid black;">3.21</td>
<td align="right" style="border-left: 0px solid black;">19.44</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">18.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">360.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">175.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.15</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">17.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;">18.10</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">225.00</td>
<td align="right" style="border-left: 0px solid black;">105.00</td>
<td align="right" style="border-left: 0px solid black;">2.76</td>
<td align="right" style="border-left: 0px solid black;">3.46</td>
<td align="right" style="border-left: 0px solid black;">20.22</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.00</td>
</tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

### Tailoring zebra striping

You can get non-zebra table by change parameter zebra=NULL or change zebra striping on even rows by zebra=2. 


```r
ztable(head(mtcars),zebra=NULL,size=3,
       caption="Table 1. Non-zebra Table with small size")
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:9pt;"><caption style="text-align:center;">Table 1. Non-zebra Table with small size</caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">hp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">drat</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">wt</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">qsec</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">vs</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">am</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">gear</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">carb</th>
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
<td  style="border-left: 0px solid black; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">160.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">2.88</td>
<td align="right" style="border-left: 0px solid black;">17.02</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;">22.80</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;">108.00</td>
<td align="right" style="border-left: 0px solid black;">93.00</td>
<td align="right" style="border-left: 0px solid black;">3.85</td>
<td align="right" style="border-left: 0px solid black;">2.32</td>
<td align="right" style="border-left: 0px solid black;">18.61</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;">21.40</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">258.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.08</td>
<td align="right" style="border-left: 0px solid black;">3.21</td>
<td align="right" style="border-left: 0px solid black;">19.44</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;">18.70</td>
<td align="right" style="border-left: 0px solid black;">8.00</td>
<td align="right" style="border-left: 0px solid black;">360.00</td>
<td align="right" style="border-left: 0px solid black;">175.00</td>
<td align="right" style="border-left: 0px solid black;">3.15</td>
<td align="right" style="border-left: 0px solid black;">3.44</td>
<td align="right" style="border-left: 0px solid black;">17.02</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;">18.10</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">225.00</td>
<td align="right" style="border-left: 0px solid black;">105.00</td>
<td align="right" style="border-left: 0px solid black;">2.76</td>
<td align="right" style="border-left: 0px solid black;">3.46</td>
<td align="right" style="border-left: 0px solid black;">20.22</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.00</td>
</tr>
<tr>
<td colspan="12" align="left" style="font-size:7pt ;border-top: 1px solid black;"></td>
</tr>
</table>
        
### Customize the caption and the font size 

You can change the position of table by using parameter position. You can use "r" for right position, "l" for left position and "c" for center position(default). You can change the color of zebra striping by change the parameter zebra.color. You can also change the size of font from 1 to 10(default is 5). You can change the caption.placement("top" or "bottom") and caption.position("c" for center / "r" for right/ "l" for left).  
    

```r
ztable(head(mtcars[c(1:7)]),zebra=2,zebra.color="lightcyan",size=7,
       caption="Table 2. Left-sided caption at botom with large font",
       caption.placement="bottom",caption.position="l") 
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:bottom; font-size:15pt;"><caption style="text-align:left;">Table 2. Left-sided caption at botom with large font</caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">hp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">drat</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">wt</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">qsec</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;">160.00</td>
<td align="right" style="border-left: 0px solid black;">110.00</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">2.62</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">16.46</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E0FFFF; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">2.88</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">17.02</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;">22.80</td>
<td align="right" style="border-left: 0px solid black;">4.00</td>
<td align="right" style="border-left: 0px solid black;">108.00</td>
<td align="right" style="border-left: 0px solid black;">93.00</td>
<td align="right" style="border-left: 0px solid black;">3.85</td>
<td align="right" style="border-left: 0px solid black;">2.32</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">18.61</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E0FFFF; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">21.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">258.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">3.08</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">3.21</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">19.44</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;">18.70</td>
<td align="right" style="border-left: 0px solid black;">8.00</td>
<td align="right" style="border-left: 0px solid black;">360.00</td>
<td align="right" style="border-left: 0px solid black;">175.00</td>
<td align="right" style="border-left: 0px solid black;">3.15</td>
<td align="right" style="border-left: 0px solid black;">3.44</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">17.02</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E0FFFF; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">18.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">225.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">105.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">2.76</td>
<td align="right" style="border-left: 0px solid black;background-color: #E0FFFF;">3.46</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E0FFFF;">20.22</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:13pt ;border-top: 1px solid black;"></td>
</tr>
</table>
       
## aov  object

'ztable()' can be used for 'aov' object. When used for 'aov' object, the function call is added as footer to the table. The parameter 'show.footer' can be used whether or not include footer in the table. Dafault value is TRUE.


```r
out <- aov(mpg ~ ., data=mtcars)
ztable(out)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Mean Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">cyl        </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">817.71</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">817.71</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">116.42</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">disp       </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">37.59</td>
<td align="right" style="border-left: 0px solid black;">37.59</td>
<td align="right" style="border-left: 0px solid black;">5.35</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0309</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">hp         </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">9.37</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">9.37</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.33</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.2610</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">drat       </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">16.47</td>
<td align="right" style="border-left: 0px solid black;">16.47</td>
<td align="right" style="border-left: 0px solid black;">2.34</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.1406</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">wt         </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">77.48</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">77.48</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">11.03</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0032</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">qsec       </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">3.95</td>
<td align="right" style="border-left: 0px solid black;">3.95</td>
<td align="right" style="border-left: 0px solid black;">0.56</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.4617</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">vs         </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.13</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.13</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.02</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.8932</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">am         </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">14.47</td>
<td align="right" style="border-left: 0px solid black;">14.47</td>
<td align="right" style="border-left: 0px solid black;">2.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.1659</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">gear       </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.97</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.97</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.14</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.7137</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">carb       </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">0.41</td>
<td align="right" style="border-left: 0px solid black;">0.41</td>
<td align="right" style="border-left: 0px solid black;">0.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.8122</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Residuals  </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">21</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">147.49</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">7.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;"></td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: aov(formula = mpg $\sim$ ., data = mtcars)</td>
</tr>
</table>

## Linear model : 'lm' object

'ztable()' can be used for 'lm' object. When used for 'lm' object, the function call is added as footer to the table, too. 



```r
fit <- lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)
ztable(fit)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">t value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|t|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">41.2964</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">7.5384</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.48</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">cyl</td>
<td align="right" style="border-left: 0px solid black;">-1.7940</td>
<td align="right" style="border-left: 0px solid black;">0.6505</td>
<td align="right" style="border-left: 0px solid black;">-2.76</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0105</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">disp</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0074</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0123</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.60</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.5546</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">wt</td>
<td align="right" style="border-left: 0px solid black;">-3.5870</td>
<td align="right" style="border-left: 0px solid black;">1.2105</td>
<td align="right" style="border-left: 0px solid black;">-2.96</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0064</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">drat</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.0936</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.5488</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.06</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.9523</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">am</td>
<td align="right" style="border-left: 0px solid black;">0.1730</td>
<td align="right" style="border-left: 0px solid black;">1.5300</td>
<td align="right" style="border-left: 0px solid black;">0.11</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.9109</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: lm(formula = mpg $\sim$ cyl + disp + wt + drat + am, data = mtcars)</td>
</tr>
</table>

## Analysis of Variance Table : 'anova' object

'ztable()' can be used for 'anova' object to show the anova table. When used for 'anova' object, headings of anova are added as headings to the table. The parameter 'show.footer' can be used whether or not include footer in the table. Dafault value is TRUE.


```r
a=anova(fit)
str(a)
```

Classes 'anova' and 'data.frame':	6 obs. of  5 variables:
 $ Df     : int  1 1 1 1 1 26
 $ Sum Sq : num  8.18e+02 3.76e+01 8.22e+01 4.29e-04 9.26e-02 ...
 $ Mean Sq: num  8.18e+02 3.76e+01 8.22e+01 4.29e-04 9.26e-02 ...
 $ F value: num  1.13e+02 5.19 1.14e+01 5.93e-05 1.28e-02 ...
 $ Pr(>F) : num  5.94e-11 3.12e-02 2.36e-03 9.94e-01 9.11e-01 ...
 - attr(*, "heading")= chr  "Analysis of Variance Table\n" "Response: mpg"

```r
ztable(a)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Response: mpg</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Mean Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">cyl</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">817.71</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">817.71</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">112.85</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">disp</td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">37.59</td>
<td align="right" style="border-left: 0px solid black;">37.59</td>
<td align="right" style="border-left: 0px solid black;">5.19</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0312</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">wt</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">82.25</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">82.25</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">11.35</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0024</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">drat</td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.9939</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">am</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.09</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.09</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.01</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.9109</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Residuals</td>
<td align="right" style="border-left: 0px solid black;">26</td>
<td align="right" style="border-left: 0px solid black;">188.40</td>
<td align="right" style="border-left: 0px solid black;">7.25</td>
<td align="right" style="border-left: 0px solid black;"></td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;"></td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

This is examples of another 'anova' object. The models in this anova tables showed as table headings. You can decide whether or not include the headings in the tableby using parameter 'show.heading'(default: TRUE). 


```r
fit2 <- lm(mpg ~ cyl+wt, data=mtcars)
b=anova(fit2,fit)
str(b)
```

Classes 'anova' and 'data.frame':	2 obs. of  6 variables:
 $ Res.Df   : num  29 26
 $ RSS      : num  191 188
 $ Df       : num  NA 3
 $ Sum of Sq: num  NA 2.77
 $ F        : num  NA 0.128
 $ Pr(>F)   : num  NA 0.943
 - attr(*, "heading")= chr  "Analysis of Variance Table\n" "Model 1: mpg ~ cyl + wt\nModel 2: mpg ~ cyl + disp + wt + drat + am"

```r
ztable(b)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Model 1: mpg $\sim$ cyl + wt</td>
</tr>
<tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Model 2: mpg $\sim$ cyl + disp + wt + drat + am</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Res.Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">RSS</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum of Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">29.0</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">191.17</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;"></td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="right" style="border-left: 0px solid black;">26.0</td>
<td align="right" style="border-left: 0px solid black;">188.40</td>
<td align="right" style="border-left: 0px solid black;">3.0</td>
<td align="right" style="border-left: 0px solid black;">2.77</td>
<td align="right" style="border-left: 0px solid black;">0.13</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.9429</td>
</tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
ztable(b,show.heading=FALSE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Res.Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">RSS</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum of Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">29.0</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">191.17</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;"></td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="right" style="border-left: 0px solid black;">26.0</td>
<td align="right" style="border-left: 0px solid black;">188.40</td>
<td align="right" style="border-left: 0px solid black;">3.0</td>
<td align="right" style="border-left: 0px solid black;">2.77</td>
<td align="right" style="border-left: 0px solid black;">0.13</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.9429</td>
</tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## Generalized linear model ; 'glm' object

'ztable()' can be used for 'glm'(generalized linear model) object. In this time, 'ztable()' shows the **odds ratio(OR) and 95% confidence interval** as well as atandard R output.


```r
require(survival)
```

```
## Loading required package: survival
## Loading required package: splines
```

```r
data(colon)
attach(colon)
out <- glm(status ~ rx+obstruct+adhere+nodes+extent, data=colon, family=binomial)
ztable(out)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">z value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|z|)</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">OR</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">lcl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">ucl</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-2.3642</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.3426</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-6.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.09</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.05</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.18</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">rxLev</td>
<td align="right" style="border-left: 0px solid black;">-0.0712</td>
<td align="right" style="border-left: 0px solid black;">0.1203</td>
<td align="right" style="border-left: 0px solid black;">-0.59</td>
<td align="right" style="border-left: 0px solid black;">0.5538</td>
<td align="right" style="border-left: 0px solid black;">0.93</td>
<td align="right" style="border-left: 0px solid black;">0.74</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.18</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">rxLev+5FU</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.6135</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.1231</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-4.98</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.54</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.42</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.69</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">obstruct</td>
<td align="right" style="border-left: 0px solid black;">0.2320</td>
<td align="right" style="border-left: 0px solid black;">0.1251</td>
<td align="right" style="border-left: 0px solid black;">1.85</td>
<td align="right" style="border-left: 0px solid black;">0.0636</td>
<td align="right" style="border-left: 0px solid black;">1.26</td>
<td align="right" style="border-left: 0px solid black;">0.99</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.61</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">adhere</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.4164</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.1429</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.91</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0036</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.52</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.15</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2.01</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">nodes</td>
<td align="right" style="border-left: 0px solid black;">0.1845</td>
<td align="right" style="border-left: 0px solid black;">0.0183</td>
<td align="right" style="border-left: 0px solid black;">10.06</td>
<td align="right" style="border-left: 0px solid black;">0.0000</td>
<td align="right" style="border-left: 0px solid black;">1.20</td>
<td align="right" style="border-left: 0px solid black;">1.16</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.25</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">extent</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.6238</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.1142</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.87</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.50</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2.34</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: glm(formula = status $\sim$ rx + obstruct + adhere + nodes + extent,     family = binomial, data = colon)</td>
</tr>
</table>

Again, 'ztable()' also shows the anova table of this model.


```r
ztable(anova(out))
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Deviance Table</td>
</tr>
<tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Model: binomial, link: logit</td>
</tr>
<tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Response: status</td>
</tr>
<tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Terms added sequentially (first to last)</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Deviance</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Resid. Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Resid. Dev</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">NULL</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;"></td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1821</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2525.40</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">rx</td>
<td align="right" style="border-left: 0px solid black;">2</td>
<td align="right" style="border-left: 0px solid black;">34.84</td>
<td align="right" style="border-left: 0px solid black;">1819</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">2490.56</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">obstruct</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.66</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1818</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2486.90</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">adhere</td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">11.74</td>
<td align="right" style="border-left: 0px solid black;">1817</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">2475.16</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">nodes</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">145.01</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1816</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2330.15</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">extent</td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">32.59</td>
<td align="right" style="border-left: 0px solid black;">1815</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">2297.55</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## More 'aov' object



```r
op <- options(contrasts = c("contr.helmert", "contr.poly"))
npk.aov <- aov(yield ~ block + N*P*K, npk) 
ztable(npk.aov,zebra=1)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Mean Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">block      </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">343.29</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">68.66</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.45</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0159</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">N          </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">189.28</td>
<td align="right" style="border-left: 0px solid black;">189.28</td>
<td align="right" style="border-left: 0px solid black;">12.26</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0044</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">P          </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">8.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">8.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.54</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.4749</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">K          </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">95.20</td>
<td align="right" style="border-left: 0px solid black;">95.20</td>
<td align="right" style="border-left: 0px solid black;">6.17</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0288</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">N:P        </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">21.28</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">21.28</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.38</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.2632</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">N:K        </td>
<td align="right" style="border-left: 0px solid black;">1</td>
<td align="right" style="border-left: 0px solid black;">33.14</td>
<td align="right" style="border-left: 0px solid black;">33.14</td>
<td align="right" style="border-left: 0px solid black;">2.15</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.1686</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">P:K        </td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.48</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.48</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.03</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.8628</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Residuals  </td>
<td align="right" style="border-left: 0px solid black;">12</td>
<td align="right" style="border-left: 0px solid black;">185.29</td>
<td align="right" style="border-left: 0px solid black;">15.44</td>
<td align="right" style="border-left: 0px solid black;"></td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;"></td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: aov(formula = yield $\sim$ block + N * P * K, data = npk)</td>
</tr>
</table>

## More 'lm' object


```r
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
ztable(lm.D9)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">t value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|t|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.8465</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.1557</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">31.12</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">group1</td>
<td align="right" style="border-left: 0px solid black;">-0.1855</td>
<td align="right" style="border-left: 0px solid black;">0.1557</td>
<td align="right" style="border-left: 0px solid black;">-1.19</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.2490</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: lm(formula = weight $\sim$ group)</td>
</tr>
</table>

```r
ztable(anova(lm.D9),align="|c|rrrr|r|")
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Response: weight</td>
</tr>
<tr>
<th style="border-left: 1px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Df</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sum Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Mean Sq</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">F value</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;border-right:1px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>F)</th>
</tr>
<tr>
<td  style="border-left: 1px solid black; background-color: #E5E4E2; ">group</td>
<td align="right" style="border-left: 1px solid black;background-color: #E5E4E2;">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.69</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.69</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.42</td>
<td align="right" style="border-left: 1px solid black;border-right:1px solid black;background-color: #E5E4E2;">0.2490</td>
</tr>
<tr>
<td  style="border-left: 1px solid black; ">Residuals</td>
<td align="right" style="border-left: 1px solid black;">18</td>
<td align="right" style="border-left: 0px solid black;">8.73</td>
<td align="right" style="border-left: 0px solid black;">0.48</td>
<td align="right" style="border-left: 0px solid black;"></td>
<td align="right" style="border-left: 1px solid black;border-right:1px solid black;"></td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>


## More 'glm' object


```r
counts <- c(18,17,15,20,10,20,25,13,12)
outcome <- gl(3,1,9)
treatment <- gl(3,3)
d.AD <- data.frame(treatment, outcome, counts)
glm.D93 <- glm(counts ~ outcome + treatment, family = poisson())
ztable(glm.D93)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Estimate</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Std. Error</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">z value</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|z|)</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">OR</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">lcl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">ucl</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">(Intercept)</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.7954</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0831</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">33.64</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">16.37</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">13.84</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">19.18</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">outcome1</td>
<td align="right" style="border-left: 0px solid black;">-0.2271</td>
<td align="right" style="border-left: 0px solid black;">0.1011</td>
<td align="right" style="border-left: 0px solid black;">-2.25</td>
<td align="right" style="border-left: 0px solid black;">0.0246</td>
<td align="right" style="border-left: 0px solid black;">0.80</td>
<td align="right" style="border-left: 0px solid black;">0.65</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.97</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">outcome2</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.0220</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0592</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.37</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.7106</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.98</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.87</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">1.10</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">treatment1</td>
<td align="right" style="border-left: 0px solid black;">-0.0000</td>
<td align="right" style="border-left: 0px solid black;">0.1000</td>
<td align="right" style="border-left: 0px solid black;">-0.00</td>
<td align="right" style="border-left: 0px solid black;">1.0000</td>
<td align="right" style="border-left: 0px solid black;">1.00</td>
<td align="right" style="border-left: 0px solid black;">0.82</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.22</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">treatment2</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0577</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.0000</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.89</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">1.12</td>
</tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: glm(formula = counts $\sim$ outcome + treatment, family = poisson())</td>
</tr>
</table>

## Principal Components Analysis : 'prcomp' object

'ztable()' can be used in principal components analysis. Followings are examples of ztable() of 'prcomp' object.



```r
data(USArrests)
pr1 <- prcomp(USArrests) 
ztable(pr1)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Rotation:</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC1</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC2</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC3</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC4</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Murder</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0417</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.0448</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0799</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">-0.9949</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Assault</td>
<td align="right" style="border-left: 0px solid black;">0.9952</td>
<td align="right" style="border-left: 0px solid black;">-0.0588</td>
<td align="right" style="border-left: 0px solid black;">-0.0676</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0389</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">UrbanPop</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.0463</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.9769</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.2005</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">-0.0582</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Rape</td>
<td align="right" style="border-left: 0px solid black;">0.0752</td>
<td align="right" style="border-left: 0px solid black;">0.2007</td>
<td align="right" style="border-left: 0px solid black;">0.9741</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0723</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
ztable(summary(pr1))
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Importance of components:</td>
</tr>
<tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC1</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC2</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC3</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">PC4</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Standard deviation</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">83.7324</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">14.2124</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">6.4894</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">2.4828</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Proportion of Variance</td>
<td align="right" style="border-left: 0px solid black;">0.9655</td>
<td align="right" style="border-left: 0px solid black;">0.0278</td>
<td align="right" style="border-left: 0px solid black;">0.0058</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0008</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">Cumulative Proportion</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.9655</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.9933</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.9991</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">1.0000</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## Survival Analysis : 'coxph' object

'ztable()' can be used in principal components analysis. When used for Cox proportional hazard model, 'ztable()' showed the hazard ratio and 95% confidence interval ready for publication to medical journal.



```r
colon$TS = Surv(time,status==1) 
out=coxph(TS~rx+obstruct+adhere+differ+extent+surg+node4,data=colon)
ztable(out)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">HR</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">lcl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">ucl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">se(coef)</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">z</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Pr(>|z|)</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">rx1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.999</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.925</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.079</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.039</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">-0.030</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.9764</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">rx2</td>
<td align="right" style="border-left: 0px solid black;">0.871</td>
<td align="right" style="border-left: 0px solid black;">0.829</td>
<td align="right" style="border-left: 0px solid black;">0.915</td>
<td align="right" style="border-left: 0px solid black;">0.025</td>
<td align="right" style="border-left: 0px solid black;">-5.464</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">obstruct</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.267</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.079</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.489</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.082</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.885</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0039</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">adhere</td>
<td align="right" style="border-left: 0px solid black;">1.181</td>
<td align="right" style="border-left: 0px solid black;">0.991</td>
<td align="right" style="border-left: 0px solid black;">1.409</td>
<td align="right" style="border-left: 0px solid black;">0.090</td>
<td align="right" style="border-left: 0px solid black;">1.856</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0634</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">differ</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.219</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.067</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.394</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.068</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">2.906</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0037</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">extent</td>
<td align="right" style="border-left: 0px solid black;">1.523</td>
<td align="right" style="border-left: 0px solid black;">1.298</td>
<td align="right" style="border-left: 0px solid black;">1.787</td>
<td align="right" style="border-left: 0px solid black;">0.082</td>
<td align="right" style="border-left: 0px solid black;">5.152</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0000</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">surg</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.274</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.104</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.469</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.073</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.319</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">0.0009</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">node4</td>
<td align="right" style="border-left: 0px solid black;">2.359</td>
<td align="right" style="border-left: 0px solid black;">2.059</td>
<td align="right" style="border-left: 0px solid black;">2.702</td>
<td align="right" style="border-left: 0px solid black;">0.069</td>
<td align="right" style="border-left: 0px solid black;">12.383</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">0.0000</td>
</tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: coxph(formula = TS $\sim$ rx + obstruct + adhere + differ + extent +     surg + node4, data = colon)</td>
</tr>
</table>


## Customize the zebra striping colors

If you wanted to use several colors for zebra striping, you can set the parameter 'zebra' to zero(e.g. zebra=0) and set the 'zebra.color' parameter with vector of your favorite colors. Your favorite colors are used to zebra striping. For your convienience, ten colors are predifned for this purpose. The predefined colors are: 
c("peach","peach-orange","peachpuff","peach-yellow","pear","pearl","peridot","periwinkle","pastelred", "pastelgray"). 


```r
ztable(head(mtcars,15),zebra=0,zebra.color=NULL) 
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">hp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">drat</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">wt</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">qsec</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">vs</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">am</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">gear</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">carb</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">2.62</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">16.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFDAB9; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">2.88</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">17.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFDAB9;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FADFAD; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">4.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">108.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">93.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.85</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">2.32</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">18.61</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FADFAD;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #D1E231; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">21.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">258.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.08</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.21</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">19.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #D1E231;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #F0EAD6; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">18.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">360.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">175.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">3.15</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">3.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">17.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E6E200; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">18.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">225.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">105.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">2.76</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">3.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">20.22</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E6E200;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #CCCCFF; ">Duster 360</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">14.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">360.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">245.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">3.21</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">3.57</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">15.84</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #CCCCFF;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FF6961; ">Merc 240D</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">24.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">4.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">146.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">62.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">3.69</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">3.19</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">20.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FF6961;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #CFCFC4; ">Merc 230</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">4.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">140.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">95.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">3.92</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">3.15</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">22.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #CFCFC4;">2.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">Merc 280</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">19.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">167.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">123.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">3.92</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">3.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">18.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Merc 280C</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">17.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">167.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">123.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.92</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">18.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">1.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">4.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFDAB9; ">Merc 450SE</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">16.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">275.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">180.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.07</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">4.07</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">17.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFDAB9;">3.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FADFAD; ">Merc 450SL</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">17.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">275.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">180.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.07</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.73</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">17.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FADFAD;">3.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #D1E231; ">Merc 450SLC</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">15.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">275.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">180.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.07</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.78</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">18.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #D1E231;">3.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #F0EAD6; ">Cadillac Fleetwood</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">10.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">472.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">205.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">2.93</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">5.25</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">17.98</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">0.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">4.00</td>
</tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

The color names used for this purpose are predefined in the data 'zcolors' included in 'ztable' package. Please type '?zcolors' in R console for help file or just type 'zcolors'. You can see 749 color names defined in data 'zcolors'. 


## Vertical striping

If you wanted to vertical striping table, you can get it by set the parameter zebra.type 2. You can change the ztables parameters when printing. 

```r
z1=ztable(head(iris),zebra=2)
z1
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
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
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="right" style="border-left: 0px solid black;">4.70</td>
<td align="right" style="border-left: 0px solid black;">3.20</td>
<td align="right" style="border-left: 0px solid black;">1.30</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="right" style="border-left: 0px solid black;">5.00</td>
<td align="right" style="border-left: 0px solid black;">3.60</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
print(z1,zebra.type=2)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.10</td>
<td align="right" style="border-left: 0px solid black;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.90</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.70</td>
<td align="right" style="border-left: 0px solid black;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.30</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">4.60</td>
<td align="right" style="border-left: 0px solid black;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.50</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.00</td>
<td align="right" style="border-left: 0px solid black;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">5.40</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">1.70</td>
<td align="right" style="border-left: 0px solid black;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E5E4E2;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
print(z1,zebra=1,zebra.type=2,zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #E5E4E2;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #E5E4E2;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #E5E4E2;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.50</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">2</td>
<td align="right" style="border-left: 0px solid black;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.00</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">3</td>
<td align="right" style="border-left: 0px solid black;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.20</td>
<td align="right" style="border-left: 0px solid black;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">4</td>
<td align="right" style="border-left: 0px solid black;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.10</td>
<td align="right" style="border-left: 0px solid black;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">5</td>
<td align="right" style="border-left: 0px solid black;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.60</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E5E4E2; ">6</td>
<td align="right" style="border-left: 0px solid black;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">3.90</td>
<td align="right" style="border-left: 0px solid black;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #E5E4E2;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## More tailoring zebra striping

You can update parameters of ztable with 'update_ztable' function.

```r
options(ztable.zebra.color=NULL)
(z1=ztable(head(iris),zebra=0,zebra.type=2))
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can change the background color of colnames rows by setting zebra.colnames=TRUE.


```r
update_ztable(z1,colnames.bold=TRUE,zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFE5B4;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFCC99;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFDAB9;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FADFAD;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #D1E231;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #F0EAD6;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can customize the striping when printing.

```r
print(z1,zebra.color=c(rep("white",5),"peach"),zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFE5B4;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;">3.50</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">2</td>
<td align="right" style="border-left: 0px solid black;">4.90</td>
<td align="right" style="border-left: 0px solid black;">3.00</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="right" style="border-left: 0px solid black;">4.70</td>
<td align="right" style="border-left: 0px solid black;">3.20</td>
<td align="right" style="border-left: 0px solid black;">1.30</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">4</td>
<td align="right" style="border-left: 0px solid black;">4.60</td>
<td align="right" style="border-left: 0px solid black;">3.10</td>
<td align="right" style="border-left: 0px solid black;">1.50</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="right" style="border-left: 0px solid black;">5.00</td>
<td align="right" style="border-left: 0px solid black;">3.60</td>
<td align="right" style="border-left: 0px solid black;">1.40</td>
<td align="right" style="border-left: 0px solid black;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">6</td>
<td align="right" style="border-left: 0px solid black;">5.40</td>
<td align="right" style="border-left: 0px solid black;">3.90</td>
<td align="right" style="border-left: 0px solid black;">1.70</td>
<td align="right" style="border-left: 0px solid black;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>


## Change the background color of all cells

You can change the background color of all cells by setting the zebra.type=0.

```r
ztable(head(iris),zebra=0,zebra.type=0)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E6E200; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFDAB9; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #CCCCFF;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FF6961; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FADFAD;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #D1E231; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #CFCFC4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE5B4; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E6E200; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #CFCFC4;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
ztable(head(iris),zebra=0,zebra.type=0,zebra.color=zcolors$name,zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #5D8AA8;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #F0F8FF;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #E32636;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #EFDECD;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #E52B50;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFBF00;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FF7E00; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF033E;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #9966CC;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #F2F3F4;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #CD9575;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #915C83;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FAEBD7; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #0000FF;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #008000;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #8DB600;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FBCEB1;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #00FFFF;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #7FFFD0; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #4B5320;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #3B444B;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #E9D66B;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #B2BEB5;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #87A96B;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FF9966; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #6D351A;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FDEE00;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #6E7F80;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF2052;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #007FFF;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #F0FFFF; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #89CFF0;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #A1CAF1;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #F4C2C2;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #21ABCD;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FAE7B5;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFE135; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #848482;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #98777B;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #BCD4E6;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #9F8170;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F5F5DC;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## Diagonal striping

You can make diagonal striping with use of zebra.color greater/lesser than column length by 1.


```r
ztable(head(iris),zebra=0,zebra.type=0,zebra.color=1:7,zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFE5B4;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFCC99;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFDAB9;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FADFAD;">Petal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #D1E231;">Petal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #F0EAD6;">Species</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E6E200; ">1</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">5.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #D1E231;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #F0EAD6; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">3.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FADFAD;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #D1E231; ">3</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">4.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">3.20</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">1.30</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFDAB9;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FADFAD; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">3.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">1.50</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFDAB9; ">5</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">5.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">3.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">1.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">0.20</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFE5B4;">setosa</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">1.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">0.40</td>
<td align="left" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E6E200;">setosa</td>
</tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
ztable(head(mtcars[,1:9]),zebra=0,zebra.type=0,zebra.color=1:9,zebra.colnames=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFE5B4;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFCC99;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFDAB9;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FADFAD;">disp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #D1E231;">hp</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #F0EAD6;">drat</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #E6E200;">wt</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #CCCCFF;">qsec</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FF6961;">vs</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;background-color: #FFE5B4;">am</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">2.62</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">16.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFDAB9; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">160.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">3.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">2.88</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">17.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFDAB9;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FADFAD; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">4.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">108.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">93.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">3.85</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">2.32</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">18.61</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FADFAD;">1.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #D1E231; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">21.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">258.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">110.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">3.08</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.21</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">19.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #D1E231;">0.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #F0EAD6; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;background-color: #E6E200;">18.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">8.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">360.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">175.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.15</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">3.44</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">17.02</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">0.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #F0EAD6;">0.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #E6E200; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;background-color: #CCCCFF;">18.10</td>
<td align="right" style="border-left: 0px solid black;background-color: #FF6961;">6.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFE5B4;">225.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">105.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFDAB9;">2.76</td>
<td align="right" style="border-left: 0px solid black;background-color: #FADFAD;">3.46</td>
<td align="right" style="border-left: 0px solid black;background-color: #D1E231;">20.22</td>
<td align="right" style="border-left: 0px solid black;background-color: #F0EAD6;">1.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #E6E200;">0.00</td>
</tr>
<tr>
<td colspan="10" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## All background colors

This is demonstration of All background colors. All 749 colors are available in package ztable. Please type ?zcolors. 

```r
mycolor=rep("white",6)
for(i in 1:149){
    mycolor=c(mycolor,"white",zcolors$name[((i-1)*5+1):((i-1)*5+5)])
}
mycolor=c(mycolor,"white",zcolors$name[c(746:749,1)])
a=c(zcolors$name[1:5])
for(i in 2:149){
    a=rbind(a,zcolors$name[((i-1)*5+1):((i-1)*5+5)])
}
a=rbind(a,zcolors$name[c(746:749,1)])
a=data.frame(a,stringsAsFactors=FALSE,row.names=NULL)
ztable(a,zebra=0,zebra.type=0,zebra.color=mycolor,include.rownames=FALSE,
       include.colnames=FALSE,longtable=TRUE)
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<td align="left" style="border-left: 0px solid black;border-top: 2px solid gray;background-color: #5D8AA8;">airforceblue</td>
<td align="left" style="border-left: 0px solid black;border-top: 2px solid gray;background-color: #F0F8FF;">aliceblue</td>
<td align="left" style="border-left: 0px solid black;border-top: 2px solid gray;background-color: #E32636;">alizarin</td>
<td align="left" style="border-left: 0px solid black;border-top: 2px solid gray;background-color: #EFDECD;">almond</td>
<td align="NA" style="border-left: 0px solid black;border-top: 2px solid gray;background-color: #E52B50;">amaranth</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFBF00;">amber</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF7E00;">ambersaeece</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF033E;">americanrose</td>
<td align="left" style="border-left: 0px solid black;background-color: #9966CC;">amethyst</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F2F3F4;">anti-flashwhite</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CD9575;">antiquebrass</td>
<td align="left" style="border-left: 0px solid black;background-color: #915C83;">antiquefuchsia</td>
<td align="left" style="border-left: 0px solid black;background-color: #FAEBD7;">antiquewhite</td>
<td align="left" style="border-left: 0px solid black;background-color: #0000FF;">ao</td>
<td align="NA" style="border-left: 0px solid black;background-color: #008000;">aoenglish</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8DB600;">applegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FBCEB1;">apricot</td>
<td align="left" style="border-left: 0px solid black;background-color: #00FFFF;">aqua</td>
<td align="left" style="border-left: 0px solid black;background-color: #7FFFD0;">aquamarine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #4B5320;">armygreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #3B444B;">arsenic</td>
<td align="left" style="border-left: 0px solid black;background-color: #E9D66B;">arylideyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #B2BEB5;">ashgrey</td>
<td align="left" style="border-left: 0px solid black;background-color: #87A96B;">asparagus</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF9966;">atomictangerine</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #6D351A;">auburn</td>
<td align="left" style="border-left: 0px solid black;background-color: #FDEE00;">aureolin</td>
<td align="left" style="border-left: 0px solid black;background-color: #6E7F80;">aurometalsaurus</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF2052;">awesome</td>
<td align="NA" style="border-left: 0px solid black;background-color: #007FFF;">azurecolorwheel</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #F0FFFF;">azurewebazuremist</td>
<td align="left" style="border-left: 0px solid black;background-color: #89CFF0;">babyblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #A1CAF1;">babyblueeyes</td>
<td align="left" style="border-left: 0px solid black;background-color: #F4C2C2;">babypink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #21ABCD;">ballblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FAE7B5;">bananamania</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFE135;">bananayellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #848482;">battleshipgrey</td>
<td align="left" style="border-left: 0px solid black;background-color: #98777B;">bazaar</td>
<td align="NA" style="border-left: 0px solid black;background-color: #BCD4E6;">beaublue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #9F8170;">beaver</td>
<td align="left" style="border-left: 0px solid black;background-color: #F5F5DC;">beige</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFE4C4;">bisque</td>
<td align="left" style="border-left: 0px solid black;background-color: #3D2B1F;">bistre</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FE6F5E;">bittersweet</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #000000;">black</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFEBCD;">blanchedalmond</td>
<td align="left" style="border-left: 0px solid black;background-color: #318CE7;">bleudefrance</td>
<td align="left" style="border-left: 0px solid black;background-color: #ACE5EE;">blizzardblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FAF0BE;">blond</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #0000FF;">blue</td>
<td align="left" style="border-left: 0px solid black;background-color: #0093AF;">bluemunsell</td>
<td align="left" style="border-left: 0px solid black;background-color: #0087BD;">bluencs</td>
<td align="left" style="border-left: 0px solid black;background-color: #333399;">bluepigment</td>
<td align="NA" style="border-left: 0px solid black;background-color: #0247FE;">blueryb</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #A2A2D0;">bluebell</td>
<td align="left" style="border-left: 0px solid black;background-color: #6699CC;">bluegray</td>
<td align="left" style="border-left: 0px solid black;background-color: #00DDDD;">blue-green</td>
<td align="left" style="border-left: 0px solid black;background-color: #8A2BE2;">blue-violet</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DE5D83;">blush</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #79443B;">bole</td>
<td align="left" style="border-left: 0px solid black;background-color: #0095B6;">bondiblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC0000;">bostonuniversityred</td>
<td align="left" style="border-left: 0px solid black;background-color: #0070FF;">brandeisblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #B5A642;">brass</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CB4154;">brickred</td>
<td align="left" style="border-left: 0px solid black;background-color: #1DACD6;">brightcerulean</td>
<td align="left" style="border-left: 0px solid black;background-color: #66FF00;">brightgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #BF94E4;">brightlavender</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C32148;">brightmaroon</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF007F;">brightpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #08E8DE;">brightturquoise</td>
<td align="left" style="border-left: 0px solid black;background-color: #D19FE8;">brightube</td>
<td align="left" style="border-left: 0px solid black;background-color: #F4BBFF;">brilliantlavender</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF55A3;">brilliantrose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FB607F;">brinkpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #004225;">britishracinggreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #CD7F32;">bronze</td>
<td align="left" style="border-left: 0px solid black;background-color: #964B00;">browntraditional</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A52A2A;">brownweb</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFC1CC;">bubblegum</td>
<td align="left" style="border-left: 0px solid black;background-color: #E7FEFF;">bubbles</td>
<td align="left" style="border-left: 0px solid black;background-color: #F0DC82;">buff</td>
<td align="left" style="border-left: 0px solid black;background-color: #480607;">bulgarianrose</td>
<td align="NA" style="border-left: 0px solid black;background-color: #800020;">burgundy</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #DEB887;">burlywood</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC5500;">burntorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #E97451;">burntsienna</td>
<td align="left" style="border-left: 0px solid black;background-color: #8A3324;">burntumber</td>
<td align="NA" style="border-left: 0px solid black;background-color: #BD33A4;">byzantine</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #702963;">byzantium</td>
<td align="left" style="border-left: 0px solid black;background-color: #536872;">cadet</td>
<td align="left" style="border-left: 0px solid black;background-color: #5F9EA0;">cadetblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #91A3B0;">cadetgrey</td>
<td align="NA" style="border-left: 0px solid black;background-color: #006B3C;">cadmiumgreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #ED872D;">cadmiumorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #E30022;">cadmiumred</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFF600;">cadmiumyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #1E4D2B;">calpolypomonagreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A3C1AD;">cambridgeblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #C19A6B;">camel</td>
<td align="left" style="border-left: 0px solid black;background-color: #78866B;">camouflagegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFEF00;">canaryyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF0800;">candyapplered</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E4717A;">candypink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00BFFF;">capri</td>
<td align="left" style="border-left: 0px solid black;background-color: #592720;">caputmortuum</td>
<td align="left" style="border-left: 0px solid black;background-color: #C41E3A;">cardinal</td>
<td align="left" style="border-left: 0px solid black;background-color: #00CC99;">caribbeangreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #960018;">carmine</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #EB4C42;">carminepink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF0038;">carminered</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA6C9;">carnationpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #B31B1B;">carnelian</td>
<td align="NA" style="border-left: 0px solid black;background-color: #99BADD;">carolinablue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #ED9121;">carrotorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #92A1CF;">ceil</td>
<td align="left" style="border-left: 0px solid black;background-color: #ACE1AF;">celadon</td>
<td align="left" style="border-left: 0px solid black;background-color: #4997D0;">celestialblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DE3163;">cerise</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #EC3B83;">cerisepink</td>
<td align="left" style="border-left: 0px solid black;background-color: #007BA7;">cerulean</td>
<td align="left" style="border-left: 0px solid black;background-color: #2A52BE;">ceruleanblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #A0785A;">chamoisee</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F7E7CE;">champagne</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #36454F;">charcoal</td>
<td align="left" style="border-left: 0px solid black;background-color: #DFFF00;">chartreusetraditional</td>
<td align="left" style="border-left: 0px solid black;background-color: #7FFF00;">chartreuseweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFB7C5;">cherryblossompink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #CD5C5C;">chestnut</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #7B3F00;">chocolatetraditional</td>
<td align="left" style="border-left: 0px solid black;background-color: #D2691E;">chocolateweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA700;">chromeyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #98817B;">cinereous</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E34234;">cinnabar</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #D2691E;">cinnamon</td>
<td align="left" style="border-left: 0px solid black;background-color: #E4D00A;">citrine</td>
<td align="left" style="border-left: 0px solid black;background-color: #FBCCE7;">classicrose</td>
<td align="left" style="border-left: 0px solid black;background-color: #0047AB;">cobalt</td>
<td align="NA" style="border-left: 0px solid black;background-color: #D2691E;">cocoabrown</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #9BDDFF;">columbiablue</td>
<td align="left" style="border-left: 0px solid black;background-color: #002E63;">coolblack</td>
<td align="left" style="border-left: 0px solid black;background-color: #8C92AC;">coolgrey</td>
<td align="left" style="border-left: 0px solid black;background-color: #B87333;">copper</td>
<td align="NA" style="border-left: 0px solid black;background-color: #996666;">copperrose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF3800;">coquelicot</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF7F50;">coral</td>
<td align="left" style="border-left: 0px solid black;background-color: #F88379;">coralpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF4040;">coralred</td>
<td align="NA" style="border-left: 0px solid black;background-color: #893F45;">cordovan</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FBEC5D;">corn</td>
<td align="left" style="border-left: 0px solid black;background-color: #B31B1B;">cornellred</td>
<td align="left" style="border-left: 0px solid black;background-color: #6495ED;">cornflowerblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFF8DC;">cornsilk</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFF8E7;">cosmiclatte</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFBCD9;">cottoncandy</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFDD0;">cream</td>
<td align="left" style="border-left: 0px solid black;background-color: #DC143C;">crimson</td>
<td align="left" style="border-left: 0px solid black;background-color: #BE0032;">crimsonglory</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00FFFF;">cyan</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00B7EB;">cyanprocess</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFF31;">daffodil</td>
<td align="left" style="border-left: 0px solid black;background-color: #F0E130;">dandelion</td>
<td align="left" style="border-left: 0px solid black;background-color: #00008B;">darkblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #654321;">darkbrown</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #5D3954;">darkbyzantium</td>
<td align="left" style="border-left: 0px solid black;background-color: #A40000;">darkcandyapplered</td>
<td align="left" style="border-left: 0px solid black;background-color: #08457E;">darkcerulean</td>
<td align="left" style="border-left: 0px solid black;background-color: #C2B280;">darkchampagne</td>
<td align="NA" style="border-left: 0px solid black;background-color: #986960;">darkchestnut</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CD5B45;">darkcoral</td>
<td align="left" style="border-left: 0px solid black;background-color: #008B8B;">darkcyan</td>
<td align="left" style="border-left: 0px solid black;background-color: #536878;">darkelectricblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #B8860B;">darkgoldenrod</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A9A9A9;">darkgray</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #013220;">darkgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #1A2421;">darkjunglegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #BDB76B;">darkkhaki</td>
<td align="left" style="border-left: 0px solid black;background-color: #483C32;">darklava</td>
<td align="NA" style="border-left: 0px solid black;background-color: #734F96;">darklavender</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8B008B;">darkmagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #003366;">darkmidnightblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #556B2F;">darkolivegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF8C00;">darkorange</td>
<td align="NA" style="border-left: 0px solid black;background-color: #9932CC;">darkorchid</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #779ECB;">darkpastelblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #03C03C;">darkpastelgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #966FD6;">darkpastelpurple</td>
<td align="left" style="border-left: 0px solid black;background-color: #C23B22;">darkpastelred</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E75480;">darkpink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #003399;">darkpowderblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #872657;">darkraspberry</td>
<td align="left" style="border-left: 0px solid black;background-color: #8B0000;">darkred</td>
<td align="left" style="border-left: 0px solid black;background-color: #E9967A;">darksalmon</td>
<td align="NA" style="border-left: 0px solid black;background-color: #560319;">darkscarlet</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8FBC8F;">darkseagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #3C1414;">darksienna</td>
<td align="left" style="border-left: 0px solid black;background-color: #483D8B;">darkslateblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #2F4F4F;">darkslategray</td>
<td align="NA" style="border-left: 0px solid black;background-color: #177245;">darkspringgreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #918151;">darktan</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA812;">darktangerine</td>
<td align="left" style="border-left: 0px solid black;background-color: #483C32;">darktaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC4E5C;">darkterracotta</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00CED1;">darkturquoise</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #9400D3;">darkviolet</td>
<td align="left" style="border-left: 0px solid black;background-color: #00693E;">dartmouthgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #D70A53;">debianred</td>
<td align="left" style="border-left: 0px solid black;background-color: #A9203E;">deepcarmine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #EF3038;">deepcarminepink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E9692C;">deepcarrotorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #DA3287;">deepcerise</td>
<td align="left" style="border-left: 0px solid black;background-color: #FAD6A5;">deepchampagne</td>
<td align="left" style="border-left: 0px solid black;background-color: #B94E48;">deepchestnut</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C154C1;">deepfuchsia</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #004B49;">deepjunglegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #9955BB;">deeplilac</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC00CC;">deepmagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFCBA4;">deeppeach</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF1493;">deeppink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF9933;">deepsaffron</td>
<td align="left" style="border-left: 0px solid black;background-color: #00BFFF;">deepskyblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #1560BD;">denim</td>
<td align="left" style="border-left: 0px solid black;background-color: #C19A6B;">desert</td>
<td align="NA" style="border-left: 0px solid black;background-color: #EDC9AF;">desertsand</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #696969;">dimgray</td>
<td align="left" style="border-left: 0px solid black;background-color: #1E90FF;">dodgerblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #D71868;">dogwoodrose</td>
<td align="left" style="border-left: 0px solid black;background-color: #85BB65;">dollarbill</td>
<td align="NA" style="border-left: 0px solid black;background-color: #967117;">drab</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00009C;">dukeblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #E1A95F;">earthyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #C2B280;">ecru</td>
<td align="left" style="border-left: 0px solid black;background-color: #614051;">eggplant</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F0EAD6;">eggshell</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #1034A6;">egyptianblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #7DF9FF;">electricblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF003F;">electriccrimson</td>
<td align="left" style="border-left: 0px solid black;background-color: #00FFFF;">electriccyan</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00FF00;">electricgreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #6F00FF;">electricindigo</td>
<td align="left" style="border-left: 0px solid black;background-color: #F4BBFF;">electriclavender</td>
<td align="left" style="border-left: 0px solid black;background-color: #CCFF00;">electriclime</td>
<td align="left" style="border-left: 0px solid black;background-color: #BF00FF;">electricpurple</td>
<td align="NA" style="border-left: 0px solid black;background-color: #3F00FF;">electricultramarine</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8F00FF;">electricviolet</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFF00;">electricyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #50C878;">emerald</td>
<td align="left" style="border-left: 0px solid black;background-color: #96C8A2;">etonblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C19A6B;">fallow</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #801818;">falured</td>
<td align="left" style="border-left: 0px solid black;background-color: #B53389;">fandango</td>
<td align="left" style="border-left: 0px solid black;background-color: #F400A1;">fashionfuchsia</td>
<td align="left" style="border-left: 0px solid black;background-color: #E5AA70;">fawn</td>
<td align="NA" style="border-left: 0px solid black;background-color: #4D5D53;">feldgrau</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #4F7942;">ferngreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF2800;">ferrarired</td>
<td align="left" style="border-left: 0px solid black;background-color: #6C541E;">fielddrab</td>
<td align="left" style="border-left: 0px solid black;background-color: #B22222;">firebrick</td>
<td align="NA" style="border-left: 0px solid black;background-color: #CE2029;">fireenginered</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E25822;">flame</td>
<td align="left" style="border-left: 0px solid black;background-color: #FC8EAC;">flamingopink</td>
<td align="left" style="border-left: 0px solid black;background-color: #F7E98E;">flavescent</td>
<td align="left" style="border-left: 0px solid black;background-color: #EEDC82;">flax</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFFAF0;">floralwhite</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFBF00;">fluorescentorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF1493;">fluorescentpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #CCFF00;">fluorescentyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF004F;">folly</td>
<td align="NA" style="border-left: 0px solid black;background-color: #014421;">forestgreentraditional</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #228B22;">forestgreenweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #A67B5B;">frenchbeige</td>
<td align="left" style="border-left: 0px solid black;background-color: #0072BB;">frenchblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #86608E;">frenchlilac</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F64A8A;">frenchrose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF00FF;">fuchsia</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF77FF;">fuchsiapink</td>
<td align="left" style="border-left: 0px solid black;background-color: #E48400;">fulvous</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC6666;">fuzzywuzzy</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DCDCDC;">gainsboro</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E49B0F;">gamboge</td>
<td align="left" style="border-left: 0px solid black;background-color: #F8F8FF;">ghostwhite</td>
<td align="left" style="border-left: 0px solid black;background-color: #B06500;">ginger</td>
<td align="left" style="border-left: 0px solid black;background-color: #6082B6;">glaucous</td>
<td align="NA" style="border-left: 0px solid black;background-color: #D4AF37;">goldmetallic</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFD700;">goldwebgolden</td>
<td align="left" style="border-left: 0px solid black;background-color: #996515;">goldenbrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #FCC200;">goldenpoppy</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFDF00;">goldenyellow</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DAA520;">goldenrod</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #A8E4A0;">grannysmithapple</td>
<td align="left" style="border-left: 0px solid black;background-color: #808080;">gray</td>
<td align="left" style="border-left: 0px solid black;background-color: #7F7F7F;">grayhtmlcssgray</td>
<td align="left" style="border-left: 0px solid black;background-color: #BEBEBE;">grayx11gray</td>
<td align="NA" style="border-left: 0px solid black;background-color: #465945;">gray-asparagus</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00FF00;">greencolorwheelx11green</td>
<td align="left" style="border-left: 0px solid black;background-color: #008000;">greenhtmlcssgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #00A877;">greenmunsell</td>
<td align="left" style="border-left: 0px solid black;background-color: #009F6B;">greenncs</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00A550;">greenpigment</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #66B032;">greenryb</td>
<td align="left" style="border-left: 0px solid black;background-color: #ADFF2F;">green-yellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #A99A86;">grullo</td>
<td align="left" style="border-left: 0px solid black;background-color: #00FF7F;">guppiegreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #663854;">halayaube</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #446CCF;">hanblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #5218FA;">hanpurple</td>
<td align="left" style="border-left: 0px solid black;background-color: #E9D66B;">hansayellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #3FFF00;">harlequin</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C90016;">harvardcrimson</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #DA9100;">harvestgold</td>
<td align="left" style="border-left: 0px solid black;background-color: #808000;">heartgold</td>
<td align="left" style="border-left: 0px solid black;background-color: #DF73FF;">heliotrope</td>
<td align="left" style="border-left: 0px solid black;background-color: #F400A1;">hollywoodcerise</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F0FFF0;">honeydew</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF1DCE;">hotmagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF69B4;">hotpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #355E3B;">huntergreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #71A6D2;">iceberg</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FCF75E;">icterine</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #B2EC5D;">inchworm</td>
<td align="left" style="border-left: 0px solid black;background-color: #138808;">indiagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #CD5C5C;">indianred</td>
<td align="left" style="border-left: 0px solid black;background-color: #E3A857;">indianyellow</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00416A;">indigodye</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #4B0082;">indigoweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #002FA7;">internationalkleinblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF4F00;">internationalorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #5A4FCF;">iris</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F4F0EC;">isabelline</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #009000;">islamicgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFFF0;">ivory</td>
<td align="left" style="border-left: 0px solid black;background-color: #00A86B;">jade</td>
<td align="left" style="border-left: 0px solid black;background-color: #D73B3E;">jasper</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A50B5E;">jazzberryjam</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FADA5E;">jonquil</td>
<td align="left" style="border-left: 0px solid black;background-color: #BDDA57;">junebud</td>
<td align="left" style="border-left: 0px solid black;background-color: #29AB87;">junglegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #4CBB17;">kellygreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C3B091;">khakihtmlcsskhaki</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #F0E68C;">khakix11lightkhaki</td>
<td align="left" style="border-left: 0px solid black;background-color: #087830;">lasallegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #D6CADD;">languidlavender</td>
<td align="left" style="border-left: 0px solid black;background-color: #26619C;">lapislazuli</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FEFE22;">laserlemon</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CF1020;">lava</td>
<td align="left" style="border-left: 0px solid black;background-color: #B57EDC;">lavenderfloral</td>
<td align="left" style="border-left: 0px solid black;background-color: #E6E6FA;">lavenderweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #CCCCFF;">lavenderblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFF0F5;">lavenderblush</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #C4C3D0;">lavendergray</td>
<td align="left" style="border-left: 0px solid black;background-color: #9457EB;">lavenderindigo</td>
<td align="left" style="border-left: 0px solid black;background-color: #EE82EE;">lavendermagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #E6E6FA;">lavendermist</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FBAED2;">lavenderpink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #967BB6;">lavenderpurple</td>
<td align="left" style="border-left: 0px solid black;background-color: #FBA0E3;">lavenderrose</td>
<td align="left" style="border-left: 0px solid black;background-color: #7CFC00;">lawngreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFF700;">lemon</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFFACD;">lemonchiffon</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FDD5B1;">lightapricot</td>
<td align="left" style="border-left: 0px solid black;background-color: #ADD8E6;">lightblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #B5651D;">lightbrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #E66771;">lightcarminepink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F08080;">lightcoral</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #93CCEA;">lightcornflowerblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #E0FFFF;">lightcyan</td>
<td align="left" style="border-left: 0px solid black;background-color: #F984EF;">lightfuchsiapink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FAFAD2;">lightgoldenrodyellow</td>
<td align="NA" style="border-left: 0px solid black;background-color: #D3D3D3;">lightgray</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #90EE90;">lightgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #F0E68C;">lightkhaki</td>
<td align="left" style="border-left: 0px solid black;background-color: #DCD0FF;">lightmauve</td>
<td align="left" style="border-left: 0px solid black;background-color: #B19CD9;">lightpastelpurple</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFB6C1;">lightpink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFA07A;">lightsalmon</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF9999;">lightsalmonpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #20B2AA;">lightseagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #87CEEB;">lightskyblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #778899;">lightslategray</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #B38B6D;">lighttaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #E68FAC;">lightthulianpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFFED;">lightyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #C8A2C8;">lilac</td>
<td align="NA" style="border-left: 0px solid black;background-color: #BFFF00;">limecolorwheel</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00FF00;">limewebx11green</td>
<td align="left" style="border-left: 0px solid black;background-color: #32CD32;">limegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #195905;">lincolngreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FAF0E6;">linen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #534B4F;">liver</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E62020;">lust</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFBD88;">macaroniandcheese</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF00FF;">magenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #CA1F7B;">magentadye</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF0090;">magentaprocess</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #AAF0D1;">magicmint</td>
<td align="left" style="border-left: 0px solid black;background-color: #F8F4FF;">magnolia</td>
<td align="left" style="border-left: 0px solid black;background-color: #C04000;">mahogany</td>
<td align="left" style="border-left: 0px solid black;background-color: #FBEC5D;">maize</td>
<td align="NA" style="border-left: 0px solid black;background-color: #6050DC;">majorelleblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #0BDA51;">malachite</td>
<td align="left" style="border-left: 0px solid black;background-color: #979AAA;">manatee</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF8243;">mangotango</td>
<td align="left" style="border-left: 0px solid black;background-color: #800000;">maroonhtmlcss</td>
<td align="NA" style="border-left: 0px solid black;background-color: #B03060;">maroonx11</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E0B0FF;">mauve</td>
<td align="left" style="border-left: 0px solid black;background-color: #915F6D;">mauvetaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #EF98AA;">mauvelous</td>
<td align="left" style="border-left: 0px solid black;background-color: #73C2FB;">mayablue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E5B73B;">meatbrown</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #66DDAA;">mediumaquamarine</td>
<td align="left" style="border-left: 0px solid black;background-color: #0000CD;">mediumblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #E2062C;">mediumcandyapplered</td>
<td align="left" style="border-left: 0px solid black;background-color: #AF4035;">mediumcarmine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #035096;">mediumelectricblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #1C352D;">mediumjunglegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #DDA0DD;">mediumlavendermagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #BA55D3;">mediumorchid</td>
<td align="left" style="border-left: 0px solid black;background-color: #0067A5;">mediumpersianblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #9370DB;">mediumpurple</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #BB3385;">mediumred-violet</td>
<td align="left" style="border-left: 0px solid black;background-color: #3CB371;">mediumseagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #7B68EE;">mediumslateblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #C9DC87;">mediumspringbud</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00FA9A;">mediumspringgreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #674C47;">mediumtaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #0054B4;">mediumtealblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #48D1CC;">mediumturquoise</td>
<td align="left" style="border-left: 0px solid black;background-color: #C71585;">mediumviolet-red</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FDBCB4;">melon</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #191970;">midnightblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #004953;">midnightgreeneaglegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFC40C;">mikadoyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #3EB489;">mint</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F5FFFA;">mintcream</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #98FF98;">mintgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFE4E1;">mistyrose</td>
<td align="left" style="border-left: 0px solid black;background-color: #FAEBD7;">moccasin</td>
<td align="left" style="border-left: 0px solid black;background-color: #967117;">modebeige</td>
<td align="NA" style="border-left: 0px solid black;background-color: #73A9C2;">moonstoneblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #AE0C00;">mordantred19</td>
<td align="left" style="border-left: 0px solid black;background-color: #ADDFAD;">mossgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #30BA8F;">mountainmeadow</td>
<td align="left" style="border-left: 0px solid black;background-color: #997A8D;">mountbattenpink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C54B8C;">mulberry</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFDB58;">mustard</td>
<td align="left" style="border-left: 0px solid black;background-color: #21421E;">myrtle</td>
<td align="left" style="border-left: 0px solid black;background-color: #18453B;">msugreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #F6ADC6;">nadeshikopink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #2A8000;">napiergreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FADA5E;">naplesyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFDEAD;">navajowhite</td>
<td align="left" style="border-left: 0px solid black;background-color: #000080;">navyblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA343;">neoncarrot</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FE59C2;">neonfuchsia</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #39FF14;">neongreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #A4DDED;">non-photoblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #0077BE;">oceanboatblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC7722;">ochre</td>
<td align="NA" style="border-left: 0px solid black;background-color: #008000;">officegreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CFB53B;">oldgold</td>
<td align="left" style="border-left: 0px solid black;background-color: #FDF5E6;">oldlace</td>
<td align="left" style="border-left: 0px solid black;background-color: #796878;">oldlavender</td>
<td align="left" style="border-left: 0px solid black;background-color: #673147;">oldmauve</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C08081;">oldrose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #808000;">olive</td>
<td align="left" style="border-left: 0px solid black;background-color: #9AB973;">olivine</td>
<td align="left" style="border-left: 0px solid black;background-color: #0F0F0F;">onyx</td>
<td align="left" style="border-left: 0px solid black;background-color: #B784A7;">operamauve</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF7F00;">orangecolorwheel</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FB9902;">orangeryb</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA500;">orangewebcolor</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF9F00;">orangepeel</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF4500;">orange-red</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DA70D6;">orchid</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #654321;">otterbrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #414A4C;">outerspace</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF6E4A;">outrageousorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #002147;">oxfordblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #990000;">oucrimsonred</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #006600;">pakistangreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #273BE2;">palatinateblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #682860;">palatinatepurple</td>
<td align="left" style="border-left: 0px solid black;background-color: #BCD4E6;">paleaqua</td>
<td align="NA" style="border-left: 0px solid black;background-color: #AFEEEE;">paleblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #987654;">palebrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #AF4035;">palecarmine</td>
<td align="left" style="border-left: 0px solid black;background-color: #9BC4E2;">palecerulean</td>
<td align="left" style="border-left: 0px solid black;background-color: #DDADAF;">palechestnut</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DA8A67;">palecopper</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #ABCDEF;">palecornflowerblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #E6BE8A;">palegold</td>
<td align="left" style="border-left: 0px solid black;background-color: #EEE8AA;">palegoldenrod</td>
<td align="left" style="border-left: 0px solid black;background-color: #98FB98;">palegreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F984E5;">palemagenta</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FADADD;">palepink</td>
<td align="left" style="border-left: 0px solid black;background-color: #DDA0DD;">paleplum</td>
<td align="left" style="border-left: 0px solid black;background-color: #DB7093;">palered-violet</td>
<td align="left" style="border-left: 0px solid black;background-color: #96DED1;">palerobineggblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C9C0BB;">palesilver</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #ECEBBD;">palespringbud</td>
<td align="left" style="border-left: 0px solid black;background-color: #BC987E;">paletaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #DB7093;">paleviolet-red</td>
<td align="left" style="border-left: 0px solid black;background-color: #78184A;">pansypurple</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFEFD5;">papayawhip</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #50C878;">parisgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #AEC6CF;">pastelblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #836953;">pastelbrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #CFCFC4;">pastelgray</td>
<td align="NA" style="border-left: 0px solid black;background-color: #77DD77;">pastelgreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #F49AC2;">pastelmagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFB347;">pastelorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFD1DC;">pastelpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #B39EB5;">pastelpurple</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF6961;">pastelred</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CB99C9;">pastelviolet</td>
<td align="left" style="border-left: 0px solid black;background-color: #FDFD96;">pastelyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #800080;">patriarch</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFE5B4;">peach</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFCC99;">peach-orange</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFDAB9;">peachpuff</td>
<td align="left" style="border-left: 0px solid black;background-color: #FADFAD;">peach-yellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #D1E231;">pear</td>
<td align="left" style="border-left: 0px solid black;background-color: #F0EAD6;">pearl</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E6E200;">peridot</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CCCCFF;">periwinkle</td>
<td align="left" style="border-left: 0px solid black;background-color: #1C39BB;">persianblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #00A693;">persiangreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #32127A;">persianindigo</td>
<td align="NA" style="border-left: 0px solid black;background-color: #D99058;">persianorange</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CD853F;">peru</td>
<td align="left" style="border-left: 0px solid black;background-color: #F77FBE;">persianpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #701C1C;">persianplum</td>
<td align="left" style="border-left: 0px solid black;background-color: #CC3333;">persianred</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FE28A2;">persianrose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #EC5800;">persimmon</td>
<td align="left" style="border-left: 0px solid black;background-color: #DF00FF;">phlox</td>
<td align="left" style="border-left: 0px solid black;background-color: #000F89;">phthaloblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #123524;">phthalogreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FDDDE6;">piggypink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #01796F;">pinegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFC0CB;">pink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF9966;">pink-orange</td>
<td align="left" style="border-left: 0px solid black;background-color: #E7ACCF;">pinkpearl</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F78FA7;">pinksherbet</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #93C572;">pistachio</td>
<td align="left" style="border-left: 0px solid black;background-color: #E5E4E2;">platinum</td>
<td align="left" style="border-left: 0px solid black;background-color: #8E4585;">plumtraditional</td>
<td align="left" style="border-left: 0px solid black;background-color: #DDA0DD;">plumweb</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF5A36;">portlandorange</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #B0E0E6;">powderblueweb</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF8F00;">princetonorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #701C1C;">prune</td>
<td align="left" style="border-left: 0px solid black;background-color: #003153;">prussianblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #DF00FF;">psychedelicpurple</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CC8899;">puce</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF7518;">pumpkin</td>
<td align="left" style="border-left: 0px solid black;background-color: #800080;">purplehtmlcss</td>
<td align="left" style="border-left: 0px solid black;background-color: #9F00C5;">purplemunsell</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A020F0;">purplex11</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #69359C;">purpleheart</td>
<td align="left" style="border-left: 0px solid black;background-color: #9678B6;">purplemountainmajesty</td>
<td align="left" style="border-left: 0px solid black;background-color: #FE4EDA;">purplepizzazz</td>
<td align="left" style="border-left: 0px solid black;background-color: #50404D;">purpletaupe</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF355E;">radicalred</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E30B5D;">raspberry</td>
<td align="left" style="border-left: 0px solid black;background-color: #915F6D;">raspberryglace</td>
<td align="left" style="border-left: 0px solid black;background-color: #E25098;">raspberrypink</td>
<td align="left" style="border-left: 0px solid black;background-color: #B3446C;">raspberryrose</td>
<td align="NA" style="border-left: 0px solid black;background-color: #826644;">rawumber</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF33CC;">razzledazzlerose</td>
<td align="left" style="border-left: 0px solid black;background-color: #E3256B;">razzmatazz</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF0000;">red</td>
<td align="left" style="border-left: 0px solid black;background-color: #F2003C;">redmunsell</td>
<td align="NA" style="border-left: 0px solid black;background-color: #C40233;">redncs</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #ED1C24;">redpigment</td>
<td align="left" style="border-left: 0px solid black;background-color: #FE2712;">redryb</td>
<td align="left" style="border-left: 0px solid black;background-color: #A52A2A;">red-brown</td>
<td align="left" style="border-left: 0px solid black;background-color: #C71585;">red-violet</td>
<td align="NA" style="border-left: 0px solid black;background-color: #AB4E52;">redwood</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #522D80;">regalia</td>
<td align="left" style="border-left: 0px solid black;background-color: #004040;">richblack</td>
<td align="left" style="border-left: 0px solid black;background-color: #F1A7FE;">richbrilliantlavender</td>
<td align="left" style="border-left: 0px solid black;background-color: #D70040;">richcarmine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #0892D0;">richelectricblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #A76BCF;">richlavender</td>
<td align="left" style="border-left: 0px solid black;background-color: #B666D2;">richlilac</td>
<td align="left" style="border-left: 0px solid black;background-color: #B03060;">richmaroon</td>
<td align="left" style="border-left: 0px solid black;background-color: #414833;">riflegreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00CCCC;">robineggblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF007F;">rose</td>
<td align="left" style="border-left: 0px solid black;background-color: #F9429E;">rosebonbon</td>
<td align="left" style="border-left: 0px solid black;background-color: #674846;">roseebony</td>
<td align="left" style="border-left: 0px solid black;background-color: #B76E79;">rosegold</td>
<td align="NA" style="border-left: 0px solid black;background-color: #E32636;">rosemadder</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF66CC;">rosepink</td>
<td align="left" style="border-left: 0px solid black;background-color: #AA98A9;">rosequartz</td>
<td align="left" style="border-left: 0px solid black;background-color: #905D5D;">rosetaupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #AB4E52;">rosevale</td>
<td align="NA" style="border-left: 0px solid black;background-color: #65000B;">rosewood</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #D40000;">rossocorsa</td>
<td align="left" style="border-left: 0px solid black;background-color: #BC8F8F;">rosybrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #0038A8;">royalazure</td>
<td align="left" style="border-left: 0px solid black;background-color: #002366;">royalbluetraditional</td>
<td align="NA" style="border-left: 0px solid black;background-color: #4169E1;">royalblueweb</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CA2C92;">royalfuchsia</td>
<td align="left" style="border-left: 0px solid black;background-color: #7851A9;">royalpurple</td>
<td align="left" style="border-left: 0px solid black;background-color: #E0115F;">ruby</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF0028;">ruddy</td>
<td align="NA" style="border-left: 0px solid black;background-color: #BB6528;">ruddybrown</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E18E96;">ruddypink</td>
<td align="left" style="border-left: 0px solid black;background-color: #A81C07;">rufous</td>
<td align="left" style="border-left: 0px solid black;background-color: #80461B;">russet</td>
<td align="left" style="border-left: 0px solid black;background-color: #B7410E;">rust</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00563F;">sacramentostategreen</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8B4513;">saddlebrown</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF6700;">safetyorangeblazeorange</td>
<td align="left" style="border-left: 0px solid black;background-color: #F4C430;">saffron</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF8C69;">salmon</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF91A4;">salmonpink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #C2B280;">sand</td>
<td align="left" style="border-left: 0px solid black;background-color: #967117;">sanddune</td>
<td align="left" style="border-left: 0px solid black;background-color: #ECD540;">sandstorm</td>
<td align="left" style="border-left: 0px solid black;background-color: #F4A460;">sandybrown</td>
<td align="NA" style="border-left: 0px solid black;background-color: #967117;">sandytaupe</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #92000A;">sangria</td>
<td align="left" style="border-left: 0px solid black;background-color: #507D2A;">sapgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #082567;">sapphire</td>
<td align="left" style="border-left: 0px solid black;background-color: #CBA135;">satinsheengold</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FF2000;">scarlet</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFD800;">schoolbusyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #76FF7A;">screamingreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #2E8B57;">seagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #321414;">sealbrown</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFF5EE;">seashell</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FFBA00;">selectiveyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #704214;">sepia</td>
<td align="left" style="border-left: 0px solid black;background-color: #8A795D;">shadow</td>
<td align="left" style="border-left: 0px solid black;background-color: #009E60;">shamrockgreen</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FC0FC0;">shockingpink</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #882D17;">sienna</td>
<td align="left" style="border-left: 0px solid black;background-color: #C0C0C0;">silver</td>
<td align="left" style="border-left: 0px solid black;background-color: #CB410B;">sinopia</td>
<td align="left" style="border-left: 0px solid black;background-color: #007474;">skobeloff</td>
<td align="NA" style="border-left: 0px solid black;background-color: #87CEEB;">skyblue</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #CF71AF;">skymagenta</td>
<td align="left" style="border-left: 0px solid black;background-color: #6A5ACD;">slateblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #708090;">slategray</td>
<td align="left" style="border-left: 0px solid black;background-color: #003399;">smaltdarkpowderblue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #933D41;">smokeytopaz</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #100C08;">smokyblack</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFAFA;">snow</td>
<td align="left" style="border-left: 0px solid black;background-color: #0FC0FC;">spirodiscoball</td>
<td align="left" style="border-left: 0px solid black;background-color: #FEFDFF;">splashedwhite</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A7FC00;">springbud</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00FF7F;">springgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #4682B4;">steelblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FADA5E;">stildegrainyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #E4D96F;">straw</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFCC33;">sunglow</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FAD6A5;">sunset</td>
<td align="left" style="border-left: 0px solid black;background-color: #D2B48C;">tan</td>
<td align="left" style="border-left: 0px solid black;background-color: #F94D00;">tangelo</td>
<td align="left" style="border-left: 0px solid black;background-color: #F28500;">tangerine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFCC00;">tangerineyellow</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #483C32;">taupe</td>
<td align="left" style="border-left: 0px solid black;background-color: #8B8589;">taupegray</td>
<td align="left" style="border-left: 0px solid black;background-color: #D0F0C0;">teagreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #F88379;">tearoseorange</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F4C2C2;">tearoserose</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #008080;">teal</td>
<td align="left" style="border-left: 0px solid black;background-color: #367588;">tealblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #006D5B;">tealgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #E2725B;">terracotta</td>
<td align="NA" style="border-left: 0px solid black;background-color: #D8BFD8;">thistle</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #DE6FA1;">thulianpink</td>
<td align="left" style="border-left: 0px solid black;background-color: #FC89AC;">ticklemepink</td>
<td align="left" style="border-left: 0px solid black;background-color: #0ABAB5;">tiffanyblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #DBD7D2;">timberwolf</td>
<td align="NA" style="border-left: 0px solid black;background-color: #EEE600;">titaniumyellow</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FF6347;">tomato</td>
<td align="left" style="border-left: 0px solid black;background-color: #746CC0;">toolbox</td>
<td align="left" style="border-left: 0px solid black;background-color: #FD0E35;">tractorred</td>
<td align="left" style="border-left: 0px solid black;background-color: #808080;">trolleygrey</td>
<td align="NA" style="border-left: 0px solid black;background-color: #00755E;">tropicalrainforest</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #0073CF;">trueblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #417DC1;">tuftsblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #DEAA88;">tumbleweed</td>
<td align="left" style="border-left: 0px solid black;background-color: #B57281;">turkishrose</td>
<td align="NA" style="border-left: 0px solid black;background-color: #30D5C8;">turquoise</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #00FFEF;">turquoiseblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #A0D6B4;">turquoisegreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #823535;">tuscanred</td>
<td align="left" style="border-left: 0px solid black;background-color: #8A496B;">twilightlavender</td>
<td align="NA" style="border-left: 0px solid black;background-color: #66023C;">tyrianpurple</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #0033AA;">uablue</td>
<td align="left" style="border-left: 0px solid black;background-color: #D9004C;">uared</td>
<td align="left" style="border-left: 0px solid black;background-color: #8878C3;">ube</td>
<td align="left" style="border-left: 0px solid black;background-color: #536895;">uclablue</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFB300;">uclagold</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #3CD070;">ufogreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #120A8F;">ultramarine</td>
<td align="left" style="border-left: 0px solid black;background-color: #4166F5;">ultramarineblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF6FFF;">ultrapink</td>
<td align="NA" style="border-left: 0px solid black;background-color: #635147;">umber</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #5B92E5;">unitednationsblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFF66;">unmellowyellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #014421;">upforestgreen</td>
<td align="left" style="border-left: 0px solid black;background-color: #7B1113;">upmaroon</td>
<td align="NA" style="border-left: 0px solid black;background-color: #AE2029;">upsdellred</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E1AD21;">urobilin</td>
<td align="left" style="border-left: 0px solid black;background-color: #990000;">usccardinal</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFCC00;">uscgold</td>
<td align="left" style="border-left: 0px solid black;background-color: #D3003F;">utahcrimson</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F3E5AB;">vanilla</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #C5B358;">vegasgold</td>
<td align="left" style="border-left: 0px solid black;background-color: #C80815;">venetianred</td>
<td align="left" style="border-left: 0px solid black;background-color: #43B3AE;">verdigris</td>
<td align="left" style="border-left: 0px solid black;background-color: #E34234;">vermilion</td>
<td align="NA" style="border-left: 0px solid black;background-color: #A020F0;">veronica</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #8F00FF;">violet</td>
<td align="left" style="border-left: 0px solid black;background-color: #7F00FF;">violetcolorwheel</td>
<td align="left" style="border-left: 0px solid black;background-color: #8601AF;">violetryb</td>
<td align="left" style="border-left: 0px solid black;background-color: #EE82EE;">violetweb</td>
<td align="NA" style="border-left: 0px solid black;background-color: #40826D;">viridian</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #922724;">vividauburn</td>
<td align="left" style="border-left: 0px solid black;background-color: #9F1D35;">vividburgundy</td>
<td align="left" style="border-left: 0px solid black;background-color: #DA1D81;">vividcerise</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFA089;">vividtangerine</td>
<td align="NA" style="border-left: 0px solid black;background-color: #9F00FF;">vividviolet</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #004242;">warmblack</td>
<td align="left" style="border-left: 0px solid black;background-color: #645452;">wenge</td>
<td align="left" style="border-left: 0px solid black;background-color: #F5DEB3;">wheat</td>
<td align="left" style="border-left: 0px solid black;">white</td>
<td align="NA" style="border-left: 0px solid black;background-color: #F5F5F5;">whitesmoke</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #A2ADD0;">wildblueyonder</td>
<td align="left" style="border-left: 0px solid black;background-color: #FF43A4;">wildstrawberry</td>
<td align="left" style="border-left: 0px solid black;background-color: #FC6C85;">wildwatermelon</td>
<td align="left" style="border-left: 0px solid black;background-color: #C9A0DC;">wisteria</td>
<td align="NA" style="border-left: 0px solid black;background-color: #738678;">xanadu</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #0F4D92;">yaleblue</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFFF00;">yellow</td>
<td align="left" style="border-left: 0px solid black;background-color: #EFCC00;">yellowmunsell</td>
<td align="left" style="border-left: 0px solid black;background-color: #FFD300;">yellowncs</td>
<td align="NA" style="border-left: 0px solid black;background-color: #FFEF00;">yellowprocess</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #FEFE33;">yellowryb</td>
<td align="left" style="border-left: 0px solid black;background-color: #9ACD32;">yellow-green</td>
<td align="left" style="border-left: 0px solid black;background-color: #0014A8;">zaffre</td>
<td align="left" style="border-left: 0px solid black;background-color: #2C1608;">zinnwalditebrown</td>
<td align="NA" style="border-left: 0px solid black;background-color: #5D8AA8;">airforceblue</td>
</tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## Place two or more ztables or figures side by side

If you wanted to place two or more ztables or figures side by side, you can use function **parallelTables()**. Function **parallelTables()** takes three parameters. The first parameter width is a numeric vector specifies the width to which the tables or figures should be scaled. The second parameter is a list of ztable or names of valid figure. The 3rd parameter 'type' is the type of table to produce. Possible values for type are "latex" or "html". Default value is "latex". See the examples.


```r
z=ztable(head(mtcars[1:3]),tabular=TRUE,zebra.color="peach-orange")
z1=ztable(head(iris[1:3]),tabular=TRUE,zebra=2)

parallelTables(width=c(0.5,0.5),list(z,z1),type="html")
```

<table width="100%" cellspacing="5px" cellpadding="5px" border="0">
        
<colgroup>
<col width=50%>
<col width=50%>
</colgroup>
<tr><td><head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">160.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">160.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">108.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;">21.40</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">258.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">18.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">8.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">360.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;">18.10</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">225.00</td>
</tr>
<tr>
<td colspan="4" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</td>
<td><head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Length</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Sepal.Width</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">Petal.Length</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">1</td>
<td align="right" style="border-left: 0px solid black;">5.10</td>
<td align="right" style="border-left: 0px solid black;">3.50</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.40</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">2</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.90</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">1.40</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">3</td>
<td align="right" style="border-left: 0px solid black;">4.70</td>
<td align="right" style="border-left: 0px solid black;">3.20</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.30</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.60</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.10</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">1.50</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">5</td>
<td align="right" style="border-left: 0px solid black;">5.00</td>
<td align="right" style="border-left: 0px solid black;">3.60</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">1.40</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">6</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">5.40</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">3.90</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">1.70</td>
</tr>
<tr>
<td colspan="4" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</td>
</tr>
</table>

```r
parallelTables(width=c(0.5,0.5),list(z,"vignettes/figures/ztable3.png"),type="html")
```

<table width="100%" cellspacing="5px" cellpadding="5px" border="0">
        
<colgroup>
<col width=50%>
<col width=50%>
</colgroup>
<tr><td><head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th style="border-left: 0px solid black;background-color: #FFFFFF;border-top: 2px solid gray;border-bottom: 1px solid gray;">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">mpg</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">cyl</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">disp</th>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Mazda RX4</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">21.00</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">160.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Mazda RX4 Wag</td>
<td align="right" style="border-left: 0px solid black;">21.00</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">160.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Datsun 710</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">22.80</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">4.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">108.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Hornet 4 Drive</td>
<td align="right" style="border-left: 0px solid black;">21.40</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">258.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; background-color: #FFCC99; ">Hornet Sportabout</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">18.70</td>
<td align="right" style="border-left: 0px solid black;background-color: #FFCC99;">8.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFCC99;">360.00</td>
</tr>
<tr>
<td  style="border-left: 0px solid black; ">Valiant</td>
<td align="right" style="border-left: 0px solid black;">18.10</td>
<td align="right" style="border-left: 0px solid black;">6.00</td>
<td align="right" style="border-left: 0px solid black;border-right:0px solid black;">225.00</td>
</tr>
<tr>
<td colspan="4" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</td>
<td><img src="vignettes/figures/ztable3.png"></td>
</tr>
</table>

## mytable object from "moonBook" package

'ztable()' can be used for 'mytable' object made by "mytable" function from "moonBook" package. 


```r
require(moonBook)
res=mytable(sex~.,data=acs)
options(ztable.zebra=NULL)
z=ztable(res)
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-top: 2px solid gray;"></th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-top: 2px solid gray;">Female</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;border-top: 2px solid gray;">Male</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">p</th>
</tr>
<tr>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;"></th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=287)</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=570)</th>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">age                </td>
<td align="center" style="border-left: 0px solid black;">68.7 ± 10.7</td>
<td align="center" style="border-left: 0px solid black;">60.6 ± 11.2</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">cardiogenicShock   </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.136</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td align="center" style="border-left: 0px solid black;">275 (95.8%)</td>
<td align="center" style="border-left: 0px solid black;">530 (93.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td align="center" style="border-left: 0px solid black;">12 ( 4.2%)</td>
<td align="center" style="border-left: 0px solid black;">40 ( 7.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">entry              </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.035</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Femoral        </td>
<td align="center" style="border-left: 0px solid black;">119 (41.5%)</td>
<td align="center" style="border-left: 0px solid black;">193 (33.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Radial         </td>
<td align="center" style="border-left: 0px solid black;">168 (58.5%)</td>
<td align="center" style="border-left: 0px solid black;">377 (66.1%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">Dx                 </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.012</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - NSTEMI         </td>
<td align="center" style="border-left: 0px solid black;">50 (17.4%)</td>
<td align="center" style="border-left: 0px solid black;">103 (18.1%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - STEMI          </td>
<td align="center" style="border-left: 0px solid black;">84 (29.3%)</td>
<td align="center" style="border-left: 0px solid black;">220 (38.6%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Unstable Angina</td>
<td align="center" style="border-left: 0px solid black;">153 (53.3%)</td>
<td align="center" style="border-left: 0px solid black;">247 (43.3%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">EF                 </td>
<td align="center" style="border-left: 0px solid black;">56.3 ± 10.1</td>
<td align="center" style="border-left: 0px solid black;">55.6 ±  9.4</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.387</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">height             </td>
<td align="center" style="border-left: 0px solid black;">153.8 ±  6.2</td>
<td align="center" style="border-left: 0px solid black;">167.9 ±  6.1</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">weight             </td>
<td align="center" style="border-left: 0px solid black;">57.2 ±  9.3</td>
<td align="center" style="border-left: 0px solid black;">68.7 ± 10.3</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">BMI                </td>
<td align="center" style="border-left: 0px solid black;">24.2 ±  3.6</td>
<td align="center" style="border-left: 0px solid black;">24.3 ±  3.2</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.611</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">obesity            </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.580</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td align="center" style="border-left: 0px solid black;">194 (67.6%)</td>
<td align="center" style="border-left: 0px solid black;">373 (65.4%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td align="center" style="border-left: 0px solid black;">93 (32.4%)</td>
<td align="center" style="border-left: 0px solid black;">197 (34.6%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TC                 </td>
<td align="center" style="border-left: 0px solid black;">188.9 ± 51.1</td>
<td align="center" style="border-left: 0px solid black;">183.3 ± 45.9</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.124</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">LDLC               </td>
<td align="center" style="border-left: 0px solid black;">117.8 ± 41.2</td>
<td align="center" style="border-left: 0px solid black;">116.0 ± 41.1</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.561</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HDLC               </td>
<td align="center" style="border-left: 0px solid black;">39.0 ± 11.5</td>
<td align="center" style="border-left: 0px solid black;">37.8 ± 10.9</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.145</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TG                 </td>
<td align="center" style="border-left: 0px solid black;">119.9 ± 76.2</td>
<td align="center" style="border-left: 0px solid black;">127.9 ± 97.3</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.195</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">DM                 </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.077</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td align="center" style="border-left: 0px solid black;">173 (60.3%)</td>
<td align="center" style="border-left: 0px solid black;">380 (66.7%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td align="center" style="border-left: 0px solid black;">114 (39.7%)</td>
<td align="center" style="border-left: 0px solid black;">190 (33.3%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HBP                </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td align="center" style="border-left: 0px solid black;">83 (28.9%)</td>
<td align="center" style="border-left: 0px solid black;">273 (47.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td align="center" style="border-left: 0px solid black;">204 (71.1%)</td>
<td align="center" style="border-left: 0px solid black;">297 (52.1%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">smoking            </td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Ex-smoker      </td>
<td align="center" style="border-left: 0px solid black;">49 (17.1%)</td>
<td align="center" style="border-left: 0px solid black;">155 (27.2%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Never          </td>
<td align="center" style="border-left: 0px solid black;">209 (72.8%)</td>
<td align="center" style="border-left: 0px solid black;">123 (21.6%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Smoker         </td>
<td align="center" style="border-left: 0px solid black;">29 (10.1%)</td>
<td align="center" style="border-left: 0px solid black;">292 (51.2%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td colspan="4" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
vlines(z,type="all")
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;"></caption><tr>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;border-top: 2px solid gray;"></th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;border-top: 2px solid gray;">Female</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;border-top: 2px solid gray;">Male</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 1px solid black;border-right:1px solid black;border-bottom: 1px solid gray;border-top: 2px solid gray;">p</th>
</tr>
<tr>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;"></th>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=287)</th>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=570)</th>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">age                </td>
<td align="center" style="border-left: 1px solid black;">68.7 ± 10.7</td>
<td align="center" style="border-left: 1px solid black;">60.6 ± 11.2</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">cardiogenicShock   </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.136</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">275 (95.8%)</td>
<td align="center" style="border-left: 1px solid black;">530 (93.0%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">12 ( 4.2%)</td>
<td align="center" style="border-left: 1px solid black;">40 ( 7.0%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">entry              </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.035</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Femoral        </td>
<td align="center" style="border-left: 1px solid black;">119 (41.5%)</td>
<td align="center" style="border-left: 1px solid black;">193 (33.9%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Radial         </td>
<td align="center" style="border-left: 1px solid black;">168 (58.5%)</td>
<td align="center" style="border-left: 1px solid black;">377 (66.1%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">Dx                 </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.012</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - NSTEMI         </td>
<td align="center" style="border-left: 1px solid black;">50 (17.4%)</td>
<td align="center" style="border-left: 1px solid black;">103 (18.1%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - STEMI          </td>
<td align="center" style="border-left: 1px solid black;">84 (29.3%)</td>
<td align="center" style="border-left: 1px solid black;">220 (38.6%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Unstable Angina</td>
<td align="center" style="border-left: 1px solid black;">153 (53.3%)</td>
<td align="center" style="border-left: 1px solid black;">247 (43.3%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">EF                 </td>
<td align="center" style="border-left: 1px solid black;">56.3 ± 10.1</td>
<td align="center" style="border-left: 1px solid black;">55.6 ±  9.4</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.387</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">height             </td>
<td align="center" style="border-left: 1px solid black;">153.8 ±  6.2</td>
<td align="center" style="border-left: 1px solid black;">167.9 ±  6.1</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">weight             </td>
<td align="center" style="border-left: 1px solid black;">57.2 ±  9.3</td>
<td align="center" style="border-left: 1px solid black;">68.7 ± 10.3</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">BMI                </td>
<td align="center" style="border-left: 1px solid black;">24.2 ±  3.6</td>
<td align="center" style="border-left: 1px solid black;">24.3 ±  3.2</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.611</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">obesity            </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.580</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">194 (67.6%)</td>
<td align="center" style="border-left: 1px solid black;">373 (65.4%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">93 (32.4%)</td>
<td align="center" style="border-left: 1px solid black;">197 (34.6%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">TC                 </td>
<td align="center" style="border-left: 1px solid black;">188.9 ± 51.1</td>
<td align="center" style="border-left: 1px solid black;">183.3 ± 45.9</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.124</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">LDLC               </td>
<td align="center" style="border-left: 1px solid black;">117.8 ± 41.2</td>
<td align="center" style="border-left: 1px solid black;">116.0 ± 41.1</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.561</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">HDLC               </td>
<td align="center" style="border-left: 1px solid black;">39.0 ± 11.5</td>
<td align="center" style="border-left: 1px solid black;">37.8 ± 10.9</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.145</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">TG                 </td>
<td align="center" style="border-left: 1px solid black;">119.9 ± 76.2</td>
<td align="center" style="border-left: 1px solid black;">127.9 ± 97.3</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.195</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">DM                 </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.077</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">173 (60.3%)</td>
<td align="center" style="border-left: 1px solid black;">380 (66.7%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">114 (39.7%)</td>
<td align="center" style="border-left: 1px solid black;">190 (33.3%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">HBP                </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">83 (28.9%)</td>
<td align="center" style="border-left: 1px solid black;">273 (47.9%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">204 (71.1%)</td>
<td align="center" style="border-left: 1px solid black;">297 (52.1%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">smoking            </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.000</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Ex-smoker      </td>
<td align="center" style="border-left: 1px solid black;">49 (17.1%)</td>
<td align="center" style="border-left: 1px solid black;">155 (27.2%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Never          </td>
<td align="center" style="border-left: 1px solid black;">209 (72.8%)</td>
<td align="center" style="border-left: 1px solid black;">123 (21.6%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Smoker         </td>
<td align="center" style="border-left: 1px solid black;">29 (10.1%)</td>
<td align="center" style="border-left: 1px solid black;">292 (51.2%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td colspan="4" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

## cbind.mytable object

'ztable()' can be used for 'cbind.mytable' object made by "mytable" function from "moonBook" package. 


```r
res1=mytable(sex+DM~.,data=acs)
z=ztable(res1)
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Descriptive Statistics Stratified by 'SEX' and 'DM'</caption><tr>
<td colspan=" 1 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">SEX</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Male</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Female</td>
</tr>
<tr>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">DM</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">p</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;">p</th>
</tr>
<tr>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=380)</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=190)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=173)</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=114)</th>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">age                </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">60.9 ± 11.5</td>
<td align="center" style="border-left: 0px solid black;">60.1 ± 10.6</td>
<td align="center" style="border-left: 0px solid black;">0.472</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">69.3 ± 11.4</td>
<td align="center" style="border-left: 0px solid black;">67.8 ±  9.7</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.257</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">cardiogenicShock   </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.685</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.296</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">355 (93.4%)</td>
<td align="center" style="border-left: 0px solid black;">175 (92.1%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">168 (97.1%)</td>
<td align="center" style="border-left: 0px solid black;">107 (93.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">25 ( 6.6%)</td>
<td align="center" style="border-left: 0px solid black;">15 ( 7.9%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5 ( 2.9%)</td>
<td align="center" style="border-left: 0px solid black;">7 ( 6.1%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">entry              </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.552</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.665</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Femoral        </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">125 (32.9%)</td>
<td align="center" style="border-left: 0px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">74 (42.8%)</td>
<td align="center" style="border-left: 0px solid black;">45 (39.5%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Radial         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">255 (67.1%)</td>
<td align="center" style="border-left: 0px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">99 (57.2%)</td>
<td align="center" style="border-left: 0px solid black;">69 (60.5%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">Dx                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.219</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.240</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - NSTEMI         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">71 (18.7%)</td>
<td align="center" style="border-left: 0px solid black;">32 (16.8%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">25 (14.5%)</td>
<td align="center" style="border-left: 0px solid black;">25 (21.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - STEMI          </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">154 (40.5%)</td>
<td align="center" style="border-left: 0px solid black;">66 (34.7%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 0px solid black;">30 (26.3%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Unstable Angina</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">155 (40.8%)</td>
<td align="center" style="border-left: 0px solid black;">92 (48.4%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">94 (54.3%)</td>
<td align="center" style="border-left: 0px solid black;">59 (51.8%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">EF                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">56.5 ±  8.3</td>
<td align="center" style="border-left: 0px solid black;">53.9 ± 11.0</td>
<td align="center" style="border-left: 0px solid black;">0.007</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">56.0 ± 10.1</td>
<td align="center" style="border-left: 0px solid black;">56.6 ± 10.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.655</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">height             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">168.1 ±  5.8</td>
<td align="center" style="border-left: 0px solid black;">167.5 ±  6.7</td>
<td align="center" style="border-left: 0px solid black;">0.386</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">153.9 ±  6.5</td>
<td align="center" style="border-left: 0px solid black;">153.6 ±  5.8</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.707</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">weight             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">68.1 ± 10.4</td>
<td align="center" style="border-left: 0px solid black;">69.8 ± 10.2</td>
<td align="center" style="border-left: 0px solid black;">0.070</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">56.5 ±  8.7</td>
<td align="center" style="border-left: 0px solid black;">58.4 ± 10.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.106</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">BMI                </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">24.0 ±  3.1</td>
<td align="center" style="border-left: 0px solid black;">24.9 ±  3.5</td>
<td align="center" style="border-left: 0px solid black;">0.005</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">23.8 ±  3.2</td>
<td align="center" style="border-left: 0px solid black;">24.8 ±  4.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.046</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">obesity            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.027</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.359</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">261 (68.7%)</td>
<td align="center" style="border-left: 0px solid black;">112 (58.9%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">121 (69.9%)</td>
<td align="center" style="border-left: 0px solid black;">73 (64.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">119 (31.3%)</td>
<td align="center" style="border-left: 0px solid black;">78 (41.1%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">52 (30.1%)</td>
<td align="center" style="border-left: 0px solid black;">41 (36.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TC                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">184.1 ± 46.7</td>
<td align="center" style="border-left: 0px solid black;">181.8 ± 44.5</td>
<td align="center" style="border-left: 0px solid black;">0.572</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">186.0 ± 43.1</td>
<td align="center" style="border-left: 0px solid black;">193.3 ± 60.8</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.274</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">LDLC               </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">117.9 ± 41.8</td>
<td align="center" style="border-left: 0px solid black;">112.1 ± 39.4</td>
<td align="center" style="border-left: 0px solid black;">0.115</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">116.3 ± 35.2</td>
<td align="center" style="border-left: 0px solid black;">119.8 ± 48.6</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.519</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HDLC               </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">38.4 ± 11.4</td>
<td align="center" style="border-left: 0px solid black;">36.8 ±  9.6</td>
<td align="center" style="border-left: 0px solid black;">0.083</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">39.2 ± 10.9</td>
<td align="center" style="border-left: 0px solid black;">38.8 ± 12.2</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.821</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TG                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">115.2 ± 72.2</td>
<td align="center" style="border-left: 0px solid black;">153.4 ± 130.7</td>
<td align="center" style="border-left: 0px solid black;">0.000</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">114.2 ± 82.4</td>
<td align="center" style="border-left: 0px solid black;">128.4 ± 65.5</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.112</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HBP                </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.000</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.356</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">205 (53.9%)</td>
<td align="center" style="border-left: 0px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 0px solid black;">29 (25.4%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">175 (46.1%)</td>
<td align="center" style="border-left: 0px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">119 (68.8%)</td>
<td align="center" style="border-left: 0px solid black;">85 (74.6%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">smoking            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;">0.386</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">0.093</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Ex-smoker      </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">101 (26.6%)</td>
<td align="center" style="border-left: 0px solid black;">54 (28.4%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">34 (19.7%)</td>
<td align="center" style="border-left: 0px solid black;">15 (13.2%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Never          </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">77 (20.3%)</td>
<td align="center" style="border-left: 0px solid black;">46 (24.2%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">118 (68.2%)</td>
<td align="center" style="border-left: 0px solid black;">91 (79.8%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Smoker         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">202 (53.2%)</td>
<td align="center" style="border-left: 0px solid black;">90 (47.4%)</td>
<td align="center" style="border-left: 0px solid black;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">21 (12.1%)</td>
<td align="center" style="border-left: 0px solid black;">8 ( 7.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;">     </td>
</tr>
<tr>
<td colspan="9" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

```r
vlines(z,type="all")
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Descriptive Statistics Stratified by 'SEX' and 'DM'</caption><tr>
<td colspan=" 1 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">SEX</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;">Male</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 1px solid black;border-right:1px solid black;">Female</td>
</tr>
<tr>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">DM</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">p</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 1px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 1px solid black;border-right:1px solid black;border-bottom: 1px solid gray;">p</th>
</tr>
<tr>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=380)</th>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=190)</th>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=173)</th>
<th align="center" style="font-weight: bold;border-left: 1px solid black;border-bottom: 1px solid gray;">(N=114)</th>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">age                </td>
<td align="center" style="border-left: 1px solid black;">60.9 ± 11.5</td>
<td align="center" style="border-left: 1px solid black;">60.1 ± 10.6</td>
<td align="center" style="border-left: 1px solid black;">0.472</td>
<td align="center" style="border-left: 1px solid black;">69.3 ± 11.4</td>
<td align="center" style="border-left: 1px solid black;">67.8 ±  9.7</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.257</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">cardiogenicShock   </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.685</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.296</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">355 (93.4%)</td>
<td align="center" style="border-left: 1px solid black;">175 (92.1%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">168 (97.1%)</td>
<td align="center" style="border-left: 1px solid black;">107 (93.9%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">25 ( 6.6%)</td>
<td align="center" style="border-left: 1px solid black;">15 ( 7.9%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">5 ( 2.9%)</td>
<td align="center" style="border-left: 1px solid black;">7 ( 6.1%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">entry              </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.552</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.665</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Femoral        </td>
<td align="center" style="border-left: 1px solid black;">125 (32.9%)</td>
<td align="center" style="border-left: 1px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">74 (42.8%)</td>
<td align="center" style="border-left: 1px solid black;">45 (39.5%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Radial         </td>
<td align="center" style="border-left: 1px solid black;">255 (67.1%)</td>
<td align="center" style="border-left: 1px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">99 (57.2%)</td>
<td align="center" style="border-left: 1px solid black;">69 (60.5%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">Dx                 </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.219</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.240</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - NSTEMI         </td>
<td align="center" style="border-left: 1px solid black;">71 (18.7%)</td>
<td align="center" style="border-left: 1px solid black;">32 (16.8%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">25 (14.5%)</td>
<td align="center" style="border-left: 1px solid black;">25 (21.9%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - STEMI          </td>
<td align="center" style="border-left: 1px solid black;">154 (40.5%)</td>
<td align="center" style="border-left: 1px solid black;">66 (34.7%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 1px solid black;">30 (26.3%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Unstable Angina</td>
<td align="center" style="border-left: 1px solid black;">155 (40.8%)</td>
<td align="center" style="border-left: 1px solid black;">92 (48.4%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">94 (54.3%)</td>
<td align="center" style="border-left: 1px solid black;">59 (51.8%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">EF                 </td>
<td align="center" style="border-left: 1px solid black;">56.5 ±  8.3</td>
<td align="center" style="border-left: 1px solid black;">53.9 ± 11.0</td>
<td align="center" style="border-left: 1px solid black;">0.007</td>
<td align="center" style="border-left: 1px solid black;">56.0 ± 10.1</td>
<td align="center" style="border-left: 1px solid black;">56.6 ± 10.0</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.655</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">height             </td>
<td align="center" style="border-left: 1px solid black;">168.1 ±  5.8</td>
<td align="center" style="border-left: 1px solid black;">167.5 ±  6.7</td>
<td align="center" style="border-left: 1px solid black;">0.386</td>
<td align="center" style="border-left: 1px solid black;">153.9 ±  6.5</td>
<td align="center" style="border-left: 1px solid black;">153.6 ±  5.8</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.707</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">weight             </td>
<td align="center" style="border-left: 1px solid black;">68.1 ± 10.4</td>
<td align="center" style="border-left: 1px solid black;">69.8 ± 10.2</td>
<td align="center" style="border-left: 1px solid black;">0.070</td>
<td align="center" style="border-left: 1px solid black;">56.5 ±  8.7</td>
<td align="center" style="border-left: 1px solid black;">58.4 ± 10.0</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.106</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">BMI                </td>
<td align="center" style="border-left: 1px solid black;">24.0 ±  3.1</td>
<td align="center" style="border-left: 1px solid black;">24.9 ±  3.5</td>
<td align="center" style="border-left: 1px solid black;">0.005</td>
<td align="center" style="border-left: 1px solid black;">23.8 ±  3.2</td>
<td align="center" style="border-left: 1px solid black;">24.8 ±  4.0</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.046</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">obesity            </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.027</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.359</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">261 (68.7%)</td>
<td align="center" style="border-left: 1px solid black;">112 (58.9%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">121 (69.9%)</td>
<td align="center" style="border-left: 1px solid black;">73 (64.0%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">119 (31.3%)</td>
<td align="center" style="border-left: 1px solid black;">78 (41.1%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">52 (30.1%)</td>
<td align="center" style="border-left: 1px solid black;">41 (36.0%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">TC                 </td>
<td align="center" style="border-left: 1px solid black;">184.1 ± 46.7</td>
<td align="center" style="border-left: 1px solid black;">181.8 ± 44.5</td>
<td align="center" style="border-left: 1px solid black;">0.572</td>
<td align="center" style="border-left: 1px solid black;">186.0 ± 43.1</td>
<td align="center" style="border-left: 1px solid black;">193.3 ± 60.8</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.274</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">LDLC               </td>
<td align="center" style="border-left: 1px solid black;">117.9 ± 41.8</td>
<td align="center" style="border-left: 1px solid black;">112.1 ± 39.4</td>
<td align="center" style="border-left: 1px solid black;">0.115</td>
<td align="center" style="border-left: 1px solid black;">116.3 ± 35.2</td>
<td align="center" style="border-left: 1px solid black;">119.8 ± 48.6</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.519</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">HDLC               </td>
<td align="center" style="border-left: 1px solid black;">38.4 ± 11.4</td>
<td align="center" style="border-left: 1px solid black;">36.8 ±  9.6</td>
<td align="center" style="border-left: 1px solid black;">0.083</td>
<td align="center" style="border-left: 1px solid black;">39.2 ± 10.9</td>
<td align="center" style="border-left: 1px solid black;">38.8 ± 12.2</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.821</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">TG                 </td>
<td align="center" style="border-left: 1px solid black;">115.2 ± 72.2</td>
<td align="center" style="border-left: 1px solid black;">153.4 ± 130.7</td>
<td align="center" style="border-left: 1px solid black;">0.000</td>
<td align="center" style="border-left: 1px solid black;">114.2 ± 82.4</td>
<td align="center" style="border-left: 1px solid black;">128.4 ± 65.5</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.112</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">HBP                </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.000</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.356</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - No             </td>
<td align="center" style="border-left: 1px solid black;">205 (53.9%)</td>
<td align="center" style="border-left: 1px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 1px solid black;">29 (25.4%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Yes            </td>
<td align="center" style="border-left: 1px solid black;">175 (46.1%)</td>
<td align="center" style="border-left: 1px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">119 (68.8%)</td>
<td align="center" style="border-left: 1px solid black;">85 (74.6%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">smoking            </td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;">0.386</td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;"></td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">0.093</td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Ex-smoker      </td>
<td align="center" style="border-left: 1px solid black;">101 (26.6%)</td>
<td align="center" style="border-left: 1px solid black;">54 (28.4%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">34 (19.7%)</td>
<td align="center" style="border-left: 1px solid black;">15 (13.2%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Never          </td>
<td align="center" style="border-left: 1px solid black;">77 (20.3%)</td>
<td align="center" style="border-left: 1px solid black;">46 (24.2%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">118 (68.2%)</td>
<td align="center" style="border-left: 1px solid black;">91 (79.8%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 1px solid black;">  - Smoker         </td>
<td align="center" style="border-left: 1px solid black;">202 (53.2%)</td>
<td align="center" style="border-left: 1px solid black;">90 (47.4%)</td>
<td align="center" style="border-left: 1px solid black;">     </td>
<td align="center" style="border-left: 1px solid black;">21 (12.1%)</td>
<td align="center" style="border-left: 1px solid black;">8 ( 7.0%)</td>
<td align="center" style="border-left: 1px solid black;border-right:1px solid black;">     </td>
</tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>

You can use all ztable related function in this table.


```r
z=addRowColor(z,c(13,16),"platinum")
z=addColColor(z,c(5,8),"pink")
z=addCellColor(z,rows=16,cols=c(5,8),color="orange")
z=addCellColor(z,rows=13,cols=5,color="orange")
z
```

<head><style>
        table {
              text-align: right;}
        th {
              padding: 1px 1px 5px 5px;
	        }
        td {
             padding: 1px 1px 5px 5px; }
      </style></head><table align="center" style="border-collapse: collapse; caption-side:top; font-size:11pt;"><caption style="text-align:center;">Descriptive Statistics Stratified by 'SEX' and 'DM'</caption><tr>
<td colspan=" 1 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">SEX</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;">Male</td>
<td style="border-top: 2px solid gray;border-bottom: hidden">&nbsp;</td>
<td colspan=" 3 " align="center" style="font-weight: bold;border-top: 2px solid gray;border-bottom: 1px solid gray; border-left: 0px solid black;border-right:0px solid black;">Female</td>
</tr>
<tr>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">DM</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;background-color: #FFC0CB;">p</th>
<th style="">&nbsp;</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">No</th>
<th <th align="center" style="font-weight: bold;border-left: 0px solid black;">Yes</th>
<th <th rowspan="2" align="center" style="font-weight: bold;border-left: 0px solid black;border-right:0px solid black;border-bottom: 1px solid gray;background-color: #FFC0CB;">p</th>
</tr>
<tr>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=380)</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=190)</th>
<th style="border-bottom: 1px solid gray;">&nbsp;</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=173)</th>
<th align="center" style="font-weight: bold;border-left: 0px solid black;border-bottom: 1px solid gray;">(N=114)</th>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">age                </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">60.9 ± 11.5</td>
<td align="center" style="border-left: 0px solid black;">60.1 ± 10.6</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.472</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">69.3 ± 11.4</td>
<td align="center" style="border-left: 0px solid black;">67.8 ±  9.7</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.257</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">cardiogenicShock   </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.685</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.296</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">355 (93.4%)</td>
<td align="center" style="border-left: 0px solid black;">175 (92.1%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">168 (97.1%)</td>
<td align="center" style="border-left: 0px solid black;">107 (93.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">25 ( 6.6%)</td>
<td align="center" style="border-left: 0px solid black;">15 ( 7.9%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">5 ( 2.9%)</td>
<td align="center" style="border-left: 0px solid black;">7 ( 6.1%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">entry              </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.552</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.665</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Femoral        </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">125 (32.9%)</td>
<td align="center" style="border-left: 0px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">74 (42.8%)</td>
<td align="center" style="border-left: 0px solid black;">45 (39.5%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Radial         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">255 (67.1%)</td>
<td align="center" style="border-left: 0px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">99 (57.2%)</td>
<td align="center" style="border-left: 0px solid black;">69 (60.5%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">Dx                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.219</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.240</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - NSTEMI         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">71 (18.7%)</td>
<td align="center" style="border-left: 0px solid black;">32 (16.8%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">25 (14.5%)</td>
<td align="center" style="border-left: 0px solid black;">25 (21.9%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - STEMI          </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">154 (40.5%)</td>
<td align="center" style="border-left: 0px solid black;">66 (34.7%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 0px solid black;">30 (26.3%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Unstable Angina</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">155 (40.8%)</td>
<td align="center" style="border-left: 0px solid black;">92 (48.4%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">94 (54.3%)</td>
<td align="center" style="border-left: 0px solid black;">59 (51.8%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E5E4E2;">EF                 </td>
<td style="background-color:  #E5E4E2 "></td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">56.5 ±  8.3</td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">53.9 ± 11.0</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">0.007</td>
<td style="background-color:  #E5E4E2 "></td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">56.0 ± 10.1</td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">56.6 ± 10.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.655</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">height             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">168.1 ±  5.8</td>
<td align="center" style="border-left: 0px solid black;">167.5 ±  6.7</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.386</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">153.9 ±  6.5</td>
<td align="center" style="border-left: 0px solid black;">153.6 ±  5.8</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.707</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">weight             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">68.1 ± 10.4</td>
<td align="center" style="border-left: 0px solid black;">69.8 ± 10.2</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.070</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">56.5 ±  8.7</td>
<td align="center" style="border-left: 0px solid black;">58.4 ± 10.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.106</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;background-color: #E5E4E2;">BMI                </td>
<td style="background-color:  #E5E4E2 "></td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">24.0 ±  3.1</td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">24.9 ±  3.5</td>
<td align="center" style="border-left: 0px solid black;background-color: #FF7F00;">0.005</td>
<td style="background-color:  #E5E4E2 "></td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">23.8 ±  3.2</td>
<td align="center" style="border-left: 0px solid black;background-color: #E5E4E2;">24.8 ±  4.0</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FF7F00;">0.046</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">obesity            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.027</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.359</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">261 (68.7%)</td>
<td align="center" style="border-left: 0px solid black;">112 (58.9%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">121 (69.9%)</td>
<td align="center" style="border-left: 0px solid black;">73 (64.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">119 (31.3%)</td>
<td align="center" style="border-left: 0px solid black;">78 (41.1%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">52 (30.1%)</td>
<td align="center" style="border-left: 0px solid black;">41 (36.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TC                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">184.1 ± 46.7</td>
<td align="center" style="border-left: 0px solid black;">181.8 ± 44.5</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.572</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">186.0 ± 43.1</td>
<td align="center" style="border-left: 0px solid black;">193.3 ± 60.8</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.274</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">LDLC               </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">117.9 ± 41.8</td>
<td align="center" style="border-left: 0px solid black;">112.1 ± 39.4</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.115</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">116.3 ± 35.2</td>
<td align="center" style="border-left: 0px solid black;">119.8 ± 48.6</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.519</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HDLC               </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">38.4 ± 11.4</td>
<td align="center" style="border-left: 0px solid black;">36.8 ±  9.6</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.083</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">39.2 ± 10.9</td>
<td align="center" style="border-left: 0px solid black;">38.8 ± 12.2</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.821</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">TG                 </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">115.2 ± 72.2</td>
<td align="center" style="border-left: 0px solid black;">153.4 ± 130.7</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.000</td>
<td></td>
<td align="center" style="border-left: 0px solid black;">114.2 ± 82.4</td>
<td align="center" style="border-left: 0px solid black;">128.4 ± 65.5</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.112</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">HBP                </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.000</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.356</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - No             </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">205 (53.9%)</td>
<td align="center" style="border-left: 0px solid black;">68 (35.8%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">54 (31.2%)</td>
<td align="center" style="border-left: 0px solid black;">29 (25.4%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Yes            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">175 (46.1%)</td>
<td align="center" style="border-left: 0px solid black;">122 (64.2%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">119 (68.8%)</td>
<td align="center" style="border-left: 0px solid black;">85 (74.6%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">smoking            </td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">0.386</td>
<td></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;"></td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">0.093</td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Ex-smoker      </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">101 (26.6%)</td>
<td align="center" style="border-left: 0px solid black;">54 (28.4%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">34 (19.7%)</td>
<td align="center" style="border-left: 0px solid black;">15 (13.2%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Never          </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">77 (20.3%)</td>
<td align="center" style="border-left: 0px solid black;">46 (24.2%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">118 (68.2%)</td>
<td align="center" style="border-left: 0px solid black;">91 (79.8%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td align="left" style="border-left: 0px solid black;">  - Smoker         </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">202 (53.2%)</td>
<td align="center" style="border-left: 0px solid black;">90 (47.4%)</td>
<td align="center" style="border-left: 0px solid black;background-color: #FFC0CB;">     </td>
<td></td>
<td align="center" style="border-left: 0px solid black;">21 (12.1%)</td>
<td align="center" style="border-left: 0px solid black;">8 ( 7.0%)</td>
<td align="center" style="border-left: 0px solid black;border-right:0px solid black;background-color: #FFC0CB;">     </td>
</tr>
<tr>
<td colspan="9" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>


