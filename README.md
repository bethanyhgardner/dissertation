# Dissertation

```
├───.quarto
│   └───idx
└───resources
    ├───formatting
    └───icons
 ```
 
 ## resources
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