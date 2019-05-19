library(shiny)

ui <- fluidPage(
  titlePanel("DataTable"),
  TableOutput("result")
)

server <- function(input,output)
{
  output$result <- renderTable({
      mtcars
    }
  )
    
}
shinyApp(ui,server)
