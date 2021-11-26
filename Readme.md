Final Data Science Project Presentation.md
========================================================
author: Shivangi Mehta 
date: 11/26/2021

Slide Index 

- Introduction
- Project Summary
- Algorithm used to make prediction
- Application Function



**Introduction**
========================================================

The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. For this project you must submit:

A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.

A slide deck consisting of no more than 5 slides created with R Studio Presenter (https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations) pitching your algorithm and app as if you were presenting to your boss or an investor.

**Project Summary**
========================================================

1.Load all require library and packages for this project including NLP.

2.Download coursera Data, Badwords data to clean profanity words and build ngrams by using sample data. 

3.Create Plot to check word Frequency for unigram, bigram, Trigram.

4.Run frequency data for quadgram to determined word usage in this application. 

5.Use Algorithm method to develop application.

**Algorithm used to make prediction**
=========================================================

1.Use function method to determined predict word.

2.Remove punctuation.

```{r}
## Function predicting the next word
predictWord <- function(the_word) {
    word_add <- stripWhitespace(removeNumbers(removePunctuation(tolower(the_word),preserve_intra_word_dashes = TRUE)))
    # testing print("word_add")
    the_word <- strsplit(word_add, " ")[[1]]
    # testing print("the_word")
    n <- length(the_word)
    # testing print(n)
    
    ########### check Bigram
    if (n == 1) {the_word <- as.character(tail(the_word,1)); functionBigram(the_word)}
    
    ################ check trigram
    else if (n == 2) {the_word <- as.character(tail(the_word,2)); functionTrigram(the_word)}
    
    ############### check quadgram
    else if (n >= 3) {the_word <- as.character(tail(the_word,3)); functionQuadgram(the_word)}
}
```


**Application function**
=========================================================

1. Enter any word or text in the input box.

2. The result will show next prediction word. If there is no prediction word available then the result will show "it".

3. Unigram,Bigram, trigram plot are uploaded in the application for user help.

4. The shiny application website address:--- http://127.0.0.1:3600/

Rpubs link === https://rpubs.com/Shivangi_Mehta/840230

**Thank you**


