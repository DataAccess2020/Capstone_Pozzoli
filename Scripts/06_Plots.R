
# I create some plots to show the frequenncy distribution of tweets 

library(ggplot2)
library(scales)

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_iran)) +
  geom_col(alpha=0.8, fill="pink") +
  ylab("Tweets about Iran") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Iran for each party") +
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw() 

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_ucraina)) +
  geom_col(alpha=0.5, fill="blue") +
  ylab("Tweets about Ukraine") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Ukraine for each party") +
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw() 

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_qatar)) +
  geom_col(alpha=0.8, fill="green") +
  ylab("Tweets about Qatar") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Qatar for each party") +
  scale_x_discrete(labels = label_wrap(10))  + 
  theme_bw()  

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_energia)) +
  geom_col(alpha=0.8, fill="red") +
  ylab("Tweets about Energetic crisis") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Energy crisis for each party") +
  scale_x_discrete(labels = label_wrap(10)) + 
  theme_bw()
