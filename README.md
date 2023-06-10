# Dissertation

## Contents

*	[Materials](#materials)
*	[Resources](#resources)

```
├───.quarto
│   └───idx
├───materials
│   ├───exp1
│   ├───exp2
│   │   ├───PCIbex
│   │   └───stim
│   ├───exp3
│   │   ├───figures
│   │   ├───PCIbex
│   │   └───stim
│   └───exp4
│       ├───eyetracking_matlab
│       ├───figures
│       └───survey_pcibex
│           ├───css
│           └───stim
└───resources
    ├───formatting
    └───icons
```

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

*	`demographics.txt` is the age, gender, and English experience questions.
*	exp1_stimuli.xlsx` has information about the 12 names, 3 pronouns, 12 jobs, and 3 pets and how those were combined into 3 counter-balancing lists.
*	`exp1a_qualtrics.qsf` is the Qualtrics configuration file for Experiment 1A.
*	`exp1b_qualtrics.qsf` is the Qualtrics configuration file for Experiment 1B.

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

*	`biographies.md` is text of the biographies.
*	`demographics.txt` is the age, gender, and English experience questions (same as Experiment 1).
*	`PSA.md` is the text of the PSAs.
*	`PCIbex/` has the code for the experiment (`main.js`), the subset of CSS files that were modified from the default (`*.css`), and a link to the [demo version](https://farm.pcibex.net/r/RDIOLx/) on the PCIbex farm (`demolink.txt`).
*	`stim` is the stimuli files used in PCIbex, with the parts that participants read (consent form, biographies, PSA) in HTML and the character/condition info for cycling through trials in CSV files.

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

*	`demographics.md` is the text of the demographics questions.
*	`images.md` is the title, creator, link, and license information for all of the images. The edited images (the 6 character images with the backgrounds removed and the display names along the bottom) are available upon request.
*	`stimuli.xlsx`
	*	`Trial Frames`: information about the trial frames that counter-balanced the locations of the characters and siblings, whether or not it was the brother or sister, and the object shown.
	*	`Character Sets`: information about the character names, images, pronouns, pets, and jobs and how they were counter-balanced in 6 lists.
	*	`Lists_Production`: uses the trial frames and character set sheets to create the 24 stimuli lists for the production trials.
	*	`Lists_Characters`: uses the character sets sheet to create the stimuli lists for the introductions to the characters.
*	`survey.md` is the text of the prior beliefs/experiences survey questions.
*	`figures` has the example trial and procedure figures included in the manuscript.
*	`PCIBex` has the code for the experiment (`*.js`), the subset of CSS files that were modified from the default (`*.css`), and a link to the [demo version](https://farm.pcibex.net/r/RDIOLx/) on the PCIbex farm (`demolink.txt`)
*	`stim` is the stimuli files used in PCIbex. The HTML pages are instructions text, and the `stim*.csv` have the condition/character variables for randomizing and cycling through trials in each section of the experiment: introduction to the characters, example trials, practice trials, test trials, acceptability judgment questions in the survey, and gender beliefs questions in the survey.

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
        │   1_setup.js
        │   2_attitudes.js
        │   3_demographics.js
        │   demolink.txt
        │   global_main.css
        │   PennController.css
        │   Scale.css
        │   stim-acceptability.csv
        └	stim-transphobia.csv
```

*	`audio-times.csv` has the duration for all audio stimuli files, plus the time of the shape word onset for each pronoun sentence. The audio files are available upon request.
*	`demographics.md` is the text of the demographics questions (same as Experiment 3).
*	`images.md` is the title, creator, link, and license information for all of the images. The edited images (the 6 character images with the original backgrounds and the colored shapes added) are available upon request.
*	`stimuli.xlsx`
	*	`Overview` has summary tables about the conditions and trial types in the experiment.
	*	`Trial Frames` has the info that counter-balances the pronouns of the target and competitor pair, the order of mention condition, and the colors and shapes. The locations on the screen were randomized in each trial in MATLAB.
	*	`Trial Frames_Counterbalance` has tables that check the counter-balancing in the trial frames.
	*	`Lists` combines the set of trial frames and the 6 character lists to get all of the condition variables, story text, and file names for the trials.
	*	`Lists_Matlab` copies the results of the excel formulas in `Lists` into a sheet that can be exported as a csv and has the correct column names for the MATLAB script.
	*	`Character Sets` has information about the character pronouns, images, names, and hobby/job facts and how they're counter-balanced across lists. It also has the distribution of the pairs of names, which was used to figure out which stories to record with which names. (The stories counter-balance the pronouns, but not the names, to keep the number of recordings feasible.)
	*	`Character Info` gets the information from the `Character Sets` sheet to create the stimuli list for the character introduction section.
*	`stories.md` is the text of the stories.
*	`survey.md` is the text of the prior beliefs/experiences questions (same as Experiment 3, minus the pronoun sharing questions)
*	`eyetracking_matlab` is the MATLAB code for the character learning and eyetracking portions of the experiment. The comments in `they4.m` have more information.
*	`figures` has the example screen, procedure, and results from Arnold et al. (2000) shown in the manuscript.
*	`survey_pcibex` is the PCIbex code for the survey portion of the experiment. Like the rest of the experiments, it includes the PCIbex code (`*.js`), the subset of CSS files that were modified from the default (`.css`), the stimuli that appear in a randomized order (`stim-*.csv`), and the [demo link](https://farm.pcibex.net/r/QnnEGE/).

---

## Resources

```
 └───resources
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

*	`formatting/`
	*	`aesthetics.R` has ggplot themes for plots, CSS themes for tables made with sjPlot::tab_model, and two custom functions to modify tables made with sjPlot::tab_model (add a title row, remove the sigma squared row)
	*	`apa.csl` is the template to print citations in APA7 format
	*	`printing.R` has functions for printing model results in text
	*	`pulse_modified.css` is the HTML theme, with a couple small modifications to the tables from the [Bootswatch theme](https://bootswatch.com/pulse/)
	*	`rainbow.csv` has the hex codes for a color gradient based on the RColorBrewer Spectral theme (used for the Gender Beliefs plots in Experiments 3 & 4 so the color scheme matches the other survey plots)
*	`icons/` has several images from the [Bootstrap set](https://icons.getbootstrap.com/) and the [Academicons](https://jpswalsh.github.io/academicons/) set, because I couldn't figure out how to insert them using shortcodes and make them hyperlinks