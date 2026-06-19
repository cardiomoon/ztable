pkgname <- "rrtable"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('rrtable')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("Rcode2docx")
### * Rcode2docx

flush(stderr()); flush(stdout())

### Name: Rcode2docx
### Title: Save R code to Microsoft Word format
### Aliases: Rcode2docx

### ** Examples

## Not run: 
##D code="summary(lm(mpg~hp+wt,data=mtcars))"
##D Rcode2docx(code=code,title="R code to Word")
## End(Not run)



cleanEx()
nameEx("Rcode2flextable")
### * Rcode2flextable

flush(stderr()); flush(stdout())

### Name: Rcode2flextable
### Title: Make a flextable object with character strings encoding R code
### Aliases: Rcode2flextable

### ** Examples

Rcode2flextable("str(mtcars)\nsummary(mtcars)",eval=FALSE)



cleanEx()
nameEx("Rcode2office")
### * Rcode2office

flush(stderr()); flush(stdout())

### Name: Rcode2office
### Title: Make R code slide
### Aliases: Rcode2office

### ** Examples

## Not run: 
##D code="summary(lm(mpg~hp+wt,data=mtcars))"
##D Rcode2office(code=code)
## End(Not run)



cleanEx()
nameEx("Rcode2pptx")
### * Rcode2pptx

flush(stderr()); flush(stdout())

### Name: Rcode2pptx
### Title: Save R code to Microsoft Powerpoint format
### Aliases: Rcode2pptx

### ** Examples

## Not run: 
##D code="summary(lm(mpg~hp+wt,data=mtcars))"
##D Rcode2pptx(code=code,title="R code to pptx")
## End(Not run)



cleanEx()
nameEx("add_2flextables")
### * add_2flextables

flush(stderr()); flush(stdout())

### Name: add_2flextables
### Title: Add two flextables into a document object
### Aliases: add_2flextables

### ** Examples

## Not run: 
##D require(rrtable)
##D require(officer)
##D require(magrittr)
##D title="Two Tables"
##D ft1=df2flextable(head(iris[1:4]))
##D ft2=df2flextable(tail(iris[1:4]))
##D doc=read_docx()
##D doc %>% add_text(title=title) %>%
##D         add_2flextables(ft1,ft2)
##D doc=read_pptx()
##D doc %>% add_text(title=title) %>%
##D         add_2flextables(ft1,ft2)
## End(Not run)



cleanEx()
nameEx("add_2ggplots")
### * add_2ggplots

flush(stderr()); flush(stdout())

### Name: add_2ggplots
### Title: Add two ggplots into a document object
### Aliases: add_2ggplots

### ** Examples

## Not run: 
##D require(ggplot2)
##D require(magrittr)
##D require(officer)
##D require(rvg)
##D plot1 <- "ggplot(data = iris, aes(Sepal.Length, Petal.Length)) + geom_point()"
##D plot2 <- "ggplot(data = iris, aes(Sepal.Length, Petal.Length, color = Species)) + geom_point()"
##D read_pptx() %>% add_text(title="Two ggplots") %>% add_2ggplots(plot1=plot1,plot2=plot2)
##D read_docx() %>% add_text(title="Two ggplots") %>% add_2ggplots(plot1=plot1,plot2=plot2)
## End(Not run)



cleanEx()
nameEx("add_2plots")
### * add_2plots

flush(stderr()); flush(stdout())

### Name: add_2plots
### Title: Add two plots into a document object
### Aliases: add_2plots

### ** Examples

require(magrittr)
require(officer)
require(ggplot2)
plotstring1="plot(iris)"
plotstring2="ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()"
read_pptx() %>% add_text(title="Two plots") %>% add_2plots(plotstring1,plotstring2)
read_docx() %>% add_text(title="Two plots") %>% add_2plots(plotstring1,plotstring2)



cleanEx()
nameEx("add_Rcode")
### * add_Rcode

flush(stderr()); flush(stdout())

### Name: add_Rcode
### Title: Make a R code slide into a document object
### Aliases: add_Rcode

### ** Examples

library(rrtable)
library(magrittr)
library(officer)
code="summary(lm(mpg~hp+wt,data=mtcars))"
read_pptx() %>% add_text(title="Regression Analysis") %>%
   add_Rcode(code)



cleanEx()
nameEx("add_flextable")
### * add_flextable

flush(stderr()); flush(stdout())

### Name: add_flextable
### Title: Add a flextable or mytable object into a document object
### Aliases: add_flextable

### ** Examples

## Not run: 
##D require(rrtable)
##D require(moonBook)
##D require(officer)
##D require(magrittr)
##D ftable=mytable(Dx~.,data=acs)
##D title="mytable Example"
##D ft=df2flextable(head(iris))
##D title2="df2flextable Example"
##D doc=read_docx()
##D doc %>% add_text(title=title) %>%
##D         add_flextable(ftable) %>%
##D         add_text(title=title2) %>%
##D         add_flextable(ft)
## End(Not run)



cleanEx()
nameEx("add_ggplot")
### * add_ggplot

flush(stderr()); flush(stdout())

### Name: add_ggplot
### Title: Add ggplot into a document object
### Aliases: add_ggplot

### ** Examples

require(rrtable)
require(ggplot2)
require(officer)
require(magrittr)
code <- "ggplot(mtcars, aes(x = mpg , y = wt)) + geom_point()"
read_pptx() %>% add_text(title="ggplot") %>% add_ggplot(code=code)
read_docx() %>% add_text(title="ggplot") %>% add_ggplot(code=code)



cleanEx()
nameEx("add_image")
### * add_image

flush(stderr()); flush(stdout())

### Name: add_image
### Title: Add plot into a document object
### Aliases: add_image

### ** Examples

require(officer)
require(rrtable)
require(magrittr)
require(ggplot2)
read_pptx() %>% add_text(title="Add image") %>% add_image("plot(iris)")
read_docx() %>% add_text(title="Add image") %>% add_image("plot(1:10)",format="png")



cleanEx()
nameEx("add_plot")
### * add_plot

flush(stderr()); flush(stdout())

### Name: add_plot
### Title: Add plot into a document object
### Aliases: add_plot

### ** Examples

require(rrtable)
require(officer)
require(rvg)
require(magrittr)
read_pptx() %>% add_text(title="Plot") %>% add_plot("plot(iris)")
read_docx() %>% add_text(title="Plot") %>% add_plot("plot(iris)")



cleanEx()
nameEx("add_title_slide")
### * add_title_slide

flush(stderr()); flush(stdout())

### Name: add_title_slide
### Title: Add title slide
### Aliases: add_title_slide

### ** Examples

require(magrittr)
require(officer)
read_pptx() %>% add_title_slide(title="Web-based analysis with R")



cleanEx()
nameEx("as.mynumeric")
### * as.mynumeric

flush(stderr()); flush(stdout())

### Name: as.mynumeric
### Title: coerce an object of type "numeric"
### Aliases: as.mynumeric

### ** Examples

x=c("1,200","2","3.5")
x=factor(3:1)
x=c(1:3,"tt")
as.mynumeric(x)



cleanEx()
nameEx("code2docx")
### * code2docx

flush(stderr()); flush(stdout())

### Name: code2docx
### Title: Save plot/ggplot code to Microsoft Powerpoint format
### Aliases: code2docx

### ** Examples

## Not run: 
##D code2docx(plot(iris))
##D require(ggplot2)
##D gg=ggplot(data=mtcars,aes(x=wt,y=mpg))+geom_point()
##D code2docx(ggobj=gg)
## End(Not run)



cleanEx()
nameEx("code2office")
### * code2office

flush(stderr()); flush(stdout())

### Name: code2office
### Title: Save plot/ggplot code to Microsoft Powerpoint format
### Aliases: code2office

### ** Examples

## Not run: 
##D code2office(plot(iris))
##D require(ggplot2)
##D gg=ggplot(data=mtcars,aes(x=wt,y=mpg))+geom_point()
##D code2office(ggobj=gg)
## End(Not run)



cleanEx()
nameEx("code2pptx")
### * code2pptx

flush(stderr()); flush(stdout())

### Name: code2pptx
### Title: Save plot/ggplot code to Microsoft Powerpoint format
### Aliases: code2pptx

### ** Examples

## Not run: 
##D code2pptx(plot(iris))
##D require(ggplot2)
##D gg=ggplot(data=mtcars,aes(x=wt,y=mpg))+geom_point()
##D code2pptx(ggobj=gg)
## End(Not run)



cleanEx()
nameEx("data2HTML")
### * data2HTML

flush(stderr()); flush(stdout())

### Name: data2HTML
### Title: Make a HTML5 file with a data.frame
### Aliases: data2HTML

### ** Examples

## Not run: 
##D library(moonBook)
##D library(rrtable)
##D library(ggplot2)
##D data2HTML(sampleData2)
## End(Not run)



cleanEx()
nameEx("data2docx")
### * data2docx

flush(stderr()); flush(stdout())

### Name: data2docx
### Title: convert data to docx file
### Aliases: data2docx

### ** Examples

## Not run: 
##D library(rrtable)
##D library(moonBook)
##D library(ggplot2)
##D data2docx(sampleData2,echo=TRUE)
## End(Not run)



cleanEx()
nameEx("data2pdf")
### * data2pdf

flush(stderr()); flush(stdout())

### Name: data2pdf
### Title: Make a pdf file with a data.frame
### Aliases: data2pdf

### ** Examples

library(moonBook)
library(ztable)
library(ggplot2)
## Not run: 
##D data2pdf(sampleData2)
## End(Not run)



cleanEx()
nameEx("data2plotzip")
### * data2plotzip

flush(stderr()); flush(stdout())

### Name: data2plotzip
### Title: Make zipped plot file with a data.frame
### Aliases: data2plotzip

### ** Examples

## Not run: 
##D library(moonBook)
##D library(ztable)
##D library(rrtable)
##D library(ggplot2)
##D data2plotzip(sampleData2,path="tmp")
## End(Not run)



cleanEx()
nameEx("data2pptx")
### * data2pptx

flush(stderr()); flush(stdout())

### Name: data2pptx
### Title: convert data to pptx file
### Aliases: data2pptx

### ** Examples

## Not run: 
##D library(rrtable)
##D library(moonBook)
##D library(ggplot2)
##D data2pptx(sampleData2,echo=TRUE)
## End(Not run)



cleanEx()
nameEx("df2flextable")
### * df2flextable

flush(stderr()); flush(stdout())

### Name: df2flextable
### Title: Convert data.frame to flextable
### Aliases: df2flextable

### ** Examples

require(flextable)
require(officer)
df2flextable(head(iris),vanilla=TRUE,colorheader=TRUE)
## Not run: 
##D df2flextable(head(iris),vanilla=TRUE,digits=c(1,2,3,4))
##D df2flextable(head(iris),vanilla=FALSE)
##D df2flextable(head(iris),vanilla=FALSE,vlines=FALSE,fontsize=14)
##D df2flextable(head(mtcars/2000),digits=3,pcol=8,digitp=4,add.rownames=TRUE)
## End(Not run)



cleanEx()
nameEx("image2docx")
### * image2docx

flush(stderr()); flush(stdout())

### Name: image2docx
### Title: Save plot/ggplot to Microsoft Word format
### Aliases: image2docx

### ** Examples

## Not run: 
##D require(ggplot2)
##D x<-ggplot(iris,aes(x=Sepal.Length))+geom_histogram()
##D image2docx(x)
##D image2docx(x="plot(iris)",title="A ggplot",append=TRUE)
##D p2="ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()"
##D image2docx(p2,append=TRUE)
## End(Not run)



cleanEx()
nameEx("image2office")
### * image2office

flush(stderr()); flush(stdout())

### Name: image2office
### Title: Save plot/ggplot as image to Microsoft Powerpoint format
### Aliases: image2office

### ** Examples

## Not run: 
##D require(ggplot2)
##D image2pptx("ggplot(data=iris,aes(x=Sepal.Length))+geom_density()")
## End(Not run)



cleanEx()
nameEx("image2pptx")
### * image2pptx

flush(stderr()); flush(stdout())

### Name: image2pptx
### Title: Save plot/ggplot to Microsoft Powerpoint format
### Aliases: image2pptx

### ** Examples

## Not run: 
##D require(ggplot2)
##D x<-ggplot(iris,aes(x=Sepal.Length))+geom_histogram()
##D image2pptx(x)
##D x="plot(iris)"
##D image2pptx(x,title="A plot",append=TRUE)
##D p2="ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()"
##D image2pptx(p2,append=TRUE)
## End(Not run)



cleanEx()
nameEx("is_ggplot")
### * is_ggplot

flush(stderr()); flush(stdout())

### Name: is_ggplot
### Title: Reports whether plotstring encode a ggplot object
### Aliases: is_ggplot

### ** Examples

require(ggplot2)
is_ggplot("plot(iris)")
is_ggplot("ggplot(iris,aes(x=Sepal.Length))+geom_histogram()")



cleanEx()
nameEx("mytable2flextable")
### * mytable2flextable

flush(stderr()); flush(stdout())

### Name: mytable2flextable
### Title: Convert mytable object to flextable
### Aliases: mytable2flextable

### ** Examples

## Not run: 
##D require(moonBook)
##D require(flextable)
##D require(officer)
##D result=mytable(smoking+Dx~.,data=acs)
##D mytable2flextable(result)
##D mytable2flextable(result,vanilla=FALSE)
##D result=mytable(Dx~.,data=acs)
##D mytable2flextable(result)
##D mytable2flextable(result,vanilla=FALSE)
## End(Not run)



cleanEx()
nameEx("p2character")
### * p2character

flush(stderr()); flush(stdout())

### Name: p2character
### Title: Change p value to string
### Aliases: p2character

### ** Examples

x=c(0.000001,NA,0.1234567,0.00123,0.000123)
p2character(x)
p2character(x,digits=4)



cleanEx()
nameEx("plot2docx")
### * plot2docx

flush(stderr()); flush(stdout())

### Name: plot2docx
### Title: Save plot/ggplot to Microsoft Word format
### Aliases: plot2docx

### ** Examples

## Not run: 
##D require(ggplot2)
##D x<-ggplot(iris,aes(x=Sepal.Length))+geom_histogram()
##D plot2docx(x)
##D plot2docx(x,title="A ggplot",append=TRUE)
##D p2=ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()
##D plot2docx(p2,append=TRUE)
##D plot2docx(x="plot(iris)",append=TRUE,title="plot(iris)")
##D plot2docx(x="ggplot(iris,aes(x=Sepal.Length))+geom_histogram()",append=TRUE)
## End(Not run)



cleanEx()
nameEx("plot2office")
### * plot2office

flush(stderr()); flush(stdout())

### Name: plot2office
### Title: Save plot/ggplot to Microsoft Powerpoint format
### Aliases: plot2office

### ** Examples

## Not run: 
##D require(ggplot2)
##D x=c("plot(iris)","ggplot(mtcars,aes(x=hp,y=mpg))+geom_point()")
##D plot2office(x,title="2 plots",parallel=TRUE)
##D plot2office(x,title="2 plots",parallel=TRUE,echo=TRUE,append=TRUE)
##D plot2office(x,parallel=TRUE,echo=TRUE,append=TRUE)
## End(Not run)



cleanEx()
nameEx("plot2pptx")
### * plot2pptx

flush(stderr()); flush(stdout())

### Name: plot2pptx
### Title: Save plot/ggplot to Microsoft Powerpoint format
### Aliases: plot2pptx

### ** Examples

## Not run: 
##D require(ggplot2)
##D x<-ggplot(iris,aes(x=Sepal.Length))+geom_histogram()
##D plot2pptx(x)
##D plot2pptx(x,title="A ggplot",append=TRUE)
##D p2=ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()
##D plot2pptx(p2,append=TRUE)
##D plot2pptx(x=c("plot(iris)","ggplot(iris,aes(x=Sepal.Length))+geom_histogram()"),
##D     append=TRUE,title=c("plot","ggplot"),echo=TRUE)
## End(Not run)



cleanEx()
nameEx("pptxListInput")
### * pptxListInput

flush(stderr()); flush(stdout())

### Name: pptxListInput
### Title: UI of pptxList shiny module
### Aliases: pptxListInput

### ** Examples

library(shiny)
library(ggplot2)
library(editData)
library(moonBook)
library(readr)
if(interactive()){
ui=fluidPage(
    pptxListInput("pptxlist")
    )
server=function(input,output,session){
    mydf=callModule(pptxList,"pptxlist")
}
shinyApp(ui,server)
}



cleanEx()
nameEx("roundDf")
### * roundDf

flush(stderr()); flush(stdout())

### Name: roundDf
### Title: Convert numeric columns of data.frame to character
### Aliases: roundDf

### ** Examples

roundDf(iris,digits=c(1,2,3,4))
roundDf(mtcars,digits=2)



cleanEx()
nameEx("set_argument")
### * set_argument

flush(stderr()); flush(stdout())

### Name: set_argument
### Title: set argument of a function
### Aliases: set_argument

### ** Examples

code="df2flextable( ) "
code="df2flextable(vanilla=TRUE,head(iris[1:10,]))"
code="df2flextable(mtcars)"
code="df2flextable(sampleData3)"
code="df2flextable(head(iris[1:10,]),vanilla=TRUE)"
set_argument(code,"vanilla",FALSE)



cleanEx()
nameEx("table2docx")
### * table2docx

flush(stderr()); flush(stdout())

### Name: table2docx
### Title: Export data.frame or statistical output to Microsoft Word format
### Aliases: table2docx

### ** Examples

## Not run: 
##D require(moonBook)
##D x=mytable(Dx~.,data=acs)
##D table2docx(x)
##D table2docx(head(iris),title="head(iris)",append=TRUE,vanilla=FALSE)
##D fit=lm(mpg~wt*hp,data=mtcars)
##D table2docx(fit,title="Linear regression",append=TRUE,vanilla=TRUE)
##D fit2=aov(yield ~ block + N * P + K, data = npk)
##D table2docx(fit2,title="Linear regression",append=TRUE,vanilla=TRUE)
## End(Not run)



cleanEx()
nameEx("table2pptx")
### * table2pptx

flush(stderr()); flush(stdout())

### Name: table2pptx
### Title: Export data.frame or statistical output to Microsoft Powerpoint
###   format
### Aliases: table2pptx

### ** Examples

## Not run: 
##D require(moonBook)
##D x="mytable(Dx~.,data=acs)"
##D table2pptx(x,title="mytable object",echo=TRUE)
##D table2pptx("head(iris)",title="data.Frame",append=TRUE,vanilla=FALSE,echo=TRUE)
##D x="fit<-lm(mpg~wt*hp,data=mtcars);fit"
##D table2pptx(x,title="Linear regression",append=TRUE,vanilla=TRUE,echo=TRUE)
##D fit2="aov(yield ~ block + N * P + K, data = npk)"
##D table2pptx(fit2,title="ANOVA",append=TRUE,vanilla=TRUE,echo=TRUE)
## End(Not run)



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
