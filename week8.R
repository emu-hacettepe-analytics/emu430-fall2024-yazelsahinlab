library(dslabs)
library(tidyverse)
data(heights)
heights |> ggplot(aes(sex, height)) + geom_point() + theme_bw()

heights %>% ggplot(aes(sex, height)) + geom_jitter(aes(color = sex), alpha = 0.3)
+ theme_bw()


heights |> ggplot(aes(height))+ geom_histogram(colour =
                   "black") + facet_grid(.~
                                           sex)
heights |> ggplot(aes(height)) + geom_histogram(colour = "black") + facet_grid(sex
                                                                               ~.)
