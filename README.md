---
title: "Package ztable"
author: "Keon-Woong Moon"
date: "2014-12-15"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{ztable}
  %\VignetteEngine{knitr::rmarkdown}
  \usepackage[utf8]{inputenc}
---

# Introduction

I like the "xtable"" package very much. But when I use a large font or "flushright" latex environment, there is a caption size discrepancy and misposition of caption.

![xtable.png](vignettes/figures/xtable.png)

That's why I developed ztable package.

![ztable.png](vignettes/figures/ztable.png)

Package "ztable" consist of one function: ztable. It's main function is creating zebra zebra striping tables(tables with alternating row colors) in both Latex and html formats easily from mainly data.frame or an R object such as matrix, lm, aov, anova, glm and coxph objects. It is fully customizable and you can get similar tables in both latex and html format without changing source. The default output is Latex format, but you can get html format by adding just one sentence.


```r
options(ztable.type="html")
```

It's usage is somewhat similar to xtable, but very simple.

## data.frame

### Basic Use

It's use is very simple. Just use 'ztable()' function. You can get the zebra sripig table by default.(default value zebra=1; striping on odd rows).


```r
require(ztable)
options(ztable.type="html")
options(ztable.colnames.bold=TRUE)
ztable(head(mtcars),caption="Table 1. Basic Use")
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center">Table 1. Basic Use</caption><tr>
<th>  </th><th style="font-weight: bold;">mpg</th><th style="font-weight: bold;">cyl</th><th style="font-weight: bold;">disp</th><th style="font-weight: bold;">hp</th><th style="font-weight: bold;">drat</th><th style="font-weight: bold;">wt</th><th style="font-weight: bold;">qsec</th><th style="font-weight: bold;">vs</th><th style="font-weight: bold;">am</th><th style="font-weight: bold;">gear</th><th style="font-weight: bold;">carb</th></tr>
<tr style="background-color: #FFCC99 "><td>Mazda RX4</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.62</td><td align="right">16.46</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Mazda RX4 Wag</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.88</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFCC99 "><td>Datsun 710</td><td align="right">22.80</td><td align="right">4.00</td><td align="right">108.00</td><td align="right">93.00</td><td align="right">3.85</td><td align="right">2.32</td><td align="right">18.61</td><td align="right">1.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Hornet 4 Drive</td><td align="right">21.40</td><td align="right">6.00</td><td align="right">258.00</td><td align="right">110.00</td><td align="right">3.08</td><td align="right">3.21</td><td align="right">19.44</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #FFCC99 "><td>Hornet Sportabout</td><td align="right">18.70</td><td align="right">8.00</td><td align="right">360.00</td><td align="right">175.00</td><td align="right">3.15</td><td align="right">3.44</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">2.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Valiant</td><td align="right">18.10</td><td align="right">6.00</td><td align="right">225.00</td><td align="right">105.00</td><td align="right">2.76</td><td align="right">3.46</td><td align="right">20.22</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

### Tailoring zebra striping

You can get non-zebra table by change parameter zebra=NULL or change zebra striping on even rows by zebra=2. 


```r
ztable(head(mtcars),zebra=NULL,size=3,
       caption="Table 2. Non-zebra Table with small size")
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:9pt;"><caption style="text-align:center">Table 2. Non-zebra Table with small size</caption><tr>
<th>  </th><th style="font-weight: bold;">mpg</th><th style="font-weight: bold;">cyl</th><th style="font-weight: bold;">disp</th><th style="font-weight: bold;">hp</th><th style="font-weight: bold;">drat</th><th style="font-weight: bold;">wt</th><th style="font-weight: bold;">qsec</th><th style="font-weight: bold;">vs</th><th style="font-weight: bold;">am</th><th style="font-weight: bold;">gear</th><th style="font-weight: bold;">carb</th></tr>
<tr style="background-color: #FFFFFF "><td>Mazda RX4</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.62</td><td align="right">16.46</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Mazda RX4 Wag</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.88</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Datsun 710</td><td align="right">22.80</td><td align="right">4.00</td><td align="right">108.00</td><td align="right">93.00</td><td align="right">3.85</td><td align="right">2.32</td><td align="right">18.61</td><td align="right">1.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Hornet 4 Drive</td><td align="right">21.40</td><td align="right">6.00</td><td align="right">258.00</td><td align="right">110.00</td><td align="right">3.08</td><td align="right">3.21</td><td align="right">19.44</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Hornet Sportabout</td><td align="right">18.70</td><td align="right">8.00</td><td align="right">360.00</td><td align="right">175.00</td><td align="right">3.15</td><td align="right">3.44</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">2.00</td></tr>
<tr style="background-color: #FFFFFF "><td>Valiant</td><td align="right">18.10</td><td align="right">6.00</td><td align="right">225.00</td><td align="right">105.00</td><td align="right">2.76</td><td align="right">3.46</td><td align="right">20.22</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr>
<td colspan="12" align="left" style="font-size:7pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>
        
### Customize the caption and the font size 

You can change the position of table by using parameter position. You can use "r" for right position, "l" for left position and "c" for center position(default). You can change the color of zebra striping by change the parameter zebra.color. You can also change the size of font from 1 to 10(default is 5). You can change the caption.placement("top" or "bottom") and caption.position("c" for center / "r" for right/ "l" for left).  
    

```r
ztable(head(mtcars[c(1:7)]),zebra=2,zebra.color="lightcyan",size=7,
       caption="Table 3. Left-sided caption at botom with large font",
       caption.placement="bottom",caption.position="l") 
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:bottom; font-size:15pt;"><caption style="text-align:left">Table 3. Left-sided caption at botom with large font</caption><tr>
<th>  </th><th style="font-weight: bold;">mpg</th><th style="font-weight: bold;">cyl</th><th style="font-weight: bold;">disp</th><th style="font-weight: bold;">hp</th><th style="font-weight: bold;">drat</th><th style="font-weight: bold;">wt</th><th style="font-weight: bold;">qsec</th></tr>
<tr style="background-color: #FFFFFF "><td>Mazda RX4</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.62</td><td align="right">16.46</td></tr>
<tr style="background-color: #E0FFFF "><td>Mazda RX4 Wag</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.88</td><td align="right">17.02</td></tr>
<tr style="background-color: #FFFFFF "><td>Datsun 710</td><td align="right">22.80</td><td align="right">4.00</td><td align="right">108.00</td><td align="right">93.00</td><td align="right">3.85</td><td align="right">2.32</td><td align="right">18.61</td></tr>
<tr style="background-color: #E0FFFF "><td>Hornet 4 Drive</td><td align="right">21.40</td><td align="right">6.00</td><td align="right">258.00</td><td align="right">110.00</td><td align="right">3.08</td><td align="right">3.21</td><td align="right">19.44</td></tr>
<tr style="background-color: #FFFFFF "><td>Hornet Sportabout</td><td align="right">18.70</td><td align="right">8.00</td><td align="right">360.00</td><td align="right">175.00</td><td align="right">3.15</td><td align="right">3.44</td><td align="right">17.02</td></tr>
<tr style="background-color: #E0FFFF "><td>Valiant</td><td align="right">18.10</td><td align="right">6.00</td><td align="right">225.00</td><td align="right">105.00</td><td align="right">2.76</td><td align="right">3.46</td><td align="right">20.22</td></tr>
<tr>
<td colspan="8" align="left" style="font-size:13pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>
       
## aov  object

'ztable()' can be used for 'aov' object. When used for 'aov' object, the function call is added as footer to the table. The parameter 'show.footer' can be used whether or not include footer in the table. Dafault value is TRUE.


```r
out <- aov(mpg ~ ., data=mtcars)
ztable(out)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum Sq</th><th style="font-weight: bold;">Mean Sq</th><th style="font-weight: bold;">F value</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>cyl        </td><td align="right">1</td><td align="right">817.71</td><td align="right">817.71</td><td align="right">116.42</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFFFFF "><td>disp       </td><td align="right">1</td><td align="right">37.59</td><td align="right">37.59</td><td align="right">5.35</td><td align="right">0.0309</td></tr>
<tr style="background-color: #FFCC99 "><td>hp         </td><td align="right">1</td><td align="right">9.37</td><td align="right">9.37</td><td align="right">1.33</td><td align="right">0.2610</td></tr>
<tr style="background-color: #FFFFFF "><td>drat       </td><td align="right">1</td><td align="right">16.47</td><td align="right">16.47</td><td align="right">2.34</td><td align="right">0.1406</td></tr>
<tr style="background-color: #FFCC99 "><td>wt         </td><td align="right">1</td><td align="right">77.48</td><td align="right">77.48</td><td align="right">11.03</td><td align="right">0.0032</td></tr>
<tr style="background-color: #FFFFFF "><td>qsec       </td><td align="right">1</td><td align="right">3.95</td><td align="right">3.95</td><td align="right">0.56</td><td align="right">0.4617</td></tr>
<tr style="background-color: #FFCC99 "><td>vs         </td><td align="right">1</td><td align="right">0.13</td><td align="right">0.13</td><td align="right">0.02</td><td align="right">0.8932</td></tr>
<tr style="background-color: #FFFFFF "><td>am         </td><td align="right">1</td><td align="right">14.47</td><td align="right">14.47</td><td align="right">2.06</td><td align="right">0.1659</td></tr>
<tr style="background-color: #FFCC99 "><td>gear       </td><td align="right">1</td><td align="right">0.97</td><td align="right">0.97</td><td align="right">0.14</td><td align="right">0.7137</td></tr>
<tr style="background-color: #FFFFFF "><td>carb       </td><td align="right">1</td><td align="right">0.41</td><td align="right">0.41</td><td align="right">0.06</td><td align="right">0.8122</td></tr>
<tr style="background-color: #FFCC99 "><td>Residuals  </td><td align="right">21</td><td align="right">147.49</td><td align="right">7.02</td><td> </td><td> </td></tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: aov(formula = mpg $\sim$ ., data = mtcars)</td>
</tr>
</table>
</html>

## Linear model : 'lm' object

'ztable()' can be used for 'lm' object. When used for 'lm' object, the function call is added as footer to the table, too. 



```r
fit <- lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)
ztable(fit)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Estimate</th><th style="font-weight: bold;">Std. Error</th><th style="font-weight: bold;">t value</th><th style="font-weight: bold;">Pr(>|t|)</th></tr>
<tr style="background-color: #FFCC99 "><td>(Intercept)</td><td align="right">41.2964</td><td align="right">7.5384</td><td align="right">5.48</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFFFFF "><td>cyl</td><td align="right">-1.7940</td><td align="right">0.6505</td><td align="right">-2.76</td><td align="right">0.0105</td></tr>
<tr style="background-color: #FFCC99 "><td>disp</td><td align="right">0.0074</td><td align="right">0.0123</td><td align="right">0.60</td><td align="right">0.5546</td></tr>
<tr style="background-color: #FFFFFF "><td>wt</td><td align="right">-3.5870</td><td align="right">1.2105</td><td align="right">-2.96</td><td align="right">0.0064</td></tr>
<tr style="background-color: #FFCC99 "><td>drat</td><td align="right">-0.0936</td><td align="right">1.5488</td><td align="right">-0.06</td><td align="right">0.9523</td></tr>
<tr style="background-color: #FFFFFF "><td>am</td><td align="right">0.1730</td><td align="right">1.5300</td><td align="right">0.11</td><td align="right">0.9109</td></tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: lm(formula = mpg $\sim$ cyl + disp + wt + drat + am, data = mtcars)</td>
</tr>
</table>
</html>

## Analysis of Variance Table : 'anova' object

'ztable()' can be used for 'anova' object to show the anova table. When used for 'anova' object, headings of anova are added as headings to the table. The parameter 'show.footer' can be used whether or not include footer in the table. Dafault value is TRUE.


```r
a=anova(fit)
ztable(a)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Response: mpg</td>
</tr>
<tr>
<th>  </th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum Sq</th><th style="font-weight: bold;">Mean Sq</th><th style="font-weight: bold;">F value</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>cyl</td><td align="right">1</td><td align="right">817.71</td><td align="right">817.71</td><td align="right">112.85</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFFFFF "><td>disp</td><td align="right">1</td><td align="right">37.59</td><td align="right">37.59</td><td align="right">5.19</td><td align="right">0.0312</td></tr>
<tr style="background-color: #FFCC99 "><td>wt</td><td align="right">1</td><td align="right">82.25</td><td align="right">82.25</td><td align="right">11.35</td><td align="right">0.0024</td></tr>
<tr style="background-color: #FFFFFF "><td>drat</td><td align="right">1</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">0.9939</td></tr>
<tr style="background-color: #FFCC99 "><td>am</td><td align="right">1</td><td align="right">0.09</td><td align="right">0.09</td><td align="right">0.01</td><td align="right">0.9109</td></tr>
<tr style="background-color: #FFFFFF "><td>Residuals</td><td align="right">26</td><td align="right">188.40</td><td align="right">7.25</td><td> </td><td> </td></tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

This is examples of another 'anova' object. The models in this anova tables showed as table headings. You can decide whether or not include the headings in the tableby using parameter 'show.heading'(default: TRUE). 


```r
fit2 <- lm(mpg ~ cyl+wt, data=mtcars)
b=anova(fit2,fit)
ztable(b)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Model 1: mpg $\sim$ cyl + wt</td>
</tr>
<tr>
<td colspan="7"  align="left" style="font-size:9pt; padding: 0px 0px;">Model 2: mpg $\sim$ cyl + disp + wt + drat + am</td>
</tr>
<tr>
<th>  </th><th style="font-weight: bold;">Res.Df</th><th style="font-weight: bold;">RSS</th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum of Sq</th><th style="font-weight: bold;">F</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>1</td><td align="right">29.0</td><td align="right">191.17</td><td> </td><td> </td><td> </td><td> </td></tr>
<tr style="background-color: #FFFFFF "><td>2</td><td align="right">26.0</td><td align="right">188.40</td><td align="right">3.0</td><td align="right">2.77</td><td align="right">0.13</td><td align="right">0.9429</td></tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

```r
ztable(b,show.heading=FALSE)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Res.Df</th><th style="font-weight: bold;">RSS</th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum of Sq</th><th style="font-weight: bold;">F</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>1</td><td align="right">29.0</td><td align="right">191.17</td><td> </td><td> </td><td> </td><td> </td></tr>
<tr style="background-color: #FFFFFF "><td>2</td><td align="right">26.0</td><td align="right">188.40</td><td align="right">3.0</td><td align="right">2.77</td><td align="right">0.13</td><td align="right">0.9429</td></tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

## Generalized linear model ; 'glm' object

'ztable()' can be used for 'glm'(generalized linear model) object. In this time, 'ztable()' shows the **odds ratio(OR) and 95% confidence interval** as well as atandard R output.


```r
require(survival)
data(colon)
attach(colon)
```

```
## The following objects are masked from colon (pos = 4):
## 
##     adhere, age, differ, etype, extent, id, node4, nodes,
##     obstruct, perfor, rx, sex, status, study, surg, time
```

```r
out <- glm(status ~ rx+obstruct+adhere+nodes+extent, data=colon, family=binomial)
ztable(out)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Estimate</th><th style="font-weight: bold;">Std. Error</th><th style="font-weight: bold;">z value</th><th style="font-weight: bold;">Pr(>|z|)</th><th style="font-weight: bold;">OR</th><th style="font-weight: bold;">lcl</th><th style="font-weight: bold;">ucl</th></tr>
<tr style="background-color: #FFCC99 "><td>(Intercept)</td><td align="right">-2.5924</td><td align="right">0.3362</td><td align="right">-7.71</td><td align="right">0.0000</td><td align="right">0.07</td><td align="right">0.04</td><td align="right">0.14</td></tr>
<tr style="background-color: #FFFFFF "><td>rx1</td><td align="right">-0.0356</td><td align="right">0.0602</td><td align="right">-0.59</td><td align="right">0.5538</td><td align="right">0.97</td><td align="right">0.86</td><td align="right">1.09</td></tr>
<tr style="background-color: #FFCC99 "><td>rx2</td><td align="right">-0.1926</td><td align="right">0.0359</td><td align="right">-5.37</td><td align="right">0.0000</td><td align="right">0.82</td><td align="right">0.77</td><td align="right">0.88</td></tr>
<tr style="background-color: #FFFFFF "><td>obstruct</td><td align="right">0.2320</td><td align="right">0.1251</td><td align="right">1.85</td><td align="right">0.0636</td><td align="right">1.26</td><td align="right">0.99</td><td align="right">1.61</td></tr>
<tr style="background-color: #FFCC99 "><td>adhere</td><td align="right">0.4164</td><td align="right">0.1429</td><td align="right">2.91</td><td align="right">0.0036</td><td align="right">1.52</td><td align="right">1.15</td><td align="right">2.01</td></tr>
<tr style="background-color: #FFFFFF "><td>nodes</td><td align="right">0.1845</td><td align="right">0.0183</td><td align="right">10.06</td><td align="right">0.0000</td><td align="right">1.20</td><td align="right">1.16</td><td align="right">1.25</td></tr>
<tr style="background-color: #FFCC99 "><td>extent</td><td align="right">0.6238</td><td align="right">0.1142</td><td align="right">5.46</td><td align="right">0.0000</td><td align="right">1.87</td><td align="right">1.50</td><td align="right">2.34</td></tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: glm(formula = status $\sim$ rx + obstruct + adhere + nodes + extent,     family = binomial, data = colon)</td>
</tr>
</table>
</html>

Again, 'ztable()' also shows the anova table of this model.


```r
ztable(anova(out))
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
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
<th>  </th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Deviance</th><th style="font-weight: bold;">Resid. Df</th><th style="font-weight: bold;">Resid. Dev</th></tr>
<tr style="background-color: #FFCC99 "><td>NULL</td><td> </td><td> </td><td align="right">1821</td><td align="right">2525.40</td></tr>
<tr style="background-color: #FFFFFF "><td>rx</td><td align="right">2</td><td align="right">34.84</td><td align="right">1819</td><td align="right">2490.56</td></tr>
<tr style="background-color: #FFCC99 "><td>obstruct</td><td align="right">1</td><td align="right">3.66</td><td align="right">1818</td><td align="right">2486.90</td></tr>
<tr style="background-color: #FFFFFF "><td>adhere</td><td align="right">1</td><td align="right">11.74</td><td align="right">1817</td><td align="right">2475.16</td></tr>
<tr style="background-color: #FFCC99 "><td>nodes</td><td align="right">1</td><td align="right">145.01</td><td align="right">1816</td><td align="right">2330.15</td></tr>
<tr style="background-color: #FFFFFF "><td>extent</td><td align="right">1</td><td align="right">32.59</td><td align="right">1815</td><td align="right">2297.55</td></tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

## More 'aov' object



```r
op <- options(contrasts = c("contr.helmert", "contr.poly"))
npk.aov <- aov(yield ~ block + N*P*K, npk) 
ztable(npk.aov,zebra=1)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum Sq</th><th style="font-weight: bold;">Mean Sq</th><th style="font-weight: bold;">F value</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>block      </td><td align="right">5</td><td align="right">343.29</td><td align="right">68.66</td><td align="right">4.45</td><td align="right">0.0159</td></tr>
<tr style="background-color: #FFFFFF "><td>N          </td><td align="right">1</td><td align="right">189.28</td><td align="right">189.28</td><td align="right">12.26</td><td align="right">0.0044</td></tr>
<tr style="background-color: #FFCC99 "><td>P          </td><td align="right">1</td><td align="right">8.40</td><td align="right">8.40</td><td align="right">0.54</td><td align="right">0.4749</td></tr>
<tr style="background-color: #FFFFFF "><td>K          </td><td align="right">1</td><td align="right">95.20</td><td align="right">95.20</td><td align="right">6.17</td><td align="right">0.0288</td></tr>
<tr style="background-color: #FFCC99 "><td>N:P        </td><td align="right">1</td><td align="right">21.28</td><td align="right">21.28</td><td align="right">1.38</td><td align="right">0.2632</td></tr>
<tr style="background-color: #FFFFFF "><td>N:K        </td><td align="right">1</td><td align="right">33.14</td><td align="right">33.14</td><td align="right">2.15</td><td align="right">0.1686</td></tr>
<tr style="background-color: #FFCC99 "><td>P:K        </td><td align="right">1</td><td align="right">0.48</td><td align="right">0.48</td><td align="right">0.03</td><td align="right">0.8628</td></tr>
<tr style="background-color: #FFFFFF "><td>Residuals  </td><td align="right">12</td><td align="right">185.29</td><td align="right">15.44</td><td> </td><td> </td></tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: aov(formula = yield $\sim$ block + N * P * K, data = npk)</td>
</tr>
</table>
</html>

## More 'lm' object


```r
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
ztable(lm.D9)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Estimate</th><th style="font-weight: bold;">Std. Error</th><th style="font-weight: bold;">t value</th><th style="font-weight: bold;">Pr(>|t|)</th></tr>
<tr style="background-color: #FFCC99 "><td>(Intercept)</td><td align="right">4.8465</td><td align="right">0.1557</td><td align="right">31.12</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFFFFF "><td>group1</td><td align="right">-0.1855</td><td align="right">0.1557</td><td align="right">-1.19</td><td align="right">0.2490</td></tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: lm(formula = weight $\sim$ group)</td>
</tr>
</table>
</html>

```r
ztable(anova(lm.D9))
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Analysis of Variance Table</td>
</tr>
<tr>
<td colspan="6"  align="left" style="font-size:9pt; padding: 0px 0px;">Response: weight</td>
</tr>
<tr>
<th>  </th><th style="font-weight: bold;">Df</th><th style="font-weight: bold;">Sum Sq</th><th style="font-weight: bold;">Mean Sq</th><th style="font-weight: bold;">F value</th><th style="font-weight: bold;">Pr(>F)</th></tr>
<tr style="background-color: #FFCC99 "><td>group</td><td align="right">1</td><td align="right">0.69</td><td align="right">0.69</td><td align="right">1.42</td><td align="right">0.2490</td></tr>
<tr style="background-color: #FFFFFF "><td>Residuals</td><td align="right">18</td><td align="right">8.73</td><td align="right">0.48</td><td> </td><td> </td></tr>
<tr>
<td colspan="6" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>


## More 'glm' object


```r
counts <- c(18,17,15,20,10,20,25,13,12)
outcome <- gl(3,1,9)
treatment <- gl(3,3)
d.AD <- data.frame(treatment, outcome, counts)
glm.D93 <- glm(counts ~ outcome + treatment, family = poisson())
require(xtable)
print(xtable(glm.D93,align="r|llrc"),type="html")
```

<!-- html table generated in R 3.1.2 by xtable 1.7-4 package -->
<!-- Mon Dec 15 17:55:22 2014 -->
<table border=1>
<tr> <th>  </th> <th> Estimate </th> <th> Std. Error </th> <th> z value </th> <th> Pr(&gt;|z|) </th>  </tr>
  <tr> <td align="right"> (Intercept) </td> <td> 2.7954 </td> <td> 0.0831 </td> <td align="right"> 33.64 </td> <td align="center"> 0.0000 </td> </tr>
  <tr> <td align="right"> outcome1 </td> <td> -0.2271 </td> <td> 0.1011 </td> <td align="right"> -2.25 </td> <td align="center"> 0.0246 </td> </tr>
  <tr> <td align="right"> outcome2 </td> <td> -0.0220 </td> <td> 0.0592 </td> <td align="right"> -0.37 </td> <td align="center"> 0.7106 </td> </tr>
  <tr> <td align="right"> treatment1 </td> <td> -0.0000 </td> <td> 0.1000 </td> <td align="right"> -0.00 </td> <td align="center"> 1.0000 </td> </tr>
  <tr> <td align="right"> treatment2 </td> <td> -0.0000 </td> <td> 0.0577 </td> <td align="right"> -0.00 </td> <td align="center"> 1.0000 </td> </tr>
   </table>

```r
ztable(glm.D93,align="c|rrr|r|rrr")
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">Estimate</th><th style="font-weight: bold;">Std. Error</th><th style="font-weight: bold;">z value</th><th style="font-weight: bold;">Pr(>|z|)</th><th style="font-weight: bold;">OR</th><th style="font-weight: bold;">lcl</th><th style="font-weight: bold;">ucl</th></tr>
<tr style="background-color: #FFCC99 "><td>(Intercept)</td><td align="right">2.7954</td><td align="right">0.0831</td><td align="right">33.64</td><td align="right">0.0000</td><td align="right">16.37</td><td align="right">13.84</td><td align="right">19.18</td></tr>
<tr style="background-color: #FFFFFF "><td>outcome1</td><td align="right">-0.2271</td><td align="right">0.1011</td><td align="right">-2.25</td><td align="right">0.0246</td><td align="right">0.80</td><td align="right">0.65</td><td align="right">0.97</td></tr>
<tr style="background-color: #FFCC99 "><td>outcome2</td><td align="right">-0.0220</td><td align="right">0.0592</td><td align="right">-0.37</td><td align="right">0.7106</td><td align="right">0.98</td><td align="right">0.87</td><td align="right">1.10</td></tr>
<tr style="background-color: #FFFFFF "><td>treatment1</td><td align="right">-0.0000</td><td align="right">0.1000</td><td align="right">-0.00</td><td align="right">1.0000</td><td align="right">1.00</td><td align="right">0.82</td><td align="right">1.22</td></tr>
<tr style="background-color: #FFCC99 "><td>treatment2</td><td align="right">-0.0000</td><td align="right">0.0577</td><td align="right">-0.00</td><td align="right">1.0000</td><td align="right">1.00</td><td align="right">0.89</td><td align="right">1.12</td></tr>
<tr>
<td colspan="8" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: glm(formula = counts $\sim$ outcome + treatment, family = poisson())</td>
</tr>
</table>
</html>

## Principal Components Analysis : 'prcomp' object

'ztable()' can be used in principal components analysis. Followings are examples of ztable() of 'prcomp' object.



```r
data(USArrests)
pr1 <- prcomp(USArrests) 
ztable(pr1)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Rotation:</td>
</tr>
<tr>
<th>  </th><th style="font-weight: bold;">PC1</th><th style="font-weight: bold;">PC2</th><th style="font-weight: bold;">PC3</th><th style="font-weight: bold;">PC4</th></tr>
<tr style="background-color: #FFCC99 "><td>Murder</td><td align="right">0.0417</td><td align="right">-0.0448</td><td align="right">0.0799</td><td align="right">-0.9949</td></tr>
<tr style="background-color: #FFFFFF "><td>Assault</td><td align="right">0.9952</td><td align="right">-0.0588</td><td align="right">-0.0676</td><td align="right">0.0389</td></tr>
<tr style="background-color: #FFCC99 "><td>UrbanPop</td><td align="right">0.0463</td><td align="right">0.9769</td><td align="right">-0.2005</td><td align="right">-0.0582</td></tr>
<tr style="background-color: #FFFFFF "><td>Rape</td><td align="right">0.0752</td><td align="right">0.2007</td><td align="right">0.9741</td><td align="right">0.0723</td></tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

```r
ztable(summary(pr1))
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<td colspan="5"  align="left" style="font-size:9pt; padding: 0px 0px;">Importance of components:</td>
</tr>
<tr>
<th>  </th><th style="font-weight: bold;">PC1</th><th style="font-weight: bold;">PC2</th><th style="font-weight: bold;">PC3</th><th style="font-weight: bold;">PC4</th></tr>
<tr style="background-color: #FFCC99 "><td>Standard deviation</td><td align="right">83.7324</td><td align="right">14.2124</td><td align="right">6.4894</td><td align="right">2.4828</td></tr>
<tr style="background-color: #FFFFFF "><td>Proportion of Variance</td><td align="right">0.9655</td><td align="right">0.0278</td><td align="right">0.0058</td><td align="right">0.0008</td></tr>
<tr style="background-color: #FFCC99 "><td>Cumulative Proportion</td><td align="right">0.9655</td><td align="right">0.9933</td><td align="right">0.9991</td><td align="right">1.0000</td></tr>
<tr>
<td colspan="5" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

## Survival Analysis : 'coxph' object

'ztable()' can be used in principal components analysis. When used for Cox proportional hazard model, 'ztable()' showed the hazard ratio and 95% confidence interval ready for publication to medical journal.



```r
colon$TS = Surv(time,status==1) 
out=coxph(TS~rx+obstruct+adhere+differ+extent+surg+node4,data=colon)
ztable(out)
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">HR</th><th style="font-weight: bold;">lcl</th><th style="font-weight: bold;">ucl</th><th style="font-weight: bold;">se(coef)</th><th style="font-weight: bold;">z</th><th style="font-weight: bold;">Pr(>|z|)</th></tr>
<tr style="background-color: #FFCC99 "><td>rx1</td><td align="right">0.999</td><td align="right">0.925</td><td align="right">1.079</td><td align="right">0.039</td><td align="right">-0.030</td><td align="right">0.9764</td></tr>
<tr style="background-color: #FFFFFF "><td>rx2</td><td align="right">0.871</td><td align="right">0.829</td><td align="right">0.915</td><td align="right">0.025</td><td align="right">-5.464</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFCC99 "><td>obstruct</td><td align="right">1.267</td><td align="right">1.079</td><td align="right">1.489</td><td align="right">0.082</td><td align="right">2.885</td><td align="right">0.0039</td></tr>
<tr style="background-color: #FFFFFF "><td>adhere</td><td align="right">1.181</td><td align="right">0.991</td><td align="right">1.409</td><td align="right">0.090</td><td align="right">1.856</td><td align="right">0.0634</td></tr>
<tr style="background-color: #FFCC99 "><td>differ</td><td align="right">1.219</td><td align="right">1.067</td><td align="right">1.394</td><td align="right">0.068</td><td align="right">2.906</td><td align="right">0.0037</td></tr>
<tr style="background-color: #FFFFFF "><td>extent</td><td align="right">1.523</td><td align="right">1.298</td><td align="right">1.787</td><td align="right">0.082</td><td align="right">5.152</td><td align="right">0.0000</td></tr>
<tr style="background-color: #FFCC99 "><td>surg</td><td align="right">1.274</td><td align="right">1.104</td><td align="right">1.469</td><td align="right">0.073</td><td align="right">3.319</td><td align="right">0.0009</td></tr>
<tr style="background-color: #FFFFFF "><td>node4</td><td align="right">2.359</td><td align="right">2.059</td><td align="right">2.702</td><td align="right">0.069</td><td align="right">12.383</td><td align="right">0.0000</td></tr>
<tr>
<td colspan="7" align="left" style="font-size:9pt ;border-top: 1px solid black;">Call: coxph(formula = TS $\sim$ rx + obstruct + adhere + differ + extent +     surg + node4, data = colon)</td>
</tr>
</table>
</html>


### Customize the zebra striping colors

If you wanted to use several colors for zebra striping, you can set the parameter 'zebra' to zero(e.g. zebra=0) and set the 'zebra.color' parameter with vector of your favorite colors. Your favorite colors are used to zebra striping. For your convienience, ten colors are predifned for this purpose. The predefined colors are: c("peach","peach-orange","peachpuff","peach-yellow","pear","pearl","peridot","periwinkle","pastelred","pastelgray"). 


```r
ztable(head(mtcars,15),zebra=0) 
```

<html><head><style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              background-color: white;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px; }
      </style></head><table align="center" style="caption-side:top; font-size:11pt;"><caption style="text-align:center"></caption><tr>
<th>  </th><th style="font-weight: bold;">mpg</th><th style="font-weight: bold;">cyl</th><th style="font-weight: bold;">disp</th><th style="font-weight: bold;">hp</th><th style="font-weight: bold;">drat</th><th style="font-weight: bold;">wt</th><th style="font-weight: bold;">qsec</th><th style="font-weight: bold;">vs</th><th style="font-weight: bold;">am</th><th style="font-weight: bold;">gear</th><th style="font-weight: bold;">carb</th></tr>
<tr style="background-color: #FFE5B4 "><td>Mazda RX4</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.62</td><td align="right">16.46</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFCC99 "><td>Mazda RX4 Wag</td><td align="right">21.00</td><td align="right">6.00</td><td align="right">160.00</td><td align="right">110.00</td><td align="right">3.90</td><td align="right">2.88</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFDAB9 "><td>Datsun 710</td><td align="right">22.80</td><td align="right">4.00</td><td align="right">108.00</td><td align="right">93.00</td><td align="right">3.85</td><td align="right">2.32</td><td align="right">18.61</td><td align="right">1.00</td><td align="right">1.00</td><td align="right">4.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #FADFAD "><td>Hornet 4 Drive</td><td align="right">21.40</td><td align="right">6.00</td><td align="right">258.00</td><td align="right">110.00</td><td align="right">3.08</td><td align="right">3.21</td><td align="right">19.44</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #D1E231 "><td>Hornet Sportabout</td><td align="right">18.70</td><td align="right">8.00</td><td align="right">360.00</td><td align="right">175.00</td><td align="right">3.15</td><td align="right">3.44</td><td align="right">17.02</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">2.00</td></tr>
<tr style="background-color: #F0EAD6 "><td>Valiant</td><td align="right">18.10</td><td align="right">6.00</td><td align="right">225.00</td><td align="right">105.00</td><td align="right">2.76</td><td align="right">3.46</td><td align="right">20.22</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">1.00</td></tr>
<tr style="background-color: #E6E200 "><td>Duster 360</td><td align="right">14.30</td><td align="right">8.00</td><td align="right">360.00</td><td align="right">245.00</td><td align="right">3.21</td><td align="right">3.57</td><td align="right">15.84</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #CCCCFF "><td>Merc 240D</td><td align="right">24.40</td><td align="right">4.00</td><td align="right">146.70</td><td align="right">62.00</td><td align="right">3.69</td><td align="right">3.19</td><td align="right">20.00</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">4.00</td><td align="right">2.00</td></tr>
<tr style="background-color: #FF6961 "><td>Merc 230</td><td align="right">22.80</td><td align="right">4.00</td><td align="right">140.80</td><td align="right">95.00</td><td align="right">3.92</td><td align="right">3.15</td><td align="right">22.90</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">4.00</td><td align="right">2.00</td></tr>
<tr style="background-color: #CFCFC4 "><td>Merc 280</td><td align="right">19.20</td><td align="right">6.00</td><td align="right">167.60</td><td align="right">123.00</td><td align="right">3.92</td><td align="right">3.44</td><td align="right">18.30</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFE5B4 "><td>Merc 280C</td><td align="right">17.80</td><td align="right">6.00</td><td align="right">167.60</td><td align="right">123.00</td><td align="right">3.92</td><td align="right">3.44</td><td align="right">18.90</td><td align="right">1.00</td><td align="right">0.00</td><td align="right">4.00</td><td align="right">4.00</td></tr>
<tr style="background-color: #FFCC99 "><td>Merc 450SE</td><td align="right">16.40</td><td align="right">8.00</td><td align="right">275.80</td><td align="right">180.00</td><td align="right">3.07</td><td align="right">4.07</td><td align="right">17.40</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">3.00</td></tr>
<tr style="background-color: #FFDAB9 "><td>Merc 450SL</td><td align="right">17.30</td><td align="right">8.00</td><td align="right">275.80</td><td align="right">180.00</td><td align="right">3.07</td><td align="right">3.73</td><td align="right">17.60</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">3.00</td></tr>
<tr style="background-color: #FADFAD "><td>Merc 450SLC</td><td align="right">15.20</td><td align="right">8.00</td><td align="right">275.80</td><td align="right">180.00</td><td align="right">3.07</td><td align="right">3.78</td><td align="right">18.00</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">3.00</td></tr>
<tr style="background-color: #D1E231 "><td>Cadillac Fleetwood</td><td align="right">10.40</td><td align="right">8.00</td><td align="right">472.00</td><td align="right">205.00</td><td align="right">2.93</td><td align="right">5.25</td><td align="right">17.98</td><td align="right">0.00</td><td align="right">0.00</td><td align="right">3.00</td><td align="right">4.00</td></tr>
<tr>
<td colspan="12" align="left" style="font-size:9pt ;border-top: 1px solid black;"></td>
</tr>
</table>
</html>

The color names used for this purpose are predefined in the data 'zcolors' included in 'ztable' package. Please type '?zcolors' in R console for help file or just type 'zcolors'. You can see 749 color names defined in data 'zcolors'. 
