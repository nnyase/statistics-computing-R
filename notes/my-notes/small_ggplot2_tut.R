# GGPLOT RECAP

library(ggplot2)
library(gapminder)


#declare data and x and y aesthetics, but no shapes yet
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))
## add layers
## it already knows what the x and y variables are from
## the ggplot part
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  scale_x_log10() + # log x axis
  geom_point(aes(color = continent)) + # colour by continent
  geom_smooth(span = 1)


## define data and x for univariate plots
f1 <- ggplot(gapminder, aes(x = lifeExp))

## histogram
f1 + geom_histogram()


## define data, x and y, x is a factor
tp <- ggplot(gapminder, aes(x = continent, y = lifeExp))
## scatter plot and boxplot by continent
tp + geom_point()

tp + geom_boxplot(aes(group = continent))
