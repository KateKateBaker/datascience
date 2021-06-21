library(gapminder)
library(ggplot2)
View(gapminder)

lifeex <- gapminder%>%
  filter(year==1982)

ggplot(data=lifeex,
       (aes(x = lifeExp)))+
geom_histogram()

Asia <- gapminder%>%
  filter(continent == 'Asia')

ggplot(data = Asia,
       aes(x=year,
           y=pop,
           color=country))+
  geom_line(size= 12, alpha = .05) +
  scale_y_log10()+
  labs(x = '# of Trips Around the Sun', y = 'Individuals', title = 'People in Asia')

Euro <- gapminder%>% 
  filter(continent == 'Europe', year == 2002)
ggplot(data=Euro,
       aes(x=country,
           y=gdpPercap, 
           color=country))+
  geom_bar(stat = 'identity', fill = 'dark blue', alpha = .5)

the_nineties <- gapminder%>%
  mutate(start_num = substr(year,1,3))%>%
  filter(start_num == 199)


  
