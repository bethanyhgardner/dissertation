# Loads accuracy data, sets up contrast coding and scaling----
exp3_load_data_acc <- function(){
  library(dplyr)
  library(forcats)
  library(scales)

  d <- read.csv("data/exp3_pronouns.csv", stringsAsFactors = TRUE) %>%
    select(ParticipantID, Nametag, Intro, Pronoun_Pair, T_ID, Accuracy)

  # Remove trials with no pronouns
  d %<>% filter(!is.na(Accuracy))

  # Mean-center effects code Nametag and Intro
  d$Nametag %<>% factor(labels = c("-Nametag", "+Nametag"))
  contrasts(d$Nametag) <- cbind(c(-.5, .5))

  d$Intro %<>% factor(labels = c("-Intro", "+Intro"))
  contrasts(d$Intro) <- cbind(c(-.5, .5))

  # Orthogonal Helmert contrast codes for Pronoun Pair
  d %<>% rename("Pronoun" = "Pronoun_Pair")
  d$Pronoun %<>% fct_relevel("T_HS", after = 0) %>%
                 fct_relevel("HS_T", after = 1)
  contrasts(d$Pronoun) <- cbind(
    "Target" = c(-.66, +.33, +.33),
    "Dist"     = c(0,    -.50, +.50))

  # Add dummy-coded factor for They vs He/She
  d %<>% mutate(Pronoun_They0 = ifelse(Pronoun == "T_HS", 0, 1))

  # Dummy code Nametag and Intro
  d %<>% mutate(
    Nametag_Yes0 = ifelse(Nametag == "+Nametag", 0, 1),
    Nametag_No0  = ifelse(Nametag == "-Nametag", 0, 1),
    Intro_Yes0   = ifelse(Intro   == "+Intro", 0, 1),
    Intro_No0    = ifelse(Intro   == "-Intro", 0, 1))

  # Scale character (1-18)
  d %<>% mutate(.keep = c("unused"),
    Character = rescale(T_ID, c(-0.5, 0.5)))

  d %<>% select(ParticipantID, Nametag, Nametag_Yes0, Nametag_No0,
                Intro, Intro_Yes0, Intro_No0, Pronoun, Pronoun_They0,
                Character, Accuracy)

  return(d)
}

# Loads distribution data, sets up labels for plots----
exp3_load_data_dist <- function(){
  library(dplyr)
  library(magrittr)
  library(stringr)
  library(forcats)

  d <- read.csv("data/exp3_pronouns.csv", stringsAsFactors = TRUE) %>%
  select(Nametag, Intro, ParticipantID, Pronoun_Pair, T_Pronoun, T_ID,
         He, His, She, Her, They, Their, MultiplePronouns,
         PronounProduced, Accuracy)

  # Add column for no pronouns produced
  d %<>% mutate(.after = MultiplePronouns,
                None =ifelse(PronounProduced == "none", 1, 0))

  # Labels
  d %<>% mutate(.before = Nametag,
    CondLabels = case_when(
      Nametag == 1 & Intro == 1 ~ "+Nametag +Intro",
      Nametag == 1 & Intro == 0 ~ "+Nametag –Intro",
      Nametag == 0 & Intro == 1 ~ "–Nametag +Intro",
      Nametag == 0 & Intro == 0 ~ "–Nametag –Intro")) %>%
    mutate(.after = PronounProduced, Order = case_when(
      MultiplePronouns == 0 ~ "only",
      MultiplePronouns == 1 ~ "corrected"))

  d$CondLabels_Short <- str_replace(d$CondLabels, ' ', '\n')

  d$CondLabels %<>% factor(
    levels = c("+Nametag +Intro", "+Nametag –Intro",
               "–Nametag +Intro", "–Nametag –Intro"),
    ordered = TRUE)
  d$CondLabels_Short %<>% factor(
    levels = c("+Nametag\n+Intro", "+Nametag\n–Intro",
               "–Nametag\n+Intro", "–Nametag\n–Intro"),
    ordered = TRUE)

  d$Order %<>% factor(levels = c("corrected", "only"),
                      ordered = TRUE)

  d$T_Pronoun %<>% recode("he"   = "he/him",
                          "she"  = "she/her",
                          "they" = "they/them")

  d$PronounProduced %<>% as.character() %>% str_to_lower() %>%
    str_remove('she/') %>% str_remove('he/') %>%
    str_remove('they/') %>%
    factor(levels = c("his", "her", "their", "none"),
           ordered = TRUE)

  d %<>% rename("Character" = "T_ID")

  return(d)
}

# Adds participant covariates to accuracy data, mean-centers + rescales them----
exp3_load_data_subj <- function(){
  # Join participant covariates to accuracy df
  d <- left_join(exp3_load_data_acc(),
                 read.csv("data/exp3_participant-covariates.csv", stringsAsFactors = TRUE),
                 by = "ParticipantID") %>%
    rename("Familiarity" = "UseThey", "Rating" = "Rating_Name")

  # Remove participants with no pronouns (1) or no survey data (3)
  d %<>% filter(!is.na(Age))
  d$ParticipantID %<>% droplevels()

  # Scale THEN mean-center (on accuracy df)
  d %<>%  mutate(
    Age_C = scale(Age / 80, center = TRUE, scale = FALSE),
    Familiarity_C = scale(Familiarity / 2, center = TRUE, scale = FALSE),
    GenderBeliefs_C = scale(GenderBeliefs / 60, center = TRUE, scale = FALSE),
    LGBTQ_C = LGBQ - 0.50,
    Rating_C = scale(Rating / 6, center = TRUE, scale = FALSE),
    Sharing_C = scale(Sharing / 20, center = TRUE, scale = FALSE))

  # Effects-code LGBTQ
  d %<>% mutate(LGBTQ_Fct = as.factor(LGBTQ_C))
  contrasts(d$LGBTQ_Fct) <- cbind(c(-0.5, +0.5))

  d %<>% select(
    ParticipantID, Nametag, Intro, Pronoun, Character, Accuracy,
    Age, Age_C, Familiarity, Familiarity_C,
    GenderBeliefs, GenderBeliefs_C, LGBTQ_C, LGBTQ_Fct,
    Rating, Rating_C, Sharing, Sharing_C
  )

  return(d)
}

# Table labels---
exp3_tb_fixed_labels <- c(
  "(Intercept)" = "<b>(Intercept)</b>",
  "PronounTarget" = paste(
    "<b>Pronoun Pair: T|HS</b> (-.66) <b>vs ",
    "HS|T</b> (+.33)<b> + HS|SH</b> (+.33)"),
  "PronounDist" = "Pronoun Pair: HS|T (-.5) vs HS|SH (+.5)",
  "Nametag1" = "Nametag (-.5; +.5)",
  "Nametag_Yes0" = "Nametag (1; 0)",
  "Nametag_No0" = "Nametag (0; 1)",
  "Intro1" = "Introduction (-.5; +.5)",
  "PronounTarget:Nametag1" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b>* Nametag",
  "PronounTarget:Nametag_Yes0" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b>* Nametag",
  "PronounTarget:Nametag_No0" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b>* Nametag",
  "PronounDist:Nametag1" = "Pronoun (HS|T vs HS|SH) * Nametag",
  "PronounDist:Nametag_Yes0" = "Pronoun (HS|T vs HS|SH) * Nametag",
  "PronounDist:Nametag_No0" = "Pronoun (HS|T vs HS|SH) * Nametag",
  "PronounTarget:Intro1" = paste(
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) ",
    "<b>* Introduction"),
  "PronounDist:Intro1" = "Pronoun (HS|T vs HS|SH) * Introduction",
  "Nametag1:Intro1" = "Nametag * Introduction",
  "Nametag_Yes0:Intro1" = "Nametag * Introduction",
  "Nametag_No0:Intro1" = "Nametag * Introduction",
  "PronounTarget:Nametag1:Intro1" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b> * Nametag * Introduction",
  "PronounTarget:Nametag_Yes0:Intro1" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b> * Nametag * Introduction",
  "PronounTarget:Nametag_No0:Intro1" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b> * Nametag * Introduction",
  "PronounDist:Nametag1:Intro1" =
    "Pronoun (HS|T vs HS|SH) * Nametag * Introduction",
  "PronounDist:Nametag_Yes0:Intro1" =
    "Pronoun (HS|T vs HS|SH) * Nametag * Introduction",
  "PronounDist:Nametag_No0:Intro1" =
    "Pronoun (HS|T vs HS|SH) * Nametag * Introduction",
  "GenderBeliefs_C" =
    "<b>Gender Beliefs</b> (mean-centered, higher binary endorsement +)",
  "Familiarity_C" =
    "Familiarity with Pronoun Sharing (mean-centered)",
  "PronounTarget:GenderBeliefs_C" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b>* Gender Beliefs",
  "PronounDist:GenderBeliefs_C" =
    "Pronoun (HS|T vs HS|SH) * Gender Beliefs",
  "Intro1:GenderBeliefs_C" = "Intro * Gender Beliefs",
  "PronounTarget:Familiarity_C" =
    "Pronoun (T|HS vs HS|T + HS|SH) * Familiarity",
  "PronounDist:Familiarity_C" = "Pronoun (HS|T vs HS|SH) * Familiarity",
  "Nametag1:GenderBeliefs_C" = "Nametag * Gender Beliefs",
  "Intro1:Familiarity_C" = "Intro * Familiarity",
  "PronounTarget:Intro1:GenderBeliefs_C" =
    "<b>Pronoun</b> (T|HS vs HS|T + HS|SH) <b>* Gender Beliefs * Intro",
  "PronounDist:Intro1:GenderBeliefs_C" =
    "Pronoun (HS|T vs HS|SH) * Gender Beliefs * Intro",
  "PronounTarget:Nametag1:GenderBeliefs_C" =
    "Pronoun (T|HS vs HS|T + HS|SH) * Nametag *  Gender Beliefs",
  "PronounDist:Nametag1:GenderBeliefs_C" =
    "Pronoun (HS|T vs HS|SH) * Nametag * Gender Beliefs",
  "PronounTarget:Intro1:Familiarity_C" =
    "Pronoun (T|HS vs HS|T + HS|SH) * Intro * Familiarity",
  "PronounDist:Intro1:Familiarity_C" =
    "Pronoun (HS|T vs HS|SH) * Intro * Familiarity"
)

exp3_tb_random_labels <- function(text) {
  text %<>% str_replace_all(
    "ParticipantID", "Participant"
  ) %>% str_replace_all(
    "Participant.Type=Name_Generic",
    "Referent Type | Participant"
  )
}
