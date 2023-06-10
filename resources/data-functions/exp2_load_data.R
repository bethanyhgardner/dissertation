# Load all data and add contrast coding----
exp2_load_data_all <- function() {
  d <- read.csv("data/exp2_data.csv", stringsAsFactors = TRUE)

  d %<>% select(
    Participant, PSA, Biography, Name, Job, Pet, Pronoun,
    M_Type, M_Response, M_Acc, P_Response, P_Acc
  )

  d$P_Response %<>% factor(
    levels = c("he/him", "she/her", "they/them", "none"),
    ordered = TRUE
  )

  # make factor labels explicitly to avoid numeric <-> factor weirdness
  d$PSA %<>% factor(
    levels = c("1", "0"), ordered = TRUE,
    labels = c("1" = "GenLang", "0" = "Unrelated")
  )
  d$Biography %<>% factor(
    levels = c("1", "0"), ordered = TRUE,
    labels = c("1" = "They", "0" = "HeShe")
  )

  contrasts(d$Pronoun) <- cbind(
    "=They_HeShe" = c(.33, .33, -.66),
    "=He_She"     = c(-.50, .50, 0)
  )
  contrasts(d$PSA) <- cbind("=GenLang" = c(.5, -.5))
  contrasts(d$Biography) <- cbind("=They" = c(.5, -.5))

  d %<>% mutate(.after = M_Acc, M_Acc_Factor = as.factor(M_Acc))
  contrasts(d$M_Acc_Factor) <- cbind("=Wrong_Right" = c(-.5, .5))

  return(d)
}

# Subset pet and pronoun memory Qs, add contrast coding and dummy coding----
exp2_load_data_pets <- function() {
  d <- exp2_load_data_all()

  d %<>% filter(M_Type == "pet" | M_Type == "pronoun") %>%
    rename("CharPronoun" = "Pronoun")

  # mean-center contrast code with pet as negative and pronoun as positive
  d$M_Type %<>% droplevels()
  contrasts(d$M_Type) <- cbind("=Pet_Pronoun" = c(-.5, .5))

  # add dummy coding
  d %<>% mutate(
    CharPronoun_They0  = ifelse(CharPronoun == "they/them", 0, 1),
    CharPronoun_HeShe0 = ifelse(CharPronoun == "they/them", 1, 0)
  )
}

# Table labels----
exp2_tb_fixed_labels <- c(
  "(Intercept)" = "<b>(Intercept)",
  "Pronoun=They_HeShe" =
    "<b>Pronoun: They</b> (-.66) <b>vs He</b> (+.33) <b>+ She</b> (+.33)",
  "Pronoun=He_She" = "<b>Pronoun: He</b> (-.5) <b>vs She</b> (+.5)",
  "Biography=They" = "Biography: He/She (-.5) vs Biography: They (+.5)",
  "Bio_Ref_HeShe0" = "Biography: He/She (0) vs Biography: They (1)",
  "Bio_Ref_They0" = "Biography: They (0) vs Biography: He/She (1)",
  "PSA=GenLang" = "PSA: Unrelated (-.5) vs PSA: Gendered Language (+.5)",
  "M_Acc_Factor=Wrong_Right" =
    "<b>Memory Accuracy: Wrong </b>(-.5) <b>vs Right</b> (+.5)",
  "Pronoun=They_HeShe:PSA=GenLang" = "<b>Pronoun (They vs He + She) * PSA</b>",
  "Pronoun=He_She:PSA=GenLang" = "Pronoun (He vs She) * PSA",
  "Pronoun=They_HeShe:Biography=They" = "Pronoun (They vs He + She) * Biography",
  "Pronoun=He_She:Biography=They" = "Pronoun (He vs She) * Biography",
  "Pronoun=They_HeShe:Bio_Ref_HeShe0" = "Pronoun (They vs He + She) * Biography",
  "Pronoun=He_She:Bio_Ref_HeShe0" = "Pronoun (He vs She) * Biography",
  "Pronoun=They_HeShe:Bio_Ref_They0" = "Pronoun (They vs He + She) * Biography",
  "Pronoun=He_She:Bio_Ref_They0" = "Pronoun (He vs She) * Biography",
  "PSA=GenLang:Bio_Ref_HeShe0" = "<b>PSA * Biography",
  "PSA=GenLang:Bio_Ref_They0" = "<b>PSA * Biography",
  "Biography=They:PSA=GenLang" = "PSA * Biography",
  "PSA=GenLang:Biography=They" = "PSA * Biography",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right" =
    "Pronoun (They vs He + She) * Memory Accuracy",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right" =
    "Pronoun (He vs She) * Memory Accuracy",
  "M_Acc_Factor=Wrong_Right:PSA=GenLang" = "PSA * Memory Accuracy",
  "M_Acc_Factor=Wrong_Right:Biography=They" = "Biography * Memory Accuracy",
  "Pronoun=They_HeShe:Biography=They:PSA=GenLang" =
    "Pronoun (They vs He + She) * PSA * Biography",
  "Pronoun=They_HeShe:PSA=GenLang:Biography=They" =
    "<b>Pronoun (They vs He + She) * PSA * Biography",
  "Pronoun=They_HeShe:PSA=GenLang:Bio_Ref_HeShe0" =
    "<b>Pronoun (They vs He + She) * PSA * Biography",
  "Pronoun=They_HeShe:PSA=GenLang:Bio_Ref_They0" =
    "<b>Pronoun (They vs He + She) * PSA * Biography",
  "Pronoun=He_She:Biography=They:PSA=GenLang" =
    "Pronoun (He vs She) * PSA * Biography",
  "Pronoun=He_She:PSA=GenLang:Biography=They" =
    "Pronoun (He vs She) * PSA * Biography",
  "Pronoun=He_She:PSA=GenLang:Bio_Ref_HeShe0" =
    "Pronoun (He vs She) * PSA * Biography",
  "Pronoun=He_She:PSA=GenLang:Bio_Ref_They0" =
    "Pronoun (He vs She) * PSA * Biography",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right:PSA=GenLang" =
    "Pronoun (They vs He + She) * PSA * Memory Accuracy",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right:PSA=GenLang" =
    "Pronoun (He vs She) * PSA * Memory Accuracy",
  "M_Acc_Factor=Wrong_Right:PSA=GenLang:Biography=They",
  "M_Acc_Factor=Wrong_Right:PSA=GenLang:Biography=They" =
    "PSA * Biography * Memory Accuracy",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right:Biography=They" =
    "Pronoun (They vs He + She) * Biography * Memory Accuracy",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right:Biography=They" =
    "Pronoun (He vs She) * Biography * Memory Accuracy",
  "Pronoun=They_HeShe:M_Acc_Factor=Wrong_Right:PSA=GenLang:Biography=They" =
    "Pronoun (They vs He + She) * PSA * Biography * Memory Accuracy",
  "Pronoun=He_She:M_Acc_Factor=Wrong_Right:PSA=GenLang:Biography=They" =
    "Pronoun (He vs She) * PSA * Biography * Memory Accuracy",
  "M_Type=Pet_Pronoun" =
    "<b>Question Type: Pet</b> (-.5) <b>vs Pronoun</b> (+.5)",
  "CharPronoun=They_HeShe" = paste(
    "<b>Character Pronoun: They</b> (-.66) <b>vs He</b> ",
    "(+.33)<b> + She</b> (+.33)"),
  "CharPronoun=He_She" = "Character Pronoun: He (-.5) vs She (+.5)",
  "CharPronoun_They0" = "<b>Character Pronoun</b> (They = 0, He = 1, She = 1)",
  "CharPronoun_HeShe0" =
    "<b>Character Pronoun</b> (He = 0, She = 0, They = 1)",
  "CharPronoun=They_HeShe:PSA=GenLang" =
    "<b>Character Pronoun (They vs He+She) * PSA",
  "CharPronoun=He_She:PSA=GenLang" = "Character Pronoun (He vs She) * PSA",
  "CharPronoun=They_HeShe:Biography=They" =
    "Character Pronoun (They vs He+She) * Biography",
  "CharPronoun=He_She:Biography=They" =
    "Character Pronoun (He vs She) * Biography",
  "CharPronoun_They0:PSA=GenLang" = "<b>Character Pronoun * PSA",
  "CharPronoun_They0:Biography=They" = "Character Pronoun * Biography",
  "CharPronoun_HeShe0:PSA=GenLang" = "<b>Character Pronoun * PSA",
  "CharPronoun_HeShe0:Biography=They" = "Character Pronoun * Biography",
  "M_Type=Pet_Pronoun:CharPronoun=They_HeShe" =
    "<b>Question Type * Character Pronoun (They vs He+She)",
  "M_Type=Pet_Pronoun:CharPronoun=He_She" =
    "Question Type * Character Pronoun (He vs She)",
  "M_Type=Pet_Pronoun:CharPronoun_They0" =
    "<b>Question Type * Character Pronoun",
  "M_Type=Pet_Pronoun:CharPronoun_HeShe0" =
    "<b>Question Type * Character Pronoun",
  "CharPronoun=They_HeShe:PSA=GenLang:Biography=They" =
    "Pronoun (They vs He+She) * PSA * Biography",
  "CharPronoun=He_She:PSA=GenLang:Biography=They" =
    "Pronoun (He vs She) * PSA * Biography",
  "CharPronoun_They0:PSA=GenLang:Biography=They" =
    "Character Pronoun * PSA * Biography",
  "CharPronoun_HeShe0:PSA=GenLang:Biography=They" =
    "Character Pronoun * PSA * Biography"
)

exp2_tb_random_labels <- function(text) {
  text %<>% str_replace_all(
    "Participant.M_Type=Pet_Pronoun",
    "Question Type | Participant"
  )
}