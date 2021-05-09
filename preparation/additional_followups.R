###################################################################################################

url <- "https://godata-response1.who.int/"              
username <- "rndoma@immap.org"                          
password <- "adminadminadmin2020"                      
outbreak_id <- "d5ee2e11-756f-453d-a891-9fcc93a942b1"

url_request <- paste0(url,"api/oauth/token?access_token=123")

response <- POST(url=url_request,  
                 body = list(
                   username = username,                                          
                   password = password),                                       
                 encode = "json")

content <- content(response, as = "text") %>%
  fromJSON(flatten = TRUE) %>%
  glimpse()

access_token <- content$response$access_token
access_token <- content$access_token  
##############################################################################
date1_now <- format("2020-07-31T23:59:59.999Z")
date1_30d_ago <- format("2020-07-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date1_30d_ago,
  "%22,%22",
  date1_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_juillet2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date2_now <- format("2020-08-31T23:59:59.999Z")
date2_30d_ago <- format("2020-08-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date2_30d_ago,
  "%22,%22",
  date2_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_aout2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date3_now <- format("2020-09-30T23:59:59.999Z")
date3_30d_ago <- format("2020-09-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date3_30d_ago,
  "%22,%22",
  date3_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_septembre2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date4_now <- format("2020-10-30T23:59:59.999Z")
date4_30d_ago <- format("2020-10-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date4_30d_ago,
  "%22,%22",
  date4_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_octobre2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date5_now <- format("2020-11-30T23:59:59.999Z")
date5_30d_ago <- format("2020-11-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date5_30d_ago,
  "%22,%22",
  date5_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_novembre2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date6_now <- format("2020-12-31T23:59:59.999Z")
date6_30d_ago <- format("2020-12-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date6_30d_ago,
  "%22,%22",
  date6_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_decembre2020 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date7_now <- format("2021-01-31T23:59:59.999Z")
date7_30d_ago <- format("2021-01-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date7_30d_ago,
  "%22,%22",
  date7_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_janvier2021 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date8_now <- format("2021-02-28T23:59:59.999Z")
date8_30d_ago <- format("2021-02-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date8_30d_ago,
  "%22,%22",
  date8_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_fevrier2021 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date9_now <- format("2021-03-31T23:59:59.999Z")
date9_30d_ago <- format("2021-03-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date9_30d_ago,
  "%22,%22",
  date9_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_mars2021 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date10_now <- format("2021-04-30T23:59:59.999Z")
date10_30d_ago <- format("2021-04-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date10_30d_ago,
  "%22,%22",
  date10_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_avril2021 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
date11_now <- format("2021-05-31T23:59:59.999Z")
date11_30d_ago <- format("2021-05-01T23:59:59.999Z")

response_followups <- GET(paste0(
  url,
  "api/outbreaks/",
  outbreak_id,
  "/follow-ups/?filter={%22where%22:{%22and%22:[{%22date%22:{%22between%22:[%22",
  date11_30d_ago,
  "%22,%22",
  date11_now,
  "%22]}}]}}"
),
add_headers(Authorization = paste("Bearer", access_token, sep = " ")))
json_followups <- content(response_followups, as="text")
followups_may2021 <- as_tibble(fromJSON(json_followups, flatten = TRUE))

#-------------------------------------------------------------------------------
complete_followed_prep <- prepareDFWinnersFollowedByMonth(followups_juillet2020,
                                                        followups_aout2020,
                                                        followups_septembre2020,
                                                        followups_octobre2020,
                                                        followups_novembre2020,
                                                        followups_decembre2020,
                                                        followups_janvier2021,
                                                        followups_fevrier2021,
                                                        followups_mars2021,
                                                        followups_avril2021,
                                                        followups_may2021)

complete_followed_prep <- complete_followed_prep %>%
  filter(statusId !='LNG_REFERENCE_DATA_CONTACT_DAILY_FOLLOW_UP_STATUS_TYPE_NOT_PERFORMED')