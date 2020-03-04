#Second Plot
png("plot2.png", width=480, height=480)
#Plotting global active time against datetime
plot(df$Datetime, df$Global_active_power, type="l", xlab="",ylab="Global Active Power(Kilowatts)" )
dev.off()