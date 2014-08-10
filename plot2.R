library(datasets)

plot2 <- function() {
      #header <- read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", skip = 66637, nrows = 1)
      edata <- read.table(file="./household_power_consumption.txt", header=FALSE, sep = ";", skip = 66637, nrows = 2880)
      colnames(edata) <- colnames(read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", nrows = 1))
      edata$Datetime <- strptime(paste(edata$Date, edata$Time), "%d/%m/%Y %H:%M:%S")
      #str(edata)
      
      png(filename = 'plot2.png', width = 480, height = 480, units = 'px')
      
      with(edata, plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
      
      dev.off()
      
}