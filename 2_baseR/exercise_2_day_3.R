# exercise_2_day_3

#Use readRDS() to load to an object called
#/t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds

my_day2matrix <- readRDS("/t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds")
head(my_day2matrix) #look at the dataset
dim(my_day2matrix) #print the dimensions

#Add row sums and means to this dataset

my_day2matrix_plus <- cbind(my_day2matrix, rowSums = rowSums(my_day2matrix), rowMeans = rowMeans(my_day2matrix))
head(my_day2matrix_plus)
dim(my_day2matrix_plus)

# add column sums and means - call new matrix file with 2 additional columns
# ask for row sums and row means to be done on the original matrix
my_day2matrix_plus2 <- rbind(my_day2matrix_plus, c(colSums(my_day2matrix), NA, NA),
                       c(colMeans(my_day2matrix), NA, NA))

head(my_day2matrix_plus2)
dim(my_day2matrix_plus2)
my_day2matrix_plus2

# Load the ToothGrowth datset using data(ToothGrowth)

data("ToothGrowth")

# How do find more information on this dataset? - Use the help function and search for ToothGrowth

# What columns of data do we have?
colnames(ToothGrowth)
dim(ToothGrowth)
head(ToothGrowth)

# What is the mean tooth length?
mean(ToothGrowth$len)

# What is the maximum and minimum of the tooth length?
max(ToothGrowth$len)
min(ToothGrowth$len)

# Can you calculate rowSums and rowMeans on this data? No, because there is a string in the middle of it (supp = VC)
