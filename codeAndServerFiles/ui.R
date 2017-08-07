
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#


shinyUI(fluidPage(
  
  
  
  titlePanel(title = h4("PD-L1 Dataset", align="center")),
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      selectInput("var", "1. Select the variable from the PD-L1 dataset", choices =c("Isotype Control" = 1, "IFN Negative" = 2, "IFN Positive" = 3), selected = 1),
      br(),
      sliderInput("bins", "2. Select the number of BINs for histogram", min=0, max = 10, value=10),
      br(), 
      radioButtons("color", "3. Select the color of histogram", choices=c("Green", "Red", "Yellow"), selected ="Green")
      
    ),
    
    # Main Panel
    mainPanel(
      tabsetPanel(type="tab", 
                  tabPanel("Plot", plotOutput("myhist")),
                                    tabPanel("Data", tableOutput("data"))
                  
                  
      )
      
    )
    
  )
)  
)