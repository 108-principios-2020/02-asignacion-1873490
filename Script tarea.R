library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc


(acc$freq/sum(acc$freq)*100)

acc$rf <- acc$freq/sum(acc$freq)*100

barplot(acc$freq, names.arg = acc$x, main = "accidentes en el aserradero", col = "yellow")

mean(accidentes)
sum(accidentes)

# ejercicio 2 -------------------------------------------------------------

especies <- c("F","H","F","C","F","A","H","F","H","C","A","C","F","H","H","H","F","H","A","C","F","H","H","F")

frecu <-table(especies)
prop.table(frecu)
frecu


# Ejercicio 3 -------------------------------------------------------------

library(repmis)
cuadro1 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#Encontrar la frecuencia absoluta para la variable vecinos y especie

frecu <-table(cuadro1$Vecinos)
prop.table(frecu)
frecu
frecu <-table(cuadro1$Especie)
prop.table(frecu)
frecu



# Ejercicio 4 -------------------------------------------------------------

dbh <- cuadro1$Diametro 
range(dbh)

intervalo <- seq(8, 21, by=3)
intervalo

dbh.table <- cut(dbh,intervalo)
table(dbh.table)

dbh.prop <- cbind(table(dbh.table))
dbh.per <- round(prop.table(dbh.prop)*100,2)


# Ejercicio 5 -------------------------------------------------------------

intervalo <- seq(7.5, 25.5, by=5)
intervalo

par(mfrow=c(1,2))
hist(cuadro1$Diametro, col= "blue" , main = "sin modificar", xlab = "diametro")
hist(cuadro1$Diametro, main = "Datos intervalos")
par(mfrow=c(1,1))

