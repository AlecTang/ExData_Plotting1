library(datasets)

plot1 <- function() {
      #header <- read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", skip = 66637, nrows = 1)
      edata <- read.table(file="./household_power_consumption.txt", header=FALSE, sep = ";", skip = 66637, nrows = 2880)
      colnames(edata) <- colnames(read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", nrows = 1))
      #str(edata)
      
      png(filename = 'plot1.png', width = 480, height = 480, units = 'px')
      
      hist(edata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
      
      dev.off()
      
}