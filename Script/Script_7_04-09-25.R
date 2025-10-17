#Prueba de t muestras dependientes
#Revisar la producción del kg semilla para el año 2013 y 2014


prod <- read.csv("Produccion.csv", header = TRUE)
prod$Tiempo <- as.factor(prod$Tiempo)
summary(prod)
head(prod)
names(prod)
boxplot(prod$Kgsem~prod$Tiempo)


#H0:La producción de semillas en kg no tendrá diferencia en sus medias del año 2013 y 2014
#HO:las medias de ambos años son diferentes a cero 
#Método alternativo two.sided
T2012 <- subset(prod$Kgsem,prod$Tiempo=="T2012")
T2013 <- subset(prod$Kgsem,prod$Tiempo=="T2013")
var.test(prod$Kgsem~prod$Tiempo)
t.test(T2012,T2013,
       alternative="two.sided",
       var.equal=T,
       paired=T)


 

