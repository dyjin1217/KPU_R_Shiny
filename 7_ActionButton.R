library(shiny)

ui <- fluidPage(
  titlePanel("SliderInput and Action Button"),
  sliderInput("si","# of obs",min=0,max=1000,value=10,step = 100),
  actionButton("goBtn","Go!"),
  plotOutput("result")
)

server <- function(input,output)
{
  output$result <- renderPlot({
      
      # Take a dependency on input$goBtn
      input$goBtn
    
      print(input$goBtn)
      
      #dist <- isolate(rnorm(input$si))
      dist <- isolate(rnorm(input$si))
      hist(dist) 
    }
  )
    
}

shinyApp(ui,server)
