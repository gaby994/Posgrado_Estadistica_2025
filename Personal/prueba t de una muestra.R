#comparación de una muestra solo setosa
#setosa
setosa <- subset(iris$Species=="setosa")
mean(setosa$Sepal.Width)

mu <- 3.9 #media 
#H0: la diferencia entre las medias es cero o menor a cero 
#igual a 3.9
#H1=la diferencia entre la medias teoretica y 
#experimental es diferente a cero o diferente a 3.9

t.test(setosa$Sepal.Width,mu=3.9)
