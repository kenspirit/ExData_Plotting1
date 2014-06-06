setwd(".")

source("read_data_by_line_range.R")

uci.data <- ReadData()

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2), mar = c(4, 4, 1, 1)) # par must be called after opening device

## topleft
plot(uci.data$Time, uci.data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## topright
plot(uci.data$Time, uci.data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## bottomleft
plot(uci.data$Time, uci.data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(uci.data$Time, uci.data$Sub_metering_1, col = "black")
lines(uci.data$Time, uci.data$Sub_metering_2, col = "red")
lines(uci.data$Time, uci.data$Sub_metering_3, col = "blue")

legend("topright", col = c("black", "red", "blue"), lwd = 1,
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## bottomright
plot(uci.data$Time, uci.data$Global_reactive_power, type="l", xlab = "datetime",
  ylab = "Global_reactive_power")

dev.off()
