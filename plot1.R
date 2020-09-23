data <- read.csv("Formatted.csv")

# data$datetime<- strptime(data$datetime, tz = "GMT", format = "%Y-%m-%d %H:%M:%S")

png("plot1.png")

hist(data$Global_active_power, 
     col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
