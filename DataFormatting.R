# Data wrangling
# Reads in data then writes a file with data that will be used for plotting
# Converts date and time variables to date/time classes
# Extracts data from  2007-02-01 and 2007-02-02 only

# Reads in only the first 500,000 rows, which inclides 
data <- read.table("data/household_power_consumption.txt", nrows = 500000, 
                   header = TRUE, sep = ";", na.strings = "?")
data <- subset(data, 
               Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(data$Date, data$Time), tz = "GMT", format = "%d/%m/%Y %H:%M:%S")
data <- cbind(datetime, data[-(1:2)])

write.csv(data, "Formatted.csv")
