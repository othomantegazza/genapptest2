library(shiny)

downloaderButton <- function(id, label = "Downloader") {
  ns <- NS(id)
  tagList(
    actionButton(ns("button"), label = label),
    textOutput(ns("out"))
  )
}

downloaderServer <- function(id) {
  moduleServer(
    id,
    function(input, output, session) {
      observeEvent(input$button, {
        dat_url <- paste0('https://raw.githubusercontent.com/bigomics/',
                          'omicsplayground/master/ext/arginine/proteinGroups.txt')
         dat <- readr::read_delim(dat_url, 
                                  delim = '\t')
         
         output$out <- renderText({
           "Well done captain! We have the data."
         })
      })

    }
  )
}


