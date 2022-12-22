library(RColorBrewer)
library(tm)

#Clean the text eliminating the useless words 
clean_Azione <- Corpus(VectorSource(Azione_tweets$full_text))

clean_Azione <- clean_Azione %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_Azione <- tm_map(clean_Azione, content_transformer(tolower))
clean_Azione <- tm_map(clean_Azione, removeWords, stopwords("italian"))

matrix_Azione <- TermDocumentMatrix(clean_Azione) 
matrix_Azione <- as.matrix(matrix_Azione) 
words <- sort(rowSums(matrix_Azione),decreasing=TRUE) 
df_Azione <- data.frame(word = names(words),freq=words) 

#create the wordcloud 
library(wordcloud2)
library(wordcloud)

wordcloud2(data=df_Azione, size=0.4, color='random-dark')

#Fratelli d'Italia 
clean_FDI <- Corpus(VectorSource(FDI_tweets$full_text))

clean_FDI <- clean_FDI %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_FDI <- tm_map(clean_FDI, content_transformer(tolower))
clean_FDI <- tm_map(clean_FDI, removeWords, stopwords("italian"))

matrix_FDI <- TermDocumentMatrix(clean_FDI) 
matrix_FDI <- as.matrix(matrix_FDI) 
words <- sort(rowSums(matrix_FDI),decreasing=TRUE) 
df_FDI <- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_FDI, size=0.4, color='random-dark')

