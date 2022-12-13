
# I have created a list on my twitter account containing the main political
# Italian parties and their political leaders.

# I create a data frame using the function 'lists_members' from 'rtweet' and using 
# the list that I have created before. 

italian_parties = lists_members(
  list_id = "1602669625707208704",
  slug = NULL,
  owner_user = NULL,
  n = 14,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  verbose = TRUE,
  parse = TRUE,
)
