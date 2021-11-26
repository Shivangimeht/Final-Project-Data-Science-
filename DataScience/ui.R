##Title--Data Science Project.
##Date---11/26/2021
##Author---Shivangi Mehta 

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
    fluidPage(
        titlePanel("FINAL PROJECT - DATA SCIENCE CAPSTONE - USING NLP TO PREDICT WORDS"),
        sidebarLayout(
            sidebarPanel(
                helpText("ENTER A WORD, TEXT OR A SENTENCE TO PREVIEW NEXT WORD PREDICTION"),
                hr(),
                textInput("inputText", "ENTER THE TEXT / WORD / SENTENCE HERE",value = ""),
                hr(),
                helpText("1 - AFTER THE TEXT INPUT THE PREDICT NEXT WORD WILL BE DISPLAYED.", 
                         hr(),
                         "2 - YOU HAVE TO ENTER A PARTIALLY TEXT /SENTENCE TO SHOW THE NEXT WORD PREDICTION.",
                         hr(),
                         "3 - THE FORWARD WORD IS SHOWED AT THE PREDICT NEXT WORD TEXT BOX ON THE RIGHT SIDE"),
                hr(),
                hr()
            ),
            mainPanel(
                h2("FOLLOW THE PREDICT NEXT WORD AT THIS BOX"),
                verbatimTextOutput("prediction"),
                strong("WORD / TEXT / SENTENCE ENTERED:"),
                strong(code(textOutput('sentence1'))),
                br(),
                strong("USING SEARCH AT N-GRAMS TO SHOW NEXT WORD:"),
                strong(code(textOutput('sentence2'))),
                hr(),
                hr(),
                hr(),
                img(src = 'SwiftKey_logo.png', height = 101, width = 100),
                hr(),
                hr(),
                img(src = 'coursera_logo.png', height = 122, width = 100),
                hr(),
                hr(),
                img(src = 'Bigram.png', height = 300, width = 400),
                hr(),
                hr(),
                img(src = 'unigram.png', heigth = 300, width = 400),
                hr(),
                hr(),
                img(src = 'trigram.png', heigth = 300, width = 400),
                hr()
            )
        )
    )
)