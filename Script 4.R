                  #Script 4
                 #28/08/2025
          #Ana Gabriela Gauna Rodríguez 


# #Importar datos ---------------------------------------------------------

Calidad_planta<- read.csv("calidad_planta.csv",header=T)
Calidad_planta$Tratamiento <- as.factor(Calidad_planta$Tratamiento)
class(Calidad_planta$Tratamiento)
summary(Calidad_planta)


mean(Calidad_planta$IE)

tapply(Calidad_planta$IE,Calidad_planta$Tratamiento,mean)
tapply(Calidad_planta$IE,Calidad_planta$Tratamiento,sd)
tapply(Calidad_planta$IE,Calidad_planta$Tratamiento,var)
colores <- c("blue","pink")

boxplot(Calidad_planta$IE ~ Calidad_planta$Tratamiento, 
        col = colores,
        main = "Calidad de plantas",
        xlab = "Tratamientos: Control y Fertilizante",
        ylab = "IE",
        ylim= c(0.4,1.2))
        
  
tinytex::tinytex_root()
# Aplicar un subconjunto para cada tratamiento ----------------------------


df_ctrl <- subset(Calidad_planta,Tratamiento=="Ctrl")
View(df_ctrl)
df_fert <- subset(Calidad_planta,Tratamiento=="Fert")
View(df_Fert)

#Agregar el gráfico QQ

par(mfrow=c(1,2))
qqnorm(df_ctrl$IE);qqline(df_ctrl$IE)
qqnorm(df_fert$IE);qqline(df_fert$IE)
par(mfrow=c(1,1))

#Prueba de normalidad
shapiro.test(df_ctrl$IE)
shapiro.test(df_fert$IE)

#Prueba de igualdad de varianzas
var.test(df_ctrl$IE, df_fert$IE) 

#Prueba de T
t.test(Calidad_planta$IE~Calidad_planta$Tratamiento, alternative="greater",var.equal=T)
t.test(Calidad_planta$IE~Calidad_planta$Tratamiento, alternative="two.sided",var.equal=T)
t.test(Calidad_planta$IE~Calidad_planta$Tratamiento, alternative="less",var.equal=T)

#Medir el efecto del efecto (Cohens)


cohens_efecto <- function(x, y) {
  n1 <- length(x); n2 <- length(y)
  s1 <- sd(x); s2 <- sd(y)
  sp <- sqrt(((n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2))
  (mean(x) - mean(y)) / sp
}
d_cal<- cohens_efecto(df_ctrl$IE,df_fert$IE)
d_cal
datos <- read.csv("Calidad planta.csv", header = TRUE)
head(datos)

