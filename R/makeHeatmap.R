#' Make Sequential colour gradient palette
#'@importFrom scales seq_gradient_pal show_col
#'@param high colour for high end of gradient.
#'@param low colour for low end of gradient.
#'@param mid colour for middle of gradient.
#'@param n the number of colors in palette
#'@param plot Logical. Whether or not draw plot
#'@export
gradientColor=function(high="red",low="white",mid=NULL,n=20,plot=FALSE){

    if(is.null(mid)){
        x <- seq(0, 1, length.out = n)
        vals=seq_gradient_pal(low, high)(x)
    } else{
        x <- seq(0, 1, length.out = n/2)
        val1=seq_gradient_pal(low, mid)(x)
        x2 <- seq(0, 1, length.out = n/2+1)
        val2=seq_gradient_pal(mid, high)(x2)
        vals=c(val1,val2[-1])
    }
    if(plot) show_col(vals)
    vals
}

#'Add gradient background color to ztable
#'@param z An object of class ztable
#'@param palette Name of color palette
#'@param mycolor user defined color vectors
#'@param changeColor Logical. Whether of not change font color automatically
#'@param reverse If true, reverse the font color
#'@export
#'@examples
#' require(magrittr)
#' ztable(head(mtcars)) %>% makeHeatmap
#' require(moonBook)
#' x=table(acs$smoking,acs$Dx)
#' ztable(x) %>% makeHeatmap
#' ztable(x) %>% makeHeatmap(palette="Blues")
#' ztable(x) %>% makeHeatmap(mycolor=gradientColor(low="yellow",mid="orange",high="red"))
makeHeatmap=function(z,palette="Reds",mycolor=NULL,changeColor=TRUE,reverse=FALSE){

    if(is.null(mycolor)) mycolor=palette2colors(palette)
    ncolor=length(mycolor)
    df=z$x
    select=sapply(df,is.numeric)
    selected=which(select)
    res=as.matrix(df[select])
    max=res[which.max(res)]
    min=res[which.min(res)]
    res=round((res-min)*(ncolor-1)/(max-min))+1
    res[is.na(res)]=1
    for(i in 1:nrow(res)){
        for(j in 1:ncol(res)){
            color=NULL
            if(changeColor) {
                if(reverse) {
                    color=ifelse(res[i,j]>ncolor/2,"black","white")
                } else{
                    color=ifelse(res[i,j]>ncolor/2,"white","black")
                }
            }
            z<-addCellColor(z,rows=i+1,cols=selected[j]+1,bg=mycolor[res[i,j]],color=color)
        }
    }
    z
}


#'@describeIn ztable Makes a ztable for class table
#'@export
ztable.table=function(x,digits=NULL,...){

    m=matrix(x,ncol=ncol(x))
    colnames(m)=colnames(x)
    rownames(m)=rownames(x)
    ztable(m)
}
