#install.packages("palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')

View(penguins)

#1) 

summary(penguins)

#2)

#install.packages("ggplot2")
library(ggplot2)

colores <- c("orange", "purple", "blue")

ggplot(data = penguins) + 
  geom_bar(aes(x = island, fill = species)) +
  scale_fill_manual(values = colores) 

#La especie Adelie se ha muestreado en todas las islas
#En la isla Dream se han muestreado 125 pingüinos

#3)

 ggplot(data = penguins) +
  geom_boxplot(aes(y = body_mass_g, fill = sex)) +
  facet_grid(rows = vars(species))
#La especie Gentoo tiene mayor tamaño
#En la especie Chinstrap las diferencias de tamaño entre machos y hembras son menores