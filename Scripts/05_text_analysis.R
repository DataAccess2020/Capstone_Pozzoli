
#I create a regular expression for each topic of interest in order to analyze 
# the frequency of tweets for each party 

regex_iran<- "([I|i]ran)|([M|m]ahsa [A|a]mini)"
regex_ukr <- "([U|u]craina)|([Z|z]elensky)|([K|k]iev)|([P|p]utin)"
regex_qatar <- "([Q|q]atar gate)|([K|k]aili)|([P|p]anzeri)|([G|g]iorgi)"
regex_ce <- "(caro energia)|(caro bollette)|(prezzo del gas)|(transizione energetica)"

#I use the regular expressions to see how many times each party tweets about a 
#certain topic 

sum(str_count(Azione_tweets$full_text, pattern = regex_iran)) 
sum(str_count(Azione_tweets$full_text, pattern = regex_ukr))
sum(str_count(Azione_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(Azione_tweets$full_text, pattern = regex_ce)) 

sum(str_count(FDI_tweets$full_text, pattern = regex_iran)) 
sum(str_count(FDI_tweets$full_text, pattern = regex_ukr))
sum(str_count(FDI_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(FDI_tweets$full_text, pattern = regex_ce))

sum(str_count(FI_tweets$full_text, pattern = regex_iran)) 
sum(str_count(FI_tweets$full_text, pattern = regex_ukr))
sum(str_count(FI_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(FI_tweets$full_text, pattern = regex_ce))

sum(str_count(IV_tweets$full_text, pattern = regex_iran)) 
sum(str_count(IV_tweets$full_text, pattern = regex_ukr))
sum(str_count(IV_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(IV_tweets$full_text, pattern = regex_ce))

sum(str_count(lega_tweets$full_text, pattern = regex_iran)) 
sum(str_count(lega_tweets$full_text, pattern = regex_ukr))
sum(str_count(lega_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(lega_tweets$full_text, pattern = regex_ce))

sum(str_count(M5S_tweets$full_text, pattern = regex_iran)) 
sum(str_count(M5S_tweets$full_text, pattern = regex_ukr))
sum(str_count(M5S_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(M5S_tweets$full_text, pattern = regex_ce))

sum(str_count(PD_tweets$full_text, pattern = regex_iran)) 
sum(str_count(PD_tweets$full_text, pattern = regex_ukr))
sum(str_count(PD_tweets$full_text, pattern = regex_qatar)) 
sum(str_count(PD_tweets$full_text, pattern = regex_ce))

# I create a data frame containing all the information that I have obtained

Parties <- c ("Azione", "Fratelli d'Italia", "Forza Italia", "Italia Viva", 
              "Lega", "Movimento 5 Stelle", "Partito democratico")

tweets_iran <- c("47", "80", "31", "34", "23", "27", "47")

tweets_ucraina <- c("259", "67", "119", "116", "39", "57", "594")

tweets_qatar <- c("155", "668", "161", "81", "40", "83", "131")

tweets_energia <- c("28", "27", "21", "15", "36", "37", "27")

tweets_frequency <- data.frame(Parties, tweets_iran, 
                               tweets_ucraina, tweets_qatar, tweets_energia)

# I save the data frame 

write.csv(tweets_frequency, "tweets_frequency.csv", 
          row.names = F, fileEncoding = "UTF-8")



