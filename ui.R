library(shiny)

ui <- fluidPage(
  
  titlePanel("Auto-export allow layer list app"),
  
  sidebarLayout(
    
    sidebarPanel(
	
	
	  textInput("text1", "what's ur Tech Variant?", value = "22FDX"),
      
      fileInput("file1", "(1) Pls input 22FDX's LPO***.csv -> ALL",
                multiple = TRUE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),

##code HTML in shiny
##https://shiny.rstudio.com/articles/tag-glossary.html

tags$a(href="https://text-compare.com/", "(2) Suggest to check text_diff"),
## <a href="www.rstudio.com">Click here!</a>

tags$br(),
tags$br(),

tags$a(href="https://drive.google.com/open?id=1MKb-9hGF7S4KKJ16Cv54CuJrdXpNd_6G", "(3) Upload to google drive"),

tags$br(),
tags$br(),

tags$code("This text will be displayed as computer code."),
## <code>This text will be displayed as computer code.</code>

tags$br(),
tags$br(),

#https://shiny.rstudio.com/articles/tag-glossary.html
tags$img(src='myImage.png', align = "left"),

tags$br(),
tags$br(),

tags$video(src = "1005v2.mov", type = "video/mov", autoplay = NA, controls = NA, width = 700, height = 500),
## <video src="video.mp4" type="video/mp4" autoplay controls></video>

tags$br(),
tags$br(),

            downloadButton("downloadData", "Download")
    ),
    
    mainPanel(
      
      tableOutput("DRC_grep")
      
    )
    
  )
)
####################################################end
####################################################end
#must below command separately
##runApp()
####################################################end
####################################################end
#Deploying applications
#http://docs.rstudio.com/shinyapps.io/getting-started.html#deploying-applications
#rsconnect::setAccountInfo(name='hch1', token='41CC9A84435E2E7CAE08CE65D932569D', secret='mEv+SQx+ACmrHLfl1qbGFdH/cc9EQj7lP8fymw3x')

##library(rsconnect)
##deployApp()
####################################################end
####################################################end
