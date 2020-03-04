##Importing the data
setwd("/Users/salomeybezua/Documents/GitHub/ExData_Plotting1")
Powerdata <- read.csv("/Users/salomeybezua/Documents/GitHub/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?",stringsAsFactors = FALSE)

##Exploring the data 
summary(Powerdata)
str(Powerdata)

##creating a dataframe
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
#setting the png parameters
png("plot1.png", width=480, height=480) 
#plotting a histogram for global active power
hist(df$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off() 
