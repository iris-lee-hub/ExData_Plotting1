data <- read.csv("Formatted.csv")

data$datetime<- strptime(data$datetime, tz = "GMT", format = "%Y-%m-%d %H:%M:%S")

png("plot4.png")

par(mfrow = c(2,2))

with(data, plot(datetime, Global_active_power, type = "l", xlab = "", 
                ylab = "Global Active Power (kilowatts)"))

with(data, plot(datetime, Voltage, type = "l", ylab = "Voltage"))

with(data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, type = "l", col = "Red"))
with(data, lines(datetime, Sub_metering_3, type = "l", col = "Blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("Black", "Red", "Blue"), lty = 1, bty="n")

with(data, plot(datetime, Global_reactive_power, type = "l"))


dev.off()
