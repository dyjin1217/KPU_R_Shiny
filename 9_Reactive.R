library(shiny)

ui <- fluidPage(
    textInput("a",""),
    textInput("b",""),
    textOutput("z")
)

server <- function(input,output)
{
  re <- reactive({
    paste(input$a,input$b)
  })
  
  output$z <- renderText({
    re()
  })
    
}
shinyApp(ui,server)
