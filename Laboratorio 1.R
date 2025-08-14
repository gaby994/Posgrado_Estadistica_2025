300+240+1527+400+1500+1833
celular <- 300
celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
5800*5*2
abs(10)
sqrt(9)
log(2)

#Este comentario no se ejecuta
4+5 #también se puede colocar un comentario
celular <- 300
Celular <- -300
CELULAR <- 8000

celular+celular
CELULAR-celular
help(abs)
help(mean)
?abs
help.search("absolute")
??absolute

gastos <- c(celular,transporte,comestibles,gimnasio,alquiler,otros)
gastos <- c(celular=300,transporte=240,comestibles=1527,gimnasio=400,alquiler=1500,otros=1833)
barplot(gastos)
sort(gastos)

barplot(sort(gastos))
gastos_ordenados <- sort(gastos,decreasing = TRUE)
barplot(gastos_ordenados)
names(gastos_ordenados) <- c("otros",
                               "alquiler",
                               "comestibles",
                               "gimnasio",
                               "celular",
                               "transporte")
barplot(gastos_ordenados,
        main = "Gastos mensuales",
        names.arg = names(gastos_ordenados),col = "pink")


