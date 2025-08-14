temperatura <- read.csv("C:/Users/Usuario/Desktop/temperatura.csv")
View(temperatura)

head(temperatura)#Primeras 6 filas
dim(temperatura) #Número de filas y columnas
names(temperatura) #Nombres de las columnas
str(temperatura) #Estructura del data frame

summary(temperatura) #Resumen estadistico
names(temperatura) <- c("Anual","Ene","Feb","Mar","Abr", "May","Jun","Jul","Ago","Sep","Oct","Nov","Dic")#Corregir nombre de columna

temperatura$media_anual <- rowMeans(temperatura[11:21,])
  