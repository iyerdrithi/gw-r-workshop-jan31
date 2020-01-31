gap_df <- read.csv('https://go.gwu.edu/gapminder')
write.csv(gap_df, 'gap.csv')
library(dplyr)

gap_df2007 <- gap_df %>% filter(year == 2007)
ggplot(data = gap_df2007) + aes(x = gdpPercap, y = lifeExp, color = continent) + 
  geom_point(alpha=0.7, size=0.5) +
  scale_x_log10()

ggplot(data = gap_df2007) + aes(x = lifeExp) + geom_histogram(color = 'red', fill='orange') +
  labs(x= 'Life Expectancy')

# Linear Regression section

gap_df2007$loggdp <- log10(gap_df2007$gdpPercap)

gap.lm <- lm(data = gap_df2007, formula = lifeExp ~ loggdp + continent)




