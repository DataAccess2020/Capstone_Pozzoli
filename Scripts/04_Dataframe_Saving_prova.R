
# Now I save the data frame inside the folder Output_Dataframe

tweets_Azione2 <- sapply(tweets_Azione, as.character)
write.csv(tweets_Azione2, "Azione_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FDI2 <- sapply(tweets_FDI, as.character)
write.csv(tweets_FDI2, "FDI_tweets.csv", row.names = F, fileEncoding = "UTF-8")



