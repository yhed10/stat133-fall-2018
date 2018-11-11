#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Drawing Balls Experiment"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("repetitions",
                  "Number of repetitions:",
                  min = 1,
                  max = 5000,
                  value = 100),
      sliderInput("pb",
                  "Threshold for choosing boxes:",
                  min = 0,
                  max = 1,
                  value = 0.5),
      numericInput("sd",
                  label = "Choose a random seed",
                  value = 12345)
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    box1 <- c('blue','blue','red')
    box2 <- c('blue','blue',rep('red',3),'white')
    boxs <- c('box1', 'box2')
    
    drawn_balls <- matrix(NA, nrow = input$repetitions, ncol = 4 )
    
   set.seed(input$sd)
    
    for (j in 1: 4)
      for(i in 1:input$repetitions)
      {
        if (runif(1) > input$pb){
          drawn_balls[i, j] <- sample(box1, size = 4, replace = TRUE)[j]
        }
        else {
          drawn_balls[i, j] <- sample(box2, size = 4, replace = TRUE)[j]
        }
      }
    numbers <- c()
    
    for(i in 1: input$repetitions){
      
      
      num_TF <- drawn_balls[i,] == 'blue'
      
      numbers[i] <- length(num_TF[num_TF == TRUE])
    }
    dat <- as.data.frame(numbers)
    
    dat$reps <- 1: input$repetitions
    
    dat$freqs <- c()
    
    for (i in 1:length(dat$reps)){
      
      dnumber <- dat$number[1:i]
      
      dat$freqs[i] = length(dnumber[dnumber == dat$number[i]])/i
      
    }
    number <- as.factor(numbers)
    ggplot(dat, aes(x = reps, y = freqs, group = number, color = number)) + geom_line()+ scale_color_manual(values = c("red", "yellow", "green", "blue", "purple")) + ggtitle("Relative frequencies of number of blue balls")
    
  })
}

shinyApp(ui = ui, server = server)

