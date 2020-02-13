library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Normalidad --------------------------------------------------------------



head(conjunto)

# Aplicación prueba de Shapiro.test para la variable Altura

hist(conjunto$Altura)

shapiro.test(conjunto$Altura)
ks.test(conjunto$Diametro, "pnorm", mean= mean(conjunto$Diametro, sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro, xlab = "Diametro", main= "Histograma de Diametro")

hist(conjunto$Diametro)
shapiro.test(conjunto$Diametro)

boxplot(conjunto$Diametro ~ conjunto$Especie, col="lightblue")
boxplot(conjunto$Vecinos ~ conjunto$Especie, col= "yellow")
boxplot(conjunto$Altura ~ conjunto$Especie, col= "green")
boxplot(conjunto$Clase ~ conjunto$Especie)

frecu<-table(conjunto$Clase)
prop.table(frecu)
hist(frecu)

# Prueba Homogeneidad -----------------------------------------------------

var(conjunto$Diametro)
var(conjunto$Altura)


# Datos Ebanos ------------------------------------------------------------

ebano <- read.csv("Clases/ebanos.csv", header = TRUE)

hist(ebano$diametro)
hist(ebano$altura)

boxplot(ebano)
fivenum(ebano$diametro)

# ¿Cuantos individuos tienen un Diam mayor al 1er quartil? ------------------

sum(ebano$diametro <= 15.55)

# ¿Cuantos individuos tienen un Diam menor al 3er quartil? ----------------

sum(ebano$diametro <= 34.25)

# ¿Cuántos individuos tienen un Diam mayor al 1er quartil
# pero menor o igual a el 2do quartil?

sum(ebano$diametro  >= 15.55 & ebano$diametro <= 25.90)

sum(ebano$diametro <= 25.90)


# ¿Cuantos individuos tienen un Diam mayor al 2do quartil -----------------

sum(ebano$diametro >= 25.90 & ebano$diametro <= 34.25)

sum(ebano$diametro >=10 & ebano$diametro <= 15.55)





ks.test(conjunto$Diametro, "pnorm", mean=mean(conjunto$Diametro, sd=sd(conjunto$Diametro)))