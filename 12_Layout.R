library(shiny)

ui <- fluidPage(
  titlePanel("Hello Shiny"),
  
  sidebarLayout(
      sidebarPanel(
        textInput("a",""),
        textInput("b",""),
        actionButton("go","Go!")
      ),
      mainPanel(
        textOutput("z")
      )
  )
)


server <- function(input,output)
{
  re <- reactive({
    paste(input$a,input$b)
  })
  
  observeEvent(input$go,{
    output$z <- renderText({
      re()
    })
  })
    
}
shinyApp(ui,server)
