library(shiny)

ui <- fluidPage(
  titlePanel("Numeric Input"),
  numericInput("myText","Num",10),
  textOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
    input$myText
  })
}

shinyApp(ui,server)
  