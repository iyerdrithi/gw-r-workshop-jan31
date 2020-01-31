price <- c(190000, 210000, 143500, 90000, 90000)
ward <- c(7, 10, 3, 1, 1)
type <- c('A', 'H', 'H', 'A', 'H')

house_df <- data.frame(price, ward, type)
house_df['price']

gap_df <- read.csv('https://go.gwu.edu/gapminder')
library(dplyr)

gap_df2 <- gap_df %>% select(year, pop, lifeExp, gdpPercap) %>%
  filter(year == 2007) %>% mutate(gdpPercapEuro = gdpPercap * 0.88) %>%
  mutate(bigCountry = (pop > 200000000)) %>% arrange(-gdpPercap)

write.csv(gap_df, 'gap_df.csv')
