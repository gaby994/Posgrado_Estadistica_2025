#Regresión lineal simple  
datos <- data.frame(
  trigo=c(30,28,32,25,25,25,22,24,35,40),
  harina=c(25,30,27,40,42,40,50,45,30,25)
  )
sumxi_yi <- sum(datos$trigo*datos$harina)
nxy <- length(datos$trigo)*mean(datos$trigo)*mean(datos$harina)
sumxi_yi-nxy


xi2 <- sum(datos$trigo^2)
xi2
nx2 <- length(datos$trigo)*mean(datos$trigo)^2
b1 <- (sumxi_yi-nxy)/(xi2-nx2)
b1
x12
nx2
bo <- mean(datos$harina)-b1*mean(datos$trigo)
bo
mean(fit.lm$residuals)
datos$yprima <- (bo-b1*datos$trigo)
datos$yprima <- (74.11-1.3536)*datos$trigo
datos$yprima
datos$recta <- fit.lm$fitted.values
datos$residuales <- datos$harina~datos$recta
SSE <- sum(datos$residuales^2)
SSE/8
sqrt(SSE/8)
#use bo pero en realidad es b0 (b cero)
#en el modelo líneal va la variable dependiente y después la variable
#independiente 
fit.lm <- lm(datos$harina~datos$trigo)
fit.lm$model
fit.lm$coefficients
fit.lm$residuals
mean(fit.lm$residuals)
summary(fit.lm)

anova(fit.lm)
summary(fit.lm)

#revisar la heterocedasticidad
install.packages("lmtest")
library(lmtest)

x <- c(30,28,32,25,25,25,22,24,35,40)
y <- c(25,30,27,40,42,40,50,45,30,25)

#modelo
m <- lm(datos$harina~datos$trigo)
#breusch pagan()
bptest(m)

#Correlación 



boxplot(datos$trigo~datos$harina,
        col="purple",
        main="Relación precio productividad",
        xlab = "precio de harina",
        ylab = "producción de trigo",
        ylim= c(1,50))
tapply(datos$trigo,datos$harina,mean)
tapply(datos$trigo,datos$harina,var)
