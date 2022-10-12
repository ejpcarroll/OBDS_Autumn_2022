# Day 2 R Exercise 1

# Open a new Rstudio script and create 3 new objects

a <- "a"
b <- "b"
c <- "c"

# Save workspace as .RData file
save.image(file = "Day_2_Exercise1.RData")

# Save one object using saveRDS()
saveRDS(a, file = "a.RDS")

# Remove one of the objects

rm(b)
ls()

# Clear your workspace completely (remove all objects)

rm(list = ls())
ls()

# Display your current working directory

getwd()

# Make a new directory in your linux terminal and then set the R working directory to be that new directory

setwd("/project/obds/ecarroll/2_baseR/projects/day_3")
getwd()

# Load the objects you saved in the .Rdata file

a <- readRDS("a.RDS")
