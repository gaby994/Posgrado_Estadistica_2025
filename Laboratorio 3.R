                          #Laboratorio 3 ANOVA
                   #Ana Gabriela Gauna Rodríguez 
                                 #22/09/25
#Ejercicio: Comparación de concentraciones de estroncio en 
#cuerpos de agua
#Análisis de varianza
#Productividad
read.csv("Estroncio.csv",header=T)
Estroncio <-read.csv("Estroncio.csv",header=T)
summary(Estroncio)

#Hipótesis
#H0:No hay diferencias significativas en las concentraciones
#de estroncio entre los cinco cuerpos de agua.
#H1:Al menos uno de los cuerpos de agua tiene una concentración
#de estroncio diferente a los demás.

Estroncio$Grayson.s.Pond<- as.factor(Estroncio$Grayson.s.Pond)
Estroncio$Beaver.Lake<- as.factor(Estroncio$Beaver.Lake)
Estroncio$Angler.s.Cove<- as.factor(Estroncio$Angler.s.Cove)
Estroncio$Appletree<- as.factor(Estroncio$Appletree)
Estroncio$Rock.River<- as.factor(Estroncio$Rock.River)

print(Estroncio)
str(Estroncio)
boxplot(Estroncio$Grayson.s.Pond, Estroncio$Beaver.Lake, 
        Estroncio$Angler.s.Cove, Estroncio$Appletree.Lake,
        Estroncio$Rock.River,
        names = c("Grayson's Pond", "Beaver Lake",
                  "Angler's Cove", "Appletree Lake", 
                  "Rock River"),
        col = c("purple", "green", "blue", "orange", "red"),
        main = "Concentración de Estroncio en cuerpos de agua",
        ylab = "Concentración de Estroncio mg/ml",
        xlab="Cuerpos de agua",
        ylim= c(0,8))


summary(Estroncio)



       
       

tapply(Estroncio$Muestra,Estroncio$Sitio,mean)
tapply(Estroncio$Muestra,crop$fertilizer,var)

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
library(agricolae)
