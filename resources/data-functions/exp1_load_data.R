# Load original data output, with 1 row per Q including pet/job memory----
exp1_load_data_all <- function(a_or_b) {
  d <- read.csv(str_c("data/exp1", a_or_b, "_data.csv"),
                stringsAsFactors = TRUE)

  d %<>% select(
    SubjID, Task, Name, Pronoun, Pet, Job, M_Type,
    M_Response, M_Acc, P_Pronoun, P_Acc
  )

  d %<>% rename("Participant" = "SubjID", "P_Response" = "P_Pronoun")

  contrasts(d$Pronoun) <- cbind(
    "=They_HeShe" = c(.33, .33, -.66),
    "=He_She"     = c(-.50, .50, 0)
  )

  return(d)
}

# Convert to have 1 row per character and 1 col for memory and production----
exp1_load_data_pronoun <- function(a_or_b) {
  d_all <- exp1_load_data_all(a_or_b)

  m_temp <- d_all %>%  # get pronoun memory rows
    filter(M_Type == "pronoun") %>%
    select(Participant, Name, Pronoun, M_Response, M_Acc)

  p_temp <- d_all %>%  # get production rows
    filter(!is.na(P_Acc)) %>%
    select(Participant, Name, Pronoun, P_Response, P_Acc)

  # merge to have 1 row per character per participant
  d <- left_join(m_temp, p_temp, by = c("Participant", "Name", "Pronoun"))

  # make mean-centered factor
  d %<>% mutate(.after = M_Acc, M_Acc_Factor = as.factor(M_Acc))
  contrasts(d$M_Acc_Factor) <- cbind("=Wrong_Right" = c(-.5, .5))

  d$P_Response %<>% factor(levels = c("he/him", "she/her", "they/them", "none"))

  return(d)
}

# Subset pet & pronoun memory questions, add contrast coding & dummy coding----
exp1_load_data_pets <- function(d) {
  d %<>% filter(M_Type == "pet" | M_Type == "pronoun") %>%
    rename("CharPronoun" = "Pronoun")

  # mean-center contrast code with pet as negative and pronoun as positive
  d$M_Type %<>% droplevels()
  contrasts(d$M_Type) <- cbind("=Pet_Pronoun" = c(-.5, .5))

  # add dummy coding
  d %<>% mutate(
    CharPronoun_They0 = ifelse(CharPronoun == "they/them", 0, 1),
    CharPronoun_HeShe0 = ifelse(CharPronoun == "they/them", 1, 0)
  )
}

# Labels for tables----
exp1_tb_fixed_labels <- c(
  "(Intercept)" = "<b>(Intercept)",
  "Pronoun=They_HeShe" =
    "<b>Pronoun: They</b> (-.66) <b>vs He</b> (+.33) <b>+ She</b> (+.33)",
  "Pronoun=He_She" = "Pronoun: He (-.5) vs She (+.5)",
  "Pronoun_They0" = "<b>Pronoun</b> (They = 0, He = 1, She = 1)",
  "Pronoun_HeShe0" = "<b>Pronoun</b> (He = 0, She = 0, They = 1)",
  "M_Acc_Factor=Wrong_Right" =
    "<b>Memory Accuracy: Wrong </b>(-.5)<b> vs Right </b>(+.5)",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right" =
    "<b>Pronoun (They vs He + She) * Memory Accuracy",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right" =
    "Pronoun (He vs She) * Memory Accuracy",
  "CharPronoun=They_HeShe" = paste(
    "<b>Character Pronoun: They</b> (-.66) <b>vs He</b>",
    "(+.33)<b> + She</b> (+.33)"),
  "CharPronoun=He_She" = "Character Pronoun: He (-.5) vs She (+.5)",
  "CharPronoun_They0" =
    "<b>Character Pronoun</b> (They = 0, He = 1, She = 1)",
  "CharPronoun_HeShe0" =
    "<b>Character Pronoun</b> (He = 0, She = 0, They = 1)",
  "M_Type=Pet_Pronoun" = "Question Type: Pet (-.5) vs Pronoun (+.5)",
  "M_Type=Pet_Pronoun:CharPronoun=They_HeShe" =
    "<b>Question Type * Character Pronoun (They vs He+She)",
  "M_Type=Pet_Pronoun:CharPronoun=He_She" =
    "Question Type * Character Pronoun (He vs She)",
  "CharPronoun_They0:M_Type=Pet_Pronoun" =
    "<b>Question Type * Character Pronoun",
  "CharPronoun_HeShe0:M_Type=Pet_Pronoun" =
    "<b>Question Type * Character Pronoun",
  "Experiment=A_B" = "Order: Memory First (-.5) vs Production First (+.5)",
  "Pronoun=They_HeShe:Experiment=A_B" = "Pronoun (They vs He+She) * Order",
  "Experiment=A_B:Pronoun=They_HeShe" = "Pronoun (They vs He+She) * Order",
  "Pronoun=He_She:Experiment=A_B" = "Pronoun (He vs She) * Order",
  "Experiment=A_B:Pronoun=He_She" = "Pronoun (He vs She) * Order",
  "M_Acc_Factor=Wrong_Right:Experiment=A_B" = "Memory Accuracy * Order",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right:Experiment=A_B" =
    "Pronoun (They vs He+She) * Memory Accuracy * Order",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right:Experiment=A_B" =
    "Pronoun (He vs She) * Memory Accuracy * Order",
  "Task=M_P" = "<b>Task: Memory</b> (-.5) <b>vs Production</b> (+.5)",
  "Pronoun=They_HeShe:Task=M_P" = "<b>Pronoun (They vs He+She) * Task",
  "Pronoun=He_She:Task=M_P" = "Pronoun (He vs She) * Task",
  "Task=M_P:Pronoun_They0" = "<b>Pronoun * Task",
  "Task=M_P:Pronoun_HeShe0" = "<b>Pronoun * Task"
)

exp1_tb_random_labels <- function(text) {
  text %<>% str_replace_all(
    "Participant.Pronoun=They_HeShe",
    " Pronoun (They vs He + She) | Participant"
  ) %>% str_replace_all(
    "Participant.Pronoun=He_She",
    " Pronoun (He vs She) | Participant"
  ) %>% str_replace_all(
    "Participant.M_Type=Pet_Pronoun",
    "Question Type | Participant"
  )
}
