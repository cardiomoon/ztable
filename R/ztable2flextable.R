#' Convert a named color into a hexadecimal color with rgb value
#' @param color A named color
#' @return a hexadecimal color
#' @importFrom stringr str_flatten str_detect
#' @importFrom grDevices col2rgb
#' @export
#' @examples
#' color2hex("green")
#' color2hex("red")
color2hex=function(color){
    result=color
    if(!str_detect(color,"#")){

        temp=ztable::zcolors$rgb[ztable::zcolors$name==tolower(color)]
        if(length(temp)==1) {
            result<-paste0("#",temp)
        } else{
            res=col2rgb(color)
            x=sprintf("%02s",as.hexmode(res))
            result=paste0("#",str_flatten(x))
        }
    }
    result
}

#' Extract hexadecimal colors from a color palette
#' @param name The name of color palette from RColorBrewer package
#' @param reverse Whether or not reverse the order of colors
#' @return hexadecimal colors
#' @importFrom RColorBrewer brewer.pal brewer.pal.info
#' @export
#' @examples
#' require(RColorBrewer)
#' require(magrittr)
#' palette2colors("Reds")
#' ztable(head(mtcars,10)) %>%
#'      addColColor(cols=1:12,bg=palette2colors("Set3"))
palette2colors=function (name, reverse = FALSE)
{
    colors = brewer.pal(RColorBrewer::brewer.pal.info[rownames(brewer.pal.info) ==
                                            name, "maxcolors"], name)
    if (reverse)
        colors = rev(colors)
    colors
}


#' Convert cgroup of ztable into data.frame
#' @param z An object of ztable
#' @return A data.frame
cgroup2df=function(z){
    cgroup=z$cgroup
    n.cgroup=z$n.cgroup

    layer=length(cgroup)
    name=list()
    for(i in 1:layer){
        temp=c()
        for(j in 1:length(cgroup[[i]])){
             temp=c(temp,rep(cgroup[[i]][j],n.cgroup[[i]][j]))
        }
        name[[i]]=temp
    }
    header=data.frame(
        col_keys=colnames(z$x),stringsAsFactors=FALSE
    )
    header
    for(i in 1:layer){
        temp=name[[i]]
        header=cbind(header,temp,stringsAsFactors=FALSE)
        colnames(header)[ncol(header)]=paste0("name",i)
    }
    header=cbind(header,colnames(z$x),stringsAsFactors=FALSE)
    header
}

#' Round the numbers of a data.frame
#' @param df A data.frame
#' @param digits A vector of integer indicating the number of decimal places
#' @return a rounded data.frame
#' @export
roundDf=function(df,digits=2){

    if(length(digits)==1){
        digits<-rep(digits,ncol(df))
    }
    else if(length(digits)<ncol(df)) {
        digits<-c(digits,rep(0,ncol(df)-length(digits)))
    }
    df[]<-lapply(1:ncol(df),function(i){
        if(is.integer(df[[i]])) {
            df[[i]]<-df[[i]]
        } else if(is.numeric(df[[i]])) {
            fmt=paste0("%0.",sprintf("%d",digits[i]),"f")
            df[[i]]=sprintf(fmt,df[[i]])
        } else{
            df[[i]]<-df[[i]]
        }

    })
    df
}

#' Convert an object of ztable into an object of flextable
#' @param z An object of class ztable
#' @return An object of class flextable
#' @importFrom flextable regulartable delete_part bg color border align merge_at
#' @importFrom flextable set_header_df merge_h padding hline_top hline border_remove
#' @importFrom officer fp_border
#' @export
#' @examples
#' require(magrittr)
#' z=ztable(head(mtcars)) %>%
#'    addRowColor(rows=1:7,palette2colors("Paired"))
#' z=ztable(head(mtcars))
#' z
#' ztable2flextable(z)
ztable2flextable=function(z){
    df=data2table(z)

    addcol=0
    if(z$include.rownames) {
        df=cbind(rowname=rownames(df),df)
        addcol=1
    }

    # if(addcol){
    #     digits=z$digits
    # }  else{
    #     digits=z$digits[-1]
    # }
    # df<-roundDf(df,digits)
    if(sum(colnames(df)=="")>0){
        colnames(df)[which(colnames(df)=="")]=rep(" ",which(colnames(df)==""))
    }

    big_border = fp_border(color="black", width = 2)
    std_border = fp_border(color="black", width = 1)
    ft<-regulartable(df) %>% border_remove() %>%
        hline_top(border=big_border,part="header") %>%
        hline(border=std_border,part="header") %>%
        hline(border=std_border,i=nrow(df),part="body")

    if(z$include.rownames) {
        ft<-ft %>% color(i=1,j=1,color="white",part="header")
    }
    if(z$include.colnames==FALSE)  ft<- ft %>% delete_part("header")

    for(i in 1:(nrow(df)+1)){
        for(j in 1:(ncol(df))){
            if(z$cellcolor[i,j]!="white") {
                if(i==1) {
                    ft<-ft %>% bg(i=i,j=j-ifelse(addcol,0,1),bg=color2hex(z$cellcolor[i,j]),part="header")
                } else{
                    ft<-ft %>% bg(i=i-1,j=j-ifelse(addcol,0,1),bg=color2hex(z$cellcolor[i,j]),part="body")
                }
            }
        }
    }
    for(i in 1:(nrow(df)+1)){
        for(j in 1:(ncol(df))){
            if(z$frontcolor[i,j]!="black") {
                #cat("i=",i,",j=",j,",color=",z$frontcolor[i,j],"\n")
                if(i==1) {
                    ft<-ft %>% color(i=i,j=j-ifelse(addcol,0,1),color=color2hex(z$frontcolor[i,j]),part="header")
                } else{
                    ft<-ft %>% color(i=i-1,j=j-ifelse(addcol,0,1),color=color2hex(z$frontcolor[i,j]),part="body")
                }

            }
        }
    }
    if(!is.null(attr(z$x,"footer"))){
        footer=attr(z$x,"footer")
        rowname=ft$header$col_keys[1]
        rowname
        ft<-eval(parse(text=paste0("add_footer(ft,",rowname,"=footer)"))) %>%
            merge_at(i=1,j=1:ncol(df),part="footer")
    }

    if(!is.null(z$caption)){
        header=z$caption
        rowname=ft$header$col_keys[1]
        ft<-eval(parse(text=paste0("add_header(ft,",rowname,"=header)"))) %>%
            merge_at(i=1,j=1:ncol(df),part="header") %>%
            color(i=1,j=1,color="black",part="header") %>%
            bg(i=1,j=1,bg="white",part="header") %>%
            border(border.top=fp_border(color="white"),part="header")

    }
    ft
    if(!is.null(z$cgroup)){
        header=cgroup2df(z)
        ft<-ft %>% set_header_df(mapping=header,key="col_keys") %>%
            merge_h(part="header") %>%
            border(border.top=fp_border(),border.bottom=fp_border(),part="header") %>%
            padding(padding.left=4,padding.right=4,part="header")
        for(i in 1:length(z$cgroupcolor)){
            for(j in 1:length(z$cgroupcolor[[i]])){
                if(z$cgroupcolor[[i]][j]!="black") {
                    if(addcol){
                        if(j <= 1+addcol) {
                            mycol=j
                        } else{
                            mycol=cumsum(z$n.cgroup[[i]])[j-1-addcol]+1+addcol
                        }
                    } else{
                        if(j<=2){
                            mycol=1
                        } else{
                            mycol=cumsum(z$n.cgroup[[i]])[j-2]+1
                        }
                    }
                    # cat("z$cgroupcolor[[",i,"]][",j,"]=",z$cgroupcolor[[i]][j],",mycol=",mycol,"\n")
                    ft<-ft %>% color(i=i,j=mycol,color=color2hex(z$cgroupcolor[[i]][j]),part="header")
                }
                if(z$cgroupbg[[i]][j]!="white") {
                    # cat("z$cgroupbg[[",i,"]][",j,"]=",z$cgroupbg[[i]][j],"\n")
                    if(addcol){
                        if(j <= 1+addcol) {
                            mycol=j
                        } else{
                            mycol=cumsum(z$n.cgroup[[i]])[j-1-addcol]+1+addcol
                        }
                    } else{
                        if(j<=2){
                            mycol=1
                        } else{
                            mycol=cumsum(z$n.cgroup[[i]])[j-2]+1
                        }
                    }
                    ft<-ft %>% bg(i=i,j=mycol,bg=color2hex(z$cgroupbg[[i]][j]),part="header")
                }
            }
        }

    }
    if(!is.null(z$spanCol)){

        for(i in 1 :nrow(z$spanCol)){
            if(addcol){
                 from=z$spanCol[i,2]
                 to=z$spanCol[i,3]
                 #cat("z$spanCol[i,]=",z$spanCol[i,],",from=",from,",to=",to,"\n")
                 ft=merge_at(ft,i=z$spanCol[i,1]-1,j=from:to,part="body")
            } else{
                from=z$spanCol[i,2]-1
                to=z$spanCol[i,3]-1
                myi=z$spanCol[i,1]-1
                #cat("z$spanCol[i,]=",z$spanCol[i,],",myi=",myi,",from=",from,",to=",to,"\n")
                ft=merge_at(ft,i=myi,j=from:to,part="body")
            }
        }
    }
    if(!is.null(z$spanRow)){
        for(i in 1 :nrow(z$spanRow)){
            ft=merge_at(ft,j=z$spanRow[i,1]-ifelse(addcol,0,1),i=(z$spanRow[i,2]-1):(z$spanRow[i,3]-1))
        }
    }
    ft<- ft %>% align(align="center",part="header")
    ft

}

