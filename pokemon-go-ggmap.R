library(ggmap)
library(maps)
library(readxl)
library(magrittr)
library(dplyr)

#bring in pokemon gym data 
pokemon.gyms <- read_excel("seattle-pokemon-go-gyms.xlsx",1)




#Create ggmap 
ggmap(get_map(location = "Seattle", zoom = 11, maptype = "toner-lite")) +
     guides(fill = F)   +   # include this to exclude the legend 
     geom_point(data = pokemon.gyms, aes(x = long, y = lat), color = "#008080", alpha = 0.5)  + 
     theme_classic()  + 
     #remove axes
     theme(axis.line=element_blank(),axis.text.x=element_blank(),
     axis.text.y=element_blank(),axis.ticks=element_blank(),
     axis.title.x=element_blank(),
     axis.title.y=element_blank(),legend.position="none",
     panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
     panel.grid.minor=element_blank(),plot.background=element_blank()) + 
     ggtitle("Pokemon Go: Gyms in Seattle, WA")

  

#Create ggmap  (zoom in -- cuts out renton)
ggmap(get_map(location = "Seattle", zoom = 13, maptype = "toner-lite")) +
  guides(fill = F)   +   # include this to exclude the legend 
  geom_point(data = pokemon.gyms, aes(x = long, y = lat), color = "#008080", alpha = 0.5)  + 
  theme_classic()  + 
  #remove axes
  theme(axis.line=element_blank(),axis.text.x=element_blank(),
  axis.text.y=element_blank(),axis.ticks=element_blank(),
  axis.title.x=element_blank(),
  axis.title.y=element_blank(),legend.position="none",
  panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
  panel.grid.minor=element_blank(),plot.background=element_blank()) + 
  ggtitle("Pokemon Go: Gyms in Seattle, WA")

