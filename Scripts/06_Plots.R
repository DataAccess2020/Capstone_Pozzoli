
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

# To compare the different plots I try to have the proportions in the place of 
# the absolute frequencies on the y axis. I also save them as images. 

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_iran)/sum(tweets_iran)))+
  geom_col(alpha=0.8, fill="pink") +
  ylab("Tweets about Iran") +
  xlab("Parties") +
  ggtitle("Distribution of tweets about Iran for each party") +
  scale_y_continuous(labels = scales::percent)+
  scale_x_discrete(labels = label_wrap(10)) +
  theme_bw() +
  ggsave("Iran_tweets_distribution.jpeg")


tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_ucraina)/sum(tweets_ucraina)))+
  geom_col(alpha=0.5, fill="blue") +
  ylab("Tweets about Ukraine") +
  xlab("Parties") +
  ggtitle("Distribution of tweets about Ukraine for each party") +
  scale_y_continuous(labels = scales::percent)+
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw() +
  ggsave("Ukraine_tweets_distribution.jpeg")
  

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_qatar)/sum(tweets_qatar))) +
  geom_col(alpha=0.8, fill="green") +
  ylab("Tweets about Qatar") +
  xlab("Parties") +
  ggtitle("Distribution of tweets about Qatar for each party") +
  scale_x_discrete(labels = label_wrap(10))  + 
  scale_y_continuous(labels = scales::percent) +
  theme_bw() +
  ggsave("Qatar_tweets_distribution.jpeg")
  
tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_energia)/sum(tweets_energia))) +
  geom_col(alpha=0.8, fill="red") +
  ylab("Tweets about Energetic crisis") +
  xlab("Parties") +
  ggtitle("Distribution of tweets about Energy crisis for each party") +
  scale_y_continuous(labels = scales::percent) +
  scale_x_discrete(labels = label_wrap(10)) + 
  theme_bw() +
  ggsave("Energycrisis_tweets_distribution.jpeg")
