# Daniela Victoria Cansino Rosales
# Matrícula: 1821849
# 27.02.2020

# Importar datos de Cedro Rojo --------------------------------------------
setwd("C:/Tarea/108-Estadistica/Clases")
CR <- read.csv("cedro_rojo.csv", header = TRUE)

summary(CR)

# Una muestra -------------------------------------------------------------

# Media teoretica de la variable Diametro establecida por CONAFOR
# para el cedro rojo es igual a 13

# Comparar la media observada de la variable diametro para las
# plantulas producidas en vivero 12.524

#"mu" debe ser igual a la variable teoretica
# el valor de alfa establecido es 0.05

t.test(CR$diametro, mu=13) 
# se acepta la alternativa

t.test(CR$diametro, mu=12.7)
#se acepta la nula

t.test(CR$altura, mu=20)
#se acepta la hipotesis alternativa

t.test(CR$altura, mu=19)
#se acepta la hipotesis nula

