setwd(".")

source("read_data_by_line_range.R")

uci.data <- ReadData()

png(filename = "plot3.png", width = 480, height = 480, units = "px")

plot(uci.data$Time, uci.data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(uci.data$Time, uci.data$Sub_metering_1, col = "black")
lines(uci.data$Time, uci.data$Sub_metering_2, col = "red")
lines(uci.data$Time, uci.data$Sub_metering_3, col = "blue")

legend("topright", col = c("black", "red", "blue"), lwd = 1,
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# copy will make the legend display not correctly with text cut
# dev.copy(png, file = "plot3.png", width = 480, height = 480, units = "px")

dev.off()
