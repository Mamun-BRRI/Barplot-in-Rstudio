### Draw a Bar plot
R<-read.csv("Bar plot Graph.csv")
R
attach(R)
library(ggplot2)

###
ggplot(R,aes(Location,GY,fill=Genotype))+
  geom_bar(stat = "identity",position = position_dodge2(),
           color="black",width = 0.8)+
  xlab("Location")+
  ylab("Grain yield (t/ha)")+
  theme_classic()+
  theme(axis.title.x = element_text(size = 16,color = "blue",face = "bold"),
        axis.title.y = element_text(size = 16,color = "blue",face = "bold"),
        axis.text.x = element_text(size = 14,color = "black",angle = 0),
        axis.text.y = element_text(size = 14,color = "black",angle = 0))+
  scale_y_continuous(expand = c(0,0))

ggsave("Barplot figure.tiff",height = 7,width = 14,dpi=200)
## Facet genotype
###
ggplot(R,aes(Location,GY,fill=Genotype))+
  geom_bar(stat = "identity",position = position_dodge2(),
           color="black",width = 0.8)+
  xlab("Location")+
  ylab("Grain yield (t/ha)")+
  theme_classic()+
  theme(axis.title.x = element_text(size = 16,color = "blue",face = "bold"),
        axis.title.y = element_text(size = 16,color = "blue",face = "bold"),
        axis.text.x = element_text(size = 14,color = "black",angle = 0),
        axis.text.y = element_text(size = 14,color = "black",angle = 0))+
  scale_y_continuous(expand = c(0,0))+
  facet_wrap(.~Genotype)
ggsave("Barplot figure1.tiff",height = 7,width = 14,dpi=200)
#### End
