library(datasets)

plot4 <- function() {
      #header <- read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", skip = 66637, nrows = 1)
      edata <- read.table(file="./household_power_consumption.txt", header=FALSE, sep = ";", skip = 66637, nrows = 2880)
      colnames(edata) <- colnames(read.table(file="./household_power_consumption.txt", header=TRUE, sep = ";", nrows = 1))
      edata$Datetime <- strptime(paste(edata$Date, edata$Time), "%d/%m/%Y %H:%M:%S")
      #str(edata)
      
      png(filename = 'plot4.png', width = 480, height = 480, units = 'px')
      
      par(mfrow = c(2, 2))
      with(edata, plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
      
      with(edata, plot(Datetime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
      
      with(edata, plot(Datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
      with(edata, lines(Datetime, Sub_metering_2, col = "red"))
      with(edata, lines(Datetime, Sub_metering_3, col = "blue"))
      legend("topright", lty = 1, col = c("black", "red", "blue"), bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      
      with(edata, plot(Datetime, Global_reactive_power, type = "l", xlab = "datetime"))
      
      dev.off()
      
}