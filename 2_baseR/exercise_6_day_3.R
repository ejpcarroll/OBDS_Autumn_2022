# Exercise 6 R Writing a Function

#Write a function to calculate the hypotenuse of a triangle given the length of the 2 sides.
#Remember the hypotenuse is the square root of the sum of the squares - √(a2 + b2) Run the function you have created with different values.

calculate_hypothenuse <- function(a=0, b=0) 
    {output <- sqrt((a^2) + (b^2)) 
    return(output)
}

calculate_hypothenuse(a=2, b=3)

