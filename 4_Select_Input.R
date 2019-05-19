library(shiny)

ui <- fluidPage(
  titlePanel("Select Input"),
  selectInput("sel","������",
              choices=list('���α׷���'= c("C++","���̽�","R"),
                           '����'= c('����','���','����'))),
  textOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
    input$sel
  })
}

shinyApp(ui,server)