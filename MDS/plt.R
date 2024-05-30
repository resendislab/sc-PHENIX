#install.packages("scatterplot3d") # Install
library("scatterplot3d") # load
library(ggplot2)
library(gridExtra)
#library(plotly)
#library(plot3D)

### ScPhenix
#Data.sc <- read.csv("./scPhenix_full_fx.csv")

### MAGIC
Data.sc <- read.csv("./Magic_full_fx.csv")

scatter3D(Data.sc$pca, Data.sc$knn, Data.sc$t,pch = 20, bty = "g",cex = 2,
          col.var = colors)

t=unique(Data.sc$t)
pca = c(5, 10, 100, 200, 500)
knn = c(5, 20, 30, 40, 50)

range(Data.sc$Acc)
f <- colorRamp(c("blue","red"))
colors <- rgb(f(Data.sc$Acc)/255)

scatterplot3d(Data.sc$pca, Data.sc$knn, Data.sc$t, pch = 16, color=colors)


plt_acc <- function(Data.sc,t, pca=c(5, 10, 100, 200, 500), knn=c(5, 20, 30, 40, 50)){
  x<- which(Data.sc$t == t)
  Data = (Data.sc[x,])
  p <- ggplot(Data,aes(x = pca,y = knn))+
    #ggplot(Data.sc[x,],aes(x = c(1:5),y = c(1:5)))+
    geom_raster(aes(fill = Acc))+ 
    scale_fill_gradientn(colours=c("blue", "green", "yellow","red"), 
                         limits = c(0.26, 0.86))+
    scale_x_continuous(breaks=c(1,2,3,4,5), labels=pca)+
    scale_y_continuous(breaks=c(1,2,3,4,5), labels=knn)+
    ggtitle(paste0("t = ",t))+theme_bw()+
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
          legend.position = "none")

  return(p)
}
  
p1 <- plt_acc(Data.sc, t[1])
p2 <- plt_acc(Data.sc, t[2])
p3 <- plt_acc(Data.sc, t[3])
p4 <- plt_acc(Data.sc, t[4])
p5 <- plt_acc(Data.sc, t[5])


layout <- matrix(c(1,2,3,
                   4,5,6), ncol = 3, byrow = TRUE)
p <- grid.arrange(p1, p2, p3, p4,p5,
             layout_matrix = layout, top = "MAGIC")

#p <- grid.arrange(p1, p2, p3, p4,p5,
#                  layout_matrix = layout, top = "scPhenix")
  
ggsave("./magic_Acc_1.png",p, width = 6)
