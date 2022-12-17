
# Now I save the data frame inside the folder outputs_Dataframe

tweets_Azione2 <- apply(tweets_Azione, 2, as.character)
write.csv(tweets_Azione2, "Azione_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FDI2 <- apply(tweets_FDI, 2, as.character)
write.csv(tweets_FDI2, "FDI_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FI2 <- apply(tweets_FI, 2, as.character)
write.csv(tweets_FI2, "FI_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_IV2 <- apply(tweets_IV, 2, as.character)
write.csv(tweets_IV2, "IV_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_lega2 <- apply(tweets_lega, 2, as.character)
write.csv(tweets_lega2, "lega_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_M5S2 <- apply(tweets_M5S, 2, as.character)
write.csv(tweets_M5S2, "M5S_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_PD2 <- apply(tweets_PD, 2, as.character)
write.csv(tweets_PD2, "PD_tweets.csv", row.names = F, fileEncoding = "UTF-8")


