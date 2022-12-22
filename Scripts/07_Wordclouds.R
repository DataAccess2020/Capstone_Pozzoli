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

# Forza italia 

clean_FI <- Corpus(VectorSource(FI_tweets$full_text))

clean_FI <- clean_FI %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_FI <- tm_map(clean_FI, content_transformer(tolower))
clean_FI <- tm_map(clean_FI, removeWords, stopwords("italian"))

matrix_FI <- TermDocumentMatrix(clean_FI) 
matrix_FI <- as.matrix(matrix_FI) 
words <- sort(rowSums(matrix_FI),decreasing=TRUE) 
df_FI <- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_FI, size=0.4, color='random-dark')

#Italia viva

clean_IV <- Corpus(VectorSource(IV_tweets$full_text))

clean_IV <- clean_IV %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_IV <- tm_map(clean_IV, content_transformer(tolower))
clean_IV <- tm_map(clean_IV, removeWords, stopwords("italian"))

matrix_IV <- TermDocumentMatrix(clean_IV) 
matrix_IV <- as.matrix(matrix_IV) 
words <- sort(rowSums(matrix_IV),decreasing=TRUE) 
df_IV <- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_IV, size=0.4, color='random-dark')

