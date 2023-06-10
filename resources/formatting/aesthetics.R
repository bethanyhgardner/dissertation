# PLOTS----
# Standard theme for manuscript plots
dissertation_plot_theme <- theme(
  text        = element_text(size = 11),
  axis.text.x = element_text(size = 11),
  axis.text.y = element_text(size = 10),
  axis.ticks  = element_blank(),
  axis.title  = element_text(size = 11),
  legend.text = element_text(size = 10),
  plot.tag    = element_text(size = 12, face = "bold"),
  plot.title  = element_text(size = 12, face = "bold"),
  strip.text  = element_text(size = 12, face = "bold")
)

# Titles when combining with patchwork
patchwork_theme <- theme(
  plot.title = element_text(face = "bold", size = 12)
)

# Hack to format labels grouped with facet_wrap
grouped_strip_theme <- theme(
  strip.background = element_rect(color = NA),
  strip.clip       = "off",
  strip.placement  = "outside",
  strip.text       = element_text(size = 10, margin = margin(0, 0, 0, 0))
)

# Light gray facet labels for 2x2 plots, on both axes (Exp2)
gray_facet_theme <- theme(
  axis.line        = element_blank(),
  axis.text.y      = element_text(size = 9),
  panel.border     = element_rect(fill = NA, color = "black", linewidth = 0.5),
  panel.spacing    = unit(0.15, "in"),
  strip.background = element_rect(fill = "grey90", linewidth = 0.5),
  strip.text       = element_text(size = 11, face = "plain")
)

# White facet labels for 2x2 plots, at top (Exp3)
white_facet_theme <- theme(
  axis.line        = element_blank(),
  axis.text.y      = element_text(size = 9),
  panel.border     = element_rect(fill = NA, color = "black", linewidth = 0.5),
  strip.background = element_rect(fill = "white", linewidth = 0.5),
  strip.text       = element_text(size = 11, face = "plain")
)

# Survey plots (Exps 3 & 4)
survey_theme <- theme(
  text             = element_text(size = 11),
  axis.text.x      = element_text(size = 9),
  axis.text.y      = element_text(size = 11),
  axis.ticks.y     = element_blank(),
  axis.title       = element_text(size = 11),
  legend.margin    = margin(t = -10),
  legend.position  = "bottom",
  legend.spacing.x = unit(0.05, "in"),
  legend.spacing.y = unit(0, "in"),
  legend.text      = element_text(size = 10, lineheight = 0.7),
  legend.title     = element_text(size = 10),
  plot.tag         = element_text(size = 12, face = "bold"),
  plot.margin      = margin(t = .10, b = .10, l = .05, r = .20, unit = "in"),
  plot.title       = element_markdown(
    lineheight = 1.1,
    size = 11,
    face = "bold"
  )
)

# Participant covariate distribution (Exp3)
subjCov_theme <- list(
  scale_x_continuous(expand = c(0.01, 0.01), breaks = c(-0.5, 0, 0.5)),
  scale_y_continuous(expand = c(0, 0)),
  theme_classic(),
  theme(
    axis.text  = element_text(size = 10),
    axis.title = element_text(size = 11),
    plot.title = element_text(size = 11, face = "bold")
  ),
  labs(y = element_blank())
)

# Spaghetti plots (Exp4)
eyetracking_theme <- theme(
  text         = element_text(size = 11),
  axis.text    = element_text(size = 9),
  axis.title   = element_text(size = 11),
  legend.title = element_text(size = 10),
  legend.text  = element_text(size = 10),
  plot.title   = element_text(size = 12, face = "bold"),
  strip.text   = element_markdown(size = 12, face = "bold")
)

# Match judgments (Exp4)
match_theme <- theme(
  axis.line.y     = element_blank(),
  axis.text       = element_text(size = 9),
  axis.text.x.top = element_text(margin = margin(b = -15, unit = "pt"),
                                 face = "bold"),
  axis.ticks.x    = element_blank(),
  axis.title      = element_text(size = 10),
  panel.border    = element_rect(fill = NA, linewidth = 1),
  plot.margin     = margin(t = 0, b = 5, l = 5, r = 0),
  plot.title      = element_text(size = 11, face = "bold",
                                 margin = margin(t = 5, b = -2)),
  strip.text      = element_text(size = 11, face = "bold")
)

# TABLES----
# CSS styling for model tables made with tab_model()
table_css <- list(
  css.table = "+font-family: Arial; font-size: 0.875em;",
  css.randomparts =
    "border-top: 1px solid; border-bottom:1px solid; font-style:italic;"
)

# Add title row to model tables with tab_model()
tab_model_title_row <- function(tb_knitr, title) {
  tb_knitr %<>% str_replace(
    '<tr>',  # find start of first row
    str_c(   # add row before it, spanning all cols, with bold text
      '<tr> <th colspan="5" style="text-align:left; font-weight:bold;" >',
      title,
      '</th></tr><tr>'  # close new row and restart original 1st row
    )
  )
}

# Helper function to drop sigma squared from logistic regression tables
drop_sigma <- function(tb_knitr, title) {
  tb_knitr %<>% str_remove(paste(sep = ' ',
    '<tr>\n<td style=\" padding:0.2cm; text-align:left; vertical-align:top;',
    'text-align:left; padding-top:0.1cm;',
    'padding-bottom:0.1cm;\">&sigma;<sup>2</sup></td>\n<td style=\"',
    'padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm;',
    'padding-bottom:0.1cm; text-align:center;\"',
    'colspan=\"4\">3.290</td>\n</tr>\n'
  ))
}
