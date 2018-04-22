library(shiny)

string="This is string"
excolors=c("platinum","pink","yellow","orange","lightcyan","white")
# Define UI for random distribution application
shinyUI(fluidPage(

  # Application title
  titlePanel("Demonstration of ztable"),

  # Sidebar with controls to select the independent variable
  # and options of plot to generate. Note the use of the
  # br() element to introduce extra vertical spacing
  sidebarLayout(
      sidebarPanel(
  tabsetPanel(id="Tabset",
                tabPanel("Data",
                         br(),
                         radioButtons("data", "Select Data and Click the Button:",
                                      c("iris" = 1, "mtcars" = 2,
                                        "lm" = 3, "aov" = 4,"anova"=5 ,"another anova"=6,
                                        "glm" = 7,"another anova"=8,"prcomp"=9,
                                        "summary.prcomp"=10,"non-linear least squre"=11)),
                         br(),
                         sliderInput("size",
                                     "Select Font Size:",
                                     min = 1,
                                     max = 10,
                                     value = 5),
                         checkboxInput("colname",label="show column names",value=TRUE),
                         checkboxInput("rowname",label="show row names",value=TRUE)

                ),
                tabPanel("Caption",
                         br(),
                         textInput("caption","Caption: ","Table 1. This is a demonstration of ztable"),
                         radioButtons("caption.placement", "Caption Placement: ",
                                      c("top" = "top", "bottom"="bottom")),
                         radioButtons("caption.position", "Caption Position: ",
                                      c("left" = "l", "center"="c","right"="r"))

                ),
                tabPanel("addColColor",
                         br(),
                         selectInput('cols','Columns',1:10,multiple=TRUE,selectize=TRUE),
                         selectInput("color","Color",excolors,selectize=TRUE)
                ),
                tabPanel("addRowColor",
                       br(),
                       selectInput('rows','Rows',1:10,multiple=TRUE,selectize=TRUE),
                       selectInput("rowcolor","Color",excolors,selectize=TRUE)
                ),
                tabPanel("addCellColor",
                       br(),
                       selectInput('crows','Rows',1:10,multiple=TRUE,selectize=TRUE),
                       selectInput('ccols','Columns',1:10,multiple=TRUE,selectize=TRUE),
                       selectInput("ccolor","Color",excolors,selectize=TRUE)
                ),
              tabPanel("addFrontColor",
                       br(),
                       selectInput('frows','Rows',1:10,multiple=TRUE,selectize=TRUE),
                       selectInput('fcols','Columns',1:10,multiple=TRUE,selectize=TRUE),
                       selectInput("fcolor","Color",excolors,selectize=TRUE)
              ),
                tabPanel("addcgroup",
                       br(),
                       textInput('cgroup','cgroup',"Group A,Group B"),
                       textInput('n.cgroup','n.cgroup',"2,3"),
                       checkboxInput("addcgroup","addcgroup",value=FALSE)
                ),
                tabPanel("addrgroup",
                       br(),
                       textInput('rgroup','rgroup',"OneTwo,ThreeFour"),
                       textInput('n.rgroup','n.rgroup',"2,2"),
                       numericInput('cspan.rgroup','cspan.rgroup',1),
                       checkboxInput("addrgroup","addrgroup",value=FALSE)
                ),
                tabPanel("spanCol",
                       br(),
                       selectInput('spanColRow','Select Row',2:5),
                       sliderInput("spanCol","Select Column Range",min=2,max=5,value=c(2,2)),
                       selectInput("spanColColor","Select Color",excolors,selectize=TRUE)
                ),
                tabPanel("spanRow",
                       br(),
                       selectInput('spanRowCol','Select Column',2:5),
                       sliderInput("spanRow","Select Row Range",min=2,max=5,value=c(2,2)),
                       selectInput("spanRowColor","Select Color",excolors,selectize=TRUE)
                ),
                tabPanel("vlines",
                       br(),
                       checkboxInput('vltype','add all vertical lines:',value=FALSE),
                       selectInput("vladd","add:",1:5,multiple=TRUE,selectize=TRUE),
                       selectInput("vldel","del:",1:5,multiple=TRUE,selectize=TRUE)
                ),
                tabPanel("hlines",
                       br(),
                       checkboxInput('hltype','add all horizontal lines:',value=FALSE),
                       selectInput("hladd","add:",1:5,multiple=TRUE,selectize=TRUE),
                       selectInput("hldel","del:",1:5,multiple=TRUE,selectize=TRUE)
                )
    )),
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    mainPanel(
        radioButtons('format', 'Export report format:', c('PDF', 'HTML'),
                     inline = TRUE),
        checkboxGroupInput("latexOption",
                           "LaTex Option:",
                           c("longtable" = "1",
                             "sidewaystable" = "2")),
        downloadButton('downloadReport'),
        hr(),
        verbatimTextOutput('a_out'),
        htmlOutput("overview")

      )
    )
  )
)

