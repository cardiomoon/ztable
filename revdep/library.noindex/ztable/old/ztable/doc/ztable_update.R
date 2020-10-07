## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = NA
)

## ----eval=FALSE----------------------------------------------------------
#  install.packages("ztable")

## ----eval=FALSE----------------------------------------------------------
#  if(!require(devtools)) install.packages("devtools")
#  devtools::install_github("cardiomoon/ztable")

## ----results='asis'------------------------------------------------------
library(ztable)
library(magrittr)
options(ztable.type="html")
z=ztable(head(iris),caption="Table 1. Basic Table")
z

## ----results='asis'------------------------------------------------------
ztable(head(iris),caption="Table 2. Table with desired background and font colors") %>%
    addRowColor(rows=1,bg="#C90000",color="white") %>%
    addCellColor(rows=3,cols=c(4,6), bg="cyan",color="red") 

## ----results='asis'------------------------------------------------------
ztable(head(iris),caption="Table 3. Conditinoal Formatting: Sepal.Width >= 3.5") %>%
    addRowColor(rows=1,bg="#C90000",color="white") %>%
    addCellColor(condition=Sepal.Width>=3.5,cols=Sepal.Width,color="red") 

## ----results='asis'------------------------------------------------------
ztable(head(mtcars),caption="Table 4. Cars with mpg > 21 ") %>%
    addCellColor(condition=mpg>21,cols=1:2,bg="cyan",color="red") 

## ------------------------------------------------------------------------
require(RColorBrewer)

reds=palette2colors("Reds")
reds

## ----results='asis'------------------------------------------------------
ztable(head(iris),caption="Table 5. Use of color palette") %>% 
    addColColor(bg=reds)

ztable(head(mtcars),caption="Table 6. Use of color palette(2)") %>%
    addRowColor(bg=palette2colors("Set3"))

## ------------------------------------------------------------------------
require(officer)
require(flextable)

ft=regulartable(head(iris))
ft

## ------------------------------------------------------------------------
read_docx() %>%
    body_add_flextable(ft) %>%
    print(target = "flextable.docx")

## ----results='asis'------------------------------------------------------
cgroup=c("Sepal","Petal","Species")
n.cgroup=c(2,2,1)
z <- ztable(head(iris),caption="Table 9. Use of column groups") %>%
    addcgroup(cgroup=cgroup,n.cgroup=n.cgroup,color=c("red","green","blue")) %>%
    spanRow(col=4,from=2,to=3,bg="cyan") %>%
    spanCol(row=5,from=2,to=3,bg="cyan",color="blue")
z
ztable2flextable(z)

## ----results='asis'------------------------------------------------------
fit <- lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)
z=ztable(fit,caption="Table 10. Results of Multiple Regression Analysis ")
z
ztable2flextable(z)

## ----results='asis'------------------------------------------------------
z1=z %>% addSigColor
z1
ztable2flextable(z1) %>% autofit()

## ----results='asis'------------------------------------------------------
z2= z %>% addSigColor(level=0.01,bg="yellow",color="red")
z2
ztable2flextable(z2) 


