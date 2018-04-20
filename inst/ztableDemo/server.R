library(shiny)
require(ztable)

vector2string=function(v){
    temp=paste0(v,collapse="",sep=",")
    temp1=substr(temp,start=1,stop=nchar(temp)-1)
    return(temp1)
}

shinyServer(function(input, output,session) {

    
observe({    
  myncol=mynrow=c()
  spanRow=spanCol=c()    
  data1=c()
   # Generate a ztable
 
  i <- as.numeric(input$data)
  
  if(i==1) data=head(iris,10)
  else if(i==2) data=head(mtcars,10)
  else if(i==3) data=lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)
  else if(i==4) data=aov(mpg ~ ., data=mtcars)
  else if(i==5) data=anova(lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars))
  else if(i==6) data=anova(lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars),
                           lm(mpg ~ cyl+wt, data=mtcars))
  else if(i==7){
      counts <- c(18,17,15,20,10,20,25,13,12)
      outcome <- gl(3,1,9)
      treatment <- gl(3,3)
      data <- glm(counts ~ outcome + treatment, family = poisson())
  }
  else if(i==8){
      counts <- c(18,17,15,20,10,20,25,13,12)
      outcome <- gl(3,1,9)
      treatment <- gl(3,3)
      fit <- glm(counts ~ outcome + treatment, family = poisson())
      data<-anova(fit)
  }
  else if(i==9){
      data(USArrests)
      data <- prcomp(USArrests) 
  }
  else if(i==10){
      data(USArrests)
      pr1 <- prcomp(USArrests) 
      data=summary(pr1)
  }
  else if(i==11){
      DNase1 <- subset(DNase, Run == 1)
      data <- nls(density ~ SSlogis(log(conc), Asym, xmid, scal),DNase1)
  }
  
  z<-ztable(data)
  z$spanCol=NULL
  z$spanRow=NULL
  
  myncol<-ncol(z$x)
  mynrow<-nrow(z$x)
  size=as.numeric(input$size)
  
  z$caption=input$caption
  z$include.colnames=input$colname
  z$include.rownames=input$rowname
  
  if(input$Tabset=="Data") {
      
      spanRow<-z$spanRow
      spanCol<-z$spanCol
      updateSelectInput(session,"cols",choices=(2-input$rowname):(ncol(z$x)+1))
      updateSelectInput(session,"ccols",choices=(2-input$rowname):(ncol(z$x)+1))
      updateSelectInput(session,"rows",choices=(2-input$colname):(nrow(z$x)+1))
      updateSelectInput(session,"crows",choices=(2-input$colname):(nrow(z$x)+1))
      updateSelectInput(session,"color",selected="platinum")
      updateSelectInput(session,"rowcolor",selected="pink")
      updateSelectInput(session,"ccolor",selected="orange")
      updateTextInput(session,"caption",value=paste("Table ",i,". This table is for demonstration of ztable",sep=""))
      updateRadioButtons(session,"caption.position",selected="c")
      updateCheckboxInput(session,"addcgroup",value=FALSE)
      updateCheckboxInput(session,"addrgroup",value=FALSE)
      updateNumericInput(session,"cspan.rgroup",min=1,max=ncol(z$x),value=1,step=1)
      updateSelectInput(session,'spanColRow',choices=2:(nrow(z$x)+1),selected=3)
      
      updateSliderInput(session,"spanCol",min=2,max=ncol(z$x)+1,value=c(2,2))
      updateSelectInput(session,"spanColColor",selected="yellow")
      updateSelectInput(session,'spanRowCol',choices=2:(ncol(z$x)+1),selected=ncol(z$x)+1)
      updateSliderInput(session,"spanRow",min=2,max=nrow(z$x)+1,
                        value=c(nrow(z$x)+1,nrow(z$x)+1))
      updateSelectInput(session,"spanRowColor",selected="lightcyan")
      if(!is.null(z$cgroup)) {
          
          updateTextInput(session,'cgroup',value=vector2string(z$cgroup[1,]))
          updateTextInput(session,'n.cgroup',value=vector2string(z$n.cgroup[1,]))
          updateCheckboxInput(session,"addcgroup",value=TRUE)
      }
      if(!is.null(z$rgroup)) {
          updateTextInput('rgroup',value=vector2string(z$rgroup))
          updateTextInput('n.rgroup',value=vectorsstring(z$n.rgroup))
          updateNumericInput(session,"cspan.rgroup",min=1,max=ncol(z$x),value=z$cspan.rgroup,step=1)
          updateCheckboxInput(session,"addrgroup",value=TRUE)
      }
      updateSelectInput(session,"vladd",choices=(2-input$rowname):(ncol(z$x)+2))
      updateSelectInput(session,"vldel",choices=(2-input$rowname):(ncol(z$x)+2))
      updateSelectInput(session,"hladd",choices=1:(nrow(z$x)-1))
      updateSelectInput(session,"hldel",choices=1:(nrow(z$x)-1))
  }      
  z$caption.position=input$caption.position
  z$caption.placement=input$caption.placement
  if(!is.null(input$rows)) {
      brow=as.integer(input$rows)
      z=addRowColor(z,rows=brow,input$rowcolor)
  }
  if(!is.null(input$cols)) {
      b=as.integer(input$cols)
      z=addColColor(z,cols=b,input$color)
  }
  if((!is.null(input$ccols))&(!is.null(input$crows))) {
      bcol=as.integer(input$ccols)
      brow=as.integer(input$crows)
      z=addCellColor(z,cols=bcol,rows=brow,input$ccolor)
  }
  if(input$addcgroup) {
      mycgroup=unlist(strsplit(input$cgroup,",",fixed=TRUE))
      myncgroup=unlist(strsplit(input$n.cgroup,",",fixed=TRUE))
      csum=as.integer(myncgroup)
      if(sum(csum) <= ncol(z$x)) z=addcgroup(z,mycgroup,csum)
  }
  if(input$addrgroup) {
      myrgroup=unlist(strsplit(input$rgroup,",",fixed=TRUE))
      mynrgroup=unlist(strsplit(input$n.rgroup,",",fixed=TRUE))
      rsum=as.integer(mynrgroup)
      if(sum(rsum) <= nrow(z$x)) z=addrgroup(z,myrgroup,rsum,input$cspan.rgroup)
  }
  if(input$spanCol[1]!=input$spanCol[2]) {
      z=spanCol(z,row=as.integer(input$spanColRow),
                from=input$spanCol[1],to=input$spanCol[2],color=input$spanColColor)
      spanCol<-z$spanCol
  }
  if(input$spanRow[1]!=input$spanRow[2]) {
      z=spanRow(z,col=as.integer(input$spanRowCol),
                from=input$spanRow[1],to=input$spanRow[2],color=input$spanRowColor)
      spanRow<-z$spanRow
  }
  if(is.null(input$vladd)) myadd=NULL
  else myadd=as.integer(input$vladd)
  if(is.null(input$vldel)) mydel=NULL
  else mydel=as.integer(input$vldel)
  z=vlines(z,type=as.integer(input$vltype),add=myadd,del=mydel)
  
  if(is.null(input$hladd)) myadd=NULL
  else myadd=as.integer(input$hladd)
  if(is.null(input$hldel)) mydel=NULL
  else mydel=as.integer(input$hldel)
  z=hlines(z,type=as.integer(input$hltype),add=myadd,del=mydel)
  
  
  output$overview <- renderPrint({
      print(z,type="html",size=size)
  })
  
  output$a_out<-renderPrint({
      
      i <- as.numeric(input$data)
      if(i==1) data1="head(iris,10)"
      else if(i==2) data1="head(mtcars,10)"
      else if(i==3) data1="lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)"
      else if(i==4) data1="aov(mpg ~ ., data=mtcars)"
      else if(i==5) {
              cat("fit=lm(mpg ~ cyl + disp + wt + drat + am,data=mtcars)\n")
              data1="anova(fit)"
      }          
      else if(i==6) {
             cat("fit1=lm(mpg ~ cyl + disp + wt + drat + am, data=mtcars)\n")
             cat("fit2=lm(mpg ~ cyl+wt, data=mtcars)\n")
             data1="anova(fit1,fit2)"
      }         
      else if(i==7) {
          cat("counts <- c(18,17,15,20,10,20,25,13,12)\noutcome <- gl(3,1,9)\ntreatment <- gl(3,3)\n")
          cat("out=glm(counts ~ outcome + treatment, family = poisson())\n")
          data1="out"
      }
      else if(i==8) {
          cat("counts <- c(18,17,15,20,10,20,25,13,12)\noutcome <- gl(3,1,9)\ntreatment <- gl(3,3)\n")
          cat("out=glm(counts ~ outcome + treatment, family = poisson())\n")
          data1="anova(out)"
      }
      else if(i==9){
          cat("data(USArrests)\n")
          data1 <- "prcomp(USArrests)" 
      }
      else if(i==10){
          cat("data(USArrests)\n")
          cat("out=summary(prcomp(USArrests))\n")
          data1="out"
      }
      else if(i==11){
          cat("DNase1 <- subset(DNase, Run == 1)\n")
          cat("out <- nls(density ~ SSlogis(log(conc), Asym, xmid, scal),DNase1)\n")
          data1="out"
      }
      
      cat(paste("z=ztable( ",data1,", size=",as.numeric(input$size)," )\n",sep=""))
      if(input$Tabset=="Data") {
          if(!input$colname) cat("z$include.colname=",input$colname,"\n") 
          if(!input$rowname) cat("z$include.rowname=",input$rowname,"\n") 
      }   
      else if(input$Tabset=="Caption") {
          cat("z$caption=",deparse(input$caption),"\n")
          if(input$caption.placement!="top") cat("z$caption.placement=",deparse(input$caption.placement),"\n")
          if(input$caption.position!="c") cat("z$caption.position=",deparse(input$caption.position),"\n")
      }
      else if(input$Tabset=="addColColor"){
          if(!is.null(input$cols)){
               b=as.integer(input$cols)
               sb=b[1]
               if(length(b)>1){
                   for(i in 2:length(b)) sb=paste(sb,b[i],sep=",")
               }
               cat(paste("z=addColColor(z,cols=c(",sb,
                    "),color=",deparse(input$color),")\n",sep=""))
          }
      }
      else if(input$Tabset=="spanCol"){
          if(input$spanCol[1]!=input$spanCol[2]){
               cat(paste("z=spanCol(z,row=",input$spanColRow,
                        ",from=",input$spanCol[1],",to=",input$spanCol[2],
                        ",color=",deparse(input$spanColColor),")\n",sep=""))
          }
      }
      else if(input$Tabset=="spanRow"){
          if(input$spanRow[1]!=input$spanRow[2]){
              cat(paste("z=spanRow(z,col=",input$spanRowCol,
                        ",from=",input$spanRow[1],",to=",input$spanRow[2],
                        ",color=",deparse(input$spanRowColor),")\n",sep=""))
          }
      }
      else if(input$Tabset=="addRowColor"){
          if(!is.null(input$rows)){
              brow=as.integer(input$rows)
              sbrow=brow[1]
              if(length(brow)>1){
                  for(i in 2:length(brow)) sbrow=paste(sbrow,brow[i],sep=",")
              }
              cat(paste("z=addRowColor(z,rows=c(",sbrow,
                        "),color=",deparse(input$rowcolor),")\n",sep=""))
          }
      }
      else if(input$Tabset=="addCellColor"){
          if(!is.null(input$crows)){
              brow=as.integer(input$crows)
              sbrow=brow[1]
              if(length(brow)>1){
                  for(i in 2:length(brow)) sbrow=paste(sbrow,brow[i],sep=",")
              }
              bcol=as.integer(input$ccols)
              sbcol=bcol[1]
              if(length(bcol)>1){
                  for(i in 2:length(bcol)) sbcol=paste(sbcol,bcol[i],sep=",")
              }
              cat(paste("z=addCellColor(z,rows=c(",sbrow,
                        "),cols=c(",sbcol,"),color=",deparse(input$ccolor),")\n",sep=""))
          }
      }
      else if(input$Tabset=="addcgroup"){
          if(input$addcgroup>0) {
                mycgroup=unlist(strsplit(input$cgroup,",",fixed=TRUE))
                temp=paste("'",mycgroup[1],"'",sep="")
                if(length(mycgroup)>1){
                    for(i in 2:length(mycgroup)) temp=paste(temp,",'",mycgroup[i],"'",sep="")
                }
                cat(paste("z=addcgroup(z,cgroup=c(",temp,
                      "),n.cgroup=c(",input$n.cgroup,"))\n",sep=""))
            
                    myncgroup=unlist(strsplit(input$n.cgroup,",",fixed=TRUE))
                    csum=as.integer(myncgroup)
                    if(sum(csum) > myncol) 
                        cat("## Sum of n.cgroup(",sum(csum),
                            ") must be qual to or lesser than column count(",myncol,")\n")
               
          } 
          
      }
      else if(input$Tabset=="addrgroup"){
          if(input$addrgroup>0) {
              myrgroup=unlist(strsplit(input$rgroup,",",fixed=TRUE))
              temp=paste("'",myrgroup[1],"'",sep="")
              if(length(myrgroup)>1){
                  for(i in 2:length(myrgroup)) temp=paste(temp,",'",myrgroup[i],"'",sep="")
              }
              cat(paste("z=addrgroup(z,rgroup=c(",temp,
                        "),n.rgroup=c(",input$n.rgroup,"),cspan.rgroup=",
                        input$cspan.rgroup,")\n",sep=""))
              mynrgroup=unlist(strsplit(input$n.rgroup,",",fixed=TRUE))
              rsum=as.integer(mynrgroup)
              if(sum(rsum) > mynrow) {
                      temp=paste("## Sum of n.rgroup(",sum(rsum),
                          ") must be qual to or lesser than row count(",mynrow,")\n",sep="")
                      cat(temp)
                      if(FALSE) { 
                      observe({
                          
                          session$sendCustomMessage(type = 'testmessage',
                                                    message = list(text=temp,
                                                                   controller = input$n.rgroup))
                      }) 
                      }
              
              }          
              
          } 
          
      }
      else if(input$Tabset=="vlines"){
          if(is.null(input$vladd)) sa="NULL"
          else {
              a=as.integer(input$vladd)
              sa=a[1]
              if(length(a)>1){
                    for(i in 2:length(a)) sa=paste(sa,a[i],sep=",")
              }
          }
          if(is.null(input$vldel)) sd="NULL"
          else {
              d=as.integer(input$vldel)
              sd=d[1]
              if(length(d)>1){
                 for(i in 2:length(d)) sd=paste(sd,d[i],sep=",")
              }
          }
          cat(paste("vlines(z,type=",as.integer(input$vltype),
                    ",add=",sa,",del=",sd,")\n",sep=""))
      }
      else if(input$Tabset=="hlines"){
          if(is.null(input$hladd)) sa="NULL"
          else {
              a=as.integer(input$hladd)
              sa=a[1]
              if(length(a)>1){
                  for(i in 2:length(a)) sa=paste(sa,a[i],sep=",")
              }
          }
          if(is.null(input$hldel)) sd="NULL"
          else {
              d=as.integer(input$hldel)
              sd=d[1]
              if(length(d)>1){
                  for(i in 2:length(d)) sd=paste(sd,d[i],sep=",")
              }
          }
          cat(paste("hlines(z,type=",as.integer(input$hltype),
                    ",add=",sa,",del=",sd,")\n",sep=""))
      }
      cat("z\n")
      #cat("input$spanRowCol=",input$spanRowCol,"\n") 
      #cat("input$spanRow=",input$spanRow,"\n") 
      #cat("input$spanColRow=",input$spanColRow,"\n") 
      #cat("input$spanCol=",input$spanCol,"\n") 
  })  
 
  output$downloadReport <- downloadHandler(
      filename = function() {
          paste('my-report', sep = '.', switch(
              input$format, PDF = 'pdf', HTML = 'html', Word = 'docx'
          ))
      },
      
      content = function(file) {
          src <- normalizePath('report.Rmd')
          
          # temporarily switch to the temp dir, in case you do not have write
          # permission to the current working directory
          owd <- setwd(tempdir())
          on.exit(setwd(owd))
          file.copy(src, 'report.Rmd')
          
          library(rmarkdown)
          out <- render('report.Rmd', switch(
              input$format,
              PDF = pdf_document(), HTML = html_document(), Word = word_document()
          ))
          file.rename(out, file)
      }
  )
})
})
