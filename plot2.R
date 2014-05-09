data <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings= "?")
febdata = subset(data, as.character(data$Date) == "1/2/2007" | as.character(data$Date) == "2/2/2007")
wDays <- strptime(paste(febdata$Date, febdata$Time), format='%d/%m/%Y %H:%M:%S')
plot(wDays, febdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")