# Gets all the response options in demographics survey & puts them in order----
demographics_items <- function(d) {
  # Setup
  require(tidyverse)
  require(magrittr)

  # Age
  age_items <- c(
    "Total", "18-24", "25-34", "35-44", "45-54", "55-64", "65-74", "75+",
    "Prefer not to answer / Missing data"
  )
  age <- tibble(
    Category = rep("Age", length(age_items)),
    Group    = factor(age_items, levels = age_items)
  )

  # Gender
  genders_in_data <- d %>%
    filter(Category == "Gender") %>%
    filter(str_detect(Group, "Total|Prefer not to answer", negate = TRUE)) %>%
    pull(Group) %>%
    unique() %>%
    as.vector()
  gender_items <- c(
    "Total", genders_in_data, "Prefer not to answer / Missing data"
  )
  gender <- tibble(
    Category = rep("Gender", length(gender_items)),
    Group    = factor(gender_items, levels = gender_items)
  )

  # TGD
  TGD_items <- c(
    "Total",
    "I consider myself cisgender",
    "I consider myself transgender",
    "I don't consider myself cisgender or transgender",
    paste("My gender is the same as what was written on my",
          "original birth certificate"),
    paste("My gender is different than what was written on my",
          "original birth certificate"),
    "Prefer not to answer / Missing data"
  )
  TGD <- tibble(
    Category = rep("Transgender & Gender-Diverse", length(TGD_items)),
    Group    = factor(TGD_items, levels = TGD_items)
  )

  # Sexuality
  sexuality_items <- c(
    "Total",
    "Asexual",
    "Bisexual/Pansexual",
    "Gay/Lesbian",
    "Heterosexual/Straight",
    "Queer",
    "Questioning",
    "I use a different term",
    "Prefer not to answer / Missing data"
  )
  sexuality <- tibble(
    Category = rep("Sexuality", length(sexuality_items)),
    Group    = factor(sexuality_items, levels = sexuality_items)
  )

  # Education
  education_items <- c(
    "Total",
    "Less than high school",
    "High school graduate",
    "Some college",
    "2-year degree",
    "4-year degree",
    "Professional degree",
    "Doctorate",
    "Prefer not to answer / Missing data"
  )
  education <- tibble(
    Category = rep("Education", length(education_items)),
    Group    = factor(education_items, levels = education_items)
  )

  # English Experience
  english_items <- c(
    "Total",
    "Native (learned from birth)",
    paste("Fully competent in speaking, listening, reading,",
          "and writing, but not native"),
    "Prefer not to answer / Missing data"
  )
  english <- tibble(
    Category = rep("English Experience", length(english_items)),
    Group    = factor(english_items, levels = english_items)
  )

  # Race and ethnicity
  race_ethnicity_items <- c(
    "Total",
    "American Indian or Alaska Native",
    "Asian",
    "Black, African American, or African",
    "Hispanic, Latino, or Spanish",
    "Middle Eastern or North African",
    "Native Hawaiian or Pacific Islander",
    "White",
    "I use a different term",
    "Prefer not to answer / Missing data"
  )
  race_ethnicity <- tibble(
    Category = rep("Race/Ethnicity", length(race_ethnicity_items)),
    Group    = factor(race_ethnicity_items, levels = race_ethnicity_items)
  )

  demographics_form <- age %>%
    bind_rows(gender) %>%
    bind_rows(TGD) %>%
    bind_rows(sexuality) %>%
    bind_rows(english) %>%
    bind_rows(education) %>%
    bind_rows(race_ethnicity)

  demographics_form
}

# Creates demographics table----
demographics_table <- function(
    d,          # Demographics csv
    categories, # List of categories to include
    title) {
  # Setup
  require(tidyverse)
  require(magrittr)
  require(flextable)
  set_flextable_defaults(padding = 5, line_spacing = 1, font.size = 12)

  # Join counts with all response options
  items <- demographics_items(d)
  table_data <- full_join(items, d, by = c("Category", "Group"))

  # Order
  table_data$Category %<>% factor(
    levels = c(
      "Age", "Gender", "Transgender & Gender-Diverse",
      "Sexuality", "Race/Ethnicity",
      "English Experience", "Education"
    ),
    ordered = TRUE
  )

  # Selected categories
  table_data %<>% filter(Category %in% categories)

  # Zeros for options with no participants
  table_data %<>% mutate(Total = tidyr::replace_na(Total, 0))

  # Take out repeats for printing table in right order
  table_data %<>% mutate(Category = ifelse(Group != "Total", NA,
    as.character(Category)
  ))

  # Table content
  t <- table_data %>%
    flextable() %>%
    set_header_labels(
      Category = title,
      Group = "",
      Total = ""
    ) %>%
    add_footer(
      Category = "Total Participants",
      Group = "",
      Total = d %>% filter(Category == "Age" & Group == "Total") %>% pull(Total)
    )

  # Table formatting
  t %<>% merge_h_range(i = 1, j1 = 1, j2 = 3, part = "header") %>%
    merge_h_range(i = 1, j1 = 1, j2 = 2, part = "footer") %>%
    merge_h_range(
      i = ~ Group == "Total",
      j1 = 1, j2 = 2, part = "body"
    ) %>%
    bold(part = "header") %>%
    bold(part = "footer") %>%
    italic(i = ~ Group == "Total", part = "body") %>%
    border_remove() %>%
    hline_bottom(part = "header") %>%
    hline_top(part = "footer") %>%
    hline_bottom(part = "footer") %>%
    hline(
      i = ~ (lead(Group) == "Total" | Group == "Total"),
      part = "body"
    ) %>%
    width(j = 1, width = 0.25) %>%
    width(j = 2, width = 5) %>%
    align(j = 3, align = "center", part = "all")

  return(t)
}
