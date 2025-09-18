             #ANOVA 1 Factor o unifactorial
               #Ana Gabriela Gauna Rodríguez 
#18/09/20 25

#Análisis de varianza
#Productividad
read.csv("crop.csv",header=T)
crop <-read.csv("crop.csv",header=T)

crop$density <- as.factor(crop$density)
crop$block <- as.factor(crop$fertilizer)
summary(crop)

#Boxplot
boxplot(crop$yield~crop$fertilizer,
        col="purple",
        main="Visualización de fertilizantes",
        xlab = "Tipos de fertilizante",
        ylab = "Rendimiento (ton/ha")
tapply(crop$yield,crop$fertilizer,mean)
tapply(crop$yield,crop$fertilizer,var)

#Prueba de normalidad de datos todos juntos
shapiro.test(crop$yield)
#por separado
#Prueba de normalidad de datos para cada fertilizante 
#combinado subset y shapiro
shapiro.test(subset(crop$yield,crop$fertilizer=="1"))
shapiro.test(subset(crop$yield,crop$fertilizer=="2"))
shapiro.test(subset(crop$yield,crop$fertilizer=="3"))

#homogeneidad de varianza Bartlett
bartlett.test(crop$yield~crop$fertilizer)

#ANOVA unifactoreal 
crop.aov <- aov(crop$yield~crop$fertilizer)
#ANOVA dos factores o por bloques
crop.aov <- aov(crop$yield ~ crop$fertilizer+crop$density+crop$block)
summary(crop.aov)

crop$fertilizer <- factor(crop$fertilizer)
#LSD diferencia mínima en las medias
qt(0.975,93)
sqrt((2*0.38595)/32)*qt(0.975,93)
tapply(crop$yield,crop$fertilizer,mean)
#diferencia de medias F1 vs F2
176.7570-176.9332
# diferencia de medias F2 vs F3
176.9332-177.3562
# diferencia de medias F1 vs F3
176.7570-177.3562

#Prueba de Tukey diferencia mínima que se require
sqrt((2*0.38595)/32)*qtukey(0.95,nmeans = 3,df=93)
#tukeyhsd tiene el complemento hsd no tiene tukey solo 
TukeyHSD(crop.aov)
plot(TukeyHSD(crop.aov))

#gráfica de violin con boxplot
library(ggplot2)
ggplot(crop,aes(x=fertilizer,y=yield,fill =
                  fertilizer))+
  geom_violin()+
  geom_jitter(col("indianred"))+
  geom_boxplot(width=0.1,col("white",alpha=0.05)+)
theme_light()

