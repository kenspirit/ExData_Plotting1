ReadData <- function() {
  datafile.name <- "exdata-data-household_power_consumption.zip"

  if (!file.exists(datafile.name)) {
    print(paste0("Expected data file '", datafile.name, "' doesnot exists.", collapse = ""))
    quit(save = "no")
  }

  # Unzip the Samsung data
  unzip(datafile.name)

  data <- read.table("household_power_consumption.txt", header = T, sep = ";",
    stringsAsFactors = F, na.string = "?")
  
  data$Time <- strptime(paste0(data$Date, " " , data$Time), format="%d/%m/%Y %H:%M:%s")
  data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

  start <- as.Date("01/02/2007", format = "%d/%m/%Y")
  end <- as.Date("02/02/2007", format = "%d/%m/%Y")

  data <- subset(data, Date == start | Date == end)

  data
}

