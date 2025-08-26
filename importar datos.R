                   #Ana Gabriela Gauna Rdz
                          #21/08/25
                          #semana 3
               #Importar datos de temperatura

temperatura <- read.csv("C:/Users/Usuario/Desktop/temperatura.csv")
View(temperatura)

head(temperatura)#Primeras 6 filas
dim(temperatura) #Número de filas y columnas
names(temperatura) #Nombres de las columnas
str(temperatura) #Estructura del data frame

summary(temperatura) #Resumen estadístico
names(temperatura) <- c("Anual","Ene","Feb","Mar","Abr", "May","Jun","Jul","Ago","Sep","Oct","Nov","Dic")#Corregir nombre de columna

write.csv(temperatura, "temp_final.csv")
temperatura$media_anual <- rowMeans(temperatura[ ,2:13])
temp <- (temperatura[, 2:13])
temp10 <- temperatura[11:21, 2:13]
temperatura[2,2]
colores <- c("pink","slateblue","blue")

#Crear un bloxplot con las temperaturas de 10 años 2010 a 2020
boxplot(temp, col = colores,
        main ="Comportamiento temperatura (2000 a 2020)",
        xlab ="Meses",
        ylab ="Temperatura (c)"
        )

tinytex::tinytex_root()


# Importar datos web ------------------------------------------------------

url <-("https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv")
senasica <- read.csv(url,header=T)



