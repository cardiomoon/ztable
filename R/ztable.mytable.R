#' Make ztable from object mytable
#'
#'@param x An object of mytable
#'@param digits Numeric vector of length equal to one (in which case it will be
#'       replicated as necessary) or to the number of columns of the resulting table
#' @param ... arguments to be passed to \code{\link{ztable_sub}}
#' @export
#'@examples
#'require(moonBook)
#'res=mytable(sex~.,data=acs)
#'z=ztable(res)
#'z
ztable.mytable=function(x,digits=NULL,...){

    count=ncol(x$res)
    if(x$show.all==FALSE) count=ncol(x$res)-7

#
#       myalign="ll"
#       for(i in 2: (count-1)) myalign=paste(myalign,"c",sep="")
#       myalign=paste(myalign,"r",sep="")


    z=ztable(x$res[1:count])
    colnames(z$x)[1]=""
    sub=paste("(N=",x$count,")",sep="")
    sub=c("",sub)
    while(length(sub)<count) sub=c(sub,NA)
    z=addSubColNames(z,sub)
    z$include.rownames=FALSE
    z=vlines(z,type=0)
    class(z)=c("ztable","ztable.mytable")
    z=trim.ztable(z)
    z
}

#'Make align for an object of class ztable.mytable
#'@param z An object of class ztable.mytable
make_align=function(z){

    if(is.null(z$cgroup)){
        myalign="ll"
        count=ncol(z$x)
        for(i in 2: (count-2)) myalign=paste(myalign,"c",sep="")
        myalign=paste(myalign,"rr",sep="")
    } else{
        count=length(z$cgroup[[1]])-1
        count
        colpergroup=(ncol(z$x)-1)/count
        colpergroup
        myalign="ll"
        for(i in 1:count){
            temp=c(rep("c",colpergroup-2),"rr")
            myalign=paste0(myalign,str_flatten(temp))
        }
        myalign
    }
    myalign
}


#'Make align and edit p value column for an object of class ztable.mytable
#'@param z An object of class ztable.mytable
trim.ztable=function(z){
  if(is.null(z$cgroup)){
      df=z$x
      df$p[df$p=="0.000"]="< 0.001"
      z$x=df
  } else{
    count=length(z$cgroup[[1]])-1
    count
    colpergroup=(ncol(z$x)-1)/count
    colpergroup
    pcol=which(colnames(z$x)=="p")
    pcol
    for(i in 1:length(pcol)){
        no=pcol[i]
        z$x[[no]][z$x[[no]]=="0.000"]="< 0.001"
    }
  }
  myalign=make_align(z)
  #cat("myalign=",myalign,"\n")
  z$align=myalign
  z
}
