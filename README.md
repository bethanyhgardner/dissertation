# Dissertation

Right now, this repository has de-identified data, materials, and analysis code. The rendered analysis code, a DOI, and a link to the full text on ProQuest will be available later.
 
## Contents

*	[Analysis Code](#analysis-code)
*	[Data](#data)
*	[Materials](#materials)
*	[R Data Files & Environments](#r-data-files-and-environments)
*	[Resources](#resources)
*	[Quarto Files](#quarto-files)

```
│   exp1.qmd
│   exp2.qmd
│   exp3.qmd
│   exp4.qmd
│   index.qmd
│   references.qmd
│   supplementary_analyses.qmd
│   _quarto.yml
├───data
├───materials
│   ├───exp1
│   ├───exp2
│   ├───exp3
│   └───exp4
├───resources
│   ├───data-functions
│   ├───formatting
│   └───icons
└───r_data
```

---

## Analysis Code

```
│   exp1.qmd
│   exp2.qmd
│   exp3.qmd
│   exp4.qmd
│   supplementary_analyses.qmd
```

Analysis code for each experiment and the appendix, which includes code for the stats models, plots, and tables, and the text with the model results piped in.

---

## Data

```
├───data
│       exp1a_data.csv
│       exp1b_data.csv
│       exp2_data.csv
│       exp3_demographics.csv
│       exp3_image-norming.csv
│       exp3_participant-covariates.csv
│       exp3_pronouns.csv
│       exp3_survey.csv
│       exp4_characters.csv
│       exp4_demographics.csv
│       exp4_match-judgments.csv
│       exp4_survey.csv
│       exp4_timecourse-full.csv
│       exp4_timecourse-names.csv
│       exp4_timecourse-preview.csv
│       exp4_timecourse-pronoun.csv
│       README.md
└───    README.qmd
```

These are the de-identified data files, which are described in the [README](data/README.md) in that directory.

---

## Materials

### Experiment 1

```
├───exp1
│       demographics.txt
│       exp1a_qualtrics.qsf
│       exp1b_qualtrics.qsf
│       exp1_stimuli.xlsx
```

*	[`demographics.txt`](materials/exp1/demographics.txt) is the age, gender, and English experience questions.
*	[`exp1_stimuli.xlsx`](materials/exp1/exp1_stimuli.xlsx) has information about the 12 names, 3 pronouns, 12 jobs, and 3 pets and how those were combined into 3 counter-balancing lists.
*	[`exp1a_qualtrics.qsf`](materials/exp1/exp1a_qualtrics.qsf) is the Qualtrics configuration file for Experiment 1A.
*	[`exp1b_qualtrics.qsf`](materials/exp1/exp1b_qualtrics.qsf) is the Qualtrics configuration file for Experiment 1B.

### Experiment 2

```
├───exp2
│   │   biographies.md
│   │   demographics.txt
│   │   PSA.md
│   │
│   ├───PCIbex
│   │       demolink.txt
│   │       global_main.css
│   │       main.js
│   │       PennController.css
│   │       Scale.css
│   │
│   └───stim
│           catch_word.mp3
│           consent.html
│           math.csv
│           psa_neutral.html
│           psa_pronoun.html
│           stimuli_characters.csv
│           stimuli_training.csv
│           story1_she.html
│           story1_they_fem.html
│           story2_he.html
│           story2_they_masc.html
```

*	[`biographies.md`](materials/exp2/biographies.md) is the text of the biographies.
*	[`demographics.txt`](materials/exp2/demographics.txt) is the age, gender, and English experience questions (same as Experiment 1).
*	[`PSA.md`](materials/exp2/PSA.md) is the text of the PSAs.
*	[`PCIbex/`](materials/exp2/PCIbex/) has the code for the experiment ([`main.js`](materials/exp2/PCIbex/main.js)), the subset of CSS files that were modified from the default (`*.css`), and a link to the [demo version](https://farm.pcibex.net/r/RDIOLx/) on the PCIbex farm.
*	[`stim/`](materials/exp2/stim/) is the stimuli files used in PCIbex, with the parts that participants read (consent form, biographies, PSA) in HTML and the character/condition info for cycling through trials in CSV files.

### Experiment 3

```
├───exp3
│   │   demographics.md
│   │   images.md
│   │   stimuli.xlsx
│   │   survey.md
│   │
│   ├───figures
│   │       procedure.png
│   │       stimuli.png
│   │
│   ├───PCIbex
│   │       1_setup.js
│   │       2_consent-checks.js
│   │       3_experiment.js
│   │       4_attitudes.js
│   │       5_demographics-end.js
│   │       demolink.txt
│   │       global_main.css
│   │       PennController.css
│   │       Scale.css
│   │
│   └───stim
│           catch_word.mp3
│           ins_characters.html
│           ins_mic-test.html
│           ins_start.html
│           ins_trials-example.html
│           ins_trials-practice.html
│           ins_trials-test.html
│           stim-acceptability.csv
│           stim-char.csv
│           stim-example.csv
│           stim-practice.csv
│           stim-test.csv
│           stim-transphobia.csv
```

*	[`demographics.md`](materials/exp3/demographics.md) is the text of the demographics questions.
*	[`images.md`](materials/exp3/images.md) is the title, creator, link, and license information for all of the images. The edited images (the 6 character images with the backgrounds removed and the display names along the bottom) are available upon request.
*	[`stimuli.xlsx`](materials/exp3/stimuli.xlsx) with the sheets
	*	`Trial Frames`: information about the trial frames that counter-balanced the locations of the characters and siblings, whether or not it was the brother or sister, and the object shown.
	*	`Character Sets`: information about the character names, images, pronouns, pets, and jobs and how they were counter-balanced in 6 lists.
	*	`Lists_Production`: uses the trial frames and character set sheets to create the 24 stimuli lists for the production trials.
	*	`Lists_Characters`: uses the character sets sheet to create the stimuli lists for the introductions to the characters.
*	[`survey.md`](materials/exp3/survey.md) is the text of the prior beliefs/experiences survey questions.
*	[`figures/`](materials/exp3/figures/) has the example trial and procedure figures included in the manuscript.
*	[`PCIBex/`](materials/exp3/PCIbex/) has the code for the experiment (`*.js`), the subset of CSS files that were modified from the default (`*.css`), and a link to the [demo version](https://farm.pcibex.net/r/RDIOLx/) on the PCIbex farm.
*	[`stim/`](materials/exp3/stim/) is the stimuli files used in PCIbex. The HTML pages are instructions text, and the `stim*.csv` have the condition/character variables for randomizing and cycling through trials in each section of the experiment: introduction to the characters, example trials, practice trials, test trials, acceptability judgment questions in the survey, and gender beliefs questions in the survey.

### Experiment 4

```
└───exp4
    │   audio-times.csv
    │   demographics.md
    │   images.md
    │   stimuli.xlsx
    │   stories.md
    │   survey.md
    │
    ├───eyetracking_matlab
    │       charIntros.m
    │       charPost.m
    │       charPre.m
    │       mainTrials.m
    │       startScreen.m
    │       they4.m
    │
    ├───figures
    │       arnold2000.png
    │       procedure.png
    │       stimuli.png
    │
    └───survey_pcibex
            1_setup.js
            2_attitudes.js
            3_demographics.js
            demolink.txt
            global_main.css
            PennController.css
            Scale.css
            stim-acceptability.csv
            stim-transphobia.csv
```

*	[`audio-times.csv`](materials/exp4/audio-times.csv) has the duration for all audio stimuli files, plus the time of the shape word onset for each pronoun sentence. The audio files are available upon request.
*	[`demographics.md`](materials/exp4/demographics.md) is the text of the demographics questions (same as Experiment 3).
*	[`images.md`](materials/exp4/images.md) is the title, creator, link, and license information for all of the images. The edited images (the 6 character images with the original backgrounds and the colored shapes added) are available upon request.
*	[`stimuli.xlsx`](materials/exp4/stimuli.xlsx) with the sheets
	*	`Overview` has summary tables about the conditions and trial types in the experiment.
	*	`Trial Frames` has the info that counter-balances the pronouns of the target and competitor pair, the order of mention condition, and the colors and shapes. The locations on the screen were randomized in each trial in MATLAB.
	*	`Trial Frames_Counterbalance` has tables that check the counter-balancing in the trial frames.
	*	`Lists` combines the set of trial frames and the 6 character lists to get all of the condition variables, story text, and file names for the trials.
	*	`Lists_Matlab` copies the results of the excel formulas in `Lists` into a sheet that can be exported as a csv and has the correct column names for the MATLAB script.
	*	`Character Sets` has information about the character pronouns, images, names, and hobby/job facts and how they're counter-balanced across lists. It also has the distribution of the pairs of names, which was used to figure out which stories to record with which names. (The stories counter-balance the pronouns, but not the names, to keep the number of recordings feasible.)
	*	`Character Info` gets the information from the `Character Sets` sheet to create the stimuli list for the character introduction section.
*	[`stories.md`](materials/exp4/stories.md) is the text of the stories.
*	[`survey.md`](materials/exp4/survey.md) is the text of the prior beliefs/experiences questions (same as Experiment 3, minus the pronoun sharing questions)
*	[`eyetracking_matlab/`](materials/exp4/eyetracking_matlab/) is the MATLAB code for the character learning and eyetracking portions of the experiment. The comments in [`they4.m`](materials/exp4/eyetracking_matlab/they4.m) have more information.
*	[`figures/`](materials/exp4/figures/) has the example screen, procedure, and results from Arnold et al. (2000) shown in the manuscript.
*	[`survey_pcibex/`](materials/exp4/survey_pcibex/) is the PCIbex code for the survey portion of the experiment. Like the rest of the experiments, it includes the PCIbex code (`*.js`), the subset of CSS files that were modified from the default (`.css`), the stimuli that appear in a randomized order (`stim-*.csv`), and the [demo link](https://farm.pcibex.net/r/QnnEGE/).

---

## R Data Files and Environments

```
└───r_data
        exp1.RData
        exp1a_memory_reliability.RDS
        exp1a_production_reliability.RDS
        exp1b_memory_reliability.RDS
        exp1b_production_reliability.RDS
        exp2.RData
        exp3.RData
        exp3_power_2way_N108.RDA
        exp3_power_2way_N132.RDA
        exp3_power_2way_N156.RDA
        exp3_power_2way_N180.RDA
        exp3_power_3way_N132.RDA
        exp3_power_3way_N156.RDA
        exp3_reliability.RDS
        exp3_subj-covariates.RDS
        exp4.RData
        exp4_AR.RDS
        exp4_pronoun-pair.RDS
        exp4_pronoun-pair_HS-SH.RDS
        exp4_pronoun-pair_HS-T.RDS
        exp4_pronoun-pair_HS-T_first0.RDS
        exp4_pronoun-pair_HS-T_second0.RDS
        exp4_pronoun-pair_T-HS.RDS
        exp4_target-pronoun.RDS
        exp4_trend.RDS
```

*	The `exp*.RData` files are the R environments after running the analysis code file for the corresponding experiment. These are used in the supplementary analysis code file, and to save time re-running everything.
*	The `exp3*.RDS` and `exp4*.RDS` files are the participant covariates model for Experiment 3 and the eyetracking models for Experiment 4. Each of these takes days to find the maximal random effects structure using `buildmer` (even running in parallel) and hours to refit the final model just using `lme4`. All of the other smaller models get cached when the analysis code files are rendered for the first time.
*	The `exp1*_reliability.RDS` files are the Bayesian models fit with `brms`, which can take a couple of hours to run.
*	The `*.RDA` files are the power simulations with `simr`, which also take at least a couple of hours to run.

---

## Resources

```
└───resources
    ├───data-functions
    │       demographics.R
    │       exp1_load_data.R
    │       exp2_load_data.R
    │       exp3_load_data.R
    │       exp4_load_data.R
    │
    ├───formatting
    │       aesthetics.R
    │       apa.csl
    │       printing.R
    │       pulse_modified.css
    │       rainbow.csv
    │
    └───icons
            file-code-fill.svg
            open-data.svg
            open-materials.svg
            osf.svg
            preregistered.svg
```

*	[`data-functions/`](resources/data-functions/)
	*	[`demographics.R`](resources/data-functions/demographics.R) gets the full list of options in the Experiments 3 & 4 survey questions, then makes tables including the options that have 0 participants.
	*	`exp*_load_data.R` have functions for each experiment to load and set up the data (e.g., contrast coding, labels for plots) to make the analysis code files more manageable and  consistent.
*	[`formatting/`](resources/formatting/)
	*	[`aesthetics.R`](resources/formatting/aesthetics.R) has ggplot themes for plots, CSS themes for tables made with sjPlot::tab_model, and two custom functions to modify tables made with sjPlot::tab_model (add a title row, remove the sigma squared row).
	*	[`apa.csl`](resources/formatting/apa.csl) is the template to print citations in APA7 format.
	*	[`printing.R`](resources/formatting/printing.R) has functions for printing model results in text.
	*	[`pulse_modified.css`](resources/formatting/pulse_modified.css) is the HTML theme, with a couple small modifications to the tables from the [Bootswatch theme](https://bootswatch.com/pulse/).
	*	[`rainbow.csv`](resources/formatting/rainbow.csv) has the hex codes for a color gradient based on the RColorBrewer Spectral theme (used for the Gender Beliefs plots in Experiments 3 & 4 so the color scheme matches the other survey plots).
*	[`icons/`](resources/icons/) has several images from the [Bootstrap set](https://icons.getbootstrap.com/) and the [Academicons](https://jpswalsh.github.io/academicons/) set, because I couldn't figure out how to insert them using shortcodes and make them hyperlinks.

---

## Quarto Files

```
│   index.qmd
│   references.qmd
│   _quarto.yml
```

*	[`index.qmd`](index.qmd) is the landing page for opening the project online.
*	[`references.qmd`](references.qmd) directs Quarto to print the reference list from the Experiments 1-4 pages into a separate page.
*	[`_quarto.yml`](_quarto.yml) is the rendering settings, structuring, and citation information for this repository.
