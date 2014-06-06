setwd(".")

source("read_data_by_line_range.R")

uci.data <- ReadData()

plot(uci.data$Time, uci.data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")

dev.off()
