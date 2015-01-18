#' Add row colors of an object of ztable
#'
#' @param z An object of ztable
#' @param rows An integer vector indicating specific rows
#' @param color A character vector indicating color
#' @examples
#' z=ztable(head(iris))
#' z=addRowColor(z,c(1,3),color="platinum")
#' z
addRowColor=function(z,rows,color){
    for(i in 1:length(color)) color[i]=validColor(color[i])
    if(length(rows)>length(color)) color=rep(color,1+length(rows)/length(color))
    for(i in 1:length(rows))
        for(j in 1:ncol(z$cellcolor))
              z$cellcolor[rows[i],j]=color[i]
    z$zebra.type=3
    z$zebra=3
    z
}

#' Add column colors of an object of ztable
#'
#' @param z An object of ztable
#' @param cols An integer vector indicating specific columns
#' @param color A character vector indicating color
#' @examples
#' z=ztable(head(iris))
#' z=addColColor(z,c(1,3),color="platinum")
#' z
addColColor=function(z,cols,color){
    for(i in 1:length(color)) color[i]=validColor(color[i])
    if(length(cols)>length(color)) color=rep(color,1+length(cols)/length(color))
    for(j in 1:length(cols))
        for(i in 1:nrow(z$cellcolor))
            z$cellcolor[i,cols[j]]=color[j]
    z$zebra.type=3
    z$zebra=3
    if(!is.null(z$colcolor))
        for(j in 1:length(cols))
            z$colcolor[cols[j]]=color[j]
    z
}

#' Add column colors of an object of ztable
#'
#' @param z An object of ztable
#' @param rows An integer vector indicating specific rows
#' @param cols An integer vector indicating specific columns
#' @param color A character vector indicating color
#' @examples
#' z=ztable(head(iris))
#' z=addRowColor(z,c(1,3),color="platinum")
#' z=addColColor(z,2,color="syan")
#' z=addCellColor(z,cols=c(5,4),rows=5,color="red")
#' z
addCellColor=function(z,rows,cols,color){
    for(i in 1:length(color)) color[i]=validColor(color[i])
    while(length(rows)!=length(cols)){
        if(length(rows)<length(cols)){
            rows=c(rows,rows)
            if(length(rows)>length(cols)) rows=rows[1:length(cols)]
        }
        if(length(rows)>length(cols)){
            cols=c(cols,cols)
            if(length(cols)>length(rows)) cols=cols[1:length(rows)]
        }
    }
    if(length(cols)>length(color)) color=rep(color,1+length(cols)/length(color))
    for(i in 1:length(cols))
        z$cellcolor[rows[i],cols[i]]=color[i]
    z$zebra.type=3
    z$zebra=3
    z
}

#' Add column groups of an object of ztable
#'
#'@param z An object of ztable
#'@param cgroup A character vector or matrix indicating names of column group. Default value is NULL
#'@param n.cgroup A integer vector or matrix indicating the numbers of columns included in each cgroup
#'       Dafault value is NULL
#'@param cgroupcolor A character vector or matrix indicating the background colors of each cells.
addcgroup=function(z,cgroup,n.cgroup,cgroupcolor=NULL){
    if(!is.matrix(cgroup)) cgroup=matrix(cgroup,nrow=1)
    if(!is.matrix(n.cgroup)) n.cgroup=matrix(n.cgroup,nrow=1)
    if(is.null(cgroupcolor))
        cgroupcolor=matrix(rep("white",nrow(cgroup)*(ncol(cgroup)+1)),nrow=nrow(cgroup))
    if(!is.matrix(cgroupcolor)) cgroupcolor=matrix(cgroupcolor,nrow=1)
    z$cgroup=cgroup
    z$n.cgroup=n.cgroup
    z$cgroupcolor=cgroupcolor
    z
}

#' Add row groups of an object of ztable
#'
#'@param z An object of ztable
#'@param rgroup A character vector indicating names of row group. Default value is NULL
#'@param n.rgroup A integer vector indicating the numbers of rows included in each rgroup
#'       Dafault value is NULL
#'@param cspan.rgroup An integer indicating the column span of rgroup
addrgroup=function(z,rgroup,n.rgroup,cspan.rgroup=NULL){
    z$rgroup=rgroup
    z$n.rgroup=n.rgroup
    z$cspan.rgroup=cspan.rgroup
    z$colcolor=rep("white",ncol(z$cellcolor))
    z
}

#' Count the colgroup of an object of ztable
#'
#' @param z An object of class ztable
#' @return A vector indicating the position of colgroup
colGroupCount=function(z){
    if(is.null(z$cgroup)) return(NULL)
    if(is.null(z$n.cgroup)) return(NULL)
    result=c()
    for(i in 1:nrow(z$n.cgroup)){
        count=0
        for(j in 1:ncol(z$n.cgroup)) {
            if(is.na(z$n.cgroup[i,j])) break
            count=count+z$n.cgroup[i,j]
            result=c(result,count)
        }
    }
    a=unique(result)
    a[order(a)]
}

#' Count the colspan of each colgroup
#'
#' @param z An object of ztable
#' @return A matrix indicating the column span occupied by each colgroup
cGroupSpan=function(z){
    colCount=colGroupCount(z)
    result=z$n.cgroup
    for(i in 1:nrow(z$n.cgroup)){
        start=0
        for(j in 1:ncol(z$n.cgroup)) {
            if(is.na(z$n.cgroup[i,j])) break
            end=start+z$n.cgroup[i,j]
            count=0
            for(k in 1:length(colCount)){
                if(colCount[k]>start & colCount[k]<end) count=count+1
            }
            result[i,j]=result[i,j]+count
            #cat("start=",start,",end=",end,",result[",i,",",j,"]=",result[i,j],"\n")
            start=end
        }
    }
    result
}


#' Print the head of latex table if the object of ztable has a colgroup
#'
#' @param z An object of ztable
printLatexHead=function(z){
    if(is.null(z$cgroup)) return
    if(is.null(z$n.cgroup)) return
    #colCount=colGroupCount(z)
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
    cGroupSpan=cGroupSpan(z)
    for(i in 1:nrow(z$cgroup)){
            if(z$include.rownames) firstrow=paste("\\cellcolor{",z$cgroupcolor[i,1],"}",sep="")
            else firstrow=NULL
            for(j in 1:ncol(z$cgroup)) {
                if(is.na(z$cgroup[i,j])) break
                if(!is.null(firstrow)) paste(firstrow," & ",sep="")
                second=paste("\\multicolumn{",cGroupSpan[i,j],"}{c}{",sep="")
                if(z$cgroupcolor[i,j+1]!="white")
                    second=paste(second,"\\cellcolor{",z$cgroupcolor[i,j+1],"}",sep="")
                if(z$colnames.bold)
                    second=paste(second,"\\textbf{",z$cgroup[i,j],"}}",sep="")
                else second=paste(second,z$cgroup[i,j],"}",sep="")
                if(j!=1) second=paste(" & ",second,sep="")
                if(is.null(firstrow)) firstrow=second
                else firstrow=paste(firstrow,second,sep=" & ")
            }
            cat(paste(firstrow,"\\\\ \n",sep=""))
            start=1+addrow
            for(j in 1:ncol(z$cgroup)) {
                if(is.na(z$cgroup[i,j])) break
                cat(paste("\\cline{",start,"-",start+cGroupSpan[i,j]-1,"}",sep=""))
                start=start+cGroupSpan[i,j]+1
            }
            cat("\n")
    }
}

#' Make a charater string indicating the alignment of components of table.
#'
#' @param z An object of ztable
getNewAlign=function(z){
    #cat("z$align=",z$align,"\n")
    if(is.null(z$cgroup)) return(z$align)
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
    colCount=colGroupCount(z)
    result=c()
    start=1
    for(i in 1:length(colCount)){
        #cat("start=",start,"stop=",colCount[i]+addrow,",")
        if(!is.null(result)) result=paste(result,"c",sep="")
        result=paste(result,substr(z$align,start=start,stop=(colCount[i]+addrow)),sep="")
        start=colCount[i]+addrow+1
        #cat("result=",result,"\n")
    }
    if(colCount[length(colCount)]<ncount)
        result=paste(result,substr(z$align,start=start,stop=nchar(z$align)),sep="")
    result
}

#' Calculating total columns of ztable
#'
#' @param z An object of ztable
totalCol=function(z){
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
    result=ncount+addrow
    if(!is.null(z$cgroup)) {
        colCount=colGroupCount(z)
        result=result+length(colCount)-1
    }
    result
}
