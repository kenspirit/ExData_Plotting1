ReadData <- function() {
  datafile.name <- "exdata-data-household_power_consumption.zip"

  if (!file.exists(datafile.name)) {
    print(paste0("Expected data file '", datafile.name, "' doesnot exists.", collapse = ""))
    quit(save = "no")
  }

  # Unzip the Samsung data
  unzip(datafile.name)

  line.start <- 66638
  line.end <- 69517

  header <- read.table("household_power_consumption.txt", header = F, sep = ";",
    nrows = 1, stringsAsFactors = F)
  header <- as.character(header[1,])

  data <- read.table("household_power_consumption.txt", header = T, sep = ";",
    nrows = (line.end - line.start + 1), dec = ".",
    skip = (line.start - 2), col.names = header, stringsAsFactors = F, na.string = "?")

  data
}

