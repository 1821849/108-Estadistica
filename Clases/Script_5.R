# Daniela Victoria Cansino Rosales
# Matrícula: 1821849
# 11.03.2020

# Importar datos de vivero ------------------------------------------------
setwd("C:/Tarea/108-Estadistica/Clases")
Vivero <- read.csv("vivero.csv", header= TRUE)

summary(Vivero)

boxplot(Vivero$IE ~ Vivero$Tratamiento, col= "darkcyan",
        xlab = "Tratamientos", ylab = "IE") #boxplot de dos valores


# Prueba de t -------------------------------------------------------------

t.test(Vivero$IE ~ Vivero$Tratamiento) #aplicamos prueba de T
t.test(Vivero$IE ~ Vivero$Tratamiento, var.equal= T) #aplicamos var.equal
