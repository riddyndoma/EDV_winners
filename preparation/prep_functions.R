library(dplyr)

##########################PREPARE WINNERS FOLLOWED BY MONTH########################################

prepareDFWinnersFollowedByMonth <- function(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21) {
  
  jul20 <- jul20 %>%
    select(personId,date,statusId)
  
  aug20 <- aug20 %>%
    select(personId,date,statusId)
  
  sep20 <- sep20 %>%
    select(personId,date,statusId)
  
  oct20 <- oct20 %>%
    select(personId,date,statusId)
  
  nov20 <- nov20 %>%
    select(personId,date,statusId)
  
  dec20 <- dec20 %>%
    select(personId,date,statusId)
  
  jan21 <- jan21 %>%
    select(personId,date,statusId)
  
  fev21 <- fev21 %>%
    select(personId,date,statusId)
  
  mar21 <- mar21 %>%
    select(personId,date,statusId)
  
  avr21 <- avr21 %>%
    select(personId,date,statusId)
  
  answer <- rbind(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21)
  
  return(answer)
}

