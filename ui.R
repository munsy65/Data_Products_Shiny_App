library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(
  
  
  titlePanel("Miles Per Gallon"),
  
 
  
  # Sidebar with controls to select the variable to plot against
  # mpg and button to view changes.
  sidebarLayout(
    sidebarPanel(
      
       
      
      helpText("Choose your varible and click on Update Plot to view results."),
      
      selectInput("variable", "Variable:",
                  c("Cylinders" = "cyl",
                    "Transmission" = "am",
                    "Carbs" = "carb",
                    "Gears" = "gear")),
      
  
      submitButton("Update Plot")
      
    ),
    
   
      
    
	 # Show the caption and plot of the requested variable against
	 # mpg
    mainPanel(
      tabsetPanel(
        tabPanel("Plot",h4("Formula:"),
                 h3(textOutput("caption")),plotOutput("mpgPlot")),
        tabPanel("Documentation",includeMarkdown("documentation.Rmd"))
      
      
      )
      
    )
  )
))