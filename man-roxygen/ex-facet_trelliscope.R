\dontrun{
library(ggplot2)

# basically swap out facet_wrap for facet_trelliscope
qplot(cty, hwy, data = mpg) +
  facet_trelliscope(~ class + manufacturer)

# not required, but if you set labels, these will be added as
# descriptions to the cognostics that are automatically computed
mpg <- set_labels(mpg, mpg_labels)

qplot(cty, hwy, data = mpg) +
  xlim(7, 37) + ylim(9, 47) + theme_bw() +
  facet_trelliscope(~ manufacturer + class, nrow = 2, ncol = 4)

qplot(class, cty, data = mpg, geom = c("boxplot", "jitter")) +
  facet_trelliscope(~ class, ncol = 7, height = 800, width = 200,
    state = list(sort = list(sort_spec("cty_mean")))) +
  ylim(7, 37) + theme_bw()
}
