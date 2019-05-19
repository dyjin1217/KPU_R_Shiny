library(shiny)

ui <- fluidPage(
  titlePanel("Hello World"),
  textInput("myText","텍스트를 입력하세요"),
  textOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
    input$myText
  })
}

shinyApp(ui,server)
  