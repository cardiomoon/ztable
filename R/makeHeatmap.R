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

#' Convert numeric vector min to 0, max to maxvalue
#' @param x A vector
#' @param maxvalue maximal value
#' @export
normalize2=function(x,maxvalue=10){
    if(is.numeric(x)) {
        min=min(x,na.rm=TRUE)
        max=max(x,na.rm=TRUE)
        x=round((x-min)*(maxvalue-1)/(max-min))+1
        x[is.na(x)]=1
    }
    x
}

#'Add gradient background color to ztable
#'@param z An object of class ztable
#'@param palette Name of color palette
#'@param mycolor user defined color vectors
#'@param rows columns to make heatmap
#'@param cols columns to make heatmap
#'@param changeColor Logical. Whether of not change font color automatically
#'@param reverse If true, reverse the font color
#'@param margin An integer. Choices are one of 0,1 and 2. 0(default), heatmap for all numeric data.
#'        1 ; rowwise heatmap, 2: columnwise heatmap.
#'@export
#'@examples
#' require(magrittr)
#' ztable(head(mtcars)) %>% makeHeatmap()
#' \dontrun{
#' ztable(head(mtcars)) %>% makeHeatmap(palette="YlOrRd",cols=c(1,4,6),margin=2)
#' ztable(head(mtcars)) %>% makeHeatmap(rows=c(1,3,5),margin=1)
#' require(moonBook)
#' x=table(acs$smoking,acs$Dx)
#' ztable(x) %>% makeHeatmap
#' ztable(x) %>% makeHeatmap(palette="Blues")
#' ztable(x) %>% makeHeatmap(mycolor=gradientColor(low="yellow",mid="orange",high="red"))
#' }
makeHeatmap=function(z,
                     palette="Reds",mycolor=NULL,
                     rows=NULL,cols=NULL,
                     changeColor=TRUE,reverse=FALSE,
                     margin=0){


    if(is.null(mycolor)) mycolor=palette2colors(palette)
    ncolor=length(mycolor)

    df=z$x
    if(is.null(rows)) rows=1:nrow(df)
    if(is.null(cols)) cols=1:ncol(df)
    df1=df[rows,cols]
    select=sapply(df1,is.numeric)
    selected=cols[which(select)]

    if(margin==0){
        res=as.matrix(df1[select])
        max=res[which.max(res)]
        min=res[which.min(res)]
        res=round((res-min)*(ncolor-1)/(max-min))+1
        res[is.na(res)]=1
    } else if(margin==1){
        res=df1[select]
        result=apply(res,1,normalize2,ncolor)
        res[]=t(result)
    } else{
        res=df1[select]
        res[]=apply(res,2,normalize2,ncolor)
    }

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

            z<-addCellColor(z,rows=rows[i]+1,cols=selected[j]+1,bg=mycolor[res[i,j]],color=color)
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
