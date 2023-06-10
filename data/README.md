
- [Experiment 1A `exp1a_data.csv`](#experiment-1a-exp1a_data.csv)
  - [Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`,
    `SubjEnglish`,
    `List`](#participant-level-variables-subjid-subjage-subjgender-subjenglish-list)
  - [Trial-Level Variables: `Task`, `Name`, `Job`, `Pet`,
    `Pronoun`](#trial-level-variables-task-name-job-pet-pronoun)
  - [Memory Task: `M_Type`, `M_Response`,
    `M_Acc`](#memory-task-m_type-m_response-m_acc)
  - [Production Task: `P_Response`, `P_Pronoun`,
    `P_Acc`](#production-task-p_response-p_pronoun-p_acc)
  - [Introduction Task: `I_Response`](#introduction-task-i_response)
- [Experiment 1B `exp1b_data.csv`](#experiment-1b-exp1b_data.csv)
  - [Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`,
    `SubjEnglish`,
    `List`](#participant-level-variables-subjid-subjage-subjgender-subjenglish-list-1)
  - [Trial-Level Variables: `Task`, `Name`, `Job`, `Pet`,
    `Pronoun`](#trial-level-variables-task-name-job-pet-pronoun-1)
  - [Memory Task: `M_Type`, `M_Response`,
    `M_Acc`](#memory-task-m_type-m_response-m_acc-1)
  - [Production Task: `P_Response`, `P_Pronoun`,
    `P_Acc`](#production-task-p_response-p_pronoun-p_acc-1)
  - [Introduction Task: `I_Response`](#introduction-task-i_response-1)
- [Experiment 2 `exp2_data.csv`](#experiment-2-exp2_data.csv)
  - [Participant-Level Variables: `Participant`, `Age`, `English`,
    `Gender`](#participant-level-variables-participant-age-english-gender)
  - [Condition Variables: `Condition`, `List`, `PSA`,
    `Biography`](#condition-variables-condition-list-psa-biography)
  - [Trial-Level Variables: `Name`, `Job`, `Pet`,
    `Pronoun`](#trial-level-variables-name-job-pet-pronoun)
  - [Memory Task: `M_Type`, `M_Response`,
    `M_Acc`](#memory-task-m_type-m_response-m_acc-2)
  - [Production Task: `P_Text`, `P_Response`,
    `P_Acc`](#production-task-p_text-p_response-p_acc)
- [Experiment 3](#experiment-3)
  - [Image Norming
    `exp3_image-norming.csv`](#image-norming-exp3_image-norming.csv)
    - [Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`,
      `SubjEnglish`,
      `List`](#participant-level-variables-subjid-subjage-subjgender-subjenglish-list-2)
    - [Trial-Level Variables: `Image`, `Image_Title`,
      `Prompt`](#trial-level-variables-image-image_title-prompt)
    - [Response: `Response`, `Pronoun`](#response-response-pronoun)
  - [Pronouns `exp3_pronouns.csv`](#pronouns-exp3_pronouns.csv)
    - [Participant/Condition-Level Variables: `ParticipantID`,
      `Condition`, `Nametag`,
      `Intro`](#participantcondition-level-variables-participantid-condition-nametag-intro)
    - [Trial-Level Variables: `Pronoun_Pair`, `T_Pronoun`, `C_Pronoun`,
      `T_ID`,
      `TrialID`](#trial-level-variables-pronoun_pair-t_pronoun-c_pronoun-t_id-trialid)
    - [Response: `Transcription`, `He`, `His`, `She`, `Her`, `They`,
      `Their`, `Disfluency`, `MultiplePronouns`, `PronounProduced`,
      `Accuracy`](#response-transcription-he-his-she-her-they-their-disfluency-multiplepronouns-pronounproduced-accuracy)
  - [Survey `exp3_survey.csv`](#survey-exp3_survey.csv)
    - [Participant-Level Variables: `ParticipantID`, `Condition`,
      `List`](#participant-level-variables-participantid-condition-list)
    - [Responses: `Category`, `Item`, `Response_Num`, `Response_Bool`,
      `Response_Cat`](#responses-category-item-response_num-response_bool-response_cat)
  - [Demographics
    `exp3_demographics.csv`](#demographics-exp3_demographics.csv)
  - [Participant Covariates
    `exp3_participant-covariates.csv`](#participant-covariates-exp3_participant-covariates.csv)
    - [Trial-Level Variables: `ParticipantID`,
      `Condition`](#trial-level-variables-participantid-condition)
    - [Responses: `Age`, `LGBQ`, `TGD`, `Rating_Generic`, `Rating_Name`,
      `Sharing`, `UseThey`,
      `GenderBeliefs`](#responses-age-lgbq-tgd-rating_generic-rating_name-sharing-usethey-genderbeliefs)
- [Experiment 4](#experiment-4)
  - [Timecourse `exp4_timecourse-full.csv`, `exp4_timecourse-names.csv`,
    `exp4_timecourse-preview.csv`,
    `exp4_timecourse-pronoun.csv`](#timecourse-exp4_timecourse-full.csv-exp4_timecourse-names.csv-exp4_timecourse-preview.csv-exp4_timecourse-pronoun.csv)
    - [Trial-Level Variables: `TrialID`, `TrialNum`, `T_Pronoun`,
      `C_Pronoun`, `Order`,
      `Story`](#trial-level-variables-trialid-trialnum-t_pronoun-c_pronoun-order-story)
    - [Time Variables: `Timestep`](#time-variables-timestep)
    - [Sum Data: `TG`, `CM`, `D1`, `D2`, `D3`,
      `D4`](#sum-data-tg-cm-d1-d2-d3-d4)
    - [Proportion Data: `T_Prop`, `C_Prop`,
      `Ds_Prop`](#proportion-data-t_prop-c_prop-ds_prop)
    - [Binary Data: `IsTarget`,
      `WasTarget`](#binary-data-istarget-wastarget)
  - [Characters `exp4_characters.csv`](#characters-exp4_characters.csv)
    - [Participant-Level Variables: `ParticipantID`,
      `List`](#participant-level-variables-participantid-list)
    - [Trial-Level Variables: `Section`, `Test_Round`, `T_Pronoun`,
      `T_Image`,
      `T_ID`](#trial-level-variables-section-test_round-t_pronoun-t_image-t_id)
    - [Responses: `Acc`, `Selected_Image`, `Selected_ID`,
      `Selected_Pronoun`](#responses-acc-selected_image-selected_id-selected_pronoun)
  - [Match Judgments
    `exp4_match-judgments.csv`](#match-judgments-exp4_match-judgments.csv)
    - [Participant-Level Variables:
      `ParticipantID`](#participant-level-variables-participantid)
    - [Trial-Level Variables: `TrialType`, `TrialID`, `Pronoun_Pair`,
      `T_Pronoun`,
      `C_Pronoun`](#trial-level-variables-trialtype-trialid-pronoun_pair-t_pronoun-c_pronoun)
    - [Response: `Match_Num`, `Match_Start`, `Match_End`, `Match_RT`,
      `IsOutlier`](#response-match_num-match_start-match_end-match_rt-isoutlier)
  - [Survey `exp4_survey.csv`](#survey-exp4_survey.csv)
    - [Participant-Level Variables:
      `ParticipantID`](#participant-level-variables-participantid-1)
    - [Responses: `Category`, `Item`, `Response_Num`, `Response_Bool`,
      `Response_Cat`](#responses-category-item-response_num-response_bool-response_cat-1)
  - [Demographics
    `exp4_demographics.csv`](#demographics-exp4_demographics.csv)

``` r
list.files(getwd(), pattern = "*.csv") %>% kable(col.names = "Files")
```

| Files                           |
|:--------------------------------|
| exp1a_data.csv                  |
| exp1b_data.csv                  |
| exp2_data.csv                   |
| exp3_demographics.csv           |
| exp3_image-norming.csv          |
| exp3_participant-covariates.csv |
| exp3_pronouns.csv               |
| exp3_survey.csv                 |
| exp4_characters.csv             |
| exp4_demographics.csv           |
| exp4_match-judgments.csv        |
| exp4_survey.csv                 |
| exp4_timecourse-full.csv        |
| exp4_timecourse-names.csv       |
| exp4_timecourse-preview.csv     |
| exp4_timecourse-pronoun.csv     |

# Experiment 1A `exp1a_data.csv`

``` r
exp1a <- read.csv("exp1a_data.csv", stringsAsFactors = TRUE)

str(exp1a)
```

    'data.frame':   5202 obs. of  17 variables:
     $ SubjID     : Factor w/ 102 levels "1A_001","1A_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ SubjAge    : int  18 18 18 18 18 18 18 18 18 18 ...
     $ SubjGender : Factor w/ 3 levels "female","male",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ SubjEnglish: Factor w/ 3 levels "fully competent in speaking, listening, reading, and writing, but not native",..: 3 3 3 3 3 3 3 3 3 3 ...
     $ List       : int  2 2 2 2 2 2 2 2 2 2 ...
     $ Task       : Factor w/ 3 levels "introduction",..: 2 2 2 3 2 2 2 3 2 2 ...
     $ Name       : Factor w/ 12 levels "Amanda","Andrew",..: 3 3 3 3 8 8 8 8 4 4 ...
     $ Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 3 3 ...
     $ Pet        : Factor w/ 3 levels "cat","dog","fish": 1 1 1 1 2 2 2 2 3 3 ...
     $ Job        : Factor w/ 12 levels "accountant","doctor",..: 12 12 12 12 4 4 4 4 9 9 ...
     $ M_Type     : Factor w/ 4 levels "","job","pet",..: 2 3 4 1 2 3 4 1 2 3 ...
     $ M_Response : Factor w/ 19 levels "","accountant",..: 19 3 9 1 8 5 18 1 14 7 ...
     $ M_Acc      : int  0 1 1 NA 1 1 0 NA 1 1 ...
     $ P_Response : Factor w/ 793 levels "","amanda fixed her computer",..: 1 1 1 169 1 1 1 235 1 1 ...
     $ P_Pronoun  : Factor w/ 5 levels "","he/him","none",..: 1 1 1 2 1 1 1 2 1 1 ...
     $ P_Acc      : int  NA NA NA 1 NA NA NA 1 NA NA ...
     $ I_Response : Factor w/ 299 levels ""," I would ask Jessica about food spots ",..: 1 1 1 1 1 1 1 1 1 1 ...

### Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`, `SubjEnglish`, `List`

``` r
exp1a_subj <- exp1a %>%
  select(starts_with("Subj"), List) %>%
  unique()
```

102 **participants**, each with 51 trials:

``` r
str(exp1a$SubjID)
```

     Factor w/ 102 levels "1A_001","1A_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp1a %>%
  group_by(SubjID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       51 |    102 |

**Ages:**

``` r
summary(exp1a$SubjAge)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      18.00   18.00   19.00   19.49   20.00   27.00 

``` r
exp1a_subj$SubjAge %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 18  |  28 |
| 19  |  27 |
| 20  |  25 |
| 21  |  18 |
| 22  |   3 |
| 27  |   1 |

**Gender** entered in a free response box, with spelling/capitalization
standardized:

``` r
exp1a_subj$SubjGender %>% summary() %>% kable()
```

|            |   x |
|:-----------|----:|
| female     |  79 |
| male       |  22 |
| non-binary |   1 |

**English Experience:**

``` r
exp1a_subj$SubjEnglish %>% summary() %>% kable()
```

|                                                                              |   x |
|:-----------------------------------------------------------------------------|----:|
| fully competent in speaking, listening, reading, and writing, but not native |  15 |
| limited but adequate competence in speaking, reading, and writing            |   1 |
| native (learned from birth)                                                  |  86 |

**Lists** counterbalancing which names have they/them pronouns:

``` r
exp1a_subj$List %>% as.factor() %>% summary() %>% kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |  34 |
| 2   |  34 |
| 3   |  34 |

### Trial-Level Variables: `Task`, `Name`, `Job`, `Pet`, `Pronoun`

**Task** this observation comes from. There is one row per observation,
with columns belonging to different tasks left blank. See analysis
script for a dataframe structured with one row per item, to directly
compare memory and production responses for the same item.

``` r
exp1a$Task %>% summary() %>% kable()
```

|              |    x |
|:-------------|-----:|
| introduction |  306 |
| memory       | 3672 |
| production   | 1224 |

Character’s correct **name**, **job**, **pet**, and **pronouns**:

Uneven numbers because only 3 characters appeared again in introduction
task.

``` r
exp1a$Name %>% summary() %>% kable()
```

|           |   x |
|:----------|----:|
| Amanda    | 442 |
| Andrew    | 442 |
| Brian     | 442 |
| Daniel    | 408 |
| Emily     | 442 |
| James     | 408 |
| Jessica   | 442 |
| Kevin     | 442 |
| Laura     | 408 |
| Melissa   | 442 |
| Michael   | 442 |
| Stephanie | 442 |

``` r
exp1a$Pronoun %>% summary() %>% kable()
```

|           |    x |
|:----------|-----:|
| he/him    | 1734 |
| she/her   | 1734 |
| they/them | 1734 |

``` r
exp1a$Pet %>% summary() %>% kable()
```

|      |    x |
|:-----|-----:|
| cat  | 1700 |
| dog  | 1700 |
| fish | 1802 |

### Memory Task: `M_Type`, `M_Response`, `M_Acc`

12 per participant. NA rows are different tasks.

**Question type:**

``` r
exp1a$M_Type %>% na.omit() %>% summary() %>% kable()
```

|         |    x |
|:--------|-----:|
|         | 1530 |
| job     | 1224 |
| pet     | 1224 |
| pronoun | 1224 |

**Response:**

``` r
str(exp1a$M_Response)
```

     Factor w/ 19 levels "","accountant",..: 19 3 9 1 8 5 18 1 14 7 ...

``` r
exp1a %>% filter(!is.na(M_Acc)) %>% count(M_Type, M_Response) %>% kable()
```

| M_Type  | M_Response   |   n |
|:--------|:-------------|----:|
| job     | accountant   | 116 |
| job     | doctor       |  97 |
| job     | engineer     |  92 |
| job     | food service | 115 |
| job     | IT           | 112 |
| job     | janitor      |  91 |
| job     | mechanic     |  97 |
| job     | nurse        |  93 |
| job     | retail       |  83 |
| job     | sales        |  93 |
| job     | teacher      | 120 |
| job     | Uber driver  | 115 |
| pet     | cat          | 398 |
| pet     | dog          | 412 |
| pet     | fish         | 414 |
| pronoun | he/him       | 426 |
| pronoun | she/her      | 437 |
| pronoun | they/them    | 361 |

**Accuracy**, if Pronoun/Pet/Job matches M_Response:

``` r
summary(exp1a$M_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
     0.0000  0.0000  0.0000  0.4273  1.0000  1.0000    1530 

### Production Task: `P_Response`, `P_Pronoun`, `P_Acc`

12 per participant

Full **response** for sentence completion task:

``` r
str(exp1a$P_Response)
```

     Factor w/ 793 levels "","amanda fixed her computer",..: 1 1 1 169 1 1 1 235 1 1 ...

**Pronoun** used (he/him, she/her, they/them, none), parsed in Qualtrics
pre-processing script:

``` r
str(exp1a$P_Pronoun)
```

     Factor w/ 5 levels "","he/him","none",..: 1 1 1 2 1 1 1 2 1 1 ...

``` r
exp1a %>% filter(!is.na(P_Acc)) %>% count(Pronoun, P_Pronoun) %>% kable()
```

| Pronoun   | P_Pronoun |   n |
|:----------|:----------|----:|
| he/him    | he/him    | 339 |
| he/him    | none      |   8 |
| he/him    | she/her   |   1 |
| he/him    | they/them |  60 |
| she/her   | he/him    |   2 |
| she/her   | none      |   7 |
| she/her   | she/her   | 350 |
| she/her   | they/them |  49 |
| they/them | he/him    | 139 |
| they/them | none      |   9 |
| they/them | she/her   | 140 |
| they/them | they/them | 120 |

**Accuracy**, if Pronoun matches P_Pronoun:

``` r
summary(exp1a$P_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      0.000   0.000   1.000   0.661   1.000   1.000    3978 

### Introduction Task: `I_Response`

3 per participant.

Full **response** text:

``` r
str(exp1a$I_Response)
```

     Factor w/ 299 levels ""," I would ask Jessica about food spots ",..: 1 1 1 1 1 1 1 1 1 1 ...

# Experiment 1B `exp1b_data.csv`

Same structure as Experiment 1A.

``` r
exp1b <- read.csv("exp1b_data.csv", stringsAsFactors = TRUE)

str(exp1b)
```

    'data.frame':   5151 obs. of  17 variables:
     $ SubjID     : Factor w/ 101 levels "1B_001","1B_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ SubjAge    : int  18 18 18 18 18 18 18 18 18 18 ...
     $ SubjGender : Factor w/ 6 levels "female","female cis",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ SubjEnglish: Factor w/ 4 levels "Fully competent in speaking listening reading and writing but not native\n",..: 4 4 4 4 4 4 4 4 4 4 ...
     $ List       : int  2 2 2 2 2 2 2 2 2 2 ...
     $ Task       : Factor w/ 3 levels "introduction",..: 2 2 2 3 2 2 2 3 2 2 ...
     $ Name       : Factor w/ 12 levels "Amanda","Andrew",..: 3 3 3 3 8 8 8 8 4 4 ...
     $ Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 3 3 ...
     $ Pet        : Factor w/ 3 levels "cat","dog","fish": 1 1 1 1 2 2 2 2 3 3 ...
     $ Job        : Factor w/ 12 levels "accountant","doctor",..: 12 12 12 12 4 4 4 4 9 9 ...
     $ M_Type     : Factor w/ 4 levels "","job","pet",..: 2 3 4 1 2 3 4 1 2 3 ...
     $ M_Response : Factor w/ 19 levels "","accountant",..: 19 7 9 1 8 5 9 1 14 7 ...
     $ M_Acc      : int  0 0 1 NA 1 1 1 NA 1 1 ...
     $ P_Response : Factor w/ 759 levels "","After Amanda got home from working as an engineer they took a rest directly.",..: 1 1 1 45 1 1 1 653 1 1 ...
     $ P_Pronoun  : Factor w/ 5 levels "","he/him","none",..: 1 1 1 2 1 1 1 5 1 1 ...
     $ P_Acc      : int  NA NA NA 1 NA NA NA 0 NA NA ...
     $ I_Response : Factor w/ 297 levels "","Amanda goes by she/her. Amanda is a salesman and has a pet cat. ",..: 1 1 1 1 1 1 1 1 1 1 ...

### Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`, `SubjEnglish`, `List`

``` r
exp1b_subj <- exp1b %>%
  select(starts_with("Subj"), List) %>%
  unique()
```

101 **participants**, each with 51 trials:

``` r
str(exp1b$SubjID)
```

     Factor w/ 101 levels "1B_001","1B_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp1b %>%
  group_by(SubjID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       51 |    101 |

**Ages:**

``` r
summary(exp1b$SubjAge)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      18.00   18.00   19.00   19.28   20.00   22.00 

``` r
exp1b_subj$SubjAge %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 18  |  34 |
| 19  |  30 |
| 20  |  18 |
| 21  |  17 |
| 22  |   3 |

**Gender** entered in a free response box, with spelling/capitalization
standardized:

``` r
exp1b_subj$SubjGender %>% summary() %>% kable()
```

|                |   x |
|:---------------|----:|
| female         |  70 |
| female cis     |   1 |
| female she/her |   2 |
| male           |  27 |
| straight male  |   1 |
| trans man      |   1 |

**English Experience:**

``` r
exp1b_subj$SubjEnglish %>% summary() %>% kable()
```

|                                                                             |   x |
|:----------------------------------------------------------------------------|----:|
| Fully competent in speaking listening reading and writing but not native    |   1 |
| fully competent in speaking listening, reading, and writing, but not native |  17 |
| limited but adequate competence in speaking, reading, and writing           |   2 |
| native (learned from birth)                                                 |  82 |

**Lists** counterbalancing which names have they/them pronouns:

``` r
exp1b_subj$List %>% as.factor() %>% summary() %>% kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |  32 |
| 2   |  35 |
| 3   |  35 |

### Trial-Level Variables: `Task`, `Name`, `Job`, `Pet`, `Pronoun`

**Task** this observation comes from. There is one row per observation,
with columns belonging to different tasks left blank. See analysis
script for a dataframe structured with one row per item, to directly
compare memory and production responses for the same item.

``` r
exp1b$Task %>% summary() %>% kable()
```

|              |    x |
|:-------------|-----:|
| introduction |  303 |
| memory       | 3636 |
| production   | 1212 |

Character’s correct **name**, **job**, **pet**, and **pronouns**:

Uneven numbers because only 3 characters appeared again in introduction
task.

``` r
exp1b$Name %>% summary() %>% kable()
```

|           |   x |
|:----------|----:|
| Amanda    | 436 |
| Andrew    | 436 |
| Brian     | 438 |
| Daniel    | 404 |
| Emily     | 439 |
| James     | 404 |
| Jessica   | 439 |
| Kevin     | 438 |
| Laura     | 404 |
| Melissa   | 436 |
| Michael   | 439 |
| Stephanie | 438 |

``` r
exp1b$Pronoun %>% summary() %>% kable()
```

|           |    x |
|:----------|-----:|
| he/him    | 1717 |
| she/her   | 1717 |
| they/them | 1717 |

``` r
exp1b$Pet %>% summary() %>% kable()
```

|      |    x |
|:-----|-----:|
| cat  | 1683 |
| dog  | 1682 |
| fish | 1786 |

### Memory Task: `M_Type`, `M_Response`, `M_Acc`

12 per participant. NA rows are different tasks.

**Question type:**

``` r
exp1b$M_Type %>% na.omit() %>% summary() %>% kable()
```

|         |    x |
|:--------|-----:|
|         | 1515 |
| job     | 1212 |
| pet     | 1212 |
| pronoun | 1212 |

**Response:**

``` r
str(exp1b$M_Response)
```

     Factor w/ 19 levels "","accountant",..: 19 7 9 1 8 5 9 1 14 7 ...

``` r
exp1b %>% filter(!is.na(M_Acc)) %>% count(M_Type, M_Response) %>% kable()
```

| M_Type  | M_Response   |   n |
|:--------|:-------------|----:|
| job     | accountant   | 106 |
| job     | doctor       |  83 |
| job     | engineer     |  80 |
| job     | food service | 106 |
| job     | IT           | 107 |
| job     | janitor      |  99 |
| job     | mechanic     | 100 |
| job     | nurse        | 106 |
| job     | retail       |  91 |
| job     | sales        |  96 |
| job     | teacher      | 118 |
| job     | Uber driver  | 120 |
| pet     | cat          | 405 |
| pet     | dog          | 434 |
| pet     | fish         | 373 |
| pronoun | he/him       | 428 |
| pronoun | she/her      | 427 |
| pronoun | they/them    | 357 |

**Accuracy**, if Pronoun/Pet/Job matches M_Response:

``` r
summary(exp1b$M_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
     0.0000  0.0000  0.0000  0.4703  1.0000  1.0000    1515 

### Production Task: `P_Response`, `P_Pronoun`, `P_Acc`

12 per participant

Full **response** for sentence completion task:

``` r
str(exp1b$P_Response)
```

     Factor w/ 759 levels "","After Amanda got home from working as an engineer they took a rest directly.",..: 1 1 1 45 1 1 1 653 1 1 ...

**Pronoun** used (he/him, she/her, they/them, none), parsed in Qualtrics
pre-processing script:

``` r
str(exp1b$P_Pronoun)
```

     Factor w/ 5 levels "","he/him","none",..: 1 1 1 2 1 1 1 5 1 1 ...

``` r
exp1b %>% filter(!is.na(P_Acc)) %>% count(Pronoun, P_Pronoun) %>% kable()
```

| Pronoun   | P_Pronoun |   n |
|:----------|:----------|----:|
| he/him    | he/him    | 340 |
| he/him    | none      |  14 |
| he/him    | she/her   |   1 |
| he/him    | they/them |  49 |
| she/her   | he/him    |   1 |
| she/her   | none      |  15 |
| she/her   | she/her   | 341 |
| she/her   | they/them |  47 |
| they/them | he/him    | 124 |
| they/them | none      |  12 |
| they/them | she/her   | 110 |
| they/them | they/them | 158 |

**Accuracy**, if Pronoun matches P_Pronoun:

``` r
summary(exp1b$P_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      0.000   0.000   1.000   0.692   1.000   1.000    3939 

### Introduction Task: `I_Response`

3 per participant.

Full **response** text:

``` r
str(exp1b$I_Response)
```

     Factor w/ 297 levels "","Amanda goes by she/her. Amanda is a salesman and has a pet cat. ",..: 1 1 1 1 1 1 1 1 1 1 ...

# Experiment 2 `exp2_data.csv`

This has 1 row per character for pronoun questions, so memory and
production responses are in the same row. But job and pet memory
questions have their own rows, meaning that the production columns are
NA for those.

``` r
exp2 <- read.csv("exp2_data.csv", stringsAsFactors = TRUE)
str(exp2)
```

    'data.frame':   11520 obs. of  18 variables:
     $ Participant: Factor w/ 320 levels "2_001","2_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Age        : int  53 53 53 53 53 53 53 53 53 53 ...
     $ English    : Factor w/ 4 levels "fully competent in speaking, listening, reading, and writing, but not native",..: 3 3 3 3 3 3 3 3 3 3 ...
     $ Gender     : Factor w/ 2 levels "female","male": 2 2 2 2 2 2 2 2 2 2 ...
     $ Condition  : Factor w/ 4 levels "both","neither",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ List       : Factor w/ 12 levels "both_1","both_2",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ PSA        : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Biography  : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Name       : Factor w/ 12 levels "Amanda","Andrew",..: 2 2 7 2 7 1 1 7 6 6 ...
     $ Job        : Factor w/ 12 levels "accountant","doctor",..: 11 11 4 11 4 3 3 4 6 6 ...
     $ Pet        : Factor w/ 3 levels "cat","dog","fish": 2 2 3 2 3 1 1 3 2 2 ...
     $ Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 2 1 2 2 2 2 1 1 ...
     $ M_Type     : Factor w/ 3 levels "job","pet","pronoun": 2 3 1 1 3 1 2 2 1 2 ...
     $ M_Response : Factor w/ 18 levels "accountant","cat",..: 4 8 11 10 15 9 6 2 5 4 ...
     $ M_Acc      : int  1 1 0 0 1 0 0 0 0 1 ...
     $ P_Text     : Factor w/ 2918 levels " after the work he  play with the kids",..: NA 2625 NA NA 2172 NA NA NA NA NA ...
     $ P_Response : Factor w/ 4 levels "he/him","none",..: NA 4 NA NA 3 NA NA NA NA NA ...
     $ P_Acc      : int  NA 0 NA NA 1 NA NA NA NA NA ...

### Participant-Level Variables: `Participant`, `Age`, `English`, `Gender`

``` r
exp2_subj <- exp2 %>%
  select(Participant, Age, English, Gender,
         Condition, List, PSA, Biography) %>%
  unique()
```

320 **participants**, each doing 36 trials:

``` r
str(exp2$Participant)
```

     Factor w/ 320 levels "2_001","2_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp2 %>%
  group_by(Participant) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       36 |    320 |

**Age:**

``` r
summary(exp2_subj$Age)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      22.00   30.00   36.00   38.79   45.00   77.00 

``` r
exp2_subj$Age %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 22  |   3 |
| 23  |   3 |
| 24  |   6 |
| 25  |   7 |
| 26  |  10 |
| 27  |  10 |
| 28  |  16 |
| 29  |  15 |
| 30  |  15 |
| 31  |   9 |
| 32  |  21 |
| 33  |   9 |
| 34  |  17 |
| 35  |  15 |
| 36  |  14 |
| 37  |  16 |
| 38  |  13 |
| 39  |   9 |
| 40  |  12 |
| 41  |   5 |
| 42  |   2 |
| 43  |   4 |
| 44  |   3 |
| 45  |   9 |
| 46  |   3 |
| 47  |   6 |
| 48  |   4 |
| 49  |   5 |
| 50  |   2 |
| 51  |   4 |
| 52  |   2 |
| 53  |   6 |
| 54  |   5 |
| 55  |   6 |
| 56  |   2 |
| 57  |   4 |
| 58  |   4 |
| 59  |   2 |
| 60  |   1 |
| 61  |   3 |
| 62  |   3 |
| 63  |   1 |
| 64  |   1 |
| 65  |   4 |
| 66  |   1 |
| 67  |   1 |
| 70  |   2 |
| 71  |   2 |
| 72  |   1 |
| 73  |   1 |
| 77  |   1 |

**English Experience:**

``` r
exp2_subj$English %>% summary() %>% kable()
```

|                                                                              |   x |
|:-----------------------------------------------------------------------------|----:|
| fully competent in speaking, listening, reading, and writing, but not native |  14 |
| limited but adequate competence in speaking, reading, and writing            |   1 |
| native (learned from birth)                                                  | 304 |
| some familiarity (e.g., a year of instruction in school)                     |   1 |

**Gender**, entered in a free response box, with spelling/capitalization
standardized:

``` r
exp2_subj$Gender %>% summary() %>% kable()
```

|        |   x |
|:-------|----:|
| female | 125 |
| male   | 194 |
| NA's   |   1 |

### Condition Variables: `Condition`, `List`, `PSA`, `Biography`

Original **condition** labels:

- `Both` = Gendered Language PSA + They Bios
- `Neither` = Unrelated PSA + He/She Bios
- `PSA` = Gendered Language PSA + He/She Bios
- `Story` = Unrelated PSA + They Bios

``` r
exp2_subj$Condition %>% summary() %>% kable()
```

|         |   x |
|:--------|----:|
| both    |  80 |
| neither |  80 |
| psa     |  80 |
| story   |  80 |

12 **lists**: 4 conditions x 3 sets of characters (name/pronoun
combinations).

``` r
exp2$List %>% summary() %>% kable()
```

|           |    x |
|:----------|-----:|
| both_1    |  756 |
| both_2    | 1224 |
| both_3    |  900 |
| neither_1 |  936 |
| neither_2 |  972 |
| neither_3 |  972 |
| psa_1     | 1008 |
| psa_2     |  936 |
| psa_3     |  936 |
| story_1   |  900 |
| story_2   |  936 |
| story_3   | 1044 |

**PSA Condition**: 0 = Unrelated, 1 = Gendered Language.

``` r
exp2_subj$PSA %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 0   | 160 |
| 1   | 160 |

**Biography Condition**: 0 = He/She, 1 = They.

``` r
exp2_subj$Biography %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 0   | 160 |
| 1   | 160 |

### Trial-Level Variables: `Name`, `Job`, `Pet`, `Pronoun`

``` r
exp2$Name %>% summary() %>% kable()
```

|           |   x |
|:----------|----:|
| Amanda    | 960 |
| Andrew    | 960 |
| Brian     | 960 |
| Daniel    | 960 |
| Emily     | 960 |
| James     | 960 |
| Jessica   | 960 |
| Kevin     | 960 |
| Laura     | 960 |
| Melissa   | 960 |
| Michael   | 960 |
| Stephanie | 960 |

``` r
exp2$Pronoun %>% summary() %>% kable()
```

|           |    x |
|:----------|-----:|
| he/him    | 3840 |
| she/her   | 3840 |
| they/them | 3840 |

``` r
exp2$Pet %>% summary() %>% kable()
```

|      |    x |
|:-----|-----:|
| cat  | 3840 |
| dog  | 3840 |
| fish | 3840 |

### Memory Task: `M_Type`, `M_Response`, `M_Acc`

**Question type:**

``` r
exp2$M_Type %>% na.omit() %>% summary() %>% kable()
```

|         |    x |
|:--------|-----:|
| job     | 3840 |
| pet     | 3840 |
| pronoun | 3840 |

**Response:**

``` r
str(exp2$M_Response)
```

     Factor w/ 18 levels "accountant","cat",..: 4 8 11 10 15 9 6 2 5 4 ...

``` r
exp2 %>% count(M_Type, M_Response) %>% kable()
```

| M_Type  | M_Response   |    n |
|:--------|:-------------|-----:|
| job     | accountant   |  361 |
| job     | doctor       |  311 |
| job     | engineer     |  316 |
| job     | food service |  327 |
| job     | IT           |  322 |
| job     | janitor      |  263 |
| job     | mechanic     |  290 |
| job     | nurse        |  332 |
| job     | retail       |  296 |
| job     | sales        |  317 |
| job     | teacher      |  364 |
| job     | Uber driver  |  341 |
| pet     | cat          | 1337 |
| pet     | dog          | 1325 |
| pet     | fish         | 1178 |
| pronoun | he/him       | 1334 |
| pronoun | she/her      | 1366 |
| pronoun | they/them    | 1140 |

**Accuracy,** if Pronoun/Pet/Job matches M_Response:

``` r
summary(exp2$M_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     0.0000  0.0000  1.0000  0.5403  1.0000  1.0000 

### Production Task: `P_Text`, `P_Response`, `P_Acc`

Full **response** text:

``` r
str(exp2$P_Response)
```

     Factor w/ 4 levels "he/him","none",..: NA 4 NA NA 3 NA NA NA NA NA ...

**Pronoun** used. This is calculated in a prior script that reads the
PCIbex output into a format R can deal with.

``` r
str(exp2$P_Response)
```

     Factor w/ 4 levels "he/him","none",..: NA 4 NA NA 3 NA NA NA NA NA ...

``` r
exp2 %>% filter(!is.na(P_Acc)) %>% count(Pronoun, P_Response) %>% kable()
```

| Pronoun   | P_Response |    n |
|:----------|:-----------|-----:|
| he/him    | he/him     | 1100 |
| he/him    | none       |   47 |
| he/him    | she/her    |   22 |
| he/him    | they/them  |  111 |
| she/her   | he/him     |   57 |
| she/her   | none       |   58 |
| she/her   | she/her    | 1062 |
| she/her   | they/them  |  103 |
| they/them | he/him     |  495 |
| they/them | none       |   51 |
| they/them | she/her    |  450 |
| they/them | they/them  |  284 |

**Accuracy,** if Pronoun matches P_Pronoun:

``` r
summary(exp2$M_Acc)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     0.0000  0.0000  1.0000  0.5403  1.0000  1.0000 

# Experiment 3

## Image Norming `exp3_image-norming.csv`

``` r
exp3_norming <- read.csv("exp3_image-norming.csv",
                         stringsAsFactors = TRUE) %>%
  select(ParticipantID, SubjAge, SubjEnglish, SubjGender, List,
         Image, Image_Title, Prompt,
         Response, Pronoun)

str(exp3_norming)
```

    'data.frame':   360 obs. of  10 variables:
     $ ParticipantID: Factor w/ 30 levels "N_001","N_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ SubjAge      : int  49 49 49 49 49 49 49 49 49 49 ...
     $ SubjEnglish  : Factor w/ 2 levels "Fully competent in speaking, listening, reading, and writing, but not native",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ SubjGender   : Factor w/ 2 levels "man","woman": 2 2 2 2 2 2 2 2 2 2 ...
     $ List         : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Image        : Factor w/ 12 levels "gs01.png","gs02.png",..: 1 2 3 4 5 6 7 8 9 10 ...
     $ Image_Title  : Factor w/ 12 levels "A genderqueer person sitting on a therapist's couch listening",..: 2 3 5 6 7 9 10 1 11 4 ...
     $ Prompt       : Factor w/ 12 levels "This person chose a playlist for the drive. After turning up the volume...",..: 12 3 1 11 5 4 9 6 2 10 ...
     $ Response     : Factor w/ 349 levels "—danced to the music.",..: 32 81 53 76 54 71 72 22 38 78 ...
     $ Pronoun      : Factor w/ 4 levels "he/him","none",..: 1 3 3 3 3 3 3 1 1 3 ...

### Participant-Level Variables: `SubjID`, `SubjAge`, `SubjGender`, `SubjEnglish`, `List`

``` r
exp3_norming_subj <- exp3_norming %>%
  select(ParticipantID, starts_with("Subj"), List) %>%
  unique()
```

30 **participants**, each with 12 trials:

``` r
str(exp3_norming$ParticipantID)
```

     Factor w/ 30 levels "N_001","N_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp3_norming %>%
  group_by(ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       12 |     30 |

**Ages:**

``` r
summary(exp3_norming_subj$SubjAge)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      18.00   21.00   24.50   29.43   34.00   56.00 

``` r
exp3_norming_subj$SubjAge %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 18  |   1 |
| 19  |   2 |
| 20  |   3 |
| 21  |   4 |
| 22  |   3 |
| 23  |   2 |
| 26  |   2 |
| 28  |   2 |
| 31  |   2 |
| 34  |   2 |
| 38  |   1 |
| 41  |   1 |
| 44  |   1 |
| 49  |   1 |
| 52  |   1 |
| 53  |   1 |
| 56  |   1 |

**Gender** entered in a free response box, with spelling/capitalization
standardized:

``` r
exp3_norming_subj$SubjGender %>% summary() %>% kable()
```

|       |   x |
|:------|----:|
| man   |   7 |
| woman |  23 |

**English Experience:**

``` r
exp3_norming_subj$SubjEnglish %>% summary() %>% kable()
```

|                                                                              |   x |
|:-----------------------------------------------------------------------------|----:|
| Fully competent in speaking, listening, reading, and writing, but not native |   1 |
| Native (learned from birth)                                                  |  29 |

**Lists** counterbalancing which the images and prompts:

``` r
exp3_norming_subj$List %>% as.factor() %>% summary() %>% kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |  10 |
| 2   |  10 |
| 3   |  10 |

### Trial-Level Variables: `Image`, `Image_Title`, `Prompt`

**Image code:**

``` r
exp3_norming$Image %>% summary() %>% kable()
```

|          |   x |
|:---------|----:|
| gs01.png |  30 |
| gs02.png |  30 |
| gs03.png |  30 |
| gs04.png |  30 |
| gs05.png |  30 |
| gs06.png |  30 |
| gs07.png |  30 |
| gs08.png |  30 |
| gs09.png |  30 |
| gs10.png |  30 |
| gs11.png |  30 |
| gs12.png |  30 |

Image **title** in *The Gender Spectrum Collection* database:

``` r
exp3_norming$Image_Title %>% summary() %>% kable()
```

|                                                                                                                         |   x |
|:------------------------------------------------------------------------------------------------------------------------|----:|
| A genderqueer person sitting on a therapist's couch listening                                                           |  30 |
| A group of friends of varying genders gossiping (second from left)                                                      |  30 |
| A group of friends of varying genders playing with popcorn at a party (left)                                            |  30 |
| A non-binary femme student talking to a friend in front of their locker (right)                                         |  30 |
| A transfeminine non-binary person and transmasculine gender-nonconforming person looking at a phone and laughing (left) |  30 |
| A transgender woman sitting on a therapist's couch and smiling                                                          |  30 |
| A transgender woman sitting with an altar                                                                               |  30 |
| A transmasculine doctor in front of his computer                                                                        |  30 |
| A transmasculine gender-nonconforming person sitting on a bed                                                           |  30 |
| A transmasculine person in a winter coat on the sidewalk                                                                |  30 |
| Two non-binary friends playing video games (left)                                                                       |  30 |
| Two non-binary students looking at each other in a school hallway photoshopped (left)                                   |  30 |

Sentence completion **prompt:**

``` r
exp3_norming$Prompt %>% summary() %>% kable()
```

|                                                                               |   x |
|:------------------------------------------------------------------------------|----:|
| This person chose a playlist for the drive. After turning up the volume...    |  30 |
| This person collected the trash. After taking it out...                       |  30 |
| This person got home from work and cooked dinner. After washing the dishes... |  30 |
| This person got out of the pool. After drying off...                          |  30 |
| This person made a mug of tea. Before it cooled...                            |  30 |
| This person ordered pizza. Before it arrived...                               |  30 |
| This person painted the room. While the walls dried...                        |  30 |
| This person played with the cat. After watching it chase the laser pointer... |  30 |
| This person received a text. After reading it...                              |  30 |
| This person went on a run at the local park. Before finishing...              |  30 |
| This person went to see a show. During the intermission...                    |  30 |
| This person woke up early to walk the dog. After making coffee...             |  30 |

### Response: `Response`, `Pronoun`

Full **response** text:

``` r
str(exp3_norming$Response)
```

     Factor w/ 349 levels "—danced to the music.",..: 32 81 53 76 54 71 72 22 38 78 ...

**Pronoun** used (he/him, she/her, they/them, none), parsed in
pre-processing script:

``` r
summary(exp3_norming$Pronoun) %>% kable()
```

|           |   x |
|:----------|----:|
| he/him    |  25 |
| none      |  40 |
| she/her   |  40 |
| they/them | 255 |

## Pronouns `exp3_pronouns.csv`

``` r
exp3_pronouns <- read.csv("exp3_pronouns.csv", stringsAsFactors = TRUE)
str(exp3_pronouns)
```

    'data.frame':   4803 obs. of  20 variables:
     $ ParticipantID   : Factor w/ 162 levels "3_001","3_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Condition       : Factor w/ 4 levels "both","intro",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Nametag         : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Intro           : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Pronoun_Pair    : Factor w/ 3 levels "HS_HS","HS_T",..: 1 1 1 1 1 2 2 2 2 2 ...
     $ T_Pronoun       : Factor w/ 3 levels "he","she","they": 1 1 1 1 1 1 1 1 1 1 ...
     $ C_Pronoun       : Factor w/ 3 levels "he","she","they": 2 2 2 2 2 3 3 3 3 3 ...
     $ T_ID            : int  1 1 1 1 1 1 1 1 1 1 ...
     $ TrialID         : Factor w/ 720 levels "both_list1_critical01_he",..: 1 2 3 4 5 6 7 8 9 10 ...
     $ Transcription   : Factor w/ 1596 levels "\x85grapes to his sister.",..: 228 222 194 296 208 234 259 247 280 274 ...
     $ He              : int  0 0 0 0 0 0 0 0 0 0 ...
     $ His             : int  1 1 1 1 1 1 1 1 1 1 ...
     $ She             : int  0 0 0 0 0 0 0 0 0 0 ...
     $ Her             : int  0 0 0 0 0 0 0 0 0 0 ...
     $ They            : int  0 0 0 0 0 0 0 0 0 0 ...
     $ Their           : int  0 0 0 0 0 0 0 0 0 0 ...
     $ Disfluency      : int  0 0 0 0 0 0 0 0 0 0 ...
     $ MultiplePronouns: int  0 0 0 0 0 0 0 0 0 0 ...
     $ PronounProduced : Factor w/ 4 levels "her","his","none",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ Accuracy        : int  1 1 1 1 1 1 1 1 1 1 ...

### Participant/Condition-Level Variables: `ParticipantID`, `Condition`, `Nametag`, `Intro`

``` r
exp3_pronouns_subj <- exp3_pronouns %>%
  select(ParticipantID, Condition, Nametag, Intro) %>%
  unique()
```

162 **participants**, each completing up to 30 trials. Missing trials
are not included here.

Participant covariates (e.g., age, gender) are in separate file, linked
by these Participant IDs.

``` r
str(exp3_pronouns$ParticipantID)
```

     Factor w/ 162 levels "3_001","3_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp3_pronouns %>%
  group_by(ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       25 |      1 |
|       27 |      1 |
|       28 |      2 |
|       29 |     45 |
|       30 |    113 |

Original **condition** labels:

- `Both` = +Nametag +Intro
- `Intro` = -Nametag +Intro
- `Nametag` = +Nametag -Intro
- `Neither` = -Nametag -Intro

``` r
exp3_pronouns_subj$Condition %>% summary() %>% kable()
```

|         |   x |
|:--------|----:|
| both    |  42 |
| intro   |  40 |
| nametag |  40 |
| neither |  40 |

``` r
exp3_pronouns_subj$Nametag %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 0   |  80 |
| 1   |  82 |

``` r
exp3_pronouns_subj$Intro %>% as.factor() %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| 0   |  80 |
| 1   |  82 |

### Trial-Level Variables: `Pronoun_Pair`, `T_Pronoun`, `C_Pronoun`, `T_ID`, `TrialID`

(All slightly uneven due to trials with no data.)

Pronouns of two pictured characters:

- `HS_HS`: target character uses he/him and distractor character uses
  she/her, or target character uses she/her and distractor character
  uses he/him
- `HS_T`: target character uses he/him or she/her and distractor
  character uses they/them
- `T_HS`: target character uses they/them and distractor character uses
  he/him or she/her

``` r
exp3_pronouns$Pronoun_Pair %>% summary() %>% kable()
```

|       |    x |
|:------|-----:|
| HS_HS | 1608 |
| HS_T  | 1600 |
| T_HS  | 1595 |

**Target character pronouns:**

``` r
exp3_pronouns$T_Pronoun %>% summary() %>% kable()
```

|      |    x |
|:-----|-----:|
| he   | 1602 |
| she  | 1606 |
| they | 1595 |

**Other pictured character pronouns:**

``` r
exp3_pronouns$C_Pronoun %>% summary() %>% kable()
```

|      |    x |
|:-----|-----:|
| he   | 1598 |
| she  | 1605 |
| they | 1600 |

**Target character ID**. 6 lists varying name-image-pronoun
combinations, with a trio of he/him, she/her, and they/them in each
list, for a total of 18 characters.

``` r
exp3_pronouns$T_ID %>% as.factor() %>% summary() %>% kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   | 269 |
| 2   | 270 |
| 3   | 267 |
| 4   | 258 |
| 5   | 255 |
| 6   | 255 |
| 7   | 265 |
| 8   | 270 |
| 9   | 265 |
| 10  | 253 |
| 11  | 259 |
| 12  | 254 |
| 13  | 280 |
| 14  | 279 |
| 15  | 277 |
| 16  | 277 |
| 17  | 273 |
| 18  | 277 |

Unique **trial ID** that can be used to get other info about the
characters, the object, and the locations on the screen.

``` r
str(exp3_pronouns$TrialID)
```

     Factor w/ 720 levels "both_list1_critical01_he",..: 1 2 3 4 5 6 7 8 9 10 ...

### Response: `Transcription`, `He`, `His`, `She`, `Her`, `They`, `Their`, `Disfluency`, `MultiplePronouns`, `PronounProduced`, `Accuracy`

**Response text,** transcribed to include disfluencies:

``` r
str(exp3_pronouns$Transcription)
```

     Factor w/ 1596 levels "\x85grapes to his sister.",..: 228 222 194 296 208 234 259 247 280 274 ...

If trial contains *he*, *his*, *she*, *her*, *they*, and/or *their* to
refer to the target character. Coded for subject pronouns, but almost
all pronouns were possessives.

``` r
exp3_pronouns %>%
  select(He, His, She, Her, They, Their) %>%
  summary() %>%
  kable()
```

|     | He                | His            | She               | Her            | They              | Their          |
|:----|:------------------|:---------------|:------------------|:---------------|:------------------|:---------------|
|     | Min. :0.0000000   | Min. :0.0000   | Min. :0.0000000   | Min. :0.0000   | Min. :0.0000000   | Min. :0.0000   |
|     | 1st Qu.:0.0000000 | 1st Qu.:0.0000 | 1st Qu.:0.0000000 | 1st Qu.:0.0000 | 1st Qu.:0.0000000 | 1st Qu.:0.0000 |
|     | Median :0.0000000 | Median :0.0000 | Median :0.0000000 | Median :0.0000 | Median :0.0000000 | Median :0.0000 |
|     | Mean :0.0002082   | Mean :0.3517   | Mean :0.0004164   | Mean :0.3529   | Mean :0.0004164   | Mean :0.2954   |
|     | 3rd Qu.:0.0000000 | 3rd Qu.:1.0000 | 3rd Qu.:0.0000000 | 3rd Qu.:1.0000 | 3rd Qu.:0.0000000 | 3rd Qu.:1.0000 |
|     | Max. :1.0000000   | Max. :1.0000   | Max. :1.0000000   | Max. :1.0000   | Max. :1.0000000   | Max. :1.0000   |

Trials coded as 1 if they included a **disfluency:**

``` r
exp3_pronouns$Disfluency %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    0.00000 0.00000 0.00000 0.05871 0.00000 1.00000 

``` r
exp3_pronouns %>% count(T_Pronoun, Disfluency) %>% kable()
```

| T_Pronoun | Disfluency |    n |
|:----------|-----------:|-----:|
| he        |          0 | 1511 |
| he        |          1 |   91 |
| she       |          0 | 1523 |
| she       |          1 |   83 |
| they      |          0 | 1487 |
| they      |          1 |  108 |

Trials coded as 1 if they included multiple **different pronouns**
referring to the target characters:

``` r
exp3_pronouns$MultiplePronouns %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    0.00000 0.00000 0.00000 0.01603 0.00000 1.00000 

``` r
exp3_pronouns %>% count(T_Pronoun, MultiplePronouns) %>% kable()
```

| T_Pronoun | MultiplePronouns |    n |
|:----------|-----------------:|-----:|
| he        |                0 | 1581 |
| he        |                1 |   21 |
| she       |                0 | 1587 |
| she       |                1 |   19 |
| they      |                0 | 1558 |
| they      |                1 |   37 |

## Survey `exp3_survey.csv`

``` r
exp3_survey <- read.csv("exp3_survey.csv", stringsAsFactors = TRUE)
str(exp3_survey)
```

    'data.frame':   8202 obs. of  8 variables:
     $ ParticipantID: Factor w/ 162 levels "3_001","3_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Condition    : Factor w/ 4 levels "both","intro",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ List         : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Category     : Factor w/ 11 levels "Age","Education",..: 8 8 8 8 8 8 5 5 5 5 ...
     $ Item         : Factor w/ 65 levels "18-24","2-year degree",..: 46 21 57 19 25 18 51 16 26 27 ...
     $ Response_Num : int  1 1 1 5 1 6 NA NA NA NA ...
     $ Response_Bool: logi  NA NA NA NA NA NA ...
     $ Response_Cat : Factor w/ 32 levels "2-year degree",..: NA NA NA NA NA NA NA NA NA NA ...

### Participant-Level Variables: `ParticipantID`, `Condition`, `List`

159 participants with survey data (51 questions) + 3 participants with
missing data.

``` r
str(exp3_survey$ParticipantID)
```

     Factor w/ 162 levels "3_001","3_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp3_survey %>%
  group_by(ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       31 |      3 |
|       51 |    159 |

Original **condition** labels:

- `Both` = +Nametag +Intro
- `Intro` = -Nametag +Intro
- `Nametag` = +Nametag -Intro
- `Neither` = -Nametag -Intro

4 conditions x 6 lists of characters varying name-pronoun-image
combinations (see `T_ID` in pronoun data).

``` r
exp3_survey %>%
  select(ParticipantID, Condition, List) %>%
  unique() %>%
  group_by(Condition, List) %>%
  summarise(n = n_distinct(ParticipantID)) %>%
  arrange(List) %>%
  kable()
```

    `summarise()` has grouped output by 'Condition'. You can override using the
    `.groups` argument.

| Condition | List |   n |
|:----------|-----:|----:|
| both      |    1 |   8 |
| both      |    2 |   6 |
| both      |    3 |   6 |
| both      |    4 |   6 |
| both      |    5 |   7 |
| both      |    6 |   7 |
| nametag   |    7 |   7 |
| nametag   |    8 |   7 |
| nametag   |    9 |   7 |
| nametag   |   10 |   6 |
| nametag   |   11 |   6 |
| nametag   |   12 |   7 |
| intro     |   13 |   6 |
| intro     |   14 |   6 |
| intro     |   15 |   7 |
| intro     |   16 |   8 |
| intro     |   17 |   6 |
| intro     |   18 |   6 |
| neither   |   19 |   6 |
| neither   |   20 |   6 |
| neither   |   21 |   6 |
| neither   |   22 |   6 |
| neither   |   23 |   8 |
| neither   |   24 |   8 |
| NA        |   NA |   3 |

### Responses: `Category`, `Item`, `Response_Num`, `Response_Bool`, `Response_Cat`

**Category** is group of questions, **item** is question text/option:

``` r
exp3_survey %>% count(Category, Item) %>% select(-n) %>% kable()
```

| Category                                   | Item                                                                                                                                         |
|:-------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------|
| Age                                        | 18-24                                                                                                                                        |
| Age                                        | 25-34                                                                                                                                        |
| Age                                        | 35-44                                                                                                                                        |
| Age                                        | 45-54                                                                                                                                        |
| Age                                        | 55-64                                                                                                                                        |
| Age                                        | 65-74                                                                                                                                        |
| Age                                        | 75+                                                                                                                                          |
| Age                                        | Missing Data                                                                                                                                 |
| Education                                  | 2-year degree                                                                                                                                |
| Education                                  | 4-year degree                                                                                                                                |
| Education                                  | Doctorate                                                                                                                                    |
| Education                                  | High school graduate                                                                                                                         |
| Education                                  | Less than high school                                                                                                                        |
| Education                                  | Missing Data                                                                                                                                 |
| Education                                  | Prefer not to answer                                                                                                                         |
| Education                                  | Professional degree                                                                                                                          |
| Education                                  | Some college                                                                                                                                 |
| English Experience                         | Fully competent in speaking, listening, reading, and writing, but not native                                                                 |
| English Experience                         | Missing Data                                                                                                                                 |
| English Experience                         | Native (learned from birth)                                                                                                                  |
| Familiarity With Pronoun-Sharing Practices | Intros: Others                                                                                                                               |
| Familiarity With Pronoun-Sharing Practices | Intros: Self                                                                                                                                 |
| Familiarity With Pronoun-Sharing Practices | Nametags: Others                                                                                                                             |
| Familiarity With Pronoun-Sharing Practices | Nametags: Self                                                                                                                               |
| Familiarity With They/Them Pronouns        | Close To                                                                                                                                     |
| Familiarity With They/Them Pronouns        | Have Met                                                                                                                                     |
| Familiarity With They/Them Pronouns        | Heard About                                                                                                                                  |
| Familiarity With They/Them Pronouns        | Myself                                                                                                                                       |
| Familiarity With They/Them Pronouns        | Not Heard About                                                                                                                              |
| Gender                                     | Gender                                                                                                                                       |
| Gender                                     | Missing Data                                                                                                                                 |
| Race/Ethnicity                             | American Indian or Alaska Native                                                                                                             |
| Race/Ethnicity                             | Asian                                                                                                                                        |
| Race/Ethnicity                             | Black, African American, or African                                                                                                          |
| Race/Ethnicity                             | Hispanic, Latino, or Spanish                                                                                                                 |
| Race/Ethnicity                             | I use a different term                                                                                                                       |
| Race/Ethnicity                             | Middle Eastern or North African                                                                                                              |
| Race/Ethnicity                             | Missing Data                                                                                                                                 |
| Race/Ethnicity                             | Native Hawaiian or Pacific Islander                                                                                                          |
| Race/Ethnicity                             | Prefer not to answer                                                                                                                         |
| Race/Ethnicity                             | White                                                                                                                                        |
| Sentence Naturalness Ratings               | Each                                                                                                                                         |
| Sentence Naturalness Ratings               | Every                                                                                                                                        |
| Sentence Naturalness Ratings               | Fem Name                                                                                                                                     |
| Sentence Naturalness Ratings               | Fem Name                                                                                                                                     |
| Sentence Naturalness Ratings               | Generic                                                                                                                                      |
| Sentence Naturalness Ratings               | Masc Name                                                                                                                                    |
| Sentence Naturalness Ratings               | Masc Name                                                                                                                                    |
| Sentence Naturalness Ratings               | Neutral Name                                                                                                                                 |
| Sentence Naturalness Ratings               | Neutral Name                                                                                                                                 |
| Sexuality                                  | Asexual                                                                                                                                      |
| Sexuality                                  | Bisexual/Pansexual                                                                                                                           |
| Sexuality                                  | Gay/Lesbian                                                                                                                                  |
| Sexuality                                  | Heterosexual/Straight                                                                                                                        |
| Sexuality                                  | I use a different term                                                                                                                       |
| Sexuality                                  | Missing Data                                                                                                                                 |
| Sexuality                                  | Prefer not to answer                                                                                                                         |
| Sexuality                                  | Queer                                                                                                                                        |
| Sexuality                                  | Questioning                                                                                                                                  |
| Transgender & Gender-Diverse               | I consider myself cisgender                                                                                                                  |
| Transgender & Gender-Diverse               | I consider myself transgender                                                                                                                |
| Transgender & Gender-Diverse               | I don't consider myself cisgender or transgender                                                                                             |
| Transgender & Gender-Diverse               | Missing Data                                                                                                                                 |
| Transgender & Gender-Diverse               | My gender is different than what was written on my original birth certificate                                                                |
| Transgender & Gender-Diverse               | My gender is the same as what was written on my original birth certificate                                                                   |
| Transgender & Gender-Diverse               | Prefer not to answer                                                                                                                         |
| Transphobia Scale                          | A person's genitalia define what gender they are, e.g., a penis defines a person as being a man, a vagina defines a person as being a woman. |
| Transphobia Scale                          | I am uncomfortable around people who don't conform to traditional gender roles, e.g., aggressive women or emotional men.                     |
| Transphobia Scale                          | I avoid people on the street whose gender is unclear to me.                                                                                  |
| Transphobia Scale                          | I believe that a person can never change their gender.                                                                                       |
| Transphobia Scale                          | I believe that the male/female dichotomy is natural.                                                                                         |
| Transphobia Scale                          | I don't like it when someone is flirting with me, and I can't tell if they are a man or a woman.                                             |
| Transphobia Scale                          | I think there is something wrong with a person who says that they are neither a man nor a woman.                                             |
| Transphobia Scale                          | I would be upset if someone I'd known a long time revealed to me that they used to be another gender.                                        |
| Transphobia Scale                          | When I meet someone, it is important for me to be able to identify them as a man or a woman.                                                 |

Age, sentence naturalness ratings, and the transphobia/gender beliefs
scale all have numeric responses:

``` r
exp3_survey %>% filter(!is.na(Response_Num)) %>% count(Category) %>% kable()
```

| Category                     |    n |
|:-----------------------------|-----:|
| Age                          |  159 |
| Sentence Naturalness Ratings |  954 |
| Transphobia Scale            | 1431 |

1 **age** item per participant:

``` r
exp3_survey %>% filter(Category == "Age") %>% pull(Response_Num) %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      19.00   26.00   34.00   36.79   45.00   81.00       3 

6 **sentence naturalness rating** items per participant, on a 1-7 scale:

``` r
exp3_survey %>%
  filter(Category == "Sentence Naturalness Ratings") %>%
  pull(Response_Num) %>%
  summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      1.000   4.000   6.000   5.067   7.000   7.000      18 

9 **gender beliefs** items per participant, on a 1-7 scale:

``` r
exp3_survey %>%
  filter(Category == "Transphobia Scale") %>%
  pull(Response_Num) %>%
  summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      1.000   1.000   2.000   3.002   5.000   7.000      27 

Familiarity with using they/them pronouns, race/ethnicity, sexuality,
and trans/gender diverse items have Boolean variables, because they were
check-all-that-apply:

``` r
exp3_survey %>% filter(!is.na(Response_Bool)) %>% count(Category) %>% kable()
```

| Category                            |    n |
|:------------------------------------|-----:|
| Familiarity With They/Them Pronouns |  795 |
| Race/Ethnicity                      | 1431 |
| Sexuality                           | 1272 |
| Transgender & Gender-Diverse        |  954 |

5 options for **familiarity with using they/them pronouns:**

``` r
exp3_survey %>%
  filter(Category == "Familiarity With They/Them Pronouns") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item            | Response_Bool |   n |
|:----------------|:--------------|----:|
| Close To        | FALSE         | 111 |
| Close To        | TRUE          |  48 |
| Close To        | NA            |   3 |
| Have Met        | FALSE         |  94 |
| Have Met        | TRUE          |  65 |
| Have Met        | NA            |   3 |
| Heard About     | FALSE         |  95 |
| Heard About     | TRUE          |  64 |
| Heard About     | NA            |   3 |
| Myself          | FALSE         | 149 |
| Myself          | TRUE          |  10 |
| Myself          | NA            |   3 |
| Not Heard About | FALSE         | 154 |
| Not Heard About | TRUE          |   5 |
| Not Heard About | NA            |   3 |

9 options for **race/ethnicity** (or missing):

``` r
exp3_survey %>%
  filter(Category == "Race/Ethnicity") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                                | Response_Bool |   n |
|:------------------------------------|:--------------|----:|
| American Indian or Alaska Native    | FALSE         | 155 |
| American Indian or Alaska Native    | TRUE          |   4 |
| Asian                               | FALSE         | 150 |
| Asian                               | TRUE          |   9 |
| Black, African American, or African | FALSE         | 138 |
| Black, African American, or African | TRUE          |  21 |
| Hispanic, Latino, or Spanish        | FALSE         | 140 |
| Hispanic, Latino, or Spanish        | TRUE          |  19 |
| I use a different term              | FALSE         | 157 |
| I use a different term              | TRUE          |   2 |
| Middle Eastern or North African     | FALSE         | 157 |
| Middle Eastern or North African     | TRUE          |   2 |
| Missing Data                        | NA            |   3 |
| Native Hawaiian or Pacific Islander | FALSE         | 159 |
| Prefer not to answer                | FALSE         | 155 |
| Prefer not to answer                | TRUE          |   4 |
| White                               | FALSE         |  47 |
| White                               | TRUE          | 112 |

8 options for **sexuality** (or missing):

``` r
exp3_survey %>%
  filter(Category == "Sexuality") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                   | Response_Bool |   n |
|:-----------------------|:--------------|----:|
| Asexual                | FALSE         | 153 |
| Asexual                | TRUE          |   6 |
| Bisexual/Pansexual     | FALSE         | 135 |
| Bisexual/Pansexual     | TRUE          |  24 |
| Gay/Lesbian            | FALSE         | 153 |
| Gay/Lesbian            | TRUE          |   6 |
| Heterosexual/Straight  | FALSE         |  39 |
| Heterosexual/Straight  | TRUE          | 120 |
| I use a different term | FALSE         | 157 |
| I use a different term | TRUE          |   2 |
| Missing Data           | NA            |   3 |
| Prefer not to answer   | FALSE         | 157 |
| Prefer not to answer   | TRUE          |   2 |
| Queer                  | FALSE         | 150 |
| Queer                  | TRUE          |   9 |
| Questioning            | FALSE         | 156 |
| Questioning            | TRUE          |   3 |

6 options for **transgender/gender-diverse** (or missing):

``` r
exp3_survey %>%
  filter(Category == "Transgender & Gender-Diverse") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                                                                          | Response_Bool |   n |
|:------------------------------------------------------------------------------|:--------------|----:|
| I consider myself cisgender                                                   | FALSE         |  96 |
| I consider myself cisgender                                                   | TRUE          |  63 |
| I consider myself transgender                                                 | FALSE         | 155 |
| I consider myself transgender                                                 | TRUE          |   4 |
| I don't consider myself cisgender or transgender                              | FALSE         | 147 |
| I don't consider myself cisgender or transgender                              | TRUE          |  12 |
| Missing Data                                                                  | NA            |   3 |
| My gender is different than what was written on my original birth certificate | FALSE         | 153 |
| My gender is different than what was written on my original birth certificate | TRUE          |   6 |
| My gender is the same as what was written on my original birth certificate    | FALSE         |   9 |
| My gender is the same as what was written on my original birth certificate    | TRUE          | 150 |
| Prefer not to answer                                                          | FALSE         | 159 |

Education, English experience, and familiarity with pronoun-sharing
practices are all categorical variables because they were
select-one-option. Gender is a categorical variable, after the
preprocessing script removed spelling/capitalization differences to
group responses. The race/ethnicity and sexuality responses are
participants who entered something for “I use a different term.”

``` r
exp3_survey %>% filter(!is.na(Response_Cat)) %>% count(Category) %>% kable()
```

| Category                                   |   n |
|:-------------------------------------------|----:|
| Education                                  | 159 |
| English Experience                         | 159 |
| Familiarity With Pronoun-Sharing Practices | 636 |
| Gender                                     | 159 |
| Race/Ethnicity                             |   2 |
| Sexuality                                  |   2 |

**Education:**

``` r
exp3_survey %>%
  filter(Category == "Education") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|                       |   x |
|:----------------------|----:|
| 2-year degree         |  16 |
| 4-year degree         |  63 |
| Doctorate             |   7 |
| High school graduate  |  23 |
| Less than high school |   2 |
| Prefer not to answer  |   1 |
| Professional degree   |  23 |
| Some college          |  24 |
| NA's                  |   3 |

**English Experience:**

``` r
exp3_survey %>%
  filter(Category == "English Experience") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|                                                                              |   x |
|:-----------------------------------------------------------------------------|----:|
| Fully competent in speaking, listening, reading, and writing, but not native |   8 |
| Native (learned from birth)                                                  | 151 |
| NA's                                                                         |   3 |

**Familiarity With Pronoun-Sharing:**

``` r
exp3_survey %>%
  filter(Category == "Familiarity With Pronoun-Sharing Practices") %>%
  count(Item, Response_Cat) %>%
  kable()
```

| Item             | Response_Cat                                  |   n |
|:-----------------|:----------------------------------------------|----:|
| Intros: Others   | A few                                         |  45 |
| Intros: Others   | All                                           |   2 |
| Intros: Others   | Most                                          |  18 |
| Intros: Others   | None                                          |  63 |
| Intros: Others   | Some                                          |  31 |
| Intros: Others   | NA                                            |   3 |
| Intros: Self     | Never, because I had not heard of this before |   9 |
| Intros: Self     | Never, because I prefer not to                |  81 |
| Intros: Self     | Rarely                                        |  33 |
| Intros: Self     | Sometimes                                     |  23 |
| Intros: Self     | Usually                                       |  13 |
| Intros: Self     | NA                                            |   3 |
| Nametags: Others | A few                                         |  39 |
| Nametags: Others | All                                           |   4 |
| Nametags: Others | Most                                          |  28 |
| Nametags: Others | None                                          |  51 |
| Nametags: Others | Some                                          |  37 |
| Nametags: Others | NA                                            |   3 |
| Nametags: Self   | Always                                        |   9 |
| Nametags: Self   | Never, because I had not heard of this before |  16 |
| Nametags: Self   | Never, because I prefer not to                |  74 |
| Nametags: Self   | Rarely                                        |  22 |
| Nametags: Self   | Sometimes                                     |  18 |
| Nametags: Self   | Usually                                       |  20 |
| Nametags: Self   | NA                                            |   3 |

**Gender:**

``` r
exp3_survey %>%
  filter(Category == "Gender") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|                                     |   x |
|:------------------------------------|----:|
| Female                              |  88 |
| Female/nonbinary                    |   1 |
| Genderqueer                         |   1 |
| Male                                |  63 |
| Nonbinary                           |   4 |
| Prefer not to answer / Missing data |   1 |
| Woman/questioning                   |   1 |
| NA's                                |   3 |

**Use a different term:**

``` r
exp3_survey %>%
  filter(Item == "I use a different term" & Response_Bool == TRUE) %>%
  count(Category, Response_Cat) %>%
  kable()
```

| Category       | Response_Cat                     |   n |
|:---------------|:---------------------------------|----:|
| Race/Ethnicity | Caucangleurosian                 |   1 |
| Race/Ethnicity | French Creole                    |   1 |
| Sexuality      | Bipedal Heterosexual Homo Sapien |   1 |
| Sexuality      | Sapiosexual                      |   1 |

## Demographics `exp3_demographics.csv`

Summary of survey data, with `Total` of participants in each `Group` in
each `Category` for age, education, English experience, gender,
race/ethnicity, sexuality, and trans/gender-diverse identity. Does not
include groups with no participants.

``` r
exp3_demographics <- read.csv("exp3_demographics.csv", stringsAsFactors = TRUE)
str(exp3_demographics)
```

    'data.frame':   55 obs. of  3 variables:
     $ Category: Factor w/ 7 levels "Age","Education",..: 1 1 1 1 1 1 1 1 1 2 ...
     $ Group   : Factor w/ 42 levels "18-24","2-year degree",..: 35 6 1 4 3 7 8 9 40 35 ...
     $ Total   : int  3 19 31 35 53 12 8 1 162 4 ...

``` r
exp3_demographics %>% count(Category, Group) %>% select(-n) %>% kable()
```

| Category                     | Group                                                                         |
|:-----------------------------|:------------------------------------------------------------------------------|
| Age                          | 18-24                                                                         |
| Age                          | 25-34                                                                         |
| Age                          | 35-44                                                                         |
| Age                          | 45-54                                                                         |
| Age                          | 55-64                                                                         |
| Age                          | 65-74                                                                         |
| Age                          | 75+                                                                           |
| Age                          | Prefer not to answer / Missing data                                           |
| Age                          | Total                                                                         |
| Education                    | 2-year degree                                                                 |
| Education                    | 4-year degree                                                                 |
| Education                    | Doctorate                                                                     |
| Education                    | High school graduate                                                          |
| Education                    | Less than high school                                                         |
| Education                    | Prefer not to answer / Missing data                                           |
| Education                    | Professional degree                                                           |
| Education                    | Some college                                                                  |
| Education                    | Total                                                                         |
| English Experience           | Fully competent in speaking, listening, reading, and writing, but not native  |
| English Experience           | Native (learned from birth)                                                   |
| English Experience           | Prefer not to answer / Missing data                                           |
| English Experience           | Total                                                                         |
| Gender                       | Female                                                                        |
| Gender                       | Female/nonbinary                                                              |
| Gender                       | Genderqueer                                                                   |
| Gender                       | Male                                                                          |
| Gender                       | Nonbinary                                                                     |
| Gender                       | Prefer not to answer / Missing data                                           |
| Gender                       | Total                                                                         |
| Gender                       | Woman/questioning                                                             |
| Race/Ethnicity               | American Indian or Alaska Native                                              |
| Race/Ethnicity               | Asian                                                                         |
| Race/Ethnicity               | Black, African American, or African                                           |
| Race/Ethnicity               | Hispanic, Latino, or Spanish                                                  |
| Race/Ethnicity               | I use a different term                                                        |
| Race/Ethnicity               | Middle Eastern or North African                                               |
| Race/Ethnicity               | Prefer not to answer / Missing data                                           |
| Race/Ethnicity               | Total                                                                         |
| Race/Ethnicity               | White                                                                         |
| Sexuality                    | Asexual                                                                       |
| Sexuality                    | Bisexual/Pansexual                                                            |
| Sexuality                    | Gay/Lesbian                                                                   |
| Sexuality                    | Heterosexual/Straight                                                         |
| Sexuality                    | I use a different term                                                        |
| Sexuality                    | Prefer not to answer / Missing data                                           |
| Sexuality                    | Queer                                                                         |
| Sexuality                    | Questioning                                                                   |
| Sexuality                    | Total                                                                         |
| Transgender & Gender-Diverse | I consider myself cisgender                                                   |
| Transgender & Gender-Diverse | I consider myself transgender                                                 |
| Transgender & Gender-Diverse | I don't consider myself cisgender or transgender                              |
| Transgender & Gender-Diverse | My gender is different than what was written on my original birth certificate |
| Transgender & Gender-Diverse | My gender is the same as what was written on my original birth certificate    |
| Transgender & Gender-Diverse | Prefer not to answer / Missing data                                           |
| Transgender & Gender-Diverse | Total                                                                         |

## Participant Covariates `exp3_participant-covariates.csv`

``` r
exp3_cov <- read.csv("exp3_participant-covariates.csv", stringsAsFactors = TRUE) 
str(exp3_cov)
```

    'data.frame':   162 obs. of  10 variables:
     $ ParticipantID : Factor w/ 162 levels "3_001","3_002",..: 1 2 3 4 5 6 7 8 9 10 ...
     $ Condition     : Factor w/ 4 levels "both","intro",..: 1 3 3 3 2 2 2 2 2 2 ...
     $ Age           : int  53 21 43 50 37 35 32 48 55 25 ...
     $ LGBQ          : int  0 1 0 0 0 1 0 0 0 0 ...
     $ TGD           : int  0 0 0 0 0 0 0 0 0 0 ...
     $ Rating_Generic: num  4 6.67 5.67 5.67 6.33 ...
     $ Rating_Name   : num  1 7 6.33 4 1.33 ...
     $ Sharing       : int  9 16 4 6 4 17 9 9 2 10 ...
     $ UseThey       : int  1 3 2 1 2 3 2 2 3 3 ...
     $ GenderBeliefs : int  41 0 12 22 19 0 15 8 29 6 ...

### Trial-Level Variables: `ParticipantID`, `Condition`

1 row per **participant**, with missing data indicated by NAs in other
columns.

``` r
str(exp3_cov$ParticipantID)
```

     Factor w/ 162 levels "3_001","3_002",..: 1 2 3 4 5 6 7 8 9 10 ...

Original **condition** labels:

- `Both` = +Nametag +Intro
- `Intro` = -Nametag +Intro
- `Nametag` = +Nametag -Intro
- `Neither` = -Nametag -Intro

``` r
exp3_cov$Condition %>% summary() %>% kable()
```

|         |   x |
|:--------|----:|
| both    |  40 |
| intro   |  39 |
| nametag |  40 |
| neither |  40 |
| NA's    |   3 |

### Responses: `Age`, `LGBQ`, `TGD`, `Rating_Generic`, `Rating_Name`, `Sharing`, `UseThey`, `GenderBeliefs`

**Age** (not rescaled):

``` r
exp3_cov$Age %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      19.00   26.00   34.00   36.79   45.00   81.00       3 

**LGBQ** coded as 1 for participant who said they were asexual,
bisexual/pansexual, gay/lesbian, and/or queer.

``` r
exp3_cov$LGBQ %>% as.factor() %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| 0    | 121 |
| 1    |  38 |
| NA's |   3 |

**TGD** coded as 1 if participant said they were trans and/or had a
gender different than their sex assigned at birth.

``` r
exp3_cov$TGD %>% as.factor() %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| 0    | 153 |
| 1    |   6 |
| NA's |   3 |

**Rating_Generic** is the mean naturalness rating (on a 7-point scale)
for singular *they* co-referring with generic and quantified (*each*,
*every*) referents (better label for this group is indefinites). This
was a total of 3 questions per participant.

``` r
exp3_cov$Rating_Generic %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      1.333   5.000   5.667   5.558   6.333   7.000       3 

**Rating_Name** is the mean naturalness rating (on a 7-point scale) for
singular *they* co-referring with a masculine name, a feminine name, and
a gender-neutral name.

``` r
exp3_cov$Rating_Name %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      1.000   3.333   5.000   4.577   6.000   7.000       3 

**Sharing** is the total of 4 questions about familiarity with
pronoun-sharing practices: nametags and introductions, for yourself and
in the groups you’re in. “None” and “never, because I had not heard
about this” responses were coded as 0, “never, because I prefer not to”
responses were coded as 1, “rarely” and “a few” responses were coded as
2, “sometimes” and “some” responses were coded as 3, “usually” and
“most” responses were coded as 4, and “always” and “all” were coded as
5. These 4 questions were summed to create 1 composite score, with 0
indicating the lowest familiarity and 20 indicating the highest.

``` r
exp3_cov$Sharing %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
      0.000   2.000   7.000   7.239  11.000  18.000       3 

**UseThey** is familiarity with using they/them pronouns. Participants
who had not heard about it before the study or had heard about it but
hadn’t met anyone who does were coded as 1; participants who had met
someone who uses they/them but weren’t close to them were coded as 2;
participants who used they/them pronouns themself and/or were close to
someone who uses they/them were coded as 3.

``` r
exp3_cov$UseThey %>% as.factor() %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| 1    |  55 |
| 2    |  53 |
| 3    |  51 |
| NA's |   3 |

**GenderBeliefs** is the total of the transphobia scale. Each question
was rescaled from 1-7 to 0-6, then the 9 questions were summed, so that
a score of 0 represents the lowest endorsement of the gender binary and
gender essentialism, and 54 represents the highest.

``` r
exp3_cov$GenderBeliefs %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
       0.00    5.00   16.00   18.02   30.00   52.00       3 

# Experiment 4

## Timecourse `exp4_timecourse-full.csv`, `exp4_timecourse-names.csv`, `exp4_timecourse-preview.csv`, `exp4_timecourse-pronoun.csv`

(Timesteps/trials with missing data have placeholders for condition/time
variables and NAs for sum, prop, and binary data)

`Pronoun` window is 180 ms after pronoun onset (includes extra 2
timesteps for calculating AR(1)) through 1210 ms (earliest shape word
onset across all stimuli). Primarily used for stats.

``` r
exp4_tc_pronoun <- read.csv("exp4_timecourse-pronoun.csv",
                            stringsAsFactors = TRUE)
str(exp4_tc_pronoun)
```

    'data.frame':   299520 obs. of  19 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ TrialID      : Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Timestep     : Factor w/ 104 levels "[1000, 1010)",..: 23 24 25 26 27 28 29 30 31 32 ...
     $ TrialNum     : int  88 88 88 88 88 88 88 88 88 88 ...
     $ T_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ C_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ Order        : Factor w/ 2 levels "first","second": 1 1 1 1 1 1 1 1 1 1 ...
     $ Story        : Factor w/ 60 levels "S01","S02","S03",..: 15 15 15 15 15 15 15 15 15 15 ...
     $ TG           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ CM           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D1           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D2           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D3           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D4           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ T_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ C_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ Ds_Prop      : num  0 0 0 0 0 0 0 0 0 0 ...
     $ IsTarget     : num  0 0 0 0 0 0 0 0 0 0 ...
     $ WasTarget    : num  -999 0 0 0 0 0 0 0 0 0 ...

``` r
summary(exp4_tc_pronoun)
```

     ParticipantID            TrialID               Timestep         TrialNum     
     4_001  :  9984   L01_CR01_S15:   520   [1000, 1010):  2880   Min.   :  6.00  
     4_002  :  9984   L01_CR02_S11:   520   [1010, 1020):  2880   1st Qu.: 34.00  
     4_003  :  9984   L01_CR03_S12:   520   [1020, 1030):  2880   Median : 62.00  
     4_004  :  9984   L01_CR04_S12:   520   [1030, 1040):  2880   Mean   : 62.23  
     4_005  :  9984   L01_CR05_S16:   520   [1040, 1050):  2880   3rd Qu.: 90.00  
     4_006  :  9984   L01_CR06_S16:   520   [1050, 1060):  2880   Max.   :119.00  
     (Other):239616   (Other)     :296400   (Other)     :282240                   
         T_Pronoun         C_Pronoun        Order            Story       
     he/him   :99840   he/him   :99736   first :149344   S50    :  6344  
     she/her  :99840   she/her  :99944   second:150176   S05    :  6240  
     they/them:99840   they/them:99840                   S10    :  6240  
                                                         S15    :  6240  
                                                         S20    :  6240  
                                                         S25    :  6240  
                                                         (Other):261976  
           TG               CM               D1                D2         
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.0000   Min.   : 0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.0000   1st Qu.: 0.0000  
     Median : 0.000   Median : 0.000   Median : 0.0000   Median : 0.0000  
     Mean   : 4.856   Mean   : 2.592   Mean   : 0.4761   Mean   : 0.4766  
     3rd Qu.:10.000   3rd Qu.: 9.000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
     Max.   :10.000   Max.   :10.000   Max.   :10.0000   Max.   :10.0000  
     NA's   :624      NA's   :624      NA's   :624       NA's   :624      
           D3                D4              T_Prop          C_Prop      
     Min.   : 0.0000   Min.   : 0.0000   Min.   :0.000   Min.   :0.0000  
     1st Qu.: 0.0000   1st Qu.: 0.0000   1st Qu.:0.000   1st Qu.:0.0000  
     Median : 0.0000   Median : 0.0000   Median :0.000   Median :0.0000  
     Mean   : 0.5197   Mean   : 0.6754   Mean   :0.488   Mean   :0.2606  
     3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.:1.000   3rd Qu.:1.0000  
     Max.   :10.0000   Max.   :10.0000   Max.   :1.000   Max.   :1.0000  
     NA's   :624       NA's   :624       NA's   :624     NA's   :624     
        Ds_Prop          IsTarget        WasTarget       
     Min.   :0.0000   Min.   :0.0000   Min.   :-999.000  
     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:   0.000  
     Median :0.0000   Median :0.0000   Median :   0.000  
     Mean   :0.2162   Mean   :0.4873   Mean   :   0.387  
     3rd Qu.:0.0000   3rd Qu.:1.0000   3rd Qu.:   1.000  
     Max.   :1.0000   Max.   :1.0000   Max.   :   1.000  
     NA's   :624      NA's   :624      NA's   :624       

`Full` window is 200 ms before pronoun onset through 2500 ms, primarily
used for plots.

``` r
exp4_tc_full <- read.csv("exp4_timecourse-full.csv", stringsAsFactors = TRUE)
str(exp4_tc_full)
```

    'data.frame':   777600 obs. of  19 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ TrialID      : Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Timestep     : Factor w/ 270 levels "[-10, 0)","[-100, -90)",..: 13 11 10 9 8 7 6 5 4 3 ...
     $ TrialNum     : int  88 88 88 88 88 88 88 88 88 88 ...
     $ T_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ C_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ Order        : Factor w/ 2 levels "first","second": 1 1 1 1 1 1 1 1 1 1 ...
     $ Story        : Factor w/ 60 levels "S01","S02","S03",..: 15 15 15 15 15 15 15 15 15 15 ...
     $ TG           : num  10 10 10 10 10 10 10 10 10 10 ...
     $ CM           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D1           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D2           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D3           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D4           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ T_Prop       : num  1 1 1 1 1 1 1 1 1 1 ...
     $ C_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ Ds_Prop      : num  0 0 0 0 0 0 0 0 0 0 ...
     $ IsTarget     : num  1 1 1 1 1 1 1 1 1 1 ...
     $ WasTarget    : num  -999 1 1 1 1 1 1 1 1 1 ...

``` r
summary(exp4_tc_full)
```

     ParticipantID            TrialID               Timestep         TrialNum     
     4_001  : 25920   L01_CR01_S15:  1350   [-10, 0)    :  2880   Min.   :  6.00  
     4_002  : 25920   L01_CR02_S11:  1350   [-100, -90) :  2880   1st Qu.: 34.00  
     4_003  : 25920   L01_CR03_S12:  1350   [-110, -100):  2880   Median : 62.00  
     4_004  : 25920   L01_CR04_S12:  1350   [-120, -110):  2880   Mean   : 62.23  
     4_005  : 25920   L01_CR05_S16:  1350   [-130, -120):  2880   3rd Qu.: 90.00  
     4_006  : 25920   L01_CR06_S16:  1350   [-140, -130):  2880   Max.   :119.00  
     (Other):622080   (Other)     :769500   (Other)     :760320                   
         T_Pronoun          C_Pronoun         Order            Story       
     he/him   :259200   he/him   :259200   first :388260   S05    : 16200  
     she/her  :259200   she/her  :259200   second:389340   S10    : 16200  
     they/them:259200   they/them:259200                   S15    : 16200  
                                                           S20    : 16200  
                                                           S25    : 16200  
                                                           S30    : 16200  
                                                           (Other):680400  
           TG               CM               D1                D2         
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.0000   Min.   : 0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.0000   1st Qu.: 0.0000  
     Median : 9.000   Median : 0.000   Median : 0.0000   Median : 0.0000  
     Mean   : 5.062   Mean   : 2.311   Mean   : 0.4225   Mean   : 0.4482  
     3rd Qu.:10.000   3rd Qu.: 0.000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
     Max.   :10.000   Max.   :10.000   Max.   :10.0000   Max.   :10.0000  
     NA's   :1620     NA's   :1620     NA's   :1620      NA's   :1620     
           D3                D4              T_Prop           C_Prop      
     Min.   : 0.0000   Min.   : 0.0000   Min.   :0.0000   Min.   :0.0000  
     1st Qu.: 0.0000   1st Qu.: 0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
     Median : 0.0000   Median : 0.0000   Median :1.0000   Median :0.0000  
     Mean   : 0.4775   Mean   : 0.5835   Mean   :0.5087   Mean   :0.2324  
     3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.:1.0000   3rd Qu.:0.0000  
     Max.   :10.0000   Max.   :10.0000   Max.   :1.0000   Max.   :1.0000  
     NA's   :1620      NA's   :1620      NA's   :1620     NA's   :1620    
        Ds_Prop          IsTarget        WasTarget        
     Min.   :0.0000   Min.   :0.0000   Min.   :-999.0000  
     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:   0.0000  
     Median :0.0000   Median :1.0000   Median :   1.0000  
     Mean   :0.1946   Mean   :0.5079   Mean   :   0.4692  
     3rd Qu.:0.0000   3rd Qu.:1.0000   3rd Qu.:   1.0000  
     Max.   :1.0000   Max.   :1.0000   Max.   :   1.0000  
     NA's   :1620     NA's   :1620     NA's   :1620       

`Names` window is 500ms before audio onset (first word is first name)
through 3000 ms, used for supplementary plot.

``` r
exp4_tc_names <- read.csv("exp4_timecourse-names.csv", stringsAsFactors = TRUE)
str(exp4_tc_names)
```

    'data.frame':   1008000 obs. of  19 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ TrialID      : Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Timestep     : Factor w/ 350 levels "[-10, 0)","[-100, -90)",..: 46 44 43 42 41 40 39 38 37 36 ...
     $ TrialNum     : int  88 88 88 88 88 88 88 88 88 88 ...
     $ T_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ C_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ Order        : Factor w/ 2 levels "first","second": 1 1 1 1 1 1 1 1 1 1 ...
     $ Story        : Factor w/ 60 levels "S01","S02","S03",..: 15 15 15 15 15 15 15 15 15 15 ...
     $ TG           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ CM           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D1           : num  10 10 10 10 10 10 10 10 10 10 ...
     $ D2           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D3           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D4           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ T_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ C_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ Ds_Prop      : num  1 1 1 1 1 1 1 1 1 1 ...
     $ IsTarget     : num  0 0 0 0 0 0 0 0 0 0 ...
     $ WasTarget    : num  -999 0 0 0 0 0 0 0 0 0 ...

``` r
summary(exp4_tc_names)
```

     ParticipantID            TrialID               Timestep         TrialNum     
     4_001  : 33600   L01_CR01_S15:  1750   [-10, 0)    :  2880   Min.   :  6.00  
     4_002  : 33600   L01_CR02_S11:  1750   [-100, -90) :  2880   1st Qu.: 34.00  
     4_003  : 33600   L01_CR03_S12:  1750   [-110, -100):  2880   Median : 62.00  
     4_004  : 33600   L01_CR04_S12:  1750   [-120, -110):  2880   Mean   : 62.29  
     4_005  : 33600   L01_CR05_S16:  1750   [-130, -120):  2880   3rd Qu.: 90.00  
     4_006  : 33600   L01_CR06_S16:  1750   [-140, -130):  2880   Max.   :119.00  
     (Other):806400   (Other)     :997500   (Other)     :990720                   
         T_Pronoun          C_Pronoun         Order            Story       
     he/him   :336000   he/him   :336000   first :504700   S05    : 21000  
     she/her  :336000   she/her  :336000   second:503300   S10    : 21000  
     they/them:336000   they/them:336000                   S15    : 21000  
                                                           S20    : 21000  
                                                           S25    : 21000  
                                                           S30    : 21000  
                                                           (Other):882000  
           TG               CM               D1               D2        
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.000   Min.   : 0.000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000  
     Median : 0.000   Median : 0.000   Median : 0.000   Median : 0.000  
     Mean   : 2.147   Mean   : 2.099   Mean   : 1.249   Mean   : 1.256  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000  
     Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000  
     NA's   :2100     NA's   :2100     NA's   :2100     NA's   :2100    
           D3               D4             T_Prop           C_Prop      
     Min.   : 0.000   Min.   : 0.000   Min.   :0.0000   Min.   :0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.:0.0000   1st Qu.:0.0000  
     Median : 0.000   Median : 0.000   Median :0.0000   Median :0.0000  
     Mean   : 1.283   Mean   : 1.309   Mean   :0.2161   Mean   :0.2112  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.:0.0000   3rd Qu.:0.0000  
     Max.   :10.000   Max.   :10.000   Max.   :1.0000   Max.   :1.0000  
     NA's   :2100     NA's   :2100     NA's   :2100     NA's   :2100    
        Ds_Prop          IsTarget        WasTarget        
     Min.   :0.0000   Min.   :0.0000   Min.   :-999.0000  
     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:   0.0000  
     Median :1.0000   Median :0.0000   Median :   0.0000  
     Mean   :0.5135   Mean   :0.2156   Mean   :   0.1858  
     3rd Qu.:1.0000   3rd Qu.:0.0000   3rd Qu.:   0.0000  
     Max.   :1.0000   Max.   :1.0000   Max.   :   1.0000  
     NA's   :2100     NA's   :2100     NA's   :2100       

`Preview` window is start of screen display through 1000ms (audio
start), used for supplementary plot.

``` r
exp4_tc_preview <- read.csv("exp4_timecourse-preview.csv", stringsAsFactors = TRUE)
str(exp4_tc_preview)
```

    'data.frame':   288000 obs. of  19 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ TrialID      : Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Timestep     : Factor w/ 100 levels "[0, 10)","[10, 20)",..: 1 2 13 24 35 46 57 68 79 90 ...
     $ TrialNum     : num  88 88 88 88 88 88 88 88 88 88 ...
     $ T_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ C_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 2 2 2 2 2 2 2 2 2 2 ...
     $ Order        : Factor w/ 2 levels "first","second": 1 1 1 1 1 1 1 1 1 1 ...
     $ Story        : Factor w/ 60 levels "S01","S02","S03",..: 15 15 15 15 15 15 15 15 15 15 ...
     $ TG           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ CM           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D1           : num  10 10 10 10 10 10 10 10 10 10 ...
     $ D2           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D3           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ D4           : num  0 0 0 0 0 0 0 0 0 0 ...
     $ T_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ C_Prop       : num  0 0 0 0 0 0 0 0 0 0 ...
     $ Ds_Prop      : num  1 1 1 1 1 1 1 1 1 1 ...
     $ IsTarget     : num  0 0 0 0 0 0 0 0 0 0 ...
     $ WasTarget    : num  -999 0 0 0 0 0 0 0 0 0 ...

``` r
summary(exp4_tc_preview)
```

     ParticipantID            TrialID             Timestep         TrialNum     
     4_001  :  9600   L01_CR01_S15:   500   [0, 10)   :  2880   Min.   :  6.00  
     4_002  :  9600   L01_CR02_S11:   500   [10, 20)  :  2880   1st Qu.: 34.00  
     4_003  :  9600   L01_CR03_S12:   500   [100, 110):  2880   Median : 61.00  
     4_004  :  9600   L01_CR04_S12:   500   [110, 120):  2880   Mean   : 62.05  
     4_005  :  9600   L01_CR05_S16:   500   [120, 130):  2880   3rd Qu.: 90.00  
     4_006  :  9600   L01_CR06_S16:   500   [130, 140):  2880   Max.   :119.00  
     (Other):230400   (Other)     :285000   (Other)   :270720                   
         T_Pronoun         C_Pronoun        Order            Story       
     he/him   :96000   he/him   :96000   first :144000   S55    :  6400  
     she/her  :95900   she/her  :95800   second:144000   S50    :  6300  
     they/them:96100   they/them:96200                   S25    :  6100  
                                                         S35    :  6100  
                                                         S05    :  6000  
                                                         S30    :  6000  
                                                         (Other):251100  
           TG               CM               D1               D2        
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.000   Min.   : 0.000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000  
     Median : 0.000   Median : 0.000   Median : 0.000   Median : 0.000  
     Mean   : 1.364   Mean   : 1.297   Mean   : 1.345   Mean   : 1.421  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000  
     Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000  
     NA's   :600      NA's   :600      NA's   :600      NA's   :600     
           D3               D4             T_Prop           C_Prop     
     Min.   : 0.000   Min.   : 0.000   Min.   :0.0000   Min.   :0.000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.:0.0000   1st Qu.:0.000  
     Median : 0.000   Median : 0.000   Median :0.0000   Median :0.000  
     Mean   : 1.396   Mean   : 1.349   Mean   :0.1378   Mean   :0.131  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.:0.0000   3rd Qu.:0.000  
     Max.   :10.000   Max.   :10.000   Max.   :1.0000   Max.   :1.000  
     NA's   :600      NA's   :600      NA's   :600      NA's   :600    
        Ds_Prop          IsTarget       WasTarget        
     Min.   :0.0000   Min.   :0.000   Min.   :-999.0000  
     1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:   0.0000  
     Median :1.0000   Median :0.000   Median :   0.0000  
     Mean   :0.5564   Mean   :0.137   Mean   :   0.0327  
     3rd Qu.:1.0000   3rd Qu.:0.000   3rd Qu.:   0.0000  
     Max.   :1.0000   Max.   :1.000   Max.   :   1.0000  
     NA's   :600      NA's   :600     NA's   :600        

### Trial-Level Variables: `TrialID`, `TrialNum`, `T_Pronoun`, `C_Pronoun`, `Order`, `Story`

**Trial ID** is unique code that can reconstruct stimuli/conditions. 96
critical trials x 6 character lists = 576 trial IDs.

``` r
96 * 6
```

    [1] 576

``` r
exp4_tc_pronoun$TrialID %>% as.factor() %>% str()
```

     Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp4_tc_full$TrialID    %>% as.factor() %>% str()
```

     Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp4_tc_names$TrialID   %>% as.factor() %>% str()
```

     Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp4_tc_preview$TrialID %>% as.factor() %>% str()
```

     Factor w/ 576 levels "L01_CR01_S15",..: 1 1 1 1 1 1 1 1 1 1 ...

**Trial number** is number in order of appearance starting after
practice trials (0-5), 6-119:

``` r
exp4_tc_pronoun$TrialNum %>% as.factor() %>% str()
```

     Factor w/ 114 levels "6","7","8","9",..: 83 83 83 83 83 83 83 83 83 83 ...

``` r
exp4_tc_full$TrialNum    %>% as.factor() %>% str()
```

     Factor w/ 114 levels "6","7","8","9",..: 83 83 83 83 83 83 83 83 83 83 ...

``` r
exp4_tc_names$TrialNum   %>% as.factor() %>% str()
```

     Factor w/ 114 levels "6","7","8","9",..: 83 83 83 83 83 83 83 83 83 83 ...

``` r
exp4_tc_preview$TrialNum %>% as.factor() %>% str()
```

     Factor w/ 114 levels "6","7","8","9",..: 83 83 83 83 83 83 83 83 83 83 ...

Pronouns of `target` and `competitor` characters:

``` r
exp4_tc_pronoun$T_Pronoun %>% summary()
```

       he/him   she/her they/them 
        99840     99840     99840 

``` r
exp4_tc_full$T_Pronoun    %>% summary()
```

       he/him   she/her they/them 
       259200    259200    259200 

``` r
exp4_tc_names$T_Pronoun   %>% summary()
```

       he/him   she/her they/them 
       336000    336000    336000 

``` r
exp4_tc_preview$T_Pronoun %>% summary()
```

       he/him   she/her they/them 
        96000     95900     96100 

``` r
exp4_tc_pronoun$C_Pronoun %>% summary()
```

       he/him   she/her they/them 
        99736     99944     99840 

``` r
exp4_tc_full$C_Pronoun    %>% summary()
```

       he/him   she/her they/them 
       259200    259200    259200 

``` r
exp4_tc_names$C_Pronoun   %>% summary()
```

       he/him   she/her they/them 
       336000    336000    336000 

``` r
exp4_tc_preview$C_Pronoun %>% summary()
```

       he/him   she/her they/them 
        96000     95800     96200 

### Time Variables: `Timestep`

Pronoun window is 180–1220ms relative to pronoun onset:

``` r
# Steps
exp4_tc_pronoun$Timestep %>% str()
```

     Factor w/ 104 levels "[1000, 1010)",..: 23 24 25 26 27 28 29 30 31 32 ...

``` r
# Starts
exp4_tc_pronoun$Timestep %>% as.character() %>% parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      180.0   437.5   695.0   695.0   952.5  1210.0 

``` r
# Ends
exp4_tc_pronoun$Timestep %>%
  as.character() %>%
  str_remove_all("\\[.*?,") %>%  # everything between [ and ,
  parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      190.0   447.5   705.0   705.0   962.5  1220.0 

Full window is -200–2500 ms relative to pronoun onset:

``` r
# Steps
exp4_tc_full$Timestep %>% str()
```

     Factor w/ 270 levels "[-10, 0)","[-100, -90)",..: 13 11 10 9 8 7 6 5 4 3 ...

``` r
# Starts
exp4_tc_full$Timestep %>% as.character() %>% parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       -200     470    1145    1145    1820    2490 

``` r
# Ends
exp4_tc_full$Timestep %>%
  as.character() %>%
  str_remove_all("\\[.*?,") %>%  # everything between [ and ,
  parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       -190     480    1155    1155    1830    2500 

Full window is -500–3000 ms relative to audio onset:

``` r
# Steps
exp4_tc_names$Timestep %>% str()
```

     Factor w/ 350 levels "[-10, 0)","[-100, -90)",..: 46 44 43 42 41 40 39 38 37 36 ...

``` r
# Starts
exp4_tc_names$Timestep %>% as.character() %>% parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       -500     370    1245    1245    2120    2990 

``` r
# Ends
exp4_tc_names$Timestep %>%
  as.character() %>%
  str_remove_all("\\[.*?,") %>%  # everything between [ and ,
  parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       -490     380    1255    1255    2130    3000 

Preview window is 0–1000 ms relative to screen display (up through audio
start):

``` r
# Steps
exp4_tc_preview$Timestep %>% str()
```

     Factor w/ 100 levels "[0, 10)","[10, 20)",..: 1 2 13 24 35 46 57 68 79 90 ...

``` r
# Starts
exp4_tc_preview$Timestep %>% as.character() %>% parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
        0.0   247.5   495.0   495.0   742.5   990.0 

``` r
# Ends
exp4_tc_preview$Timestep %>%
  as.character() %>%
  str_remove_all("\\[.*?,") %>%  # everything between [ and ,
  parse_number() %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       10.0   257.5   505.0   505.0   752.5  1000.0 

### Sum Data: `TG`, `CM`, `D1`, `D2`, `D3`, `D4`

Number of milliseconds looking at target (`TG`), competitor (`CM`), and
each of the 4 distractors (`D_`) out of 10ms timestep:

``` r
exp4_tc_pronoun %>% select(TG, CM, starts_with("D")) %>% summary()
```

           TG               CM               D1                D2         
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.0000   Min.   : 0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.0000   1st Qu.: 0.0000  
     Median : 0.000   Median : 0.000   Median : 0.0000   Median : 0.0000  
     Mean   : 4.856   Mean   : 2.592   Mean   : 0.4761   Mean   : 0.4766  
     3rd Qu.:10.000   3rd Qu.: 9.000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
     Max.   :10.000   Max.   :10.000   Max.   :10.0000   Max.   :10.0000  
     NA's   :624      NA's   :624      NA's   :624       NA's   :624      
           D3                D4             Ds_Prop      
     Min.   : 0.0000   Min.   : 0.0000   Min.   :0.0000  
     1st Qu.: 0.0000   1st Qu.: 0.0000   1st Qu.:0.0000  
     Median : 0.0000   Median : 0.0000   Median :0.0000  
     Mean   : 0.5197   Mean   : 0.6754   Mean   :0.2162  
     3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.:0.0000  
     Max.   :10.0000   Max.   :10.0000   Max.   :1.0000  
     NA's   :624       NA's   :624       NA's   :624     

``` r
exp4_tc_full    %>% select(TG, CM, starts_with("D")) %>% summary()
```

           TG               CM               D1                D2         
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.0000   Min.   : 0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.0000   1st Qu.: 0.0000  
     Median : 9.000   Median : 0.000   Median : 0.0000   Median : 0.0000  
     Mean   : 5.062   Mean   : 2.311   Mean   : 0.4225   Mean   : 0.4482  
     3rd Qu.:10.000   3rd Qu.: 0.000   3rd Qu.: 0.0000   3rd Qu.: 0.0000  
     Max.   :10.000   Max.   :10.000   Max.   :10.0000   Max.   :10.0000  
     NA's   :1620     NA's   :1620     NA's   :1620      NA's   :1620     
           D3                D4             Ds_Prop      
     Min.   : 0.0000   Min.   : 0.0000   Min.   :0.0000  
     1st Qu.: 0.0000   1st Qu.: 0.0000   1st Qu.:0.0000  
     Median : 0.0000   Median : 0.0000   Median :0.0000  
     Mean   : 0.4775   Mean   : 0.5835   Mean   :0.1946  
     3rd Qu.: 0.0000   3rd Qu.: 0.0000   3rd Qu.:0.0000  
     Max.   :10.0000   Max.   :10.0000   Max.   :1.0000  
     NA's   :1620      NA's   :1620      NA's   :1620    

``` r
exp4_tc_names   %>% select(TG, CM, starts_with("D")) %>% summary()
```

           TG               CM               D1               D2        
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.000   Min.   : 0.000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000  
     Median : 0.000   Median : 0.000   Median : 0.000   Median : 0.000  
     Mean   : 2.147   Mean   : 2.099   Mean   : 1.249   Mean   : 1.256  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000  
     Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000  
     NA's   :2100     NA's   :2100     NA's   :2100     NA's   :2100    
           D3               D4            Ds_Prop      
     Min.   : 0.000   Min.   : 0.000   Min.   :0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.:0.0000  
     Median : 0.000   Median : 0.000   Median :1.0000  
     Mean   : 1.283   Mean   : 1.309   Mean   :0.5135  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.:1.0000  
     Max.   :10.000   Max.   :10.000   Max.   :1.0000  
     NA's   :2100     NA's   :2100     NA's   :2100    

``` r
exp4_tc_preview %>% select(TG, CM, starts_with("D")) %>% summary()
```

           TG               CM               D1               D2        
     Min.   : 0.000   Min.   : 0.000   Min.   : 0.000   Min.   : 0.000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 0.000  
     Median : 0.000   Median : 0.000   Median : 0.000   Median : 0.000  
     Mean   : 1.364   Mean   : 1.297   Mean   : 1.345   Mean   : 1.421  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.: 0.000  
     Max.   :10.000   Max.   :10.000   Max.   :10.000   Max.   :10.000  
     NA's   :600      NA's   :600      NA's   :600      NA's   :600     
           D3               D4            Ds_Prop      
     Min.   : 0.000   Min.   : 0.000   Min.   :0.0000  
     1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.:0.0000  
     Median : 0.000   Median : 0.000   Median :1.0000  
     Mean   : 1.396   Mean   : 1.349   Mean   :0.5564  
     3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.:1.0000  
     Max.   :10.000   Max.   :10.000   Max.   :1.0000  
     NA's   :600      NA's   :600      NA's   :600     

### Proportion Data: `T_Prop`, `C_Prop`, `Ds_Prop`

Proportion of 10-ms timestep looking at target (`T_Prop`), competitor
(`C_Prop`), and mean of four distractors (`Ds_Prop`):

``` r
exp4_tc_pronoun %>% select(ends_with("Prop")) %>% summary()
```

         T_Prop          C_Prop          Ds_Prop      
     Min.   :0.000   Min.   :0.0000   Min.   :0.0000  
     1st Qu.:0.000   1st Qu.:0.0000   1st Qu.:0.0000  
     Median :0.000   Median :0.0000   Median :0.0000  
     Mean   :0.488   Mean   :0.2606   Mean   :0.2162  
     3rd Qu.:1.000   3rd Qu.:1.0000   3rd Qu.:0.0000  
     Max.   :1.000   Max.   :1.0000   Max.   :1.0000  
     NA's   :624     NA's   :624      NA's   :624     

``` r
exp4_tc_full    %>% select(ends_with("Prop")) %>% summary()
```

         T_Prop           C_Prop          Ds_Prop      
     Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
     Median :1.0000   Median :0.0000   Median :0.0000  
     Mean   :0.5087   Mean   :0.2324   Mean   :0.1946  
     3rd Qu.:1.0000   3rd Qu.:0.0000   3rd Qu.:0.0000  
     Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
     NA's   :1620     NA's   :1620     NA's   :1620    

``` r
exp4_tc_names   %>% select(ends_with("Prop")) %>% summary()
```

         T_Prop           C_Prop          Ds_Prop      
     Min.   :0.0000   Min.   :0.0000   Min.   :0.0000  
     1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.0000  
     Median :0.0000   Median :0.0000   Median :1.0000  
     Mean   :0.2161   Mean   :0.2112   Mean   :0.5135  
     3rd Qu.:0.0000   3rd Qu.:0.0000   3rd Qu.:1.0000  
     Max.   :1.0000   Max.   :1.0000   Max.   :1.0000  
     NA's   :2100     NA's   :2100     NA's   :2100    

``` r
exp4_tc_preview %>% select(ends_with("Prop")) %>% summary()
```

         T_Prop           C_Prop         Ds_Prop      
     Min.   :0.0000   Min.   :0.000   Min.   :0.0000  
     1st Qu.:0.0000   1st Qu.:0.000   1st Qu.:0.0000  
     Median :0.0000   Median :0.000   Median :1.0000  
     Mean   :0.1378   Mean   :0.131   Mean   :0.5564  
     3rd Qu.:0.0000   3rd Qu.:0.000   3rd Qu.:1.0000  
     Max.   :1.0000   Max.   :1.000   Max.   :1.0000  
     NA's   :600      NA's   :600     NA's   :600     

### Binary Data: `IsTarget`, `WasTarget`

`IsTarget` is 1 if \>5 ms of timestep are looking at timestep (ties
broken based on previous timestep). `WasTarget` is AR(1), if previous
timestep was looking at target. NA values are missing data; -999 values
are initital timesteps where AR(1) can’t be determined.

``` r
exp4_tc_pronoun %>% select(ends_with("Target")) %>% summary()
```

        IsTarget        WasTarget       
     Min.   :0.0000   Min.   :-999.000  
     1st Qu.:0.0000   1st Qu.:   0.000  
     Median :0.0000   Median :   0.000  
     Mean   :0.4873   Mean   :   0.387  
     3rd Qu.:1.0000   3rd Qu.:   1.000  
     Max.   :1.0000   Max.   :   1.000  
     NA's   :624      NA's   :624       

``` r
exp4_tc_full    %>% select(ends_with("Target")) %>% summary()
```

        IsTarget        WasTarget        
     Min.   :0.0000   Min.   :-999.0000  
     1st Qu.:0.0000   1st Qu.:   0.0000  
     Median :1.0000   Median :   1.0000  
     Mean   :0.5079   Mean   :   0.4692  
     3rd Qu.:1.0000   3rd Qu.:   1.0000  
     Max.   :1.0000   Max.   :   1.0000  
     NA's   :1620     NA's   :1620       

``` r
exp4_tc_names   %>% select(ends_with("Target")) %>% summary()
```

        IsTarget        WasTarget        
     Min.   :0.0000   Min.   :-999.0000  
     1st Qu.:0.0000   1st Qu.:   0.0000  
     Median :0.0000   Median :   0.0000  
     Mean   :0.2156   Mean   :   0.1858  
     3rd Qu.:0.0000   3rd Qu.:   0.0000  
     Max.   :1.0000   Max.   :   1.0000  
     NA's   :2100     NA's   :2100       

``` r
exp4_tc_preview %>% select(ends_with("Target")) %>% summary()
```

        IsTarget       WasTarget        
     Min.   :0.000   Min.   :-999.0000  
     1st Qu.:0.000   1st Qu.:   0.0000  
     Median :0.000   Median :   0.0000  
     Mean   :0.137   Mean   :   0.0327  
     3rd Qu.:0.000   3rd Qu.:   0.0000  
     Max.   :1.000   Max.   :   1.0000  
     NA's   :600     NA's   :600        

## Characters `exp4_characters.csv`

``` r
exp4_characters <- read.csv("exp4_characters.csv", stringsAsFactors = TRUE)
str(exp4_characters)
```

    'data.frame':   600 obs. of  11 variables:
     $ ParticipantID   : Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 2 2 2 2 ...
     $ Section         : Factor w/ 2 levels "post","pre": 2 2 2 2 2 2 2 2 2 2 ...
     $ List            : int  1 1 1 1 1 1 2 2 2 2 ...
     $ Test_Round      : int  1 1 1 1 1 1 1 1 1 1 ...
     $ T_Pronoun       : Factor w/ 3 levels "He","She","They": 1 3 1 3 2 2 2 2 3 3 ...
     $ T_Image         : Factor w/ 6 levels "HT1","HT2","HT3",..: 1 3 2 6 5 4 4 5 6 3 ...
     $ T_ID            : int  1 5 2 6 4 3 9 10 12 11 ...
     $ Acc             : int  1 1 1 1 1 1 1 1 1 1 ...
     $ Selected_Image  : Factor w/ 6 levels "HT1","HT2","HT3",..: 1 3 2 6 5 4 4 5 6 3 ...
     $ Selected_ID     : int  1 5 2 6 4 3 9 10 12 11 ...
     $ Selected_Pronoun: Factor w/ 3 levels "He","She","They": 1 3 1 3 2 2 2 2 3 3 ...

### Participant-Level Variables: `ParticipantID`, `List`

30 **participants**, each completing at least 12 trials – 1 round of
pre-test and 1 round of post-test for 6 characters. Length varies based
on how many times they had to do the pre-test to get all 6 right.

``` r
str(exp4_characters$ParticipantID)
```

     Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 2 2 2 2 ...

``` r
exp4_characters %>%
  group_by(Section, ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(Section, n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

    `summarise()` has grouped output by 'Section'. You can override using the
    `.groups` argument.
    `summarise()` has grouped output by 'Section'. You can override using the
    `.groups` argument.

| Section | n_trials | n_subj |
|:--------|---------:|-------:|
| post    |        6 |     30 |
| pre     |        6 |      5 |
| pre     |       12 |     16 |
| pre     |       18 |      5 |
| pre     |       24 |      3 |
| pre     |       36 |      1 |

6 **lists** varying name-pronoun-image combinations:

``` r
exp4_characters %>%
  select(ParticipantID, List) %>%
  unique() %>%
  pull(List) %>%
  as.factor() %>%
  summary() %>%
  kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |   5 |
| 2   |   5 |
| 3   |   5 |
| 4   |   5 |
| 5   |   5 |
| 6   |   5 |

### Trial-Level Variables: `Section`, `Test_Round`, `T_Pronoun`, `T_Image`, `T_ID`

**Pre- or post-test:**

``` r
exp4_characters$Section %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| post | 180 |
| pre  | 420 |

**Test round** in pre-test section:

``` r
exp4_characters$Test_Round %>% as.factor() %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| 1    | 180 |
| 2    | 150 |
| 3    |  54 |
| 4    |  24 |
| 5    |   6 |
| 6    |   6 |
| NA's | 180 |

**Pronouns**, **image code**, and **ID** for target character:

``` r
exp4_characters$T_Pronoun %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| He   | 200 |
| She  | 200 |
| They | 200 |

``` r
exp4_characters$T_Image %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| HT1 | 100 |
| HT2 | 100 |
| HT3 | 100 |
| ST1 | 100 |
| ST2 | 100 |
| ST3 | 100 |

``` r
exp4_characters$T_ID %>%
  as.factor() %>%
  summary() %>%
  kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |  15 |
| 2   |  15 |
| 3   |  15 |
| 4   |  15 |
| 5   |  15 |
| 6   |  15 |
| 7   |  16 |
| 8   |  16 |
| 9   |  16 |
| 10  |  16 |
| 11  |  16 |
| 12  |  16 |
| 13  |  18 |
| 14  |  18 |
| 15  |  18 |
| 16  |  18 |
| 17  |  18 |
| 18  |  18 |
| 19  |  15 |
| 20  |  15 |
| 21  |  15 |
| 22  |  15 |
| 23  |  15 |
| 24  |  15 |
| 25  |  21 |
| 26  |  21 |
| 27  |  21 |
| 28  |  21 |
| 29  |  21 |
| 30  |  21 |
| 31  |  15 |
| 32  |  15 |
| 33  |  15 |
| 34  |  15 |
| 35  |  15 |
| 36  |  15 |

### Responses: `Acc`, `Selected_Image`, `Selected_ID`, `Selected_Pronoun`

**Accuracy** for pre-test:

``` r
exp4_characters %>% filter(Section == "pre") %>% pull(Acc) %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     0.0000  1.0000  1.0000  0.8452  1.0000  1.0000 

And for post-test:

``` r
exp4_characters %>% filter(Section == "post") %>% pull(Acc) %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     0.0000  1.0000  1.0000  0.9833  1.0000  1.0000 

**Pronouns**, **image code**, and **ID** for selected character (same as
target character in correct trials):

``` r
exp4_characters$Selected_Pronoun %>% summary() %>% kable()
```

|      |   x |
|:-----|----:|
| He   | 208 |
| She  | 196 |
| They | 196 |

``` r
exp4_characters$Selected_Image %>% summary() %>% kable()
```

|     |   x |
|:----|----:|
| HT1 | 112 |
| HT2 |  98 |
| HT3 |  95 |
| ST1 | 101 |
| ST2 |  96 |
| ST3 |  98 |

``` r
exp4_characters$Selected_ID %>%
  as.factor() %>%
  summary() %>%
  kable(row.names = TRUE)
```

|     |   x |
|:----|----:|
| 1   |  18 |
| 2   |  13 |
| 3   |  17 |
| 4   |  15 |
| 5   |  14 |
| 6   |  13 |
| 7   |  18 |
| 8   |  17 |
| 9   |  16 |
| 10  |  14 |
| 11  |  14 |
| 12  |  17 |
| 13  |  18 |
| 14  |  18 |
| 15  |  17 |
| 16  |  20 |
| 17  |  16 |
| 18  |  19 |
| 19  |  14 |
| 20  |  18 |
| 21  |  15 |
| 22  |  14 |
| 23  |  13 |
| 24  |  16 |
| 25  |  24 |
| 26  |  20 |
| 27  |  17 |
| 28  |  23 |
| 29  |  22 |
| 30  |  20 |
| 31  |  15 |
| 32  |  15 |
| 33  |  15 |
| 34  |  13 |
| 35  |  18 |
| 36  |  14 |

## Match Judgments `exp4_match-judgments.csv`

``` r
exp4_match <- read.csv("exp4_match-judgments.csv", stringsAsFactors = TRUE)
str(exp4_match)
```

    'data.frame':   3600 obs. of  11 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ TrialType    : Factor w/ 4 levels "CR","FD","FP",..: 4 4 4 4 4 4 1 1 1 1 ...
     $ TrialID      : Factor w/ 720 levels "L01_CR01_S15",..: 119 117 118 115 120 116 35 87 15 43 ...
     $ Pronoun_Pair : Factor w/ 3 levels "HeShe|SheHe",..: 3 1 1 1 3 2 1 3 1 1 ...
     $ T_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 3 2 2 1 3 1 2 3 1 2 ...
     $ C_Pronoun    : Factor w/ 3 levels "he/him","she/her",..: 1 1 1 2 2 3 1 2 2 1 ...
     $ Match_Num    : int  1 1 0 1 0 0 1 1 1 1 ...
     $ Match_Start  : num  331082 368057 388500 406051 421286 ...
     $ Match_End    : int  356604 377535 395005 411122 428154 461503 474696 491650 506585 520241 ...
     $ Match_RT     : num  25522 9478 6505 5071 6868 ...
     $ IsOutlier    : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...

### Participant-Level Variables: `ParticipantID`

30 **participants,** each with 120 trials:

``` r
str(exp4_match$ParticipantID)
```

     Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp4_match %>%
  group_by(ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_participants = n()) %>%
  kable()
```

| n_trials | n_participants |
|---------:|---------------:|
|      120 |             30 |

### Trial-Level Variables: `TrialType`, `TrialID`, `Pronoun_Pair`, `T_Pronoun`, `C_Pronoun`

**Trial Type:**

Each participant does:

- `PR` = 6 practice
- `CR` = 120 critical/test
- `FD` = 10 filler with a wrong color description
- `FP` = 8 filler with a pronoun pronoun

``` r
exp4_match %>%
  group_by(TrialType) %>%
  summarise(n_total = n()) %>%
  mutate(
    n_per_subj = n_total / (length(levels(exp4_characters$ParticipantID)))
  ) %>%
  kable()
```

| TrialType | n_total | n_per_subj |
|:----------|--------:|-----------:|
| CR        |    2880 |         96 |
| FD        |     300 |         10 |
| FP        |     240 |          8 |
| PR        |     180 |          6 |

Target and competitor character **pronouns** are evenly distributed into
3 pronoun pair conditions:

``` r
exp4_match %>% count(Pronoun_Pair, T_Pronoun, C_Pronoun) %>% kable()
```

| Pronoun_Pair | T_Pronoun | C_Pronoun |   n |
|:-------------|:----------|:----------|----:|
| HeShe\|SheHe | he/him    | she/her   | 600 |
| HeShe\|SheHe | she/her   | he/him    | 600 |
| HeShe\|They  | he/him    | they/them | 600 |
| HeShe\|They  | she/her   | they/them | 600 |
| They\|HeShe  | they/them | he/him    | 600 |
| They\|HeShe  | they/them | she/her   | 600 |

### Response: `Match_Num`, `Match_Start`, `Match_End`, `Match_RT`, `IsOutlier`

**Match judgments** are coded as 1 for yes and 0 for no, with a few NA
trials where MATLAB recorded a click in the center.

``` r
exp4_match$Match_Num %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
       0.00    1.00    1.00    0.79    1.00    1.00       5 

``` r
exp4_match %>%
  filter(!is.na(Match_Num)) %>%
  count(TrialType, Pronoun_Pair, Match_Num) %>%
  kable()
```

| TrialType | Pronoun_Pair | Match_Num |   n |
|:----------|:-------------|----------:|----:|
| CR        | HeShe\|SheHe |         0 |  60 |
| CR        | HeShe\|SheHe |         1 | 899 |
| CR        | HeShe\|They  |         0 |  84 |
| CR        | HeShe\|They  |         1 | 875 |
| CR        | They\|HeShe  |         0 |  85 |
| CR        | They\|HeShe  |         1 | 874 |
| FD        | HeShe\|SheHe |         0 |  30 |
| FD        | HeShe\|They  |         0 | 210 |
| FD        | They\|HeShe  |         0 |  57 |
| FD        | They\|HeShe  |         1 |   3 |
| FP        | HeShe\|SheHe |         0 |  68 |
| FP        | HeShe\|SheHe |         1 |  52 |
| FP        | They\|HeShe  |         0 |  66 |
| FP        | They\|HeShe  |         1 |  52 |
| PR        | HeShe\|SheHe |         0 |  32 |
| PR        | HeShe\|SheHe |         1 |  58 |
| PR        | HeShe\|They  |         0 |  30 |
| PR        | They\|HeShe  |         0 |  33 |
| PR        | They\|HeShe  |         1 |  27 |

The timing here is calculated from the Eyelink messages, which are more
reliably timed than the MATLAB txt output, and to keep the absolute
times all on the same scale. So these are all in “tracker time”,
relative to Eyelink booting up. **Start** is the end of the audio
stimuli (calculated from the start message + duration of the third audio
file), because the match question displayed immediately after the end of
the audio. **End** is the end of the eyetracker recording, which
happened immediately after the click for the match question. (It’s
possible that this message might be a couple milliseconds after the
actual click, but any offset will be consistent across trials, and the
RTs here are long enough that a differences of a couple milliseconds
wouldn’t matter.)

``` r
exp4_match$Match_Start %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     331082 1140203 1636087 1735862 2122406 5368242 

``` r
exp4_match$Match_End   %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     356604 1144424 1640162 1740410 2126058 5369079 

**RT** in milliseconds:

``` r
exp4_match$Match_RT %>% summary()
```

        Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
       701.7   1650.4   2438.9   4548.1   4731.9 241119.3 

**Outliers** were determined by calculating 3SD for each trial type:

``` r
exp4_match$IsOutlier %>% summary()
```

       Mode   FALSE    TRUE    NA's 
    logical    3545      50       5 

``` r
exp4_match %>%
  group_by(TrialType) %>%
  summarise(
    mean = Match_RT %>% mean %>% round,
    sd   = Match_RT %>% sd   %>% round
  ) %>%
  kable()
```

| TrialType |  mean |   sd |
|:----------|------:|-----:|
| CR        |  4103 | 7468 |
| FD        |  3599 | 5489 |
| FP        |  5604 | 5877 |
| PR        | 11845 | 9429 |

So with outliers removed:

``` r
exp4_match %>%
  filter(IsOutlier == FALSE) %>%
  group_by(TrialType) %>%
  summarise(mean = Match_RT %>% mean %>% round) %>%
  kable()
```

| TrialType |  mean |
|:----------|------:|
| CR        |  3544 |
| FD        |  2917 |
| FP        |  4995 |
| PR        | 10932 |

## Survey `exp4_survey.csv`

``` r
exp4_survey <- read.csv("exp4_survey.csv", stringsAsFactors = TRUE)
str(exp4_survey)
```

    'data.frame':   1410 obs. of  6 variables:
     $ ParticipantID: Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ Category     : Factor w/ 10 levels "Age","Education",..: 8 8 8 8 8 8 4 4 4 4 ...
     $ Item         : Factor w/ 47 levels "4-year degree",..: 16 33 12 40 10 11 37 9 17 18 ...
     $ Response_Num : int  6 6 5 6 6 6 NA NA NA NA ...
     $ Response_Bool: logi  NA NA NA NA NA NA ...
     $ Response_Cat : Factor w/ 9 levels "18-24","25-34",..: NA NA NA NA NA NA NA NA NA NA ...

### Participant-Level Variables: `ParticipantID`

30 participants completing 47 questions (fewer than Experiment 3 because
no one here entered responses for “I use a different term”).

``` r
str(exp4_survey$ParticipantID)
```

     Factor w/ 30 levels "4_001","4_002",..: 1 1 1 1 1 1 1 1 1 1 ...

``` r
exp4_survey %>%
  group_by(ParticipantID) %>%
  summarise(n_trials = n()) %>%
  group_by(n_trials) %>%
  summarise(n_subj = n()) %>%
  kable()
```

| n_trials | n_subj |
|---------:|-------:|
|       47 |     30 |

### Responses: `Category`, `Item`, `Response_Num`, `Response_Bool`, `Response_Cat`

**Category** is group of questions, **item** is question text/option:

``` r
exp4_survey %>% count(Category, Item) %>% select(-n) %>% kable()
```

| Category                            | Item                                                                                                                                         |
|:------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------|
| Age                                 | Age                                                                                                                                          |
| Education                           | 4-year degree                                                                                                                                |
| Education                           | High school graduate                                                                                                                         |
| Education                           | Some college                                                                                                                                 |
| English Experience                  | Fully competent in speaking, listening, reading, and writing, but not native                                                                 |
| English Experience                  | Native (learned from birth)                                                                                                                  |
| Familiarity With They/Them Pronouns | Close To                                                                                                                                     |
| Familiarity With They/Them Pronouns | Have Met                                                                                                                                     |
| Familiarity With They/Them Pronouns | Heard About                                                                                                                                  |
| Familiarity With They/Them Pronouns | Myself                                                                                                                                       |
| Familiarity With They/Them Pronouns | Not Heard About                                                                                                                              |
| Gender                              | Gender                                                                                                                                       |
| Gender Beliefs                      | A person’s genitalia define what gender they are, e.g., a penis defines a person as being a man, a vagina defines a person as being a woman. |
| Gender Beliefs                      | I am uncomfortable around people who don’t conform to traditional gender roles, e.g., aggressive women or emotional men.                     |
| Gender Beliefs                      | I avoid people on the street whose gender is unclear to me.                                                                                  |
| Gender Beliefs                      | I believe that a person can never change their gender.                                                                                       |
| Gender Beliefs                      | I believe that the male/female dichotomy is natural.                                                                                         |
| Gender Beliefs                      | I don’t like it when someone is flirting with me, and I can’t tell if they are a man or a woman.                                             |
| Gender Beliefs                      | I think there is something wrong with a person who says that they are neither a man nor a woman.                                             |
| Gender Beliefs                      | I would be upset if someone I’d known a long time revealed to me that they used to be another gender.                                        |
| Gender Beliefs                      | When I meet someone, it is important for me to be able to identify them as a man or a woman.                                                 |
| Race/Ethnicity                      | American Indian or Alaska Native                                                                                                             |
| Race/Ethnicity                      | Asian                                                                                                                                        |
| Race/Ethnicity                      | Black, African American, or African                                                                                                          |
| Race/Ethnicity                      | Hispanic, Latino, or Spanish                                                                                                                 |
| Race/Ethnicity                      | I use a different term                                                                                                                       |
| Race/Ethnicity                      | Middle Eastern or North African                                                                                                              |
| Race/Ethnicity                      | Native Hawaiian or Pacific Islander                                                                                                          |
| Race/Ethnicity                      | Prefer not to answer                                                                                                                         |
| Race/Ethnicity                      | White                                                                                                                                        |
| Sentence Naturalness Ratings        | Each                                                                                                                                         |
| Sentence Naturalness Ratings        | Every                                                                                                                                        |
| Sentence Naturalness Ratings        | Fem Name                                                                                                                                     |
| Sentence Naturalness Ratings        | Generic                                                                                                                                      |
| Sentence Naturalness Ratings        | Masc Name                                                                                                                                    |
| Sentence Naturalness Ratings        | Neutral Name                                                                                                                                 |
| Sexuality                           | Asexual                                                                                                                                      |
| Sexuality                           | Bisexual/Pansexual                                                                                                                           |
| Sexuality                           | Gay/Lesbian                                                                                                                                  |
| Sexuality                           | Heterosexual/Straight                                                                                                                        |
| Sexuality                           | I use a different term                                                                                                                       |
| Sexuality                           | Prefer not to answer                                                                                                                         |
| Sexuality                           | Queer                                                                                                                                        |
| Sexuality                           | Questioning                                                                                                                                  |
| Transgender & Gender-Diverse        | I consider myself cisgender                                                                                                                  |
| Transgender & Gender-Diverse        | I consider myself transgender                                                                                                                |
| Transgender & Gender-Diverse        | I don't consider myself cisgender or transgender                                                                                             |
| Transgender & Gender-Diverse        | My gender is different than what was written on my original birth certificate                                                                |
| Transgender & Gender-Diverse        | My gender is the same as what was written on my original birth certificate                                                                   |
| Transgender & Gender-Diverse        | Prefer not to answer                                                                                                                         |

Age, sentence naturalness ratings, and the transphobia/gender beliefs
scale all have numeric responses:

``` r
exp4_survey %>% filter(!is.na(Response_Num)) %>% count(Category) %>% kable()
```

| Category                     |   n |
|:-----------------------------|----:|
| Age                          |  30 |
| Gender Beliefs               | 270 |
| Sentence Naturalness Ratings | 180 |

1 **age** item per participant:

``` r
exp4_survey %>% filter(Category == "Age") %>% pull(Response_Num) %>% summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      18.00   18.00   19.00   20.13   21.00   27.00 

6 **sentence naturalness rating** items per participant, on a 1-7 scale:

``` r
exp4_survey %>%
  filter(Category == "Sentence Naturalness Ratings") %>%
  pull(Response_Num) %>%
  summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1.000   4.000   6.000   5.072   6.000   7.000 

9 **gender beliefs** items per participant, on a 1-7 scale:

``` r
exp4_survey %>%
  filter(Category == "Gender Beliefs") %>%
  pull(Response_Num) %>%
  summary()
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1.000   1.000   2.000   2.548   4.000   7.000 

Familiarity with using they/them pronouns, race/ethnicity, sexuality,
and trans/gender diverse items have Boolean variables, because they were
check-all-that-apply:

``` r
exp4_survey %>% filter(!is.na(Response_Bool)) %>% count(Category) %>% kable()
```

| Category                            |   n |
|:------------------------------------|----:|
| Familiarity With They/Them Pronouns | 150 |
| Race/Ethnicity                      | 270 |
| Sexuality                           | 240 |
| Transgender & Gender-Diverse        | 180 |

5 options for **familiarity with using they/them pronouns:**

``` r
exp4_survey %>%
  filter(Category == "Familiarity With They/Them Pronouns") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item            | Response_Bool |   n |
|:----------------|:--------------|----:|
| Close To        | FALSE         |  21 |
| Close To        | TRUE          |   9 |
| Have Met        | FALSE         |   9 |
| Have Met        | TRUE          |  21 |
| Heard About     | FALSE         |  25 |
| Heard About     | TRUE          |   5 |
| Myself          | FALSE         |  30 |
| Not Heard About | FALSE         |  30 |

9 options for **race/ethnicity:**

``` r
exp4_survey %>%
  filter(Category == "Race/Ethnicity") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                                | Response_Bool |   n |
|:------------------------------------|:--------------|----:|
| American Indian or Alaska Native    | FALSE         |  30 |
| Asian                               | FALSE         |  20 |
| Asian                               | TRUE          |  10 |
| Black, African American, or African | FALSE         |  29 |
| Black, African American, or African | TRUE          |   1 |
| Hispanic, Latino, or Spanish        | FALSE         |  24 |
| Hispanic, Latino, or Spanish        | TRUE          |   6 |
| I use a different term              | FALSE         |  30 |
| Middle Eastern or North African     | FALSE         |  29 |
| Middle Eastern or North African     | TRUE          |   1 |
| Native Hawaiian or Pacific Islander | FALSE         |  30 |
| Prefer not to answer                | FALSE         |  29 |
| Prefer not to answer                | TRUE          |   1 |
| White                               | FALSE         |  15 |
| White                               | TRUE          |  15 |

8 options for **sexuality:**

``` r
exp4_survey %>%
  filter(Category == "Sexuality") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                   | Response_Bool |   n |
|:-----------------------|:--------------|----:|
| Asexual                | FALSE         |  29 |
| Asexual                | TRUE          |   1 |
| Bisexual/Pansexual     | FALSE         |  27 |
| Bisexual/Pansexual     | TRUE          |   3 |
| Gay/Lesbian            | FALSE         |  29 |
| Gay/Lesbian            | TRUE          |   1 |
| Heterosexual/Straight  | FALSE         |   3 |
| Heterosexual/Straight  | TRUE          |  27 |
| I use a different term | FALSE         |  30 |
| Prefer not to answer   | FALSE         |  30 |
| Queer                  | FALSE         |  30 |
| Questioning            | FALSE         |  28 |
| Questioning            | TRUE          |   2 |

6 options for **transgender/gender-diverse:**

``` r
exp4_survey %>%
  filter(Category == "Transgender & Gender-Diverse") %>%
  count(Item, Response_Bool) %>%
  kable()
```

| Item                                                                          | Response_Bool |   n |
|:------------------------------------------------------------------------------|:--------------|----:|
| I consider myself cisgender                                                   | FALSE         |  13 |
| I consider myself cisgender                                                   | TRUE          |  17 |
| I consider myself transgender                                                 | FALSE         |  30 |
| I don't consider myself cisgender or transgender                              | FALSE         |  30 |
| My gender is different than what was written on my original birth certificate | FALSE         |  30 |
| My gender is the same as what was written on my original birth certificate    | TRUE          |  30 |
| Prefer not to answer                                                          | FALSE         |  30 |

Education and English experience are all categorical variables because
they were select-one-option. Gender is a categorical variable, after the
preprocessing script removed spelling/capitalization differences to
group responses.

``` r
exp4_survey %>% filter(!is.na(Response_Cat)) %>% count(Category) %>% kable()
```

| Category           |   n |
|:-------------------|----:|
| Age                |  30 |
| Education          |  30 |
| English Experience |  30 |
| Gender             |  30 |

**Education:**

``` r
exp4_survey %>%
  filter(Category == "Education") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|                      |   x |
|:---------------------|----:|
| 4-year degree        |   7 |
| High school graduate |   4 |
| Some college         |  19 |

**English Experience:**

``` r
exp4_survey %>%
  filter(Category == "English Experience") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|                                                                              |   x |
|:-----------------------------------------------------------------------------|----:|
| Fully competent in speaking, listening, reading, and writing, but not native |   3 |
| Native (learned from birth)                                                  |  27 |

**Gender:**

``` r
exp4_survey %>%
  filter(Category == "Gender") %>%
  pull(Response_Cat) %>%
  droplevels() %>%
  summary() %>%
  kable()
```

|        |   x |
|:-------|----:|
| Female |  19 |
| Male   |  11 |

## Demographics `exp4_demographics.csv`

Summary of survey data, with `Total` of participants in each `Group` in
each `Category` for age, education, English experience, gender,
race/ethnicity, sexuality, and trans/gender-diverse identity. Does not
include groups with no participants.

``` r
exp4_demographics <- read.csv("exp4_demographics.csv", stringsAsFactors = TRUE)
str(exp4_demographics)
```

    'data.frame':   25 obs. of  3 variables:
     $ Category: Factor w/ 6 levels "Age","English Experience",..: 1 1 1 2 2 2 3 3 3 4 ...
     $ Group   : Factor w/ 20 levels "18-24","25-34",..: 1 2 19 8 16 19 7 13 19 4 ...
     $ Total   : int  26 4 30 3 27 30 19 11 30 10 ...

``` r
exp4_demographics %>% count(Category, Group) %>% select(-n) %>% kable()
```

| Category                     | Group                                                                        |
|:-----------------------------|:-----------------------------------------------------------------------------|
| Age                          | 18-24                                                                        |
| Age                          | 25-34                                                                        |
| Age                          | Total                                                                        |
| English Experience           | Fully competent in speaking, listening, reading, and writing, but not native |
| English Experience           | Native (learned from birth)                                                  |
| English Experience           | Total                                                                        |
| Gender                       | Female                                                                       |
| Gender                       | Male                                                                         |
| Gender                       | Total                                                                        |
| Race/Ethnicity               | Asian                                                                        |
| Race/Ethnicity               | Black, African American, or African                                          |
| Race/Ethnicity               | Hispanic, Latino, or Spanish                                                 |
| Race/Ethnicity               | Middle Eastern or North African                                              |
| Race/Ethnicity               | Prefer not to answer                                                         |
| Race/Ethnicity               | Total                                                                        |
| Race/Ethnicity               | White                                                                        |
| Sexuality                    | Asexual                                                                      |
| Sexuality                    | Bisexual/Pansexual                                                           |
| Sexuality                    | Gay/Lesbian                                                                  |
| Sexuality                    | Heterosexual/Straight                                                        |
| Sexuality                    | Questioning                                                                  |
| Sexuality                    | Total                                                                        |
| Transgender & Gender-Diverse | I consider myself cisgender                                                  |
| Transgender & Gender-Diverse | My gender is the same as what was written on my original birth certificate   |
| Transgender & Gender-Diverse | Total                                                                        |
