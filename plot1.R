setwd(".")

source("read_data_by_line_range.R")

data <- ReadData()

# png(file = "plot1.png", width = 480, height = 480, units = "px")

hist(as.numeric(data$Global_active_power), main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")

dev.off()
