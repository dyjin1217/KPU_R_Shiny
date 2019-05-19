library(shiny)

ui <- fluidPage(
  titlePanel("Hello World"),
  textInput("myText","�ؽ�Ʈ�� �Է��ϼ���"),
  textOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
    input$myText
  })
}

shinyApp(ui,server)
  