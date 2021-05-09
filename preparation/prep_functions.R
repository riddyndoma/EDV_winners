library(dplyr)

##########################PREPARE WINNERS FOLLOWED BY MONTH########################################

prepareDFWinnersFollowedByMonth <- function(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21,may21) {
  
  jul20 <- jul20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  aug20 <- aug20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  sep20 <- sep20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  oct20 <- oct20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  nov20 <- nov20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  dec20 <- dec20 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  jan21 <- jan21 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  fev21 <- fev21 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  mar21 <- mar21 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  avr21 <- avr21 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  may21 <- may21 %>%
    select(personId,date,statusId,contact.gender,contact.visualId)
  
  answer <- rbind(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21,may21)
  
  return(answer)
}

