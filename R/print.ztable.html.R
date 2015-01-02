#' Print my html style
myhtmlHead=function(){
    cat("<head>")
    cat("<style>
        table {
              border-top: 0px solid white;
              border-bottom: 0px solid white;
              text-align: right;}
        th {
	          border-top: 1px solid black;
              border-bottom: 1px solid black;
              padding: 4px 4px;
	        }
        td {
             border-top: 0px solid white;
             border-bottom: 0px solid white;
             padding: 2px 2px 10px 10px; }
      </style>")
    cat("</head>")
}

#' Find rgb value from color name
#'
#'@param name a valid color name
#'@return rgb value
name2rgb=function(name){
    number=grep(paste("^",name,sep=""),ztable::zcolors$name)
    if(length(number)<1) result="white"
    else{
        rgb=ztable::zcolors[number[1],2]
        result=paste("#",rgb,sep="")
    }

    result
}

#' Convert the align in Latex format to html format
#'
#' @param align A character of align in Latex format
align2html=function(align){
    result=c()
    for(i in 1:nchar(align)){
        temp=substr(align,i,i)
        if(temp=="|") next
        temp=ifelse(temp=="l","left",ifelse(temp=="r","right","center"))
        result=c(result,temp)
    }
    result
}

#' count the vertical column lines from align of Latex format
#'
#' @param align A string of align Latex format
#' @return a numeric vector consists of vertical lines of each column
align2lines=function(align){
    result=c()
    length=nchar(align)
    count=0
    for(i in 1:length){
        temp=substr(align,1,1)
        if(temp=="|") {
            count=count+1
            if(i==length) result=c(result,count)
        }
        else{
            result=c(result,count)
            count=0
        }
        align=substr(align,2,nchar(align))
    }
    result
}


#' Print an object of class "ztable" to html table
#'
#' @param z An object of class "ztable"
ztable2html=function(z){
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
     # caption position
    if(z$caption.position=="r") cposition="right"
    else if(z$caption.position=="l") cposition="left"
    else cposition="center"
    fontsize=ifelse(z$size>=5,11+(z$size-5)*2,10-(4-z$size))
    headingsize=fontsize-2

    # table position
    if(z$position=="flushleft") tposition="left"
    else if(z$position=="flushright") tposition="right"
    else tposition="center"
    myhtmlHead()
    cat(paste("<table align=\"",tposition,"\" style=\"caption-side:",
              z$caption.placement,"; font-size:",as.integer(fontsize),"pt;\">",sep=""))
    if(z$caption.bold) cat(paste("<caption style=\"text-align:",cposition,"; font-weight: bold\">",
              z$caption,"</caption>",sep=""))
    else cat(paste("<caption style=\"text-align:",cposition,"\">",
              z$caption,"</caption>",sep=""))
    if((z$show.heading==TRUE) & (!is.null(attr(z$x,"heading")))) {
        head=attr(z$x,"heading")
        for(i in 1:length(head)) {
            if(nchar(head[i])<1) next
            cat(paste("<tr>\n<td colspan=\"",ncount+addrow,
                      "\"  align=\"left\" style=\"font-size:",
                      as.integer(headingsize),"pt; padding: 0px 0px;\">",head[i],sep=""))
            cat("</td>\n</tr>\n")
        }
    }
    vlines=align2lines(z$align)
    if(z$include.colnames) {
        cat("<tr>\n")
        if(z$include.rownames) cat(paste("<th style=\"border-left: ",vlines[1],
                                  "px solid black;",
                                  "background-color: ",name2rgb(z$cellcolor[1,1]),";",
                                  "\">","","</th>",sep=""))
        if(z$colnames.bold)
             for(i in 1:ncol(z$x)) {
                 cat(paste("<th style=\"font-weight: bold; border-left: ",
                           vlines[i+1],"px solid black;",sep=""))
                 if((i==ncol(z$x)) & (length(vlines)>ncol(z$x)))
                     cat(paste("border-right:",vlines[i+1],"px solid black;",sep=""))
                 cat(paste("background-color: ",name2rgb(z$cellcolor[1,i+1]),";",sep=""))
                 cat(paste("\">",colnames(z$x)[i],"</th>",sep=""))
             }
        else
             for(i in 1:ncol(z$x)) {
                 cat(paste("<th style=\"font-weight: normal; border-left: ",
                           vlines[i+1],"px solid black;",sep=""))
                 if((i==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                     cat(paste("border-right:",vlines[i+2],"px solid black;",sep=""))
                 cat(paste("background-color: ",name2rgb(z$cellcolor[1,i+1]),";",sep=""))
                 cat(paste("\">",colnames(z$x)[i],"</th>",sep=""))
             }
        cat("</tr>\n")
    }
    colpos=align2html(z$align)
    for(i in 1:nrow(z$x)){
        bcolor="white"
        #if(i %in% z$prefix.rows)
        #    if(is.numeric(z$zebra)) bcolor=z$zebra.color[i]
        #        cat("<tr style=\"background-color:",name2rgb(bcolor),"\">")
        cat("<tr>\n")
        if(z$include.rownames) cat(paste("<td style=\"border-left: ",vlines[1],
                                         "px solid black; background-color: ",
                                         name2rgb(z$cellcolor[i+1,1]),"; \">",
                                         rownames(z$x)[i],"</td>",sep=""))
        for(j in 1:ncount) {
            if(z$display[j+1]=="s"){
                cat(paste("<td align=\"",colpos[j+1],"\" style=\"border-left: ",
                          vlines[j+1],"px solid black;",sep=""))
                if((j==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                    cat(paste("border-right:",vlines[j+2],"px solid black;",sep=""))
                cat(paste("background-color: ",name2rgb(z$cellcolor[i+1,j+1]),"; \">",sep=""))
                cat(paste(z$x[i,j],"</td>",sep=""))
            }
            else{
                if(is.na(z$x[i,j])) {
                    cat(paste("<td style=\"border-left: ",vlines[j+1],
                              "px solid black;",sep=""))
                    if((j==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                        cat(paste("border-right:",vlines[j+2],"px solid black;",sep=""))
                    cat(paste("background-color: ",name2rgb(z$cellcolor[i+1,j+1]),";",sep=""))
                    cat(paste("\">","","</td>",sep=""))
                } else{
                    temp=formatC(z$x[i,j],digits=z$digits[j+1],format=z$display[j+1])
                    cat(paste("<td align=\"",colpos[j+1],"\" style=\"border-left: "
                              ,vlines[j+1],"px solid black;",sep=""))
                    if((j==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                        cat(paste("border-right:",vlines[j+2],"px solid black;",sep=""))
                    cat(paste("background-color: ",name2rgb(z$cellcolor[i+1,j+1]),";",sep=""))
                    cat(paste("\">",temp,"</td>",sep=""))

                }

            }
        }
        cat("</tr>\n")
    }
    if((z$show.footer!=TRUE) | (is.null(attr(z$x,"footer")))) footer=""
    else footer=attr(z$x,"footer")
    cat("<tr>\n")
    cat(paste("<td colspan=\"",ncount+addrow,
              "\" align=\"left\" style=\"font-size:",as.integer(headingsize),
              "pt ;border-top: 1px solid black;\">",footer,"</td>\n",sep=""))
    cat("</tr>\n")
    cat("</table>\n")
}


