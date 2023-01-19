library(ggplot2)
library(ggthemes)
library(tidyverse)



?diamonds
View(diamonds)
data <- diamonds



ggplot(data = data, aes(x = color, fill = cut))+
  geom_bar()+
  facet_wrap(~clarity)+
  labs(title = "Diamonds Sorted by Clarity, Colour and Cut",
       subtitle = "Each graph by clarity, one bar per diamond colour (D,E,F,G,H,I,J), and diamond cut broken down within each bar",
       x = "Diamonds Colour",
       y = "Number of Diamonds")+
  theme_bw()



ggplot(data = data, aes(x  = reorder(color, price, FUN = mean),
                        y = price, fill = cut))+
  geom_bar(stat = "summary", fun = median, position = position_dodge2())+
  labs(title = "Price of Diamonds by Colour and Cut",
       subtitle = "Diamonds by colour, sorted by ascending mean price, broken down by cut",
       x = "Colour of Diamond",
       y = "Price of Diamond ($)")+
  theme_clean()