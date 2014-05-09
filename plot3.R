data <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings= "?")
febdata = subset(data, as.character(data$Date) == "1/2/2007" | as.character(data$Date) == "2/2/2007")
wDays <- strptime(paste(febdata$Date, febdata$Time), format='%d/%m/%Y %H:%M:%S')
x <- wDays
y <- febdata$Sub_metering_1
plot(wDays,y, type = "n", ,xlab = "", ylab = "Energy sub metering")
lines(wDays,febdata$Sub_metering_1)
lines(wDays,febdata$Sub_metering_2, col = "red")
lines(wDays,febdata$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=c(2.5,2.5))