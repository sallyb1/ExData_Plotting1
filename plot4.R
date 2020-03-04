#Final plot
png("plot4.png", width=480, height=480)
#setting the plot environment to accept 4 plots,2 on each column
par(mfcol = c(2,2))
#starting the plot
plot(df$Datetime, df$Global_active_power, type="l", xlab="",ylab="Global Active Power(Kilowatts)" )
plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, type = "l", col="red")
lines(df$Datetime, df$Sub_metering_3, type = "l", col="blue")
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(df$Datetime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(df$Datetime, df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()