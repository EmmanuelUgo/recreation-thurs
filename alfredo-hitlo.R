
library(tidyverse)
library(Cairo)

## Saving HEX codes for line and plot colors
yellow <- "#e7e6a2"
green <- "#a2b253"
red <- "#b44d43"
blue <- "#385a82"
black <- "#272725"
bg <- "#f5f5dc"



ggplot()+
  geom_segment(aes(x = 2.3, xend = 2.7, y = 2.5, yend = 2.5), col = red,size = 1.4)+
  geom_segment(aes(x = 2.3, xend = 2.7, y = 8, yend = 8), col = black,size = 1.4)+
  geom_segment(aes(x = 2.3, xend = 2.7, y = 8.3, yend = 8.3),col = blue,size = 1.4)+
  geom_segment(aes(x = 2.3, xend = 2.7, y = 8.6, yend = 8.6),col = red,size = 1.4)+
  geom_segment(aes(x = 2.3, xend = 2.7, y = 12, yend = 12),col = green,size = 1.4)+ # left
  geom_segment(aes(x = 5.5, xend = 5.9, y = 12, yend = 12),col = red,size = 1.4)+# right
  geom_segment(aes(x = 5.5, xend = 5.9, y = 15, yend = 15),col = green ,size = 1.4)+
  geom_segment(aes(x = 5.5, xend = 5.9, y = 15.3, yend = 15.3),col = blue,size = 1.4)+
  geom_segment(aes(x = 5.5, xend = 5.9, y = 15.6, yend = 15.6),col = black,size = 1.4)+
  geom_curve(aes(x = 2.7, xend = 4 , y = 3.5, yend = 20),col = yellow,size = 1.4, curvature = 0.35)+
  geom_curve(aes(x = 4, xend = 4 , y = 9.8, yend = 0.5),col = blue,size = 1.4, curvature = 0.4)+
  geom_segment(aes(x = 3.5, xend = 5.5, y = 12, yend = 3.5),col = black,size = 1.4)+
  expand_limits(x = 0, y = 0)+
  scale_x_continuous(limits = c(2.2,5.9))+
 
  labs(caption = "Artist: Alfredo Hitlo \nRtist: Emmanuel Ugochukwu\n #RecreationThursday \n")+
  
theme_void()+
  theme(
    legend.position = "none",
    plot.background = element_rect(fill = bg),
    plot.caption = element_text(face = "italic", hjust = 0.5, size = 17)
  ) +

## To save plot

ggsave(
    filename = "alfredo-hilto-recreated.png",
    width = 19,
    height = 25,
    units = "cm",
    type = "cairo-png",
   dpi = 320)





