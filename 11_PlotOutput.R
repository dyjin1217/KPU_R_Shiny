library(shiny)
#library(ggplot2)
#library(plotly)

ui <- fluidPage(
  titlePanel("plotOutput"),
  plotOutput("result")
  #plotlyOutput("result")
)

server <- function(input,output)
{
  
  output$result <- renderPlot({
  #output$result <- renderPlotly({
    plot(mtcars$wt,mtcars$mpg)
    
    #ggplot
    #ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5)
    #p + geom_violin(scale = "width")
    
    #plotly
    #p <- plot_ly(mtcars, x = ~wt, type = 'scatter')
  })
    
}
shinyApp(ui,server)
