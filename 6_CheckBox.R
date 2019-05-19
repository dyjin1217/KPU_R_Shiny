library(shiny)

ui <- fluidPage(
  titlePanel("Radio Input"),
  checkboxGroupInput("subj",
                    label = "선호하는 프로그래밍 언어는?",
                    choices=c("C++","파이썬","R")),
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
