##Importing the data
setwd("/Users/salomeybezua/Documents/GitHub/ExData_Plotting1")
Powerdata <- read.csv("/Users/salomeybezua/Documents/GitHub/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?",stringsAsFactors = FALSE)

##creating a dataframe 
summary(Powerdata)
str(Powerdata)
df<- subset(Powerdata, Powerdata$Date=="1/2/2007"|Powerdata$Date=="2/2/2007")


##Changing the data types
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))
df$Voltage <- as.numeric(as.character(df$Voltage))
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))
df$Datetime <-paste(df$Date, df$Time)
df$Datetime <- strptime(df$Datetime, "%d/%m/%Y %H:%M:%S")

#First Plot
png("plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()

#Second Plot
png("plot2.png", width=480, height=480)
plot(df$Datetime, df$Global_active_power, type="l", xlab="",ylab="Global Active Power(Kilowatts)" )
dev.off()

#Third Plot
png("plot3.png", width=480, height=480)
plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, type = "l", col="red")
lines(df$Datetime, df$Sub_metering_3, type = "l", col="blue")
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

#Final plot
png("plot4.png", width=480, height=480)
par(mfcol = c(2,2))
plot(df$Datetime, df$Global_active_power, type="l", xlab="",ylab="Global Active Power(Kilowatts)" )
plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, type = "l", col="red")
lines(df$Datetime, df$Sub_metering_3, type = "l", col="blue")
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(df$Datetime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(df$Datetime, df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
