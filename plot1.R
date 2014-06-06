setwd(".")

source("read_data_by_line_range.R")

uci.data <- ReadData()

hist(as.numeric(uci.data$Global_active_power), main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")

dev.off()
