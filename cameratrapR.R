
install.packages("vegan")

library(vegan)

setwd("c:/Users/User/Documents/Isabela")
ls()

camera <- read.csv("cameratrap.csv")

totals <- colSums(camera[3:20])

#Relative abundances
par(mar = c(10,4,4,2))
barplot(sort(totals, decreasing = TRUE), las = 2, axes=F,  
names.arg=c("Impala", "Duiker", "Bushbuck", 
"Vervet monkey" , "Wildebeest", "Giraffe", 
"Wathhog","Kudu", "Civet", "Waterbuck",
"Genet", "Long-tailed Mongoose", "Leopard",
"Zebra", "Porcupine", "Honey Badger", "Nyala",
"Banded Mongoose"))
par(mar = c(5,4,4,2))
axis(2, tick=F, las=2)

#Species accumulation curve
spec1 <- specaccum(camera[3:18], method="random", permutation =100)
plot(spec1, ci.type="poly", col="black", ldw=2, ci.lty=0, ci.col="lightblue", xlab="Sites", ylab="Species Diversity", axes=F, main ="Species Accumulation Curve")
axis(1, tick=F)
axis(2, tick=F, las=2)

