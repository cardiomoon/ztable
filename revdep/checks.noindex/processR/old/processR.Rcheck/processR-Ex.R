pkgname <- "processR"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('processR')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("addCatVars")
### * addCatVars

flush(stderr()); flush(stdout())

### Name: addCatVars
### Title: Add dummy vars to data.frame
### Aliases: addCatVars

### ** Examples

mtcars1=addCatVars(mtcars,c("cyl","carb"))
mtcars1[c(3:5),]
mtcars2=addCatVars(mtcars,c("cyl","carb"),mode=3)
mtcars2[c(3:5),]
protest1=addCatVars(protest,"protest")
head(protest1)
iris1=addCatVars(iris,c("Species"),mode=3)
(iris1[c(1,51,101),])



cleanEx()
nameEx("addCovarEquation")
### * addCovarEquation

flush(stderr()); flush(stdout())

### Name: addCovarEquation
### Title: Add covariates to equation
### Aliases: addCovarEquation

### ** Examples

equation="M ~ X*W\nY ~ a1*M + C1*X"
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M","Y"),"Y","Y"))
grouplabels=list(C1="e")
addCovarEquation(equation,covar=covar)
equation="M1 ~ a11*X\nM2 ~ a12*M"
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M1","Y"),"M2","M2"))
addCovarEquation(equation,covar=covar,multipleMediator=TRUE)
addCovarEquation(equation,covar=covar)



cleanEx()
nameEx("addLabels")
### * addLabels

flush(stderr()); flush(stdout())

### Name: addLabels
### Title: add name to labels
### Aliases: addLabels

### ** Examples

labels=c(X="X",M="M",Y="Y")
addLabels(labels,"W","X")
addLabels(labels,"W","W")



cleanEx()
nameEx("adjustypos")
### * adjustypos

flush(stderr()); flush(stdout())

### Name: adjustypos
### Title: Adjust y position
### Aliases: adjustypos

### ** Examples

ypos=c(0.5,0.9,1,1,2,3)
adjustypos(ypos)
adjustypos(ypos,totalOnly=TRUE)



cleanEx()
nameEx("catMediation")
### * catMediation

flush(stderr()); flush(stdout())

### Name: catMediation
### Title: Make Mediation Equation with one categorical variable
### Aliases: catMediation

### ** Examples

labels=list(X="cyl",M="am",Y="mpg")
moderator=list(name=c("cyl","wt"),site=list(c("a","c"),c("c")))
covar=list(name=c("carb","disp"),label=c("carb","disp"),site=list(c("M","Y"),"Y","Y"))
cat(catMediation(labels=labels,data=mtcars))
cat(catMediation(X="am",Y="mpg",data=mtcars,moderator=moderator,covar=covar,maxylev=6))
cat(catMediation(X="am",Y="mpg",data=mtcars,moderator=moderator,covar=covar))
cat(catMediation(X="cyl",M="am",Y="mpg",data=mtcars))
cat(catMediation(X="cyl",M="am",Y="mpg",data=mtcars,moderator=moderator))
cat(catMediation(X="cyl",M="am",Y="mpg",data=mtcars,moderator=moderator))
cat(catMediation(X="am",M="hp",Y="mpg",data=mtcars,moderator=moderator,maxylev=6))
cat(catMediation(X="hp",M="am",Y="mpg",data=mtcars,maxylev=6))
cat(catMediation(X="am",M="hp",Y="mpg",data=mtcars,moderator=moderator,covar=covar))



cleanEx()
nameEx("changeLabelName")
### * changeLabelName

flush(stderr()); flush(stdout())

### Name: changeLabelName
### Title: Change Label Names
### Aliases: changeLabelName

### ** Examples

labels=list(X="frame:test",Mi="empathy",Y="intervention",W="frame",Z="test")
x=c("skeptic","test","empathy","skeptic:frame:test","D1:frame","frame:test")
changeLabelName(x,labels)
changeLabelName(x,labels,add=TRUE)
x=c("baby","milk","baby:milk")
labels=list(X="baby",M=c("wine","tent","sand"),Y="tile",W="milk")
changeLabelName(x,labels)



cleanEx()
nameEx("checkEqVars")
### * checkEqVars

flush(stderr()); flush(stdout())

### Name: checkEqVars
### Title: Check dependent variables in a equation
### Aliases: checkEqVars

### ** Examples

eq="M2~X+M+X+X*M*W"
checkEqVars(eq)
eq="Y~M+W+M:W+X+W+X:W"
checkEqVars(eq)



cleanEx()
nameEx("checkEquationVars")
### * checkEquationVars

flush(stderr()); flush(stdout())

### Name: checkEquationVars
### Title: Check dependent variables in equations
### Aliases: checkEquationVars

### ** Examples

equation="M1~X*M*W+W*Z\nM2~X+M1+X"
checkEquationVars(equation)



cleanEx()
nameEx("compareMC")
### * compareMC

flush(stderr()); flush(stdout())

### Name: compareMC
### Title: Compare effects of mean-centering and standardization of model
### Aliases: compareMC

### ** Examples

fit=lm(govact~negemot*age,data=glbwarm)
compareMC(fit)
compareMC(fit,mode=2)



cleanEx()
nameEx("compareVIF")
### * compareVIF

flush(stderr()); flush(stdout())

### Name: compareVIF
### Title: Compare correlation, tolerance, vif of mean-centered and
###   standardized models
### Aliases: compareVIF

### ** Examples

fit=lm(govact~negemot*age,data=glbwarm)
compareVIF(fit)



cleanEx()
nameEx("compareVIFTable")
### * compareVIFTable

flush(stderr()); flush(stdout())

### Name: compareVIFTable
### Title: Make table comparing correlation, tolerance, vif of
###   mean-centered and standardized models
### Aliases: compareVIFTable

### ** Examples

fit=lm(govact~negemot*age,data=glbwarm)
compareVIFTable(fit)
compareVIFTable(fit,vanilla=FALSE)



cleanEx()
nameEx("conceptDiagram2")
### * conceptDiagram2

flush(stderr()); flush(stdout())

### Name: conceptDiagram2
### Title: Make concept Diagram
### Aliases: conceptDiagram2

### ** Examples

labels=list(X="Time Spent in\n Grad School", M="# of\n Publications", Y="# of Job Offers")
conceptDiagram2(xb=TRUE,labels=labels)
moderator=list(name="Z1",label="Time Spent\n with Alex",pos=3,
    site=list(c("a","b","c")),latent=FALSE)
conceptDiagram2(moderator=moderator,labels=labels)
moderator=list(name=c("Z1","Z2"),label=c("Time Spent\n with Alex","Z2label"),pos=c(3,3),
    site=list(c("a","b","c"),c("b","c")),latent=c(FALSE,FALSE))
conceptDiagram2(moderator=moderator,labels=labels,yinterval=0.4)
covar=list(name=c("C1","C2"),label=c("sex","tenure"),site=list(c("Y"),c("Y")))
conceptDiagram2(M=NULL,moderator=list(name="M",pos=4,site=list("c"),latent=FALSE),covar=covar)
conceptDiagram2(covar=covar)



cleanEx()
nameEx("condPlot")
### * condPlot

flush(stderr()); flush(stdout())

### Name: condPlot
### Title: Draw conditional effect plot
### Aliases: condPlot

### ** Examples

fit=lm(justify~frame*skeptic,data=disaster)
condPlot(fit,rangemode=2,xpos=0.7,labels=c("Climate change(X=1)","Natural causes(X=0)"))



cleanEx()
nameEx("condPlot2")
### * condPlot2

flush(stderr()); flush(stdout())

### Name: condPlot2
### Title: Draw conditional plot for moderated moderation
### Aliases: condPlot2

### ** Examples

fit=lm(govact~negemot*sex*age+posemot+ideology,data=glbwarm)
condPlot2(fit)



cleanEx()
nameEx("condPlotCat")
### * condPlotCat

flush(stderr()); flush(stdout())

### Name: condPlotCat
### Title: Make conditional effect plot with data including a categorical
###   variable
### Aliases: condPlotCat

### ** Examples




cleanEx()
nameEx("condPlotCat2")
### * condPlotCat2

flush(stderr()); flush(stdout())

### Name: condPlotCat2
### Title: Draw direct and indirect effect plot
### Aliases: condPlotCat2

### ** Examples

library(lavaan)
labels=list(X="protest",W="sexism",M="respappr",Y="liking")
moderator=list(name="sexism",site=list(c("a","c")))
data1=addCatVars(protest,"protest",mode=3)
catlabels=c("Indirect: Protest\n   vs. No Protest",
      "Indirect: Collective\n       vs. Individual",
      "Direct: Protest\n vs. No Protest",
      "Direct: Collective\n      vs. Individual")
model=catMediation(X="protest",M="respappr",Y="liking",moderator=moderator,
       data=data1,maxylev=6,rangemode = 2)
semfit=sem(model=model,data=data1)
condPlotCat2(labels=labels,data=data1,semfit=semfit,catlabels=catlabels,
       xpos=c(0.7,0.3,0.3,0.7),add.point=TRUE)



cleanEx()
nameEx("densityPlot")
### * densityPlot

flush(stderr()); flush(stdout())

### Name: densityPlot
### Title: Draw Smoothed Kernel density plot
### Aliases: densityPlot

### ** Examples

require(lavaan)
labels=list(X="cond",M="pmi",Y="reaction")
model=tripleEquation(labels=labels)



cleanEx()
nameEx("divideEquation")
### * divideEquation

flush(stderr()); flush(stdout())

### Name: divideEquation
### Title: divide equation
### Aliases: divideEquation

### ** Examples

equation="(a1+a3*W)*(b)"
divideEquation(equation)



cleanEx()
nameEx("drawCatModel")
### * drawCatModel

flush(stderr()); flush(stdout())

### Name: drawCatModel
### Title: Draw statistical diagram including categorical X
### Aliases: drawCatModel

### ** Examples

drawCatModel(xcount=4)
drawCatModel(M="M",box.col="yellow")
drawCatModel(W="W",xlim=c(-0.08,1),ylim=c(0.13,0.95),ypos=c(1,0.55))
drawCatModel(M="M",W="W",xlim=c(-0.08,1),ylim=c(0.13,0.95),ypos=c(1,0.55))
drawCatModel(xcount=4,M="M",W="W",xlim=c(-0.08,1),ylim=c(0.13,0.95),ypos=c(1,0.55))



cleanEx()
nameEx("drawConcept")
### * drawConcept

flush(stderr()); flush(stdout())

### Name: drawConcept
### Title: Draw Concept Diagram
### Aliases: drawConcept

### ** Examples

labels=list(X="estress",M="affect",Y="withdraw")
vars=list(name=list(c("tenure","age")),site=list(c("a","b")))
moderator=list(name=c("age","sex"),site=list(c("c"),c("b","c")),pos=c(1,2),
     arr.pos=list(c(0.3),c(0.3,0.7)))
drawConcept(labels=labels)
drawConcept(labels=labels,vars=vars,drawbox=TRUE)
drawConcept(labels=labels,moderator=moderator,drawbox=TRUE)
drawConcept(labels=labels,vars=vars,moderator=moderator,drawbox=TRUE)
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
drawConcept(labels=labels,serial=TRUE)
drawConcept(labels=labels,parallel=TRUE,bmatrix=c(1,1,0,1,0,0,1,1,1,1))
drawConcept(labels=labels,parallel2=TRUE,bmatrix=c(1,1,0,1,0,0,1,1,1,1))
labels=list(X="baby",M=c("wine","tent","sand"),Y="tile")
bmatrix=c(1,1,0,1,0,0,1,1,1,1)
drawConcept(labels=labels,parallel=TRUE,bmatrix=bmatrix)
moderator=list(name=c("milk","hair"),
  matrix=list(c(1,1,0,1,0,0,0,0,0,0),c(0,0,0,0,0,0,0,1,0,0)))
drawConcept(labels=labels,parallel=TRUE,bmatrix=bmatrix,moderator=moderator)
bmatrix=c(1,1,0,0,1,1,1,1,0,1)
moderator=list(name=c("milk","hair"),
            matrix=list(c(1,0,0,0,1,0,1,0,0,0),c(1,1,0,0,0,0,0,0,0,0)),
            pos=c(1,4))
node.pos=list(X=c(0,0.5),M1=c(0.3,0.9),M2=c(0.3,0.1),M3=c(0.7,0.9),
Y=c(1,0.5),W1=c(0.7,0.1),W2=c(0,0.9))
drawConcept(labels=labels,bmatrix=bmatrix,moderator=moderator,node.pos=node.pos)
labels=list(X="baby",M=c("wine","tent","sand"),Y="tile")
vars=list(name=list(c("milk","hair")),matrix=list(c(1,0,0,0,0,0,1,0,0,0)),pos=2)
bmatrix=c(1,1,0,1,0,0,1,1,1,1)
drawConcept(labels=labels,parallel=TRUE,bmatrix=bmatrix,vars=vars)
labels=list(X="X",M=c("M1","M2"),Y="Y")
vars=list(name=list(c("W","Z")),matrix=list(c(0,0,1,0,0,0)),pos=6)
bmatrix=c(1,1,1,1,1,1)
drawConcept(labels=labels,bmatrix=bmatrix,vars=vars,palette="Set3")
labels=list(X="X",M="M",Y="Y")
vars=list(name=list(c("W","Z")),site=list(c("a","c")),arr.pos=list(c(0.7,0.3)))
moderator=list(name=c("V","Q"),site=list(c("b","c"),c("c")),
   pos=c(2,5),arr.pos=list(c(0.3,0.7),0.5))
drawConcept(labels=labels,vars=vars,moderator=moderator,nodemode=2)



cleanEx()
nameEx("drawModel")
### * drawModel

flush(stderr()); flush(stdout())

### Name: drawModel
### Title: Draw statistical diagram with an object of class lavaan or a
###   list of class lm
### Aliases: drawModel

### ** Examples

library(lavaan)
labels=list(X="frame",Y="donate")
drawModel(labels=labels)
drawModel(labels=labels,arrowslabels=list(c="c"))
labels=list(X="frame",W="skeptic",M="justify",Y="donate")
moderator=list(name="skeptic",site=list(c("a","c")))
model=tripleEquation(labels=labels,moderator=moderator,data=disaster)
semfit=sem(model=model,data=disaster)
drawModel(semfit,labels=labels,interactionFirst=TRUE)
labels=list(X="protest",W="sexism",M="respappr",Y="liking")
moderator=list(name="sexism",site=list(c("a","c")))
data1=addCatVars(protest,"protest",mode=3)
model=catMediation(X="protest",M="respappr",Y="liking",moderator=moderator,data=protest,maxylev=6)
semfit=sem(model,data=data1)
nodelabels=list(D1="Ind.Protest",D2="Col.Protest",W="sexism",M="respappr",Y="liking")
drawModel(semfit,labels=labels,nodelabels=nodelabels,whatLabel="name",
       xlim=c(-0.4,1.3))
drawModel(semfit,labels=labels)
labels=list(X="cyl",M=c("am","wt","hp"),Y="mpg",W="vs")
moderator=list(name=c("vs"),site=list(c("a1","b1")))
model=multipleMediation(labels=labels,moderator=moderator,data=mtcars)
semfit=sem(model=model,data=mtcars)
drawModel(semfit,labels=labels,maxypos=0.5)
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
nodelabels=c(X="Intervention\n(vs.control)",
   M=c("Restrained\nEating","Emotional\nEating","Perceived\nBarriers to\nExercise"),Y="Weight Loss")
drawModel(labels=labels,nodelabels=nodelabels,whatLabel="none",parallel=TRUE,
ylim=c(-0.3,1.2),label.pos=2)
labels=list(X="X",M=c("M1","M2","Mk-1","Mk"),Y="Y")
drawModel(labels=labels,parallel=TRUE,kmediator=TRUE,nodemode=2,
    arrow.pos=list(c=0.4),serial=FALSE,radx=0.08)
labels=list(X="cond",M=c("import","pmi"),Y="reaction")
drawModel(labels=labels,parallel=TRUE)
drawModel(labels=labels,parallel=TRUE,serial=TRUE)
model=multipleMediation(labels=labels,data=pmi,serial=TRUE)
model=multipleMediation(labels=labels,data=pmi)
cat(model)
semfit=sem(model=model,data=pmi)
drawModel(semfit,labels=labels,parallel=TRUE)
drawModel(semfit,labels=labels,whatLabel="est",parallel=TRUE)
labels=list(X="X",M=c("M1","M2"),Y="Y")
drawModel(labels=labels,serial=TRUE,nodemode=4)
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
drawModel(labels=labels,serial=TRUE)
equation='M1~X
M2~X+M1
M3~X+M1
Y~X+M1+M2+M3'
node.pos=list(X=c(0,0.5),M1=c(0.5,0.5),M2=c(0.75,0.9),M3=c(0.75,0.1),Y=c(1,0.5))
curved.arrow=list(a2=-0.1,a3=0.1,c=-0.15)
drawModel(equation=equation,nodemode=2,node.pos=node.pos,curved.arrow=curved.arrow)
equation='M1~X
M2~X
M3~X
M4~X+M1+M2+M3
Y~X+M1+M2+M3+M4'
node.pos=list(X=c(0,0.5),M1=c(0.35,0.9),M2=c(0.35,0.5),M3=c(0.35,0.1),M4=c(0.7,0.5),Y=c(1,0.5))
curved.arrow=list(a4=0.15,b2=0.15)
segment.arrow=list(c=0.5)
drawModel(equation=equation,nodemode=2,node.pos=node.pos,radx=0.08,curved.arrow=curved.arrow,
segment.arrow=segment.arrow)
labels=list(X="baby",M="wine",Y="tile")
moderator=list(name=c("milk"),site=list("a"))
covar=list(name=c("milk","tent","sand"),site=list(c("Y"),c("M","Y"),c("M","Y")))
drawModel(labels=labels,moderator=moderator,covar=covar,palette="Set3")



cleanEx()
nameEx("eq2var")
### * eq2var

flush(stderr()); flush(stdout())

### Name: eq2var
### Title: make data.frame with equation
### Aliases: eq2var

### ** Examples

labels=list(X="frame",M="justify",Y="donate",W="skeptic")
eq="donate~justify+frame+skeptic+frame:skeptic"
eq2var(eq,labels=labels)
eq="Y~M+W+M:W+X+X:W"
labels=list(X="X",M="M",Y="Y")
eq2var(eq,labels=labels)
eq="wine~baby+milk+baby:milk"
labels=list(X="baby",M=c("wine","tent","sand"),Y="tile",W="milk")
eq2var(eq,labels=labels)
eq="M3~X"
eq="Y~M1+M2+X"
labels=list(X="X",M=c("M1","M2"),Y="Y")
eq2var(eq,labels=labels)



cleanEx()
nameEx("equations2var")
### * equations2var

flush(stderr()); flush(stdout())

### Name: equations2var
### Title: make data.frame with equation
### Aliases: equations2var

### ** Examples

labels=list(X="frame",M="justify",Y="donate",W="skeptic")
moderator=list(name="skeptic",site=list(c("a","c")))
eq=multipleMediation(labels=labels,moderator=moderator,mode=1)
covar=list(name=c("C1","C2","C3"),site=list(c("M","Y"),c("M","Y"),c("M","Y")))
eq=multipleMediation(labels=labels,covar=covar,mode=1)
equations2var(eq,labels=labels)



cleanEx()
nameEx("extractIMM")
### * extractIMM

flush(stderr()); flush(stdout())

### Name: extractIMM
### Title: extract index of moderated mediation from string
### Aliases: extractIMM

### ** Examples

string="(a1+a3*age.mean)*(b1+b3*age.mean)"
string="(a1+a3*skeptic.mean)*(b1+b2*skeptic.mean+b4*Z.mean)"
string="(a1+a3*age.mean)*(b)"
string="(a1+a3*4.12)*(b)"
string="(a)*(b)"
extractIMM(string)



cleanEx()
nameEx("extractModerator")
### * extractModerator

flush(stderr()); flush(stdout())

### Name: extractModerator
### Title: Extract name of moderator from string
### Aliases: extractModerator

### ** Examples

string="(a1+a3*age.mean)*(b1+b3*age.mean)"
string="(a1+a3*age.mean)*(b)"
string="(a1+a3*4.12)*(b)"
string="(a)*(b)"
extractNumber(string)
extractModerator(string)



cleanEx()
nameEx("findName")
### * findName

flush(stderr()); flush(stdout())

### Name: findName
### Title: convert name with list
### Aliases: findName

### ** Examples

labels=list(X="wt",M="am",Y="mpg");name="MiX"
nodeslabels=list(X="weight",M="automatic",Y="milepergallon")
findName(labels=labels,nodeslabels=nodeslabels,name="MiX")
findName(labels=labels,name="MiX")
findName(labels=labels,nodeslabels=nodeslabels,name="M")
labels=list(X="GDPpp",M="Illit",Y="LifeEx")
nodeslabels=list(X="GDP\nper inhabitant",M="Illiteracy Rate",Y="Mean Life\nExpectation")
findName(labels=labels,name="Mi")
findName(labels=labels,nodeslabels=nodeslabels,name="Mi")
labels=list(X="GDPpp",Mi="Illit",Y="LifeEx")
nodeslabels=list(X="GDP\nper inhabitant",Mi="Illiteracy Rate",Y="Mean Life\nExpectation")
findName(labels=labels,name="M")
findName(labels=labels,nodeslabels=nodeslabels,name="M")
labels=list(X="cond",M=c("import","pmi"),Y="reaction")
findName(labels=labels,name="M1")



cleanEx()
nameEx("findNames")
### * findNames

flush(stderr()); flush(stdout())

### Name: findNames
### Title: convert a vector of names with list
### Aliases: findNames

### ** Examples

labels=list(X="wt",Mi="am",Y="mpg");names=c("X","MiX","Y")
findNames(labels,names=names)



cleanEx()
nameEx("fit2table")
### * fit2table

flush(stderr()); flush(stdout())

### Name: fit2table
### Title: Make estimateTable with a list of lm object
### Aliases: fit2table

### ** Examples

labels=list(X="frame",M="justify",Y="donate",W="skeptic")
moderator=list(name="skeptic",site=list(c("a","c")))
eq=tripleEquation(labels=labels,moderator=moderator,data=disaster,mode=1)
fit=eq2fit(eq,data=disaster)
fit2table(fit=fit,labels=labels)



cleanEx()
nameEx("fit2vif")
### * fit2vif

flush(stderr()); flush(stdout())

### Name: fit2vif
### Title: Summarizing correlation, tolerance and variance inflation
###   factors of a model
### Aliases: fit2vif

### ** Examples

fit=lm(govact~negemot*age,data=glbwarm)
fit2vif(fit)



cleanEx()
nameEx("get2ndIndirect")
### * get2ndIndirect

flush(stderr()); flush(stdout())

### Name: get2ndIndirect
### Title: get2ndIndirect effect
### Aliases: get2ndIndirect

### ** Examples

get2ndIndirect(X="X",M=c("M1","M2","M3"))



cleanEx()
nameEx("getBootData")
### * getBootData

flush(stderr()); flush(stdout())

### Name: getBootData
### Title: Get bootstrapped values
### Aliases: getBootData

### ** Examples

require(lavaan)
labels=list(X="cond",M="pmi",Y="reaction")
model=tripleEquation(labels=labels)



cleanEx()
nameEx("getCatSlopeDf")
### * getCatSlopeDf

flush(stderr()); flush(stdout())

### Name: getCatSlopeDf
### Title: Make data summarizing regression slopes and intercepts
### Aliases: getCatSlopeDf

### ** Examples

labels=list(X="protest",W="sexism",M="respappr",Y="liking")
getCatSlopeDf(labels=labels,yvar="M",data=protest,mode=3)
getCatSlopeDf(labels=labels,yvar="M",data=protest,mode=1)



cleanEx()
nameEx("getCoef")
### * getCoef

flush(stderr()); flush(stdout())

### Name: getCoef
### Title: Get coef summary table
### Aliases: getCoef

### ** Examples

fit=lm(mpg~hp*wt+am,data=mtcars)
getCoef(fit)



cleanEx()
nameEx("getHelmert")
### * getHelmert

flush(stderr()); flush(stdout())

### Name: getHelmert
### Title: Get Helmert Coding of column j of group with length of unique
###   values (count-1)
### Aliases: getHelmert

### ** Examples

x=c(1:4,4:2,2,3,5)
getHelmert(x,1)
getHelmert(mtcars$cyl,1)



cleanEx()
nameEx("getInfo")
### * getInfo

flush(stderr()); flush(stdout())

### Name: getInfo
### Title: Get information of a model
### Aliases: getInfo

### ** Examples

fit=lm(mpg~wt*hp,data=mtcars)
getInfo(fit)



cleanEx()
nameEx("getRatioTable")
### * getRatioTable

flush(stderr()); flush(stdout())

### Name: getRatioTable
### Title: Get coding table for dummy variables
### Aliases: getRatioTable

### ** Examples

getRatioTable(count=3)
getRatioTable(count=4,mode=3)



cleanEx()
nameEx("getYhat")
### * getYhat

flush(stderr()); flush(stdout())

### Name: getYhat
### Title: Get predicted value from object of class "lm"
### Aliases: getYhat

### ** Examples

iris1=addCatVars(iris,c("Species"))
iris3=addCatVars(iris,c("Species"),mode=3)
fit1=lm(Sepal.Length~Sepal.Width+D1+D2,data=iris1)
getYhat(fit1)
fit1=lm(Sepal.Length~D2*Sepal.Width+Sepal.Width*D1+Petal.Width,data=iris1)
getYhat(fit1)
fit3=lm(Sepal.Length~D2*Sepal.Width+Sepal.Width*D1+Petal.Width*D1+Petal.Width*D2,data=iris3)
getYhat(fit3,mode=3)



cleanEx()
nameEx("getYhat1")
### * getYhat1

flush(stderr()); flush(stdout())

### Name: getYhat1
### Title: Get Yhat value from simple mediation
### Aliases: getYhat1

### ** Examples

data=protest
labels=list(X="protest",M="respappr",Y="liking")
getYhat1(data=protest,labels=labels)



cleanEx()
nameEx("interactStr")
### * interactStr

flush(stderr()); flush(stdout())

### Name: interactStr
### Title: make interaction equation
### Aliases: interactStr

### ** Examples

interactStr(LETTERS[1])
interactStr(LETTERS[1:3])
interactStr(LETTERS[1:3],skip=TRUE)



cleanEx()
nameEx("jnPlot")
### * jnPlot

flush(stderr()); flush(stdout())

### Name: jnPlot
### Title: Draw johnson_neyman plot
### Aliases: jnPlot

### ** Examples

fit=lm(mpg~hp*wt,data=mtcars)
jnPlot(fit)



cleanEx()
nameEx("label2name")
### * label2name

flush(stderr()); flush(stdout())

### Name: label2name
### Title: Change label into name
### Aliases: label2name

### ** Examples

label="X:W:Z"
labels=list(X="dep",W="mod",Z="mod2")
label2name(label,labels)



cleanEx()
nameEx("labels2table")
### * labels2table

flush(stderr()); flush(stdout())

### Name: labels2table
### Title: Make table with labels
### Aliases: labels2table

### ** Examples

labels=list(X="frame",M="justify",Y="donate",W="skeptic")
moderator=list(name="skeptic",site=list(c("a","c")))
covar=list(name=c("C1","C2","C3"),site=list(c("M","Y"),c("M","Y"),c("M","Y")))
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
labels=list(X="X",M=c("M1","M2"),Y="Y")
moderator=list();serial=FALSE;eq=NULL
labels2table(labels)
labels2table(labels,serial=FALSE)
labels2table(labels,covar=covar)
labels2table(labels,moderator=moderator)
labels=list(X="X",M="M",Y="Y")
moderator=list(name=c("W"),site=list(c("b","c")))
labels2table(labels,moderator=moderator)
labels=list(X="baby",M="wine",Y="tile")
moderator=list(name=c("milk"),site=list("a"))
covar=list(name=c("milk","tent","sand"),site=list(c("Y"),c("M","Y"),c("M","Y")))
labels2table(labels,moderator=moderator,covar=covar,serial=FALSE)



cleanEx()
nameEx("makeAnovaDf")
### * makeAnovaDf

flush(stderr()); flush(stdout())

### Name: makeAnovaDf
### Title: Make data summarizing ANOVA results
### Aliases: makeAnovaDf

### ** Examples

labels=list(X="protest",W="sexism",M="respappr",Y="liking")
makeAnovaDf(labels=labels,data=protest,total=TRUE,mode=3)



cleanEx()
nameEx("makeCEDf")
### * makeCEDf

flush(stderr()); flush(stdout())

### Name: makeCEDf
### Title: Make data summarizing conditional effects
### Aliases: makeCEDf

### ** Examples

labels=list(X="protest",W="sexism",M="respappr",Y="liking")
data1=addCatVars(protest,varnames="protest",mode=1)
makeCEDf(labels=labels,data=protest,mode=1)



cleanEx()
nameEx("makeCatEquation")
### * makeCatEquation

flush(stderr()); flush(stdout())

### Name: makeCatEquation
### Title: Make equation for sem and lm for categorical variables
### Aliases: makeCatEquation

### ** Examples

makeCatEquation(X="wt",Y="mpg",data=mtcars)
makeCatEquation(X="wt",Y="mpg",W="cyl",data=mtcars)
makeCatEquation(X="wt",Y="mpg",W=c("cyl","hp"),data=mtcars)
grouplabels=list(carb="f")
makeCatEquation(X="carb",Y="mpg",W=c("cyl","hp"),data=mtcars,maxylev=6)
makeCatEquation(X="carb",Y="mpg",W=c("cyl","hp"),data=mtcars)
cat(makeCatEquation(X="wt",Y="carb",W=c("am","hp"),data=mtcars,maxylev=6,grouplabels=grouplabels))



cleanEx()
nameEx("makeCatEquation2")
### * makeCatEquation2

flush(stderr()); flush(stdout())

### Name: makeCatEquation2
### Title: Make equation for sem and lm for multiple X or multiple Y
### Aliases: makeCatEquation2

### ** Examples

makeCatEquation2(X="wt",Y="mpg")
makeCatEquation2(X="wt",Y="mpg",W="cyl")
makeCatEquation2(X="wt",Y=c("cyl","am"),prefix="a")
makeCatEquation2(X="wt",Y=c("hp","vs"),W="cyl",prefix="a")
makeCatEquation2(X="wt",Y=c("hp","vs"),W=c("cyl","am"),prefix="a",pos=list(1,2))
makeCatEquation2(X="wt",Y=c("hp","vs"),W=c("cyl"),prefix="a",pos=list(1))
makeCatEquation2(X="wt",Y=c("hp","vs"),W=c("cyl"),prefix="a",pos=list(c(1,2)))
makeCatEquation2(X=c("hp","vs"),Y="mpg",W=c("cyl"),prefix="b",pos=list(c(1)))
makeCatEquation2(X=c("hp","vs"),Y="mpg",W=c("cyl"),prefix="b")
makeCatEquation2(X=c("hp","vs"),Y="mpg",W=c("cyl"),prefix="b",pos=list(c(1,2)))
cat(makeCatEquation2(X="wt",Y="carb",W=c("am","hp")))
cat(makeCatEquation2(X="X",Y=c("M1","M2","M3"),W=NULL,prefix="a",serial=TRUE))
cat(makeCatEquation2(X="X",Y=c("M1","M2","M3"),W=NULL,prefix="a"))
cat(makeCatEquation2(X="X",Y=c("M1","M2"),prefix="a",mode=1,serial=TRUE))



cleanEx()
nameEx("makeCatEquation3")
### * makeCatEquation3

flush(stderr()); flush(stdout())

### Name: makeCatEquation3
### Title: Make equation for sem and lm for multiple X or multiple Y
### Aliases: makeCatEquation3

### ** Examples

cat(makeCatEquation3(X="X",Y=c("M1","M2","M3"),prefix="a",bmatrix=c(1,1,0,1,0,0,1,1,1,1)))
cat(makeCatEquation3(X="X",Y=c("M1","M2","M3"),prefix="a",bmatrix=c(1,1,0,1,0,1,1,1,1,1)))
cat(makeCatEquation3(X="X",Y=c("M1","M2","M3"),prefix="a",bmatrix=c(1,1,0,1,1,0,1,1,1,1)))
cat(makeCatEquation3(X="X",Y=c("M1","M2","M3"),prefix="a",bmatrix=c(1,1,1,1,1,1,1,1,1,1)))
cat(makeCatEquation3(X=c("M1","M2","M3"),Y="Y",prefix="a",bmatrix=c(1,1,1,1,1,1,1,1,1,1),depy=TRUE))
cat(makeCatEquation3(X="X",Y="Y",prefix="a",bmatrix=c(1,1,1,1,1,1,1,1,1,1),depy=TRUE,depx=TRUE))
cat(makeCatEquation3(X="X",Y="Y",prefix="a",bmatrix=c(1,1,1,1,1,1,0,1,1,1),depy=TRUE,depx=TRUE))
cat(makeCatEquation3(X=c("M1","M2"),Y="Y",prefix="a",bmatrix=c(1,1,1,1,0,1),depy=TRUE))
cat(makeCatEquation3(X=c("M1","M2"),Y="Y",prefix="a",bmatrix=c(1,1,1,1,1,0),depy=TRUE))
cat(makeCatEquation3(X="X",Y=c("M1","M2"),prefix="a",bmatrix=c(1,1,1,0,0,1),depy=FALSE))
cat(makeCatEquation3(X="X",Y=c("M1","M2"),W="W",prefix="a",bmatrix=c(1,1,1,1,1,1),depy=FALSE,
  moderator=list(name="W",matrix=list(c(0,0,1,0,0,0)))))
cat(makeCatEquation3(X=c("M1","M2"),Y="Y",prefix="a",bmatrix=c(1,1,1,1,0,1),depy=TRUE))
cat(makeCatEquation3(X=c("M1","M2"),Y="Y",W="W",pos=list(c(1,2)),prefix="a",
  bmatrix=c(1,1,1,1,0,1),depy=TRUE))
cat(makeCatEquation3(X=c("M1","M2"),Y="Y",W="W",
  moderator=list(name="W",matrix=list(c(0,0,0,0,1,1))),bmatrix=c(1,1,1,1,1,1),depy=TRUE))
vars=list(name=list(c("W","Z")),matrix=list(c(0,0,1,0,0,0)))
cat(makeCatEquation3(X="X",Y=c("M1","M2"),bmatrix=c(1,1,1,1,1,0),vars=vars,depy=FALSE,depx=TRUE))



cleanEx()
nameEx("makeCatModel")
### * makeCatModel

flush(stderr()); flush(stdout())

### Name: makeCatModel
### Title: Make simple regression model with one categorical variable
### Aliases: makeCatModel

### ** Examples

labels=list(X="protest",W="sexism",M="respappr",Y="liking")
data1=addCatVars(protest,"protest")
makeCatModel(labels=labels,data=data1)



cleanEx()
nameEx("makeEquation")
### * makeEquation

flush(stderr()); flush(stdout())

### Name: makeEquation
### Title: Make mediation equations 3
### Aliases: makeEquation

### ** Examples

X="X";M=c("M1","M2","M3");Y=c("Y1","Y2");add2ndMediation=TRUE
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M1","Y1"),"Y2","Y2"))
cat(makeEquation(X,M,Y,covar=covar))



cleanEx()
nameEx("makeIndirectEquation")
### * makeIndirectEquation

flush(stderr()); flush(stdout())

### Name: makeIndirectEquation
### Title: Make indirect equation
### Aliases: makeIndirectEquation

### ** Examples

X="negemot";M="ideology"
temp1=c("a1*negemot","a2*sex","a4*negemot*sex","a5*negemot*age","a6*sex*age")
temp2="b1*ideology"
temp3="c1*negemot"
moderatorNames=c("age","sex")
X= "hp";M= "am"
temp1= c("a1*hp","a2*wt","a3*hp:wt")
temp2= "b1*am"
temp3= c("c1*hp","c2*wt","c3*hp:wt")
#moderatorNames=c("wt")
#X= c("d1","d2");M="am"
#temp1=c("a1*d1","a2*d2","a3*wt","a4*d1:wt","a5*d2:wt")
#temp2="b1*am"
#temp3=c("c1*d1","c2*d2","c3*wt","c4*d1:wt","c5*d2:wt")
cat(makeIndirectEquation(X,M,temp1,temp2,temp3,moderatorNames))
cat(makeIndirectEquation(X,M,temp1,temp2,temp3,moderatorNames,range=TRUE))
X="wt";M=NULL;temp1=NULL;temp2=NULL;temp3=c("c1*wt","c2*hp","c3*wt:hp");
moderatorNames="hp";range=TRUE;rangemode=1;probs=c(0.16,0.5,0.84)
cat(makeIndirectEquation(X,M,temp1,temp2,temp3,moderatorNames,range=TRUE))
X="frame:skeptic"; M="justify";temp1="a1*frame:skeptic";
temp2="b1*justify";temp3="c1*frame:skeptic";moderatorNames=NULL
range=TRUE;rangemode=1



cleanEx()
nameEx("matrix2df")
### * matrix2df

flush(stderr()); flush(stdout())

### Name: matrix2df
### Title: Make data.frame with matrix
### Aliases: matrix2df

### ** Examples

labels=list(X="indep",M=c("med1","med2"),Y="dep")
matrix2df(c(1,1,1,0,0,1),labels=labels)



cleanEx()
nameEx("matrix2no")
### * matrix2no

flush(stderr()); flush(stdout())

### Name: matrix2no
### Title: Calculate the dimension of matrix
### Aliases: matrix2no

### ** Examples

matrix2no(c(1,1,1,0,0,1))



cleanEx()
nameEx("matrixPlot")
### * matrixPlot

flush(stderr()); flush(stdout())

### Name: matrixPlot
### Title: Draw matrix plot
### Aliases: matrixPlot

### ** Examples

matrixPlot(c(1,1,1))
labels=list(X="X",M=c("M1","M2"),Y="Y")
bmatrix=c(1,1,1,0,0,1)
eq=multipleMediation(labels=labels,bmatrix=bmatrix,mode=1)
drawModel(equation=eq,labels=labels,nodemode=2)
matrixPlot(bmatrix)
bmatrix=c(1,1,0,1,0,0,1,1,1,1)
matrixPlot(c(1,1,0,1,0,0,1,1,1,1))
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
eq=multipleMediation(labels=labels,bmatrix=bmatrix,mode=1)
drawModel(equation=eq,labels=labels,parallel=TRUE,nodemode=2)
labels=list(X="indep",M=c("med1","med2"),Y="dep")
matrixPlot(c(1,1,1,0,0,1),labels=labels)



cleanEx()
nameEx("meanCentering")
### * meanCentering

flush(stderr()); flush(stdout())

### Name: meanCentering
### Title: Perform mean centering
### Aliases: meanCentering

### ** Examples

library(processR)
newData=meanCentering(education,colnames(education)[1:3])



cleanEx()
nameEx("meanSummary")
### * meanSummary

flush(stderr()); flush(stdout())

### Name: meanSummary
### Title: Make mean summary table
### Aliases: meanSummary

### ** Examples

labels=list(X="cond",Y="reaction",M="pmi")
xlabels=c("Front Page","Interior Page")
meanSummary(data=pmi,labels=labels,xlabels=xlabels)
labels=list(X="frame",Y="justify",W="skeptic")
xlabels=c("Natural causes condition","Climate change condition")
meanSummary(data=disaster,labels=labels,xlabels=xlabels)
labels=list(X="protest",Y="liking",M="respappr")
meanSummary(data=protest,labels=labels)
meanSummary(data=protest,labels=labels,maxylev=2)



cleanEx()
nameEx("meanSummaryTable")
### * meanSummaryTable

flush(stderr()); flush(stdout())

### Name: meanSummaryTable
### Title: Make mean summary table
### Aliases: meanSummaryTable

### ** Examples

labels=list(X="cond",Y="reaction",M="pmi")
xlabels=c("Front Page","Interior Page")
meanSummaryTable(data=pmi,labels=labels,xlabels=xlabels)
labels=list(X="frame",Y="justify",W="skeptic")
xlabels=c("Natural causes condition","Climate change condition")
meanSummaryTable(data=disaster,labels=labels,xlabels=xlabels)



cleanEx()
nameEx("medSummary")
### * medSummary

flush(stderr()); flush(stdout())

### Name: medSummary
### Title: Summarize the mediation effects
### Aliases: medSummary

### ** Examples

library(lavaan)
labels=list(X="cond",M="pmi",Y="reaction")
model=tripleEquation(labels=labels)



cleanEx()
nameEx("mediationBK")
### * mediationBK

flush(stderr()); flush(stdout())

### Name: mediationBK
### Title: Perform mediation analysis by Baron and Kenny Method
### Aliases: mediationBK

### ** Examples

labels=list(X="cond",M="pmi",Y="reaction")
result=mediationBK(labels=labels,data=pmi,silent=FALSE)
result



cleanEx()
nameEx("modSummary")
### * modSummary

flush(stderr()); flush(stdout())

### Name: modSummary
### Title: Make moderation effect summary
### Aliases: modSummary

### ** Examples

require(lavaan)
labels=list(X="frame",W="skeptic",M="justify",Y="donate")
moderator=list(name='skeptic',site=list(c("a")))
model=tripleEquation(labels=labels,moderator=moderator,data=disaster,rangemode=2)
cat(model)



cleanEx()
nameEx("modSummary2")
### * modSummary2

flush(stderr()); flush(stdout())

### Name: modSummary2
### Title: Make table summarizing moderation effect
### Aliases: modSummary2

### ** Examples

labels=list(X="negemot",W="sex",Z="age",Y="govact",C1="posemot",C2="ideology")
fit=lm(govact~negemot*sex+negemot*age+posemot+ideology,data=glbwarm)
modSummary2(fit,rangemode=2,mod2.values=c(30,50,70),summarymode=2)
modSummary2(fit,mod2.values=c(30,50,70),summarymode=1,labels=labels)
labels=list(X="frame",W="skeptic",Y="justify")
fit=lm(justify~frame*skeptic,data=disaster)
modSummary2(fit,labels=labels)



cleanEx()
nameEx("modSummary2Table")
### * modSummary2Table

flush(stderr()); flush(stdout())

### Name: modSummary2Table
### Title: Make flextable summarizing moderation effect
### Aliases: modSummary2Table

### ** Examples

fit=lm(govact~negemot*sex+negemot*age+posemot+ideology,data=glbwarm)
modSummary2Table(fit)



cleanEx()
nameEx("modSummary3")
### * modSummary3

flush(stderr()); flush(stdout())

### Name: modSummary3
### Title: Summary of moderation effect
### Aliases: modSummary3

### ** Examples

fit=lm(govact~negemot*sex+negemot*age+posemot+ideology,data=glbwarm)
modSummary3(fit,mod2.values=c(30,50,70))
fit1=lm(govact~negemot*sex*age+posemot+ideology,data=glbwarm)
modSummary3(fit1,rangemode=1)
fit=lm(mpg~hp*wt,data=mtcars)
modSummary3(fit)



cleanEx()
nameEx("modSummary3Table")
### * modSummary3Table

flush(stderr()); flush(stdout())

### Name: modSummary3Table
### Title: Make flextable summarizing moderation effect
### Aliases: modSummary3Table

### ** Examples

fit=lm(govact~negemot*sex+negemot*age+posemot+ideology,data=glbwarm)
modSummary3Table(fit,mod2.values=c(30,50,70))



cleanEx()
nameEx("modelsSummary")
### * modelsSummary

flush(stderr()); flush(stdout())

### Name: modelsSummary
### Title: Make Summary for Model Coefficients
### Aliases: modelsSummary

### ** Examples

fit1=lm(mpg~wt,data=mtcars)
fit2=lm(mpg~wt*hp*am,data=mtcars)
fit=list(fit1,fit2)
labels=list(Y="mpg",X="wt",W="hp",Z="am")
modelsSummary(fit,labels=labels)
labels=list(Y="withdraw",M="affect",X="estress")
covar=list(name=c("ese","sex","age"),site=list(c("M","Y"),c("M","Y"),c("M","Y")))
modelsSummary(labels=labels,covar=covar,data=estress)
labels=list(X="dysfunc",M="negtone",W="negexp",Y="perform")
moderator=list(name="negexp",site=list(c("a","b","c")))
eq=tripleEquation(labels=labels,moderator=moderator,data=teams,mode=1)
fit=eq2fit(eq,data=teams)
modelsSummary(fit,labels=labels)
labels=list(X="cond",M="pmi",Y="reaction")
modelsSummary(labels=labels,data=pmi)



cleanEx()
nameEx("modelsSummary2")
### * modelsSummary2

flush(stderr()); flush(stdout())

### Name: modelsSummary2
### Title: Make Summary for Model Coefficients
### Aliases: modelsSummary2

### ** Examples

fit1=lm(mpg~wt,data=mtcars)
fit2=lm(mpg~wt*hp*vs+am,data=mtcars)
labels=list(Y="mpg",X="wt",W="hp",Z="vs")
fit=list(fit1,fit2)
modelsSummary2(fit,labels=labels)
modelsSummary2(fit,labels=labels,prefix=c("c","b"),autoPrefix=FALSE)
modelsSummary2(fit1)



cleanEx()
nameEx("modelsSummaryTable")
### * modelsSummaryTable

flush(stderr()); flush(stdout())

### Name: modelsSummaryTable
### Title: Make Summary Table for Model Coefficients
### Aliases: modelsSummaryTable

### ** Examples




cleanEx()
nameEx("moderator2df")
### * moderator2df

flush(stderr()); flush(stdout())

### Name: moderator2df
### Title: Make data.frame from a list of moderator
### Aliases: moderator2df

### ** Examples

moderator=list(name=c("milk","hair"),matrix=list(c(1,1,0,1,0,0,0,0,0,0)
   ,c(0,0,0,0,0,0,0,1,0,0)))
moderator2df(moderator)



cleanEx()
nameEx("modmedEquation")
### * modmedEquation

flush(stderr()); flush(stdout())

### Name: modmedEquation
### Title: Make moderated mediation equation
### Aliases: modmedEquation

### ** Examples

X="X";Y="Y"
moderator=list(name=c("Z"),site=list(c("a","c")))
cat(modmedEquation(X=X,Y=Y,moderator=moderator,range=TRUE))
X="X";M="M";Y="Y"
cat(modmedEquation(X=X,M=M,Y=Y,range=TRUE))
X="X";M="M";Y="Y"
moderator=list(name=c("Z"),site=list(c("a","c")))
cat(modmedEquation(X=X,M=M,Y=Y,moderator=moderator,range=TRUE))
X="X";M="M";Y="Y";labels=NULL;range=FALSE
moderator=list(name=c("X"),site=list(c("b")))
cat(modmedEquation(X=X,M=M,Y=Y,moderator=moderator,range=FALSE))
X="X";Y="Y"
moderator=list(name=c("Z"),site=list(c("c")))
cat(modmedEquation(X=X,Y=Y,moderator=moderator,range=FALSE))
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M","Y"),"Y","Y"))
cat(modmedEquation(X=X,M="M",Y=Y,moderator=moderator,range=FALSE,covar=covar))



cleanEx()
nameEx("modmedSummary")
### * modmedSummary

flush(stderr()); flush(stdout())

### Name: modmedSummary
### Title: Summarize the moderated mediation
### Aliases: modmedSummary

### ** Examples

require(lavaan)
labels=list(X="frame",M="justify",Y="donate",W="skeptic")
moderator=list(name="skeptic",site=list(c("a","c")))
model=tripleEquation(labels=labels,moderator=moderator)
cat(model)



cleanEx()
nameEx("multipleMediation")
### * multipleMediation

flush(stderr()); flush(stdout())

### Name: multipleMediation
### Title: Make Mediation Equation with multiple X or multiple Y
### Aliases: multipleMediation

### ** Examples

labels=list(X="cyl",M="am",Y="mpg")
covar=list(name=c("carb","disp"),site=list(c("M","Y"),"Y","Y"))
cat(multipleMediation(labels=labels,covar=covar,data=mtcars))
labels=list(X=c("cyl","wt"),M="am",Y="mpg")
moderator=list(name=c("vs"),site=list(c("a1","b1")))
cat(multipleMediation(labels=labels,data=mtcars))
cat(multipleMediation(labels=labels,moderator=moderator,data=mtcars))
labels=list(X="wt",M=c("cyl","am"),Y="mpg")
moderator=list(name=c("vs"),site=list(c("b1","b2")))
cat(multipleMediation(labels=labels,data=mtcars,range=FALSE))
cat(multipleMediation(labels=labels,moderator=moderator,data=mtcars,range=FALSE))
eq=multipleMediation(labels=labels,moderator=moderator,data=mtcars,range=FALSE,serial=FALSE,mode=1)
drawModel(equation=eq,labels=labels)
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
labels=list(X="X",M=c("M1","M2"),Y="Y")
cat(multipleMediation(labels=labels))
cat(multipleMediation(labels=labels,serial=TRUE))
moderator=list(name=c("W"),site=list(c("a1","b1")))
cat(multipleMediation(labels=labels,moderator=moderator,range=FALSE))
cat(multipleMediation(labels=labels,moderator=moderator,data=mtcars,range=FALSE))
cat(multipleMediation(X="am",Y="mpg",data=mtcars,moderator=moderator,covar=covar))
labels=list(X="cond",M=c("import","pmi"),Y="reaction")
cat(multipleMediation(labels=labels,data=pmi,serial=TRUE))
cat(multipleMediation(labels=labels,data=pmi,contrast=2))
cat(multipleMediation(labels=labels,data=pmi,mode=1,serial=TRUE))
labels=list(X="X",M=c("M1","M2","M3"),Y="Y")
cat(multipleMediation(labels=labels,bmatrix=c(1,1,1,1,1,1,1,1,1,1)))
labels=list(X="X",M=c("M1","M2"),Y="Y",W="W")
cat(multipleMediation(labels=labels,bmatrix=c(1,1,1,1,1,0)))
cat(multipleMediation(labels=labels,bmatrix=c(1,1,1,1,0,0)))
moderator=list(name=c("W"),matrix=list(c(1,1,0,1,0,0)))
eq=multipleMediation(labels=labels,moderator=moderator,bmatrix=c(1,1,1,1,1,1),mode=1)
drawModel(equation=eq,labels=labels,nodemode=2)
labels=list(X="X",M=c("M1","M2","M3"),Y="Y",W="W")
cat(multipleMediation(labels=labels,bmatrix=c(1,1,0,0,1,1,1,1,0,1)))
labels=list(X="X",M=c("M1","M2"),Y="Y")
cat(multipleMediation(labels=labels,serial=TRUE,mode=1))
vars=list(name=list(c("W","Z")),matrix=list(c(0,0,1,0,0,0)))
cat(multipleMediation(labels=labels,bmatrix=c(1,1,1,1,1,0),vars=vars))



cleanEx()
nameEx("parallelMatrix")
### * parallelMatrix

flush(stderr()); flush(stdout())

### Name: parallelMatrix
### Title: Make bmatrix for parallel multiple mediator model
### Aliases: parallelMatrix

### ** Examples

parallelMatrix(3)



cleanEx()
nameEx("plot.mediationBK")
### * plot.mediationBK

flush(stderr()); flush(stdout())

### Name: plot.mediationBK
### Title: S3 method for class mediationBK
### Aliases: plot.mediationBK

### ** Examples

labels=list(X="cond",M="pmi",Y="reaction")
result=mediationBK(labels=labels,data=pmi)
plot(result,type=1)
plot(result)
plot(result,type=1,whatLabel="label",arrowslabels="c",addprime=FALSE)
plot(result,whatLabel="label",arrowslabels=c("a","b","c"))



cleanEx()
nameEx("pmacroModel")
### * pmacroModel

flush(stderr()); flush(stdout())

### Name: pmacroModel
### Title: draw conceptual diagram of process macro model
### Aliases: pmacroModel

### ** Examples

pmacroModel(1)
covar=list(name=c("C1","C2"),label=c("ese","sex","tenure"),site=list("Y","Y"))
pmacroModel(1,covar=covar)
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list("M",c("Mi","Y"),c("Y")))
pmacroModel(4,covar=covar)



cleanEx()
nameEx("productEq")
### * productEq

flush(stderr()); flush(stdout())

### Name: productEq
### Title: Make products of equations
### Aliases: productEq

### ** Examples

equation1=c("a1+b1*W")
equation2=c("a2+b2*W")
productEq(equation1,equation2)



cleanEx()
nameEx("qqPlot")
### * qqPlot

flush(stderr()); flush(stdout())

### Name: qqPlot
### Title: Draw quantile-quantile plot
### Aliases: qqPlot

### ** Examples

qqPlot(rnorm(200))
qqPlot(rt(200, df = 5))



cleanEx()
nameEx("r2diff")
### * r2diff

flush(stderr()); flush(stdout())

### Name: r2diff
### Title: Calculate difference of R2 and adjusted R2
### Aliases: r2diff

### ** Examples

fit=lm(mpg~wt*hp,data=mtcars)
r2diff(fit)
r2diff(fit,mode=2)



cleanEx()
nameEx("regEquation")
### * regEquation

flush(stderr()); flush(stdout())

### Name: regEquation
### Title: Make regression equation
### Aliases: regEquation

### ** Examples

X="X";M=NULL;Y="Y"; moderator=list(name="W",site=list("c"))
regEquation(X,M,Y,moderator)
M=c("M1","M2")
regEquation(X,M,Y,moderator,secondIndirect=TRUE)
covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M1","Y"),"Y","Y"))
regEquation(X,M,Y,moderator,covar=covar)
covar=list(name=c("ese","sex","tenure"),site=list(c("M","Y"),c("M","Y"),c("M","Y")))
regEquation(X="estress",M="affect",Y="withdraw",covar=covar)



cleanEx()
nameEx("seekNameVars")
### * seekNameVars

flush(stderr()); flush(stdout())

### Name: seekNameVars
### Title: select names of variables from list var
### Aliases: seekNameVars

### ** Examples

vars=list(name=list(c("W","Z"),c("V","Q")),site=list(c("a","c"),c("b","c")))
vars=list(name=list(c("W","Z")),site=list(c("a","c")))
seekNameVars(vars,"a")
seekNameVars(vars,"b")
seekNameVars(vars,"c")



cleanEx()
nameEx("seekVar")
### * seekVar

flush(stderr()); flush(stdout())

### Name: seekVar
### Title: Seek var form covariates
### Aliases: seekVar

### ** Examples

covar=list(name=c("C1","C2","C3"),label=c("ese","sex","tenure"),site=list(c("M","Y"),"Y","Y"))
var="Y"
seekVar(covar,var,prefix="h")



cleanEx()
nameEx("separateEq")
### * separateEq

flush(stderr()); flush(stdout())

### Name: separateEq
### Title: Separate equation
### Aliases: separateEq

### ** Examples

equation="( a1 + b1 * W )"
separateEq(equation)



cleanEx()
nameEx("statisticalDiagram")
### * statisticalDiagram

flush(stderr()); flush(stdout())

### Name: statisticalDiagram
### Title: Draw statistical diagram
### Aliases: statisticalDiagram

### ** Examples

statisticalDiagram(no=1)
covar=list(name=c("posemot","ideology","sex"),site=list(c("Y"),c("Y"),c("Y")))
statisticalDiagram(no=1,covar=covar)
covar=list(name=c("posemot","ideology","sex"),site=list(c("M","Y"),c("Mi","Y"),c("Mi","Y")))
covar=list(name=c("C1","C2"),site=list(c("M","Y"),"Y"))
statisticalDiagram(no=4,covar=covar)
statisticalDiagram(no=8,covar=covar)
labels=list(X="wintense",Mi="cogapp",Y="emotion")
nodeslabels=list(X="Work\nIntensity",Mi="Cognitive\nAppraisal",Y="Emotional\nExhaustion")
statisticalDiagram(4,labels=labels)
statisticalDiagram(4,labels=nodeslabels)
statisticalDiagram(4,labels=labels,nodeslabels=nodeslabels)
labels=list(X="GDP\nper inhabitant",M="Illiteracy Rate",Y="Mean Life\nExpectation")
statisticalDiagram(4,labels=labels)
statisticalDiagram(4,labels=labels,arrowslabels=c("e","f","g"),whatLabel="label")



cleanEx()
nameEx("str_detect2")
### * str_detect2

flush(stderr()); flush(stdout())

### Name: str_detect2
### Title: Extension of str_detect to list
### Aliases: str_detect2

### ** Examples

site=list(c("a","c"),c("a","b","c"))
str_detect2(site,"b")



cleanEx()
nameEx("treatInteraction")
### * treatInteraction

flush(stderr()); flush(stdout())

### Name: treatInteraction
### Title: unfold interaction
### Aliases: treatInteraction

### ** Examples

var="X*M"
treatInteraction(var)
var="X*M*W"
treatInteraction(var)



cleanEx()
nameEx("treatModerator")
### * treatModerator

flush(stderr()); flush(stdout())

### Name: treatModerator
### Title: Treat moderator name with mean value
### Aliases: treatModerator

### ** Examples

ind="(a1+a4*sex+a5*age)*(b1)"
moderatorNames=c("age","sex")
treatModerator(ind,moderatorNames)
ind="c1+c3*hp"
moderatorNames="hp"
treatModerator(ind,moderatorNames)



cleanEx()
nameEx("tripleEquation")
### * tripleEquation

flush(stderr()); flush(stdout())

### Name: tripleEquation
### Title: Make equation with triple interaction
### Aliases: tripleEquation

### ** Examples

X="negemot";M="ideology";Y="govact";suffix=0
cat(tripleEquation(X=X,M=M,Y=Y))
vars=list(name=list(c("sex","age")),site=list(c("a","c")))
vars=list(name=list(c("W","Z"),c("V","Q")),site=list(c("a","b","c"),c("a","b","c")))
X="negemot";Y="govact";suffix=0
moderator=list(name=c("W"),site=list(c("b","c")))
cat(tripleEquation(X=X,Y=Y,moderator=moderator))
covar=list(name=c("C1","C2","C3"),site=list(c("M","Y"),c("Mi","Y"),"Y"))
labels=list(X="negemot",M="ideology",Y="govact")
cat(tripleEquation(labels=labels,moderator=moderator,covar=covar))
cat(tripleEquation(X=X,M=M,Y=Y,moderator=moderator,covar=covar,mode=1))
cat(tripleEquation(X=X,M=M,Y=Y,vars=vars))
cat(tripleEquation(X=X,M=M,Y=Y,vars=vars,moderator=moderator,covar=covar))
cat(tripleEquation(X=X,M=M,Y=Y,vars=vars,mode=1))
cat(tripleEquation(X=X,M=M,Y=Y,vars=vars,covar=covar,mode=1))
X="negemot";Y="govact";suffix=0
vars=list(name=list(c("sex","age")),site=list(c("c")))
cat(tripleEquation(X=X,Y=Y,vars=vars))



cleanEx()
nameEx("tripleInteraction")
### * tripleInteraction

flush(stderr()); flush(stdout())

### Name: tripleInteraction
### Title: Make triple interaction equation
### Aliases: tripleInteraction

### ** Examples

vars=c("negemot","sex","age")
tripleInteraction(vars)
tripleInteraction(vars,mode=1)



cleanEx()
nameEx("unfold")
### * unfold

flush(stderr()); flush(stdout())

### Name: unfold
### Title: Unfold equations
### Aliases: unfold

### ** Examples

string=c("(a1+b1*W)*(a2+b2*W)*(a3+b3*W)","a1+b1*W")
unfold(string)



cleanEx()
nameEx("vars2df")
### * vars2df

flush(stderr()); flush(stdout())

### Name: vars2df
### Title: Make data.frame from a list of vars
### Aliases: vars2df

### ** Examples

vars=list(name=list(c("tenure","age")),site=list(c("a","b")))
vars2df(vars)
vars=list(name=list(c("milk","hair")),matrix=list(c(1,0,0,0,0,0,1,0,0,0)),pos=5)
vars2df(vars)



cleanEx()
nameEx("ztable.compareMC")
### * ztable.compareMC

flush(stderr()); flush(stdout())

### Name: ztable.compareMC
### Title: S3 method for class compareMC
### Aliases: ztable.compareMC

### ** Examples




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
