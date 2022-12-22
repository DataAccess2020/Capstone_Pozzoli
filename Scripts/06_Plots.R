
# I create some plots to show the frequency distribution of tweets and I save them
# as images

library(ggplot2)
library(scales)

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_iran)) +
  geom_col(alpha=0.8, fill="pink") +
  ylab("Tweets about Iran") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Iran for each party") +
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw() +
  ggsave("Iran_tweets_distribution.jpeg")

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_ucraina)) +
  geom_col(alpha=0.5, fill="blue") +
  ylab("Tweets about Ukraine") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Ukraine for each party") +
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw() +
  ggsave("Ukraine_tweets_distribution.jpeg")

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_qatar)) +
  geom_col(alpha=0.8, fill="green") +
  ylab("Tweets about Qatar") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Qatar for each party") +
  scale_x_discrete(labels = label_wrap(10))  + 
  theme_bw()  +
  ggsave("Qatar_tweets_distribution.jpeg")

tweets_frequency %>% 
  ggplot(aes(x = Parties, y=tweets_energia)) +
  geom_col(alpha=0.8, fill="red") +
  ylab("Tweets about Energetic crisis") +
  xlab("Parties") +
  ggtitle("Frequency distribution of tweets about Energy crisis for each party") +
  scale_x_discrete(labels = label_wrap(10)) + 
  theme_bw() +
  ggsave("Energycrisis_tweets_distribution.jpeg")

# To compare the different plots I try to have the proportions in the place of 
# the absolute frequencies on the y axis. I also put the plots together to make
# the comparison easier.
# In order to do that I have to create some objects 

library(ggpubr)

a <- tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_iran)/sum(tweets_iran + tweets_ucraina 
                                              + tweets_qatar + tweets_energia)))+
  geom_col(alpha=0.8, fill="pink") +
  ylab("Tweets about Iran") +
  xlab("Parties") +
  scale_y_continuous(labels = scales::percent)+
  scale_x_discrete(labels = label_wrap(10)) +
  theme_bw()


b <- tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_ucraina)/sum(tweets_iran + tweets_ucraina 
                                                 + tweets_qatar + tweets_energia)))+
  geom_col(alpha=0.5, fill="blue") +
  ylab("Tweets about Ukraine") +
  xlab("Parties") +
  scale_y_continuous(labels = scales::percent)+
  scale_x_discrete(labels = label_wrap(10))  +
  theme_bw()


c <-tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_qatar)/sum(tweets_iran + tweets_ucraina 
                                               + tweets_qatar + tweets_energia))) +
  geom_col(alpha=0.5, fill="green") +
  ylab("Tweets about Qatar") +
  xlab("Parties") +
  scale_x_discrete(labels = label_wrap(10))  + 
  scale_y_continuous(labels = scales::percent) +
  theme_bw()

d <- tweets_frequency %>% 
  ggplot(aes(x = Parties, y=(tweets_energia)/sum(tweets_iran + tweets_ucraina 
                                                 + tweets_qatar + tweets_energia))) +
  geom_col(alpha=0.5, fill="red") +
  ylab("Tweets about Energetic crisis") +
  xlab("Parties") +
  scale_y_continuous(labels = scales::percent) +
  scale_x_discrete(labels = label_wrap(10)) + 
  theme_bw()

ggarrange(a, b, c, d, 
          ncol = 2, nrow = 2) +
  ggsave("Finalplot_for_comparison.jpeg", width = 25, height = 20, units = "cm")


