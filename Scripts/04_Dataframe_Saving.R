
# Now I save the data frame inside the folder Output_Dataframe

tweets_Azione2 <- sapply(tweets_Azione, as.character)
write.csv(tweets_Azione2, "Azione_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FDI2 <- sapply(tweets_FDI, as.character)
write.csv(tweets_FDI2, "FDI_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_FI2 <- sapply(tweets_FI, as.character)
write.csv(tweets_FI2, "FI_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_IV2 <- sapply(tweets_IV, as.character)
write.csv(tweets_IV2, "IV_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_lega2 <- sapply(tweets_lega, as.character)
write.csv(tweets_lega2, "lega_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_M5S2 <- sapply(tweets_M5S, as.character)
write.csv(tweets_M5S2, "M5S_tweets.csv", row.names = F, fileEncoding = "UTF-8")

tweets_PD2 <- sapply(tweets_PD, as.character)
write.csv(tweets_PD2, "PD_tweets.csv", row.names = F, fileEncoding = "UTF-8")

#I have used the function 'sapply' and not the function 'apply' because with 
# the latter the creation dates were saved as codes 


