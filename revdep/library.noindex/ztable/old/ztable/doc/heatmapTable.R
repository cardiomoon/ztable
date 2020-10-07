## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = NA,
  message=FALSE
)

## ----eval=FALSE----------------------------------------------------------
#  install.packages("ztable")

## ----eval=FALSE----------------------------------------------------------
#  if(!require(devtools)) install.packages("devtools")
#  devtools::install_github("cardiomoon/ztable")

## ------------------------------------------------------------------------
require(moonBook)
x=table(acs$Dx,acs$smoking)
x

## ----results="asis"------------------------------------------------------
library(ztable)
library(magrittr)
options(ztable.type="html")
z=ztable(x) 
print(z,caption="Table 1. Basic Table")

## ----results="asis"------------------------------------------------------
z %>% 
    addCellColor(4,3,bg="orange",color="white") %>% 
    print(caption="Table 2. Add Cell Color")

## ----results='asis'------------------------------------------------------
ztable(head(iris),caption="Table 3. Conditinoal Formatting: Sepal.Width >= 3.5") %>%
    addRowColor(rows=1,bg="#C90000",color="white") %>%
    addCellColor(condition=Sepal.Width>=3.5,cols=Sepal.Width,color="red") 

## ----results="asis"------------------------------------------------------
z %>% makeHeatmap() %>% print(caption="Table 4. Heatmap Table")

## ----results='asis'------------------------------------------------------
ztable(head(mtcars)) %>% 
    makeHeatmap(palette="Blues") %>%
    print(caption="Table 5. Heatmap table with 'Blue' palette")

## ----fig.width=8,out.width='100%'----------------------------------------
mycolor=gradientColor(low="yellow",mid="orange",high="red",n=20,plot=TRUE)
mycolor

## ----results='asis'------------------------------------------------------
ztable(head(mtcars[1:5])) %>% 
    makeHeatmap(mycolor=mycolor) %>%
    print(caption="Table 6. Heatmap table with user-defined palette")

## ----results='asis'------------------------------------------------------
ztable(head(acs[1:10])) %>% 
    makeHeatmap %>%
    print(caption="Table 7. Heatmap table with non-numeric data")

## ----results='asis'------------------------------------------------------
ztable(head(mtcars)) %>% 
    makeHeatmap(palette="YlOrRd",cols=c(1,3,4),margin=2) %>%
    print(caption="Table 8. Columnwise heatmap table")

## ----results='asis'------------------------------------------------------
ztable(t(head(mtcars))) %>%
    makeHeatmap(palette="YlOrRd",rows=c(1,3,4),margin=1) %>%
    print(caption="Table 9. Rowwise heatmap table")

