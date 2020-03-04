#Third Plot
png("plot3.png", width=480, height=480)
##plotting submetering versus datetime
plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
#adding submetering 2 with a red color
lines(df$Datetime, df$Sub_metering_2, type = "l", col="red")
#adding submetering 3 with a blue color
lines(df$Datetime, df$Sub_metering_3, type = "l", col="blue")
#specifying a legend
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()