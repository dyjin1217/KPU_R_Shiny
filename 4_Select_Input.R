library(shiny)

ui <- fluidPage(
  titlePanel("Select Input"),
  selectInput("sel","과목선택",
              choices=list('프로그래밍'= c("C++","파이썬","R"),
                           '수학'= c('미적','통계','벡터'))),
  textOutput("result")
)

server <- function(input,output)
{
  output$result <- renderText({
    input$sel
  })
}

shinyApp(ui,server)
