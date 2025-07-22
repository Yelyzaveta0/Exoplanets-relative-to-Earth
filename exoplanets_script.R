install.packages("ggplot2")
install.packages("rgl")
library(ggplot2)
library(rgl)
planets <- read.csv("C:/Users/Лиза/Desktop/Rstudio projects/exoplanet_dataset_project/Exoplanet_Dataset.csv")
planets

#Example of one exoplanet 109 Psc b:
theta <- seq(0, 2*pi)
semi_major_axis <- planets$semi_major_axis
eccentricity <- planets$eccentricity
inclination <- planets$inclination

semi_minor_axis <- semi_major_axis * sqrt(1 - (eccentricity)^2)

x_coord <- semi_major_axis * cos(theta) - semi_major_axis*eccentricity

y_coord <- semi_minor_axis * sin(theta)

z_coord <- y_coord * sin(inclination * pi / 180)

plot3d(x_coord, y_coord, z_coord, type = "l", col = "deepskyblue", lwd = 2, xlab = "X (AU)", ylab = "Y (AU)", zlab = "Z (AU)")
points3d(0, 0, 0, col = "yellow", size = 8)
