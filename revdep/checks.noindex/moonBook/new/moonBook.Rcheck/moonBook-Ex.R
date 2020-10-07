pkgname <- "moonBook"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('moonBook')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("HRplot")
### * HRplot

flush(stderr()); flush(stdout())

### Name: HRplot
### Title: Draw a hazard ratio plot
### Aliases: HRplot

### ** Examples

require(survival)
attach(colon)
colon$TS=Surv(time,status==1)
out=mycph(TS~.,data=colon)
out
HRplot(out,type=1,pch=2,col=c("blue","red"))
HRplot(out,type=2,show.CI=TRUE,pch=2,cex=2,main="Hazard ratios of all individual variables")




cleanEx()
nameEx("ORplot")
### * ORplot

flush(stderr()); flush(stdout())

### Name: ORplot
### Title: Plot for odds ratios for a S3 object of glm
### Aliases: ORplot

### ** Examples

require(survival)
data(colon)
out1=glm(status~sex+age+rx+obstruct+node4,data=colon)
out2=glm(status~rx+node4,data=colon)
ORplot(out1,type=2,show.CI=TRUE,xlab="This is xlab",main="Main Title")
ORplot(out2,type=1,main="Main Title")
ORplot(out1,type=2,show.CI=TRUE,main="Main Title")
ORplot(out1,type=3,show.CI=TRUE,main="Main Title",sig.level=0.05)
ORplot(out1,type=3,show.CI=TRUE,main="Main Title",sig.level=0.05,
       pch=1,cex=2,lwd=4,col=c("red","blue"))



cleanEx()
nameEx("addComma")
### * addComma

flush(stderr()); flush(stdout())

### Name: addComma
### Title: Change numbers into formatted numbers
### Aliases: addComma addComma.mytable addComma.mytable.df
###   addComma.cbind.mytable addComma.data.frame addComma.character

### ** Examples

require(stringr)
require(ztable)
require(magrittr)
require(ggplot2)
mytable(cut~.,data=diamonds) %>% addComma
x=mytable(Dx~sex,data=acs)
addComma(x)



cleanEx()
nameEx("compress")
### * compress

flush(stderr()); flush(stdout())

### Name: compress
### Title: Compress an object of class mytable or cbind.mytable
### Aliases: compress compress.mytable compress.cbind.mytable
###   compress.data.frame

### ** Examples

require(stringr)
require(ztable)
require(magrittr)
mytable(acs) %>% compress
mytable(Dx~.,data=acs) %>% compress
mytable(Dx~.,data=acs) %>% compress %>% ztable
mytable(Dx+sex~.,data=acs) %>% compress



cleanEx()
nameEx("densityplot")
### * densityplot

flush(stderr()); flush(stdout())

### Name: densityplot
### Title: Make Kernel density plot
### Aliases: densityplot

### ** Examples

  require(moonBook)
  data(acs)
  densityplot(age~Dx,data=acs)



cleanEx()
nameEx("getMapping")
### * getMapping

flush(stderr()); flush(stdout())

### Name: getMapping
### Title: extract variable name from mapping, aes
### Aliases: getMapping

### ** Examples

require(ggplot2)
mapping=aes(colour=sex)
getMapping(mapping,"colour")
getMapping(mapping,"x")



cleanEx()
nameEx("mycph")
### * mycph

flush(stderr()); flush(stdout())

### Name: mycph
### Title: Perform coxph of individual expecting variables
### Aliases: mycph

### ** Examples

require(survival)
data(colon)
attach(colon)
colon$TS=Surv(time,status==1)
out=mycph(TS~.,data=colon)
out
HRplot(out,type=2,show.CI=TRUE,main="Hazard ratios of all individual variables")



cleanEx()
nameEx("mycsv")
### * mycsv

flush(stderr()); flush(stdout())

### Name: mycsv
### Title: Export to csv file for class "mytable" or "cbind.mytable"
### Aliases: mycsv

### ** Examples

require(moonBook)
res=mytable(sex~age+DM,data=acs)
mycsv(res,file="test.csv")
mycsv(summary(res),file="testsummary.csv")



cleanEx()
nameEx("mycsv.cbind.mytable")
### * mycsv.cbind.mytable

flush(stderr()); flush(stdout())

### Name: mycsv.cbind.mytable
### Title: Export to csv file for class "cbind.mytable"
### Aliases: mycsv.cbind.mytable

### ** Examples

require(moonBook)
res1=mytable(sex+Dx~age+DM,data=acs)
mycsv(res1,file="test1.csv")
mycsv(summary(res1),file="testsummary1.csv")



cleanEx()
nameEx("mycsv.mytable")
### * mycsv.mytable

flush(stderr()); flush(stdout())

### Name: mycsv.mytable
### Title: Export to csv file for class "mytable"
### Aliases: mycsv.mytable

### ** Examples

require(moonBook)
res=mytable(sex~age+DM,data=acs)
mycsv(res,file="test.csv")
mycsv(summary(res),file="testsummary.csv")
mycsv=function(x,row.names=FALSE) UseMethod("mycsv")



cleanEx()
nameEx("myhtml")
### * myhtml

flush(stderr()); flush(stdout())

### Name: myhtml
### Title: Export to html file for class "mytable" or "cbind.mytable" of
###   "data.frame"
### Aliases: myhtml myhtml.default myhtml.mytable myhtml.cbind.mytable

### ** Examples

require(moonBook)
res=mytable(sex~age+Dx,data=acs)
myhtml(res)
res1=mytable(sex+Dx~.,data=acs)
myhtml(res1)
x=head(iris)
myhtml(x)
myhtml(x,caption="Table 1. myhtml Test")
myhtml(x,caption="Table 1. myhtml Test",rownames=FALSE)



cleanEx()
nameEx("mylatex")
### * mylatex

flush(stderr()); flush(stdout())

### Name: mylatex
### Title: Exporting "cbind.mytable","mytable" to LaTeX format
### Aliases: mylatex mylatex.default mylatex.mytable mylatex.cbind.mytable

### ** Examples

require(moonBook)
out=mytable(sex~.,data=acs)
mylatex(out)
out1=mytable(sex+Dx~.,data=acs)
mylatex(out1,size=6)



cleanEx()
nameEx("mytable")
### * mytable

flush(stderr()); flush(stdout())

### Name: mytable
### Title: Produce table for descriptive statistics
### Aliases: mytable mytable.formula mytable.data.frame

### ** Examples

mytable(acs)
mytable(~age+sex,data=acs)
mytable(Dx~age+sex+height+weight+TC+TG+HDLC,data=acs,method=3,digits=2)
mytable(am+cyl~.,data=mtcars)
out=mytable(sex~.,data=acs)
out
summary(out)
require(ztable)
ztable(out)
mytable(acs)



cleanEx()
nameEx("rank2group")
### * rank2group

flush(stderr()); flush(stdout())

### Name: rank2group
### Title: rank a numeric vector and returns a new ordinal vector
### Aliases: rank2group

### ** Examples


require(ggplot2)
data(diamonds)
diamonds$PriceGroup=rank2group(diamonds$price,4)
table(diamonds$PriceGroup)
aggregate(price~PriceGroup,data=diamonds,range)

diamonds$PriceGroup3=rank2group(diamonds$price,3)
table(diamonds$PriceGroup3)
aggregate(price~PriceGroup3,data=diamonds,range)
diamonds$PriceGroup5=rank2group(diamonds$price,5)
table(diamonds$PriceGroup5)
aggregate(price~PriceGroup5,data=diamonds,range)



cleanEx()
nameEx("summary.cbind.mytable")
### * summary.cbind.mytable

flush(stderr()); flush(stdout())

### Name: summary.cbind.mytable
### Title: Summarizing function for class "cbind.mytable"
### Aliases: summary.cbind.mytable

### ** Examples

out=mytable(am+cyl~.,data=mtcars)
summary(out)



cleanEx()
nameEx("summary.mytable")
### * summary.mytable

flush(stderr()); flush(stdout())

### Name: summary.mytable
### Title: Summarizing function for class "mytable"
### Aliases: summary.mytable

### ** Examples

out=mytable(am~.,data=mtcars)
summary(out)




cleanEx()
nameEx("validColname")
### * validColname

flush(stderr()); flush(stdout())

### Name: validColname
### Title: Find valid string among character vector from approximate string
### Aliases: validColname

### ** Examples

a="dx"
b=c("Age","Sex","Dx")
validColname(a,b)




### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
