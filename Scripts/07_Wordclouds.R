library(RColorBrewer)
library(tm)
library(stopwords)
library(tidytext)
library(stringr)
library(stylo)


# Before creating the word cloud it's necessary to clean the text 

Azione <- as.character(Azione_tweets$full_text)
Azione<- str_replace_all(Azione_tweets$full_text, "[\'’]", "' ")
Azione<- gsub("\\$", "", Azione_tweets$full_text) 
Azione <- gsub("@\\w+", "", Azione_tweets$full_text)
Azione <- gsub("[[:punct:]]","", Azione_tweets$full_text)
Azione <- gsub("http\\w+", "", Azione_tweets$full_text)
Azione <- gsub("[ |\t]{2,}", "", Azione_tweets$full_text)
Azione <- gsub("^ ", "", Azione_tweets$full_text)
Azione <- gsub(" $", "", Azione_tweets$full_text)
Azione <- gsub("href", "", Azione_tweets$full_text)
Azione <- gsub("([0-9])","", Azione_tweets$full_text)


stop_words_ita<-tibble(word=stopwords("it"))

tokens_Azione <- tibble(text = Azione) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_Azione_save<-sapply(tokens_Azione, as.character)

clean_Azione <- Corpus(VectorSource(tokens_Azione_save))

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

wordcloud2(data=df_Azione, size=1, shuffle = F, color='random-dark')


#Fratelli d'Italia 

FDI <- as.character(FDI_tweets$full_text)
FDI<- str_replace_all(FDI_tweets$full_text, "[\'’]", "' ")
FDI<- gsub("\\$", "", FDI_tweets$full_text) 
FDI <- gsub("@\\w+", "", FDI_tweets$full_text)
FDI <- gsub("[[:punct:]]","", FDI_tweets$full_text)
FDI <- gsub("http\\w+", "", FDI_tweets$full_text)
FDI <- gsub("[ |\t]{2,}", "", FDI_tweets$full_text)
FDI <- gsub("^ ", "", FDI_tweets$full_text)
FDI <- gsub(" $", "", FDI_tweets$full_text)
FDI <- gsub("href", "", FDI_tweets$full_text)
FDI <- gsub("([0-9])","", FDI_tweets$full_text)

tokens_FDI <- tibble(text = FDI) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_FDI_save<-sapply(tokens_FDI, as.character)

clean_FDI <- Corpus(VectorSource(tokens_FDI_save))

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

wordcloud2(data=df_FDI, size=0.5, color='random-dark')

# Forza italia 

FI <- as.character(FI_tweets$full_text)
FI<- str_replace_all(FI_tweets$full_text, "[\'’]", "' ")
FI<- gsub("\\$", "", FI_tweets$full_text) 
FI <- gsub("@\\w+", "", FI_tweets$full_text)
FI <- gsub("[[:punct:]]","", FI_tweets$full_text)
FI <- gsub("http\\w+", "", FI_tweets$full_text)
FI <- gsub("[ |\t]{2,}", "", FI_tweets$full_text)
FI<- gsub("^ ", "", FI_tweets$full_text)
FI <- gsub(" $", "", FI_tweets$full_text)
FI <- gsub("href", "", FI_tweets$full_text)
FI <- gsub("([0-9])","", FI_tweets$full_text)

tokens_FI <- tibble(text = FI) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_FI_save<-sapply(tokens_FI, as.character)

clean_FI <- Corpus(VectorSource(tokens_FI_save))

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

wordcloud2(data=df_FI, size=0.8, color='random-dark')

#Italia viva

IV <- as.character(IV_tweets$full_text)
IV<- str_replace_all(IV_tweets$full_text, "[\'’]", "' ")
IV<- gsub("\\$", "", IV_tweets$full_text) 
IV <- gsub("@\\w+", "", IV_tweets$full_text)
IV <- gsub("[[:punct:]]","", IV_tweets$full_text)
IV <- gsub("http\\w+", "", IV_tweets$full_text)
IV <- gsub("[ |\t]{2,}", "", IV_tweets$full_text)
IV<- gsub("^ ", "", IV_tweets$full_text)
IV <- gsub(" $", "", IV_tweets$full_text)
IV <- gsub("href", "", IV_tweets$full_text)
IV <- gsub("([0-9])","", IV_tweets$full_text)

tokens_IV <- tibble(text = IV) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_IV_save<-sapply(tokens_IV, as.character)

clean_IV <- Corpus(VectorSource(tokens_IV_save))

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

wordcloud2(data=df_IV, size=0.7, color='random-dark')

#lega 

lega <- as.character(lega_tweets$full_text)
lega <- str_replace_all(lega_tweets$full_text, "[\'’]", "' ")
lega <- gsub("\\$", "", lega_tweets$full_text) 
lega <- gsub("@\\w+", "", lega_tweets$full_text)
lega <- gsub("[[:punct:]]","", lega_tweets$full_text)
lega <- gsub("http\\w+", "", lega_tweets$full_text)
lega <- gsub("[ |\t]{2,}", "", lega_tweets$full_text)
lega <- gsub("^ ", "", lega_tweets$full_text)
lega <- gsub(" $", "", lega_tweets$full_text)
lega <- gsub("href", "", lega_tweets$full_text)
lega <- gsub("([0-9])","", lega_tweets$full_text)

tokens_lega <- tibble(text = lega) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_lega_save<-sapply(tokens_lega, as.character)

clean_lega <- Corpus(VectorSource(tokens_lega_save))

clean_lega <- clean_lega %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_lega <- tm_map(clean_lega, content_transformer(tolower))
clean_lega <- tm_map(clean_lega, removeWords, stopwords("italian"))

matrix_lega <- TermDocumentMatrix(clean_lega) 
matrix_lega <- as.matrix(matrix_lega) 
words <- sort(rowSums(matrix_lega),decreasing=TRUE) 
df_lega<- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_lega, size= 0.8, color='random-dark')

#Movimento 5 stelle

M5S <- as.character(M5S_tweets$full_text)
M5S<- str_replace_all(M5S_tweets$full_text, "[\'’]", "' ")
M5S<- gsub("\\$", "", M5S_tweets$full_text) 
M5S <- gsub("@\\w+", "", M5S_tweets$full_text)
M5S<- gsub("[[:punct:]]","", M5S_tweets$full_text)
M5S <- gsub("http\\w+", "", M5S_tweets$full_text)
M5S <- gsub("[ |\t]{2,}", "", M5S_tweets$full_text)
M5S <- gsub("^ ", "", M5S_tweets$full_text)
M5S <- gsub(" $", "", M5S_tweets$full_text)
M5S <- gsub("href", "", M5S_tweets$full_text)
M5S <- gsub("([0-9])","", M5S_tweets$full_text)

tokens_M5S <- tibble(text = M5S) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_M5S_save<-sapply(tokens_M5S, as.character)

clean_M5S <- Corpus(VectorSource(tokens_M5S_save))

clean_M5S<- clean_M5S %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_M5S <- tm_map(clean_M5S, content_transformer(tolower))
clean_M5S <- tm_map(clean_M5S, removeWords, stopwords("italian"))

matrix_M5S <- TermDocumentMatrix(clean_M5S) 
matrix_M5S <- as.matrix(matrix_M5S) 
words <- sort(rowSums(matrix_M5S),decreasing=TRUE) 
df_M5S <- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_M5S, size=0.8, color='random-dark')

# Partito Democratico 

PD <- as.character(PD_tweets$full_text)
PD<- str_replace_all(PD_tweets$full_text, "[\'’]", "' ")
PD<- gsub("\\$", "", PD_tweets$full_text) 
PD <- gsub("@\\w+", "", PD_tweets$full_text)
PD <- gsub("[[:punct:]]","", PD_tweets$full_text)
PD <- gsub("http\\w+", "", PD_tweets$full_text)
PD <- gsub("[ |\t]{2,}", "", PD_tweets$full_text)
PD<- gsub("^ ", "", PD_tweets$full_text)
PD <- gsub(" $", "", PD_tweets$full_text)
PD <- gsub("href", "", PD_tweets$full_text)
PD <- gsub("([0-9])","", PD_tweets$full_text)

tokens_PD <- tibble(text = PD) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

tokens_PD_save<-sapply(tokens_PD, as.character)

clean_PD <- Corpus(VectorSource(tokens_PD_save))

clean_PD <- clean_PD %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
clean_PD <- tm_map(clean_PD, content_transformer(tolower))
clean_PD <- tm_map(clean_PD, removeWords, stopwords("italian"))

matrix_PD <- TermDocumentMatrix(clean_PD) 
matrix_PD <- as.matrix(matrix_PD) 
words <- sort(rowSums(matrix_PD),decreasing=TRUE) 
df_PD <- data.frame(word = names(words),freq=words) 

wordcloud2(data=df_PD, size=0.8, color='random-dark')

