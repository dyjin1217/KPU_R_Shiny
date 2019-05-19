library(shiny)

ui <- fluidPage(
    textInput("a",""),
    textInput("b",""),
    actionButton("go","Go!"),
    textOutput("z")
)

server <- function(input,output)
{
  re <- reactive({
    paste(input$a,input$b)
  })
  
  observeEvent(input$go,{
    output$z <- renderText({
      re()
    })
  })
    
}
shinyApp(ui,server)
