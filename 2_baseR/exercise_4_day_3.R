# exercise 4

# create a dataframe called buildings with two columns called location (values 1, 2, 3) and name (values, b1, b2, b3)
buildings <- data.frame(location=c(1,2,3), name=c("b1", "b2", "b3"))

# create a dataframe called data with survey, location and efficiency
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1), efficiency=c(51,64,70,71,80,58))
head(buildings)

# what is the common key in these dataframes - location

# merge the building file with the data file using the merge function by the 'location' key
buildingStats <-merge(x=buildings, y=data, by="location", all=T)
tail(buildingStats)


# Exercise 5

# Aggregate (or group) the airquality data by Month and return means on each of the numeric variables. Also, remove “NA” values.
agg_month = aggregate(airquality, by=list(Months=airquality$Month), FUN=mean, na.rm=T)
head(agg_month)
head(airquality)

# Aggregate the Solar.R column by Month, returning means of Solar.R The header of column 1 should be Month. Remove “not available” values.
agg_solar = aggregate(airquality$Solar.R, by=list(Months=airquality$Month), FUN=mean, na.rm=T)
agg_solar

# rename the x column Solar.R
names(agg_solar)[names(agg_solar) =="x"] <- "Solar.R"
agg_solar

# Apply the standard deviation function to the data aggregation you have just done.
agg_solar_sd = aggregate(airquality$Solar.R, by=list(Months=airquality$Month), FUN=sd, na.rm=T)
agg_solar_sd

# rename x column as SD
names(agg_solar_sd)[names(agg_solar_sd) =="x"] <- "SD"
agg_solar_sd
