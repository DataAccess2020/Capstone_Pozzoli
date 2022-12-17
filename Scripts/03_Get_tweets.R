
# I try to download the tweets form my lists using the function 'get_timeline()'
# from 'rtweet'

tweets_Azione <- get_timeline(user = Azione$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)



tweets_FI <- get_timeline(user = Forza_Italia$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)



tweets_lega <- get_timeline(user = lega$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)



tweets_M5S <- get_timeline(user = Movimento_5S$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)



tweets_PD <- get_timeline(user = Partito_democratico$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)



tweets_FDI <- get_timeline(user = Fratelli_dItalia$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)




tweets_IV <- get_timeline(user = italia_viva$screen_name,
                              n= 10000,
                              verbose = T,
                              parse = T,
                              Sys.sleep(0.5)
)


