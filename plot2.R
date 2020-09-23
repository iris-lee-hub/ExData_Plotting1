data <- read.csv("Formatted.csv")

data$datetime<- strptime(data$datetime, tz = "GMT", format = "%Y-%m-%d %H:%M:%S")

png("plot2.png")

with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()
