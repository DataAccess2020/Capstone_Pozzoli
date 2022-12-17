
# Now I save the data frame inside the folder outputs_Dataframe

tweets_Azione2 <- apply(tweets_Azione, 2, as.character)
write.csv(tweets_Azione2, "Azione_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FDI2 <- apply(tweets_FDI, 2, as.character)
write.csv(tweets_FDI2, "FDI_tweets.csv", row.names = F, fileEncoding = "UTF-8")


