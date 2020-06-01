# Daniela Victoria Cansino Rosales
# matrícula: 1821849
# 30.01.2020


# Importar datos ----------------------------------------------------------

BD.ebanos <- read.csv("Clases/ebanos.csv", header = TRUE)
head(BD.ebanos)
summary(BD.ebanos)

mean(BD.ebanos$diametro)
mean(BD.ebanos$altura)

sd(BD.ebanos$diametro)
sd(BD.ebanos$altura)


boxplot(BD.ebanos$diametro, ylab="Diámetro (cm)", 
        col="pink", main= "Diámetro de plántulas de Ebano")
boxplot(BD.ebanos$altura)
boxplot

stem(BD.ebanos$diametro)
stem(BD.ebanos$altura)


hist(BD.ebanos$diametro, col="yellow", xlab="Diámetro (cm)", 
     ylab = "Frecuencia", main = "Histograma de Diámetro")


# Condicionantes ----------------------------------------------------------

# ¿Cuántos individuos tienen un Diam menos que la media?

sum(BD.ebanos$diametro < mean(BD.ebanos$diametro))
sum(BD.ebanos$diametro < 25.97)


#¿Cuántos individuos tienen un Diam mayor que la media?

sum(BD.ebanos$diametro > mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro > 30)


# ¿Existirá una observación igual a la media?

sum(BD.ebanos$diametro == mean(BD.ebanos$diametro))

#subconjunto de datos subset

ebanos.30 <- subset(BD.ebanos, BD.ebanos$diametro > 30)

