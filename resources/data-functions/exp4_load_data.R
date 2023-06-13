# Functions for setting up Exp4 data

# Get start from timestep variable----
format_timestep <- function(d) {
  # Timestep is in (, ] format from pandas
  times <- d$Timestep %>% as.character()
  # Split into start and end
  times %<>% str_split(",", simplify = TRUE)
  # Convert start to numeric
  times <- times[, 1] %>% str_remove("\\[") %>% as.numeric()
  # Add back to main df
  d %<>% mutate(.after = Timestep, Timestep_Start = times)

  return(d)
}

# Load critical window data, set up variables/contrasts for models----
exp4_load_data_stats <- function() {
  library(tidyverse)
  library(magrittr)
  library(scales)

  d <- read.csv("data/exp4_timecourse-pronoun.csv",
                stringsAsFactors = TRUE,
                na.strings = "-999") %>%
    select(T_Pronoun, C_Pronoun, Order, ParticipantID, Story, TrialID,
           TrialNum, Timestep, IsTarget, WasTarget)

  # Get timestep start interval
  d %<>% format_timestep() %>% rename("Time" = "Timestep_Start")

  # Remove 180ms timestep used to get AR(1) for 200ms
  d %<>% filter(Time != 180)
  d$Timestep %<>% droplevels()

  # Remove trials/timesteps with no data
  d %<>% filter(!is.na(IsTarget))

  # Rescale time
  d %<>% mutate(.after = Time,
    Time_Scaled = Time / 500,
    Time_Centered = scale(Time_Scaled, center = TRUE, scale = FALSE)
  )

  # Rescale trial number
  d %<>% mutate(.after = TrialNum, Trial_Scaled =
    TrialNum %>% scale(center = TRUE, scale = FALSE) %>% rescale(c(-1, 1))
  )

  # Pronoun pair
  d %<>% mutate(.before = T_Pronoun,
    Pronoun_Pair = case_when(
      T_Pronoun == "they/them" ~ "T_HS",
      C_Pronoun == "they/them" ~ "HS_T",
      T_Pronoun != "they/them" & C_Pronoun != "they/them" ~ "HS_SH"),
    Pronoun_Pair_T.HS  = ifelse(Pronoun_Pair == "T_HS",  0, 1),
    Pronoun_Pair_HS.T  = ifelse(Pronoun_Pair == "HS_T",  0, 1),
    Pronoun_Pair_HS.SH = ifelse(Pronoun_Pair == "HS_SH", 0, 1)
  )

  # Contrast coding
  d$Pronoun_Pair %<>% fct_relevel("T_HS", "HS_T", "HS_SH")
  contrasts(d$Pronoun_Pair) <- cbind(
    "=TheyTarget" = c(-.66, .33, .33),
    "=TheyComp"   = c(0, -.5, .5))

  contrasts(d$Order) <- cbind("=First" = c(.5, -.5))

  contrasts(d$T_Pronoun) <- cbind(
    "=T_HS" = c(+0.33, +0.33, -0.66),
    "=S_H"  = c(+0.50, -0.50, 0))

  return(d)
}

# Load critical window, summarize over timesteps/conds, set up plot labels----
exp4_load_data_plots_crit <- function() {
  library(tidyverse)
  library(magrittr)
  library(scales)

  # Load data
  d <- read.csv("data/exp4_timecourse-pronoun.csv", stringsAsFactors = TRUE) %>%
    format_timestep() %>% # Get timestep start interval
    filter(!is.na(TG))

  # Pronoun Pair
  d %<>% mutate(Pronoun_Pair = case_when(
    T_Pronoun == "they/them" ~ "They|HeShe",
    C_Pronoun == "they/them" ~ "HeShe|They",
    T_Pronoun != "they/them" & C_Pronoun != "they/them" ~ "HeShe|SheHe")
  )

  # Not looking at anything
  d %<>% mutate(NA_Prop = ifelse(
    TG == 0 & CM == 0 & D1 == 0 & D2 == 0 & D3 == 0 & D4 == 0,
    1, 0
  ))

  # Proportions of fixations for each timestep for each condition
  d %<>% group_by(Pronoun_Pair, Order, Timestep, Timestep_Start) %>%
    summarise(
      Prop_T = mean(T_Prop),
      Prop_C = mean(C_Prop),
      Prop_D = mean(Ds_Prop),
      Prop_N = mean(NA_Prop)
    ) %>%
    ungroup()

  # Pivot to long format for plotting
  d %<>% pivot_longer(
      cols         = c("Prop_T", "Prop_C", "Prop_D", "Prop_N"),
      names_to     = "Item",
      names_prefix = "Prop_",
      values_to    = "Prop"
    ) %>%
    mutate(Item = case_when(
      Item == "T" ~ "Target",
      Item == "C" ~ "Competitor",
      Item == "D" ~ "Distractors",
      Item == "N" ~ "None"
    ))

  # Ordering, labels
  d$Pronoun_Pair %<>% factor(
    ordered = TRUE,
    levels = c("HeShe|SheHe", "HeShe|They", "They|HeShe")
  )

  d$Item %<>% factor(
    ordered = TRUE,
    levels = c("Target", "Competitor", "Distractors", "None")
  )

  d$Order %<>% factor(
    ordered = TRUE,
    levels = c("first", "second"),
    labels = c("First", "Second")
  )

  return(d)
}

# Load full data, summarize over timesteps/conds, set up plot labels----
exp4_load_data_plots_full <- function() {
  library(tidyverse)
  library(magrittr)
  library(scales)

  # Load data
  d <- read.csv("data/exp4_timecourse-full.csv", stringsAsFactors = TRUE) %>%
    format_timestep() %>% # Get timestep start interval
    filter(!is.na(TG))

  # Pronoun Pair (not combining he+she)
  d %<>% mutate(Pronoun_Pair = case_when(
    T_Pronoun == "he/him"    & C_Pronoun == "she/her"   ~ "He|She",
    T_Pronoun == "he/him"    & C_Pronoun == "they/them" ~ "He|They",
    T_Pronoun == "she/her"   & C_Pronoun == "he/him"    ~ "She|He",
    T_Pronoun == "she/her"   & C_Pronoun == "they/them" ~ "She|They",
    T_Pronoun == "they/them" & C_Pronoun != "he/him"    ~ "They|He",
    T_Pronoun == "they/them" & C_Pronoun != "she/her"   ~ "They|She"
  ))

  # Not looking at anything
  d %<>% mutate(NA_Prop = ifelse(
    TG == 0 & CM == 0 & D1 == 0 & D2 == 0 & D3 == 0 & D4 == 0,
    1, 0
  ))

  # Proportions of fixations for each timestep for each condition
  d %<>% group_by(Pronoun_Pair, Order, Timestep, Timestep_Start) %>%
    summarise(
      Prop_T = mean(T_Prop),
      Prop_C = mean(C_Prop),
      Prop_D = mean(Ds_Prop),
      Prop_N = mean(NA_Prop)
    ) %>%
    ungroup()

  # Pivot to long format for plotting
  d %<>% pivot_longer(
    cols         = c("Prop_T", "Prop_C", "Prop_D", "Prop_N"),
    names_to     = "Item",
    names_prefix = "Prop_",
    values_to    = "Prop"
    ) %>%
    mutate(Item = case_when(
      Item == "T" ~ "Target",
      Item == "C" ~ "Competitor",
      Item == "D" ~ "Distractors",
      Item == "N" ~ "None"
    ))

  # Colors for plotting
  d %<>% mutate(Color = case_when(
    Item == "Target"     ~ str_split(Pronoun_Pair, "\\|", simplify = TRUE)[, 1],
    Item == "Competitor" ~ str_split(Pronoun_Pair, "\\|", simplify = TRUE)[, 2],
    .default = Item
  ))

  # Ordering, labels
  black_bar   <- "<b style='color:#000000'> | </b>"
  green_he    <- "<b style='color:#1B9E77'>He</b>"
  orange_she  <- "<b style='color:#D95F02'>She</b>"
  pruple_they <- "<b style='color:#7570B3'>They</b>"

  d$Pronoun_Pair %<>% factor(
    ordered = TRUE,
    levels = c(
      "He|She", "She|He",
      "He|They", "She|They",
      "They|He", "They|She"
    ),
    labels = c(
      "He|She"   = str_c(green_he, black_bar, orange_she),
      "She|He"   = str_c(orange_she, black_bar, green_he),
      "He|They"  = str_c(green_he, black_bar, pruple_they),
      "She|They" = str_c(orange_she, black_bar, pruple_they),
      "They|He"  = str_c(pruple_they, black_bar, green_he),
      "They|She" = str_c(pruple_they, black_bar, orange_she)
    )
  )

  d$Item %<>% factor(
    ordered = TRUE,
    levels = c("Target", "Competitor", "Distractors", "None")
  )

  d$Order %<>% factor(
    ordered = TRUE,
    levels = c("first", "second"),
    labels = c("First", "Second")
  )

  d$Color %<>% factor(
    order = TRUE,
    levels = c("He", "She", "They", "Distractors", "None"),
    labels = c("He/Him", "She/Her", "They/Them", "Distractors", "None")
  )

  return(d)
}

# Load name window data, summarize over timesteps/conds, set up plot labels----
exp4_load_data_plots_names <- function() {
  library(tidyverse)
  library(magrittr)
  library(scales)

  d <- read.csv("data/exp4_timecourse-names.csv", stringsAsFactors = TRUE) %>%
    format_timestep() %>%  # Get timestep start interval
    filter(!is.na(TG))

  # Proportions of fixations to target and competitor
  d %<>% group_by(T_Pronoun, C_Pronoun, Order, Timestep, Timestep_Start) %>%
    summarise(Prop_T = mean(T_Prop), Prop_C = mean(C_Prop)) %>%
    ungroup()

  # Pivot to long format for plotting
  d %<>% pivot_longer(
    cols         = c("Prop_T", "Prop_C"),
    names_to     = "Item",
    names_prefix = "Prop_",
    values_to    = "Prop"
  )

  # Name order
  d %<>% mutate(.after = Item, Name = case_when(
    Item == "T" & Order == "first"  ~ "First Name",
    Item == "C" & Order == "first"  ~ "Second Name",
    Item == "T" & Order == "second" ~ "Second Name",
    Item == "C" & Order == "second" ~ "First Name"
  ))

  # Colors for plotting
  d %<>% mutate(Pronoun_Color = case_when(
    Item == "T" ~ T_Pronoun,
    Item == "C" ~ C_Pronoun
  ))

  # Group by first/second name and summarize over target/competitor
  d %<>% group_by(Timestep_Start, Name, Pronoun_Color) %>%
    summarise(Prop = mean(Prop))

  return(d)
}

# Get preview window data, add distractor pronoun info, summarize pronoun----
exp4_load_data_plots_preview <- function() {
  library(tidyverse)
  library(magrittr)
  library(scales)
  library(readxl)

  # Load data
  d <- read.csv("data/exp4_timecourse-preview.csv", stringsAsFactors = TRUE) %>%
    format_timestep() %>%  # Get timestep start interval
    filter(!is.na(TG))

  # Add location data to get 4 distractor characters' pronouns
  stimuli <- read_excel("materials/exp4/stimuli.xlsx",
                        sheet = "Lists", skip = 1) %>%
    select(Trial_ID, contains("_Pronoun"), -Story_Pronoun) %>%
    mutate(across(contains("_Pronoun"), ~str_remove(., " 1| 2"))) %>%
    mutate(across(everything(), factor)) %>%
    rename("TrialID" = "Trial_ID")

  d %<>% left_join(stimuli, by = "TrialID")

  # Pronouns of character that current fixation is on
  d %<>% mutate(
    Fixation_Pronoun = case_when( # Pick item with most fixations in 10ms bin
      (TG + CM + D1 + D2 + D3 + D4) == 0 ~ "none",  # No fixations in bin
      (TG >= CM) & (TG >= D1) & (TG >= D2) & (TG >= D3) & (TG >= D4) ~
        Target_Pronoun,  # Then using >= to break few tie rows
      (CM >= TG) & (CM >= D1) & (CM >= D2) & (CM >= D3) & (CM >= D4) ~
        Competitor_Pronoun,
      (D1 >= TG) & (D1 >= CM) & (D1 >= D2) & (D1 >= D3) & (D1 >= D4) ~
        Distractor1_Pronoun,
      (D2 >= TG) & (D2 >= CM) & (D2 >= D1) & (D2 >= D3) & (D2 >= D4) ~
        Distractor2_Pronoun,
      (D3 >= TG) & (D3 >= CM) & (D3 >= D1) & (D3 >= D2) & (D3 >= D4) ~
        Distractor3_Pronoun,
      (D4 >= TG) & (D4 >= CM) & (D4 >= D1) & (D4 >= D2) & (D4 >= D3) ~
        Distractor4_Pronoun
    ),  # Make numeric columns for each pronoun
    Fixation_H = ifelse(Fixation_Pronoun == "he/him", 1, 0),
    Fixation_S = ifelse(Fixation_Pronoun == "she/her", 1, 0),
    Fixation_T = ifelse(Fixation_Pronoun == "they/them", 1, 0),
    Fixation_N = ifelse(Fixation_Pronoun == "none", 1, 0)
    )

  # Calculate proportion of looks to each pronoun for each bin
  d %<>% group_by(Timestep, Timestep_Start) %>%
    summarise(
      Prop_H = mean(Fixation_H),
      Prop_S = mean(Fixation_S),
      Prop_T = mean(Fixation_T),
      Prop_N = mean(Fixation_N)
    ) %>%
    ungroup()

  # Pivot to long format for plots
  d %<>% pivot_longer(
    cols      = starts_with("Prop_"),
    names_to  = "Pronoun",
    values_to = "Prop"
  ) %>%
  mutate(Pronoun = case_when(  # Fix labels for legend
    Pronoun == "Prop_H" ~ "he/him",
    Pronoun == "Prop_S" ~ "she/her",
    Pronoun == "Prop_T" ~ "they/them",
    Pronoun == "Prop_N" ~ "no character",
  ))

  d$Pronoun %<>% as.factor() %>%  # Order for plot
    fct_relevel("no character", after = 4)

  return(d)
}

# Table labels----
exp4_tb_fixed_labels <- c(  # Main effects
  "(Intercept)" = "<b>(Intercept)",
  "Pronoun_Pair=TheyTarget" = paste(  # Pronoun pair + dummy coded
    "<b>Pronoun Pair: They|HeShe</b> (-.66) <b>vs HeShe|They</b> ",
    "(+.33) <b>+ HeShe|SheHe</b> (+.33)"),
  "Pronoun_Pair=TheyComp" =
    "<b>Pronoun Pair: HeShe|They</b> (-.5) vs <b>HeShe|SheHe</b> (+.5)",
  "Pronoun_Pair_HS.SH" = paste(
    "<b>Pronoun Pair: HeShe|SheHe </b>(0)",
    "<b> vs HeShe|They</b> (1) + <b>They|HeShe</b> (1)"),
  "Pronoun_Pair_HS.T" =
    "Pronoun Pair: HeShe|They (0) vs HeShe|SheHe (1) + They|HeShe (1)",
  "Pronoun_Pair_T.HS" =
    "<b>Pronoun Pair: They|HeShe </b>(0) vs HeShe|SheHe (1) + HeShe|They (1)",
  "T_Pronoun=T_HS" = paste(  # Target pronoun
    "<b>Target Pronoun: They </b>(-.66) <b>vs He</b> ",
    "(+.33) <b>+ She</b> (+.33)"),
  "T_Pronoun=S_H" = "Target Pronoun: She (-.5) vs He (+.5)",
  "CorrectPronoun=They_HeShe" = "Correct Pronoun: They (-.5) vs He + She (+.5)",
  "Time_Centered" = "Trend (mean-centered)",  # AR(1) and trend
  "WasTarget" = "<b>AR(1)</b> (0, 1)",
  "Order=First" =  # Order
    "Order: Target Mentioned Second (-.5) vs First (+.5)",
  "Pronoun_Pair=TheyTarget:Order=First" =  # Pronoun * Order
    "Pronoun Pair (They|HeShe vs HeShe|They + HeShe|SheHe) * Order",
  "Pronoun_Pair=TheyComp:Order=First" =
    "Pronoun Pair (HeShe|They vs HeShe|SheHe) * Order",
  "Pronoun_Pair_HS.SH:Order=First" = "Pronoun Pair * Order",
  "Pronoun_Pair_T.HS:Order=First" = "Pronoun Pair * Order",
  "Pronoun_Pair_HS.T:Order=First" = "<b>Pronoun Pair * Order",
  "T_Pronoun=T_HS:Order=First" = "Target Pronoun (They vs He + She) * Order",
  "T_Pronoun=S_H:Order=First" = "Target Pronoun (She vs He) * Order",
  "WasTarget:Pronoun_Pair=TheyTarget" = # AR(1) + Trend interactions
    "Pronoun Pair (T|HS vs HS|T + HS|SH) * AR(1)",
  "WasTarget:Pronoun_Pair=TheyComp" = "Pronoun Pair (HS|T vs HS|SH) * AR(1)",
  "WasTarget:Order=First" = "AR(1) * Order",
  "Pronoun_Pair=TheyTarget:Time_Centered" =
    "Pronoun Pair (T|HS vs HS|T + HS|SH) * Trend",
  "Pronoun_Pair=TheyComp:Time_Centered" =
    "Pronoun Pair (HS|T vs HS|SH) * Trend",
  "Order=First:Time_Centered" = "Order * Trend",
  "WasTarget:Pronoun_Pair=TheyTarget:Order=First" =
    "Pronoun Pair (T|HS vs HS|T + HS|SH) * Order * AR(1)",
  "WasTarget:Pronoun_Pair=TheyComp:Order=First" =
    "Pronoun Pair (HS|T vs HS|SH) * Order * AR(1)",
  "Pronoun_Pair=TheyTarget:Order=First:Time_Centered" =
    "Pronoun Pair (T|HS vs HS|T + HS|SH) * Order * Trend",
  "Pronoun_Pair=TheyComp:Order=First:Time_Centered" =
    "Pronoun Pair (HS|T vs HS|SH) * Order * Trend"
)

blank_row1 <- '<tr>\n<td style=\" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;\">'
blank_row4 <- '</td>\n<td style=\" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:center;\" colspan=\"4\">'

exp4_tb_random_effects <- function(text) {
  text %<>% str_replace_all(  # All models
    "ParticipantID", "Participant"
  ) %>% str_remove_all(
    "=1|_"
  ) %>% str_replace_all(  # Sentence ratings
    "Participant.Type=NameGeneric", "Referent Type | Participant"
  ) %>% str_replace_all(  # Match judgments
    "Participant.PronounPair=TheyTarget",
    "Pronoun Pair (T|HS vs HS|T + HS|SH) | Participant"
  ) %>% str_replace_all(
    "Participant.PronounPair=TheyComp",
    "Pronoun Pair (HS|T vs HS|SH) | Participant"
  ) %>% str_replace_all(
    "Story.PronounPair=TheyTarget",
    "Pronoun Pair (T|HS vs HS|T + HS|SH) | Story"
  ) %>% str_replace_all(
    "Story.PronounPair=TheyComp",
    "Pronoun Pair (HS|T vs HS|SH) | Story"
  ) %>% str_replace_all(
    "Story.CorrectPronoun=TheyHeShe", "Pronoun | Story"
  ) %>% str_replace_all(  # Eyetracking
    "Participant.WasTarget", "AR(1) | Participant"
  ) %>% str_replace_all(
    "Participant.Order=First:TrialScaled", "Order \\* Trial Number | Participant"
  ) %>% str_replace_all(
    "Participant.Order=First", "Order | Participant"
  ) %>% str_replace_all(
    "Participant.TrialScaled", "Trial Number | Participant"
  ) %>% str_replace_all(
    "Story.Order=First", "Order | Story"
  ) %>% str_replace_all(
    "Story.TrialScaled", "Trial Number | Story"
  ) %>% str_replace_all(
    "Story.TimeCentered", "Trend | Story"
  )
}
