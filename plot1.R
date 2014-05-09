data <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings= "?")
febdata = subset(data, as.character(data$Date) == "1/2/2007" | as.character(data$Date) == "2/2/2007")
global_active <- febdata$Global_active_power
global_active <- na.omit(global_active)
global_active <- as.numeric(global_active)
hist(global_active, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")