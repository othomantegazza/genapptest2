library(shiny)


ui <- fluidPage(

    # Application title
    titlePanel("TEST - PCA on proteomic data"),

    # show a button to download the data
    sidebarLayout(
        sidebarPanel(
            downloaderButton("downloader1", "Downloader #1")
        ),
        mainPanel(
            
        )
    )
)



server <- function(input, output) {

    downloaderServer("downloader1")
}

# Run the application 
shinyApp(ui = ui, server = server)
