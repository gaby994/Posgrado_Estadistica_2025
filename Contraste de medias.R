           #Asignación 3:Contraste de medias
              #Ana Gabriela Gauna Rodríguez
                        #04/09/2025
data("iris")
View(iris)
head("iris")
summary("iris")
boxplot(iris$Sepal.Length~iris$Species,
        col="orange",
        main="Distribución del largo de pétalo por especie",
        xlab = "Especie",
        ylab = "Largo pétalo (cm)")
data_sub <- subset(iris, Species %in% c("versicolor",
                                        "virginica"))


# Pregunta de investigación -----------------------------------------------


#¿Cuál es la diferencia en la media del largo del pétalo 
#de versicolor y virginica, y esa diferencia es 
#estadísticamente significativa?

#H0=La media del largo del pétalo de Versicolor
#es igual a la media del largo del pétalo de Virginica
#H1=La media del largo del pétalo de Versicolor
#no es igual a la media del largo del pétalo de Virginica

#Prueba de igualdad de varianzas
var.test(sepal.lenth$versicolor$,virginica$sepal.lenth) 
