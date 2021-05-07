library(dplyr)

##########################PREPARE WINNERS FOLLOWED BY MONTH########################################

prepareDFWinnersFollowedByMonth <- function(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21) {
  
  jul20 <- jul20 %>%
    select(personId,date,statusId,contact.gender)
  
  aug20 <- aug20 %>%
    select(personId,date,statusId,contact.gender)
  
  sep20 <- sep20 %>%
    select(personId,date,statusId,contact.gender)
  
  oct20 <- oct20 %>%
    select(personId,date,statusId,contact.gender)
  
  nov20 <- nov20 %>%
    select(personId,date,statusId,contact.gender)
  
  dec20 <- dec20 %>%
    select(personId,date,statusId,contact.gender)
  
  jan21 <- jan21 %>%
    select(personId,date,statusId,contact.gender)
  
  fev21 <- fev21 %>%
    select(personId,date,statusId,contact.gender)
  
  mar21 <- mar21 %>%
    select(personId,date,statusId,contact.gender)
  
  avr21 <- avr21 %>%
    select(personId,date,statusId,contact.gender)
  
  answer <- rbind(jul20,aug20,sep20,oct20,nov20,dec20,jan21,fev21,mar21,avr21)
  
  return(answer)
}

