
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
data(pdl2)
shinyServer(
  
  function(input, output) {
    
    output$data <- renderTable({
      colm <- as.numeric(input$var)
      pdl2[colm]
      # head(pdl2)
      
    })
    
    output$myhist <- renderPlot({
      colm <- as.numeric(input$var)
      hist(pdl2[,colm], breaks=seq(0, max(pdl2[,colm]), l=input$bins+1), col=input$color, main="Histogram of PD-L1 Positive Cells", xlab=names(pdl2[colm]), xlim=c(0,max(pdl2[,colm])))
      
    })
    
  }
)
