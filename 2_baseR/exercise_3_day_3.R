# exercise_3_day_3 R

# Load the AirQuality dataset

data("airquality")

# Look up more information about this dataset - use help

# Examine the dataset – how many rows and columns are there?
dim(airquality)

#Display the column headers
colnames(airquality)
head(airquality)

# Sort the dataframe by the first column (Ozone) in ascending order

airquality_2 <- airquality[order(airquality$Ozone), ]
head(airquality_2)

# Sort the dataframe by the Month and then the Temp column in descending order and save to a new variable

airquality_3 <- airquality[order(airquality$Month, airquality$Temp, decreasing = TRUE), ]
head(airquality_3)

# Save this sorted data to a file on the server: use the write.table function as a csv file seperated by commas

write.table(airquality_3, file = 'airquality_3.csv', sep = ',',
            quote = FALSE, row.names = FALSE)
