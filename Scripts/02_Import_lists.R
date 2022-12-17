
#I have created a list for each political party, which contains the account of 
# the party and the account of the leader. 

# I create a data frame using the function 'lists_members' from 'rtweet' and using 
# the list that I have created before. 

italia_viva = lists_members(
  list_id = "1603691179392081922",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

lega = lists_members(
  list_id = "1603691986539659265",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

Partito_democratico = lists_members(
  list_id = "1603692493324910594",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

Movimento_5S = lists_members(
  list_id = "1603692787651825664",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

Azione = lists_members(
  list_id = "1603693345603260416",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

Forza_Italia = lists_members(
  list_id = "1603693826442412032",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)

Fratelli_dItalia = lists_members(
  list_id = "1603694183209902080",
  slug = NULL,
  owner_user = NULL,
  n = 2,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)






