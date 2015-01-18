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

#' print html style
myhtmlStyle=function(){
    cat("<head>")
    cat("<style>
        table {
              text-align: right;}
        th {
              padding: 2px 2px 5px 5px;
	        }
        td {
             padding: 2px 2px 5px 5px; }
      </style>")
    cat("</head>")
}

#' Print HTML head if ztable object a has a colgroup
#'
#' @param z An object of ztable
printHTMLHead=function(z){
    if(is.null(z$cgroup)) return
    if(is.null(z$n.cgroup)) return
    #colCount=colGroupCount(z)
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
    cGroupSpan=cGroupSpan(z)
    totalCol=totalCol(z)

    #vlines=align2lines(z$align)

    for(i in 1:nrow(z$cgroup)){
        cat("<tr>\n")
        colSum=0
        if(z$include.rownames) {
            cat("<td style=\"")
            if(i==1) cat("border-top: 2px solid gray;")
            if(z$cgroupcolor[i,1]!="white")
                cat(paste("background-color: ",name2rgb(z$cgroupcolor[i,1]),sep=""))
            cat("\"> </td>\n")
            colSum=1
        }
        for(j in 1:ncol(z$cgroup)) {
            if(is.na(z$cgroup[i,j])) break
            cat("<td colspan=\"",cGroupSpan[i,j],"\" align=\"center\" ")
            colSum=colSum+cGroupSpan[i,j]
            if(z$colnames.bold) cat("style=\"font-weight: bold;")
            else cat("style=\"font-weight: normal;")
            if(i==1) cat("border-top: 2px solid gray;")
            cat("border-bottom: 1px solid gray;")
            if(z$cgroupcolor[i,j+1]!="white")
                cat(paste("background-color: ",name2rgb(z$cgroupcolor[i,j+1]),";",sep=""))
            cat(paste("\">",z$cgroup[i,j],"</td>\n",sep=""))
            if((j < ncol(z$cgroup)) & ((colSum+j-1)<totalCol)) {
                cat("<td style=\"")
                if(i==1) cat("border-top: 2px solid gray;")
                cat("border-bottom: hidden\">&nbsp;</td>\n")
            }
        }
        cat("</tr>\n")
    }
}


#' Print an object of class "ztable" to html table
#'
#' @param z An object of class "ztable"
#' @param xdata A formatted data.frame
ztable2html=function(z,xdata){
    ncount=ncol(z$x)
    addrow=ifelse(z$include.rownames,1,0)
     # caption position
    if(z$caption.position=="r") cposition="right"
    else if(z$caption.position=="l") cposition="left"
    else cposition="center"
    fontsize=ifelse(z$size>=5,11+(z$size-5)*2,10-(4-z$size))
    headingsize=fontsize-2

    rgroupcount=0
    printrgroup=1
    if(!is.null(z$n.rgroup)){
        if(length(z$n.rgroup)>1) {
            for(i in 2:length(z$n.rgroup)) {
                printrgroup=c(printrgroup,printrgroup[length(printrgroup)]+z$n.rgroup[i-1])
            }
        }
        rgroupcount=1
    }

    NewAlign=getNewAlign(z)
    totalCol=totalCol(z)
    colCount=colGroupCount(z)

    rgroupcount=0
    printrgroup=1
    if(!is.null(z$n.rgroup)){
        if(length(z$n.rgroup)>1) {
            for(i in 2:length(z$n.rgroup)) {
                printrgroup=c(printrgroup,printrgroup[length(printrgroup)]+z$n.rgroup[i-1])
            }
        }
        rgroupcount=1
    }

    # table position
    if(z$position=="flushleft") tposition="left"
    else if(z$position=="flushright") tposition="right"
    else tposition="center"
    #cat("<table class='gmisc_table'")
    myhtmlStyle()
    cat("<table ")
    cat(paste("align=\"",tposition,"\" style=\"border-collapse: collapse; caption-side:",
              z$caption.placement,"; font-size:",as.integer(fontsize),"pt;\">",sep=""))
    cat(paste("<caption style=\"text-align:",cposition,";",sep=""))
    if(z$caption.bold) cat("font-weight: bold")
    cat(paste("\">",z$caption,"</caption>",sep=""))
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
    printtop=1
    if(!is.null(z$cgroup)) {
        printHTMLHead(z)
        printtop=0
    }
    if(z$include.colnames) {
        cat("<tr>\n")
        if(z$include.rownames) {
            cat(paste("<th style=\"border-left: ",vlines[1],
                                  "px solid black;",
                                  "background-color: ",name2rgb(z$cellcolor[1,1]),";",sep=""))
            if(printtop) cat("border-top: 2px solid gray;")
            cat(paste("border-bottom: 1px solid gray;\">&nbsp;</th>\n",sep=""))
        }
        for(i in 1:ncol(z$x)) {
                 if(z$colnames.bold) cat("<th style=\"font-weight: bold;")
                 else cat("<th style=\"font-weight: normal;")
                 cat(paste("border-left: ",vlines[i+1],"px solid black;",sep=""))
                 if((i==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                     cat(paste("border-right:",vlines[i+2],"px solid black;",sep=""))
                 cat("border-bottom: 1px solid gray;")
                 if(printtop) cat("border-top: 2px solid gray;")
                 if(z$cellcolor[1,i+1]!="white")
                     cat(paste("background-color: ",name2rgb(z$cellcolor[1,i+1]),";",sep=""))
                                  cat(paste("\">",colnames(z$x)[i],"</th>\n",sep=""))
                 if(i %in% colCount[-length(colCount)]) {
                     cat("<th style=\"border-bottom: 1px solid gray;")
                     if(printtop) cat("border-top: 2px solid gray;")
                     if((z$cellcolor[1,i+1]!="white") & (z$cellcolor[1,i+1]==z$cellcolor[1,i+2]))
                         cat("background-color: ",name2rgb(z$cellcolor[1,i+1]),";")
                     cat("\">&nbsp;</th>\n")
                 }
        }
        cat("</tr>\n")
        printtop=0
    }
    colpos=align2html(z$align)
    for(i in 1:nrow(z$x)){
        if(rgroupcount>0) {

            if(i %in% printrgroup) {
                if(is.null(z$cspan.rgroup)){
                    temp=paste("<tr>\n<td colspan=\"",totalCol,
                               "\"  align=\"left\""," style=\"font-weight: bold;",sep="")
                    if(z$colcolor[1]!="white")
                        temp=paste(temp,"background-color:",name2rgb(z$colcolor[1]),";",sep="")
                    temp=paste(temp,"\">",z$rgroup[rgroupcount],"</td>\n",sep="")
                }
                else {
                    if(z$cspan.rgroup==1) {
                        temp=paste("<tr>\n<td align=\"left\""," style=\"font-weight: bold;",sep="")
                        if(z$colcolor[1]!="white")
                            temp=paste(temp,"background-color:",name2rgb(z$colcolor[1]),";",sep="")
                        temp=paste(temp,"\">",z$rgroup[rgroupcount],"</td>\n",sep="")
                        for(j in 1:(ncount+addrow-1)){
                            if(z$colcolor[j+1]!="white")
                                temp1=paste("<td style=\"background-color:",
                                            name2rgb(z$colcolor[j+1]),"\"></td>\n",sep="")
                            else temp1="<td></td>\n"
                            temp=paste(temp,temp1,sep="")
                            if(!is.null(colCount)){
                                if(j %in% colCount[-length(colCount)]) {
                                    if((z$cellcolor[i+1,j+1]!="white")&(z$cellcolor[i+1,j+1]==z$cellcolor[i+1,j+2]))
                                        temp=paste(temp,"<td style=\"background-color: ",
                                                   name2rgb(z$cellcolor[i+1,j+1]),"\"></td>\n",
                                                   sep="")
                                    else temp=paste(temp,"<td></td>\n",sep="")
                                }
                            }
                        }
                    } else {
                        if(z$cspan.rgroup<1 | z$cspan.rgroup>(ncount+addrow))
                            z$cspan.rgroup=ncount+addrow

                        temp=paste("<tr>\n<td colspan=\"",z$cspan.rgroup,
                                   "\"  align=\"left\""," style=\"font-weight: bold;",sep="")
                        if(z$colcolor[1]!="white")
                            temp=paste(temp,"background-color:",name2rgb(z$colcolor[1]),";",sep="")
                        temp=paste(temp,"\">",z$rgroup[rgroupcount],"</td>\n",sep="")

                        if(z$cspan.rgroup<(ncount+addrow)) {
                            for(j in 1:(ncount+addrow-z$cspan.rgroup)) {
                                if(z$colcolor[z$cspan.rgroup+j]!="white")
                                    temp1=paste("<td style=\"background-color:",
                                                name2rgb(z$colcolor[j+1]),"\"></td>\n",sep="")
                                else temp1="<td></td>\n"
                                temp=paste(temp,temp1,sep="")
                                if(!is.null(colCount)){
                                    if(j %in% colCount[-length(colCount)]) {
                                        if((z$cellcolor[i+1,j+1]!="white")&(z$cellcolor[i+1,j+1]==z$cellcolor[i+1,j+2]))
                                            temp=paste(temp,"<td style=\"background-color: ",
                                                       name2rgb(z$cellcolor[i+1,j+1]),"\"></td>\n",
                                                       sep="")
                                        else temp=paste(temp,"<td></td>\n",sep="")
                                    }
                                }
                            }
                        }
                    }
                }
                cat(temp,"</tr>\n")
                rgroupcount=rgroupcount+1
            }
        }
        bcolor="white"
        #if(i %in% z$prefix.rows)
        #    if(is.numeric(z$zebra)) bcolor=z$zebra.color[i]
        #        cat("<tr style=\"background-color:",name2rgb(bcolor),"\">")
        cat("<tr>\n")
        if(z$include.rownames) {
            cat(paste("<td style=\"border-left: ",vlines[1],"px solid black; ",sep=""))
            if(i==1 & printtop) cat("border-top: 2px solid gray;")
            if(z$cellcolor[i+1,1]!="white")
                cat(paste("background-color: ",name2rgb(z$cellcolor[i+1,1]),"; ",sep=""))
            cat(paste("\">",rownames(z$x)[i],"</td>\n",sep=""))
        }
        for(j in 1:ncount) {
            cat(paste("<td align=\"",colpos[j+1],"\" style=\"border-left: ",
                      vlines[j+1],"px solid black;",sep=""))
            if((j==ncol(z$x)) & (length(vlines)>ncol(z$x)+1))
                cat(paste("border-right:",vlines[j+2],"px solid black;",sep=""))
            if(i==1 & printtop) cat("border-top: 2px solid gray;")
            if(z$cellcolor[i+1,j+1]!="white")
                cat(paste("background-color: ",name2rgb(z$cellcolor[i+1,j+1]),";",sep=""))
            cat("\">")
            cat(paste(xdata[i,j],"</td>\n",sep=""))
            if(j %in% colCount[-length(colCount)]) {
                if((z$cellcolor[i+1,j+1]!="white")&(z$cellcolor[i+1,j+1]==z$cellcolor[i+1,j+2]))
                    cat("<td style=\"background-color: ",name2rgb(z$cellcolor[i+1,j+1]),"\"></td>\n")
                else cat("<td></td>\n")
            }
        }
        cat("</tr>\n")
    }
    if((z$show.footer!=TRUE) | (is.null(attr(z$x,"footer")))) footer=""
    else footer=attr(z$x,"footer")
    cat("<tr>\n")
    cat(paste("<td colspan=\"",totalCol,
              "\" align=\"left\" style=\"font-size:",as.integer(headingsize),
              "pt ;border-top: 1px solid black;\">",footer,"</td>\n",sep=""))
    cat("</tr>\n")
    cat("</table>\n")
}

#' Print an object of ztable via rstudio::viewer
#'
#' @param z An object of ztable
ztable2viewer=function(z){
    temp.f=tempfile(fileext=".html")
    sink(temp.f)
    cat(paste("<html>",
              "<head>",
              "<meta http-equiv=\"Content-type\" content=\"text/html;charset=UTF-8\">",
              "</head>",
              "<body>",
              "<div style=\"margin: 0 auto; display: table; margin-top: 1em;\">",
              sep="\n"))
    print(z,type="html")
    cat(paste("</div>","</body>","</html>",sep="\n"))
    sink()

    viewer <- getOption("viewer")
    if (!is.null(viewer) &&
            is.function(viewer)){
        # (code to write some content to the file)
        viewer(temp.f)
    }else{
        utils::browseURL(temp.f)
    }
}
