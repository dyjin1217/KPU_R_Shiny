library(shiny)

ui <- fluidPage(
  titlePanel("Radio Input"),
  checkboxGroupInput("subj",
                    label = "��ȣ�ϴ� ���α׷��� ����?",
                    choices=c("C++","���̽�","R")),
  verbatimTextOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
      input$subj
    }
  )
    
}

shinyApp(ui,server)