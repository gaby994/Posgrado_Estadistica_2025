               #Laboratorio 1
            #Ana Gabriela Gauna Rodríguez 
                #31-08-2025

# Parte 1 Gastos ----------------------------------------------------------


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
gastos <- c(celular=300,transporte=240,comestibles=1527,gimnasio=400,
            alquiler=1500,otros=1833)
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


# Parte II Variables ------------------------------------------------------

#Problema 1: Identifique el tipo de variable (cualitativa o cuantitativa)
#Preguntas de una encuesta aplicada a estudiantes universitarios 
#de una clase de estadística


#Nombre de estudiante: cualitativa
#Fecha de nacimiento: cualitativa
#Edad:cuantitativa
#Dirección:cualitativa
#Número de teléfono:cualitativa
#Área principal de estudio:cualitativa
#Grado de año universitario: cuantitativo
#Puntaje en la prueba de mitad de período: cuantitativa
#Calificación general:cuantitativo 
#Tiempo(en minutos)para completar la prueba final de MCF:cuantitativa
#Número de hermanos:cuantitativa

#Problema 2: Elija un objeto, y obtenga una lista de 14 variables:
#7 cuantitativas y 7 cualitativas
#Objeto: Pañalera
#Variables cuantitativas:Peso (kg),Capacidad (litros),Número de compartimentos,
#Altura,Ancho,Profundidad y Precio.
#Variables cualitativas:Color, Material (tela, cuero),Marca, 
#Estilo (escolar, deportivo),Liso o estampada, Unisex,Tipo de cierre

#Problema 3: Considere una variable con valores númericos que describen
#formas electrónicas de expresar opiniones personales: 
#1=Twitter;2=correo electrónico;3=mensaje de texto ;4=Facebook;5=blog.
#¿Es esta una variable cuantitativa o cualitativa?Explique
#Respuesta:Con los datos presentados se puede decir que es una 
#variable cualitativa, ya si se agregan datos como números de
#seguidores, cantidad de publicaciónes, cantidad de mensajes,etc.
#Podríamos tomarlos como cuantitativos. 

#Problema 4:
#Preguntas de investigación

#Pregunta 1:
#¿Cuál es la cantidad promedio de horas que los estudiantes de 
#universidades públicas trabajan cada semana?
#Individuos:estudiantes de universidades públicas
#Variables:Horas trabajadas por semana
#Tipo:cuantitativa

#Pregunta 2:
#¿Qué proporción de todos los estudiantes universitarios de México
#están inscritos en una universidad pública?
#Individuos:estudiantes universitarios mexicanos
#Variables:estudiantes universitarios mexicanos (pública y privada)
#Tipo:cuantitativa

#Pregunta 3:
#En las universidades públicas, ¿las estudiantes femeninas tienen un 
#promedio de CENEVAL más alto que los estudiantes varones?
##Individuos:estudiantes de universidades públicas
#Variables:Puntaje promedio en el CENEVAL
#Tipo:cuantitativa

#Pregunta 4:
#¿Es más probable que los atletas universitarios reciban asesoramiento
#académico que los atletas no universitarios?
#Individuos:atletas (universitarios y no universitarios)
#Variables:Asesoramiento académico
#Tipo:cualitativa

#Pregunta:5
#Si reuniéramos datos para responder a las preguntas de la 
#investigación anterior, ¿qué datos podrían analizarse mediante un
#histograma?¿Cómo lo sabes?
#Respuesta:Los datos que podrían analizarse mediante un histograma
#son aquellos que corresponden a variables cuantitativas 
#(Castañeda et al.,2004), como las horas trabajadas por semana,
#las proporciones de estudiantes y los puntajes de CENEVAL, 
#porque permiten agrupar los datos en intervalos.
#Referencia:Castañeda J.,Vanegas, H.& Rodríguez,M. (2004). 
#Presentación de datos estadísticos. Ruiz A, Morillo LE. 
#Epidemiología clínica: Investigación clínica aplicada. 
#Colombia: Editorial Medica Panamericana. p, 487-507.

tinytex::tinytex_root()


