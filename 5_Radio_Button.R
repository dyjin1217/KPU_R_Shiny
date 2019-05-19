library(shiny)

ui <- fluidPage(
  titlePanel("Radio Input"),
  radioButtons("dist","분포선택",
                choices=c("Normal" = "norm", 
                          "uniform" = "unif")),
  plotOutput("result")
)

server <- function(input,output)
{
  output$result <- renderPlot({
    d <- switch(input$dist,"norm"=rnorm,"unif"=runif)
    hist(d(300))
    }
  )
    
}

shinyApp(ui,server)
