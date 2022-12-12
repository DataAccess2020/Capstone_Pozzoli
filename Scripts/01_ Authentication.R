
# The first thing that is required is the authentication to the Twitter API 

library(rtweet)
library(tidyverse)
library(jsonlite)

auth <- rtweet_app()
auth_save(auth, "CP")

#second method

auth_setup_default()
