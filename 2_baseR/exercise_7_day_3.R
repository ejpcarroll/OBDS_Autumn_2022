# Exercise 7 R: using apply

# Create a numeric vector of length 10. 
number <- c(1:10)
number

# Write an lapply and sapply statement to square each element. Compare the two outputs.

lapply(number, ^2)

spply(number, ^2)

# Exercise 8 R: Loops

# Write a for loop that iterates over the numbers 1 to 7 and prints the cube of each number using print().

for(i in 1:7) {
  print(i^3)
}

# Write a for loop that iterates over the column names of the inbuilt iris dataset
# print each together with the number of characters in the column name in parenthesis

data("iris")
head(iris)
colnames(iris)

for(i in colnames(iris)) {
print(paste0(i, " (", nchar(i), ")")) # have the brackets in "(" ")" to say you want it to be printed in brackets, paste 0 (used to concatenate vectors after converting to character vectors)
}

# Write an ifelse loop to print the colours in colours_vector with four characters. Use nchar()

colours_vector <- c("red", "orange", "purple", "yellow", "pink", "blue") #generating a colours vector

colours_4 <- ifelse(nchar(colours_vector) ==4, "true", "false") #using nchar to show those that have charaters =4
colours_4

