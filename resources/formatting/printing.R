# Tidy p values for printing in text
tidy_p_values <- function(df) {
  nbsp <- "\u00A0"

  df %<>% mutate(p = case_when(
    p.value <= .001 ~ str_c("p", nbsp, "<", nbsp, ".001"),
    p.value <= .01  ~ str_c("p", nbsp, "<", nbsp, ".01"),
    p.value <= .05  ~ str_c("p", nbsp, "<", nbsp, ".05"),
    p.value >  .05  ~ str_c(
      "p", nbsp, "=", nbsp,
      (p.value %>% round(2) %>% format(nsmall = 2) %>% str_remove("^0"))
    )
  ))
  return(df)
}

# Tidy means/SD for printing in text
tidy_means <- function(df) {
  # convert means to % for text
  df %<>% mutate(percent = mean * 100) # %>%

  # round mean/sd to 2 digits and percent to whole number
  df %<>% mutate(across(c(mean, sd), ~format(., digits = 2, nsmall = 2))) %>%
    mutate(percent = format(percent, digits = 2, nsmall = 0) %>% str_c("%"))

  # row labels
  if ("Pronoun" %in% colnames(df) & "M_Acc" %in% colnames(df)) {
    df %<>% ungroup() %>%
      mutate(
        label = case_when(.default = Pronoun,
          Pronoun == "he/him"    ~ "H",
          Pronoun == "she/her"   ~ "S",
          Pronoun == "they/them" ~ "T"
         ),
        label = case_when(
          M_Acc == 0 ~ str_c(label, " Wrong"),
          M_Acc == 1 ~ str_c(label, " Right")
        )) %>%
      select(-Pronoun, -M_Acc) %>%
      column_to_rownames("label")
  }

  else if ("PSA" %in% colnames(df)) {
    df %<>% ungroup() %>%
      mutate(label = str_c(PSA, Biography, sep = " ")) %>%
      select(-PSA, -Biography) %>%
      column_to_rownames("label")
  }

  else if ("Pronoun" %in% colnames(df)) {
    df %<>% mutate(
      .keep = c("unused"),
      label = case_when(
        .default = Pronoun,
        Pronoun == "he/him"    ~ "H",
        Pronoun == "she/her"   ~ "S",
        Pronoun == "they/them" ~ "T"
      )) %>%
      column_to_rownames("label")
  }

  return(df)

}

# Tidy model results for printing in text
tidy_model_results <- function(model) {
  require(broom.mixed)

  beta <- "\u03B2"
  nbsp <- "\u00A0"
  z    <- "\u007A"

  # Get model estimates
  df <- model %>% tidy() %>% select(-std.error)

  # Drop random effects rows
  if ("effect" %in% colnames(df)) {
    df %<>% filter(effect == "fixed") %>% select(-effect, -group)
  }

  # Rename columns from broom
  df %<>% rename(
    "Predictor" = "term",
    "Beta"      = "estimate",
    "z"         = "statistic"
  )

  # Just two cases where models aren't logistic regression:
  # Sentence naturalness ratings (Exp3&4) and RT (Exp4)
  if ("Type=Name_Generic" %in% df$Predictor || max(df$Beta) > 100) {
    df %<>% rename("t" = "z")
  }

  # Convert p values into < .001 etc
  df %<>% tidy_p_values()

  # Round beta estimates, add symbol and equals sign
  df$Beta %<>% round(2) %>%
    format(digits = 2, nsmall = 2, trim = TRUE, justify = "none") %>%
    str_c("*", beta, "*", nbsp, "=", nbsp, .)

  # Round z/t estimates, add symbol and equals sign
  # Then make column with beta, z/t, and p combined with commas between
  if ("z" %in% colnames(df)) {
    df$z %<>% round(2) %>%
      format(digits = 2, nsmall = 2, trim = TRUE, justify = "none") %>%
      str_c("*z*", nbsp, "=", nbsp, .)

    df %<>% mutate(Text = str_c(Beta, z, p, sep = ", "))
  }
  if ("t" %in% colnames(df)) {
    df$t %<>% round(2) %>%
      format(digits = 2, nsmall = 2, trim = TRUE, justify = "none") %>%
      str_c("*t*", nbsp, "=", nbsp, .)

    df %<>% mutate(Text = str_c(Beta, t, p, sep = ", "))
  }

  # Remove some extra characters from predictor names
  df$Predictor %<>% str_remove_all("\\(|\\)") %>%
    str_remove_all("1|0|=1") %>%
    str_replace("OrderOrder", "Order") %>%
    str_remove_all("_Centered") %>%
    str_remove_all("_C") %>%
    str_remove_all("_Factor")

  # Make predictor column row names so that df can be accessed with [row, col]
  df %<>% column_to_rownames(var = "Predictor")

  return(df)
}

# Tidy t-test results for printing in text
tidy_t_results <- function(t_test) {
  nbsp <- "\u00A0"

  df <- t_test %>%
    tidy() %>%
    select(contains("estimate"), parameter, statistic, p.value) %>%
    rename_with(~str_replace(., "estimate", "mean")) %>%
    rename("df" = "parameter", "t" = "statistic") %>%
    tidy_p_values() %>%
    modify_if(is.numeric, format, digits = 2, nsmall = 2)

  return(df)
}
