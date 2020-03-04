#First Plot
png("plot1.png", width=480, height=480) #setting the png parameters
hist(df$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")#plotting a histogram for global active power
dev.off() 