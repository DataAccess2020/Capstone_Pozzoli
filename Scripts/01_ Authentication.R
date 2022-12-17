
# The first thing that is required is the authentication to the Twitter API 

library(rtweet)
library(tidyverse)
library(jsonlite)

aut1 <- rtweet_app()
auth_save(aut1, "Cristinap")

auth_as("Cristinap")

aut_token <- rtweet_app(token)

#second method

auth_setup_default()
