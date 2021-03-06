EPCdata <- read.table(file = "/home/ignat/R/MyCode/household_power_consumption.txt", header = T, sep = ";", col.names = c("Date", "Time", "GlobalAP","GlobalRP","Voltage","GlobalI","Sub1","Sub2","Sub3"),na.strings = "?", nrows = 2880, skip = 66636,stringsAsFactors = FALSE)

z <- data.frame(strptime(paste(EPCdata$Date,EPCdata$Time),format = "%d/%m/%Y %H:%M:%S"),EPCdata$GlobalAP,EPCdata$Voltage,EPCdata$Sub1,EPCdata$Sub2,EPCdata$Sub3,EPCdata$GlobalRP)
names(z)<-c("Time","GlobalAP","Voltage","Sub_metering_1","Sub_metering_2","Sub_metering_3","GlobalRP")
head(z)
png("/home/ignat/R/MyCode/plot4.png",width=480,height=480,units="px",res=72)
par(mfrow = c(2,2))
plot(z$Time,z$GlobalAP,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
plot(z$Time,z$Voltage,type = "l",ylab = "Voltage",xlab = "datetime")
plot(z$Time,z$Sub_metering_1, type = "l",ylab = "Energy sub metering",xlab = "")
lines(z$Time,z$Sub_metering_2,col = "red")
lines(z$Time,z$Sub_metering_3,col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),x.intersp = 0.6, cex = 1,bty = "n",col = c("black","red","blue"), lty = c(1,1,1))
plot(z$Time,z$GlobalRP,type = "l",ylab = "Global_reactive_power",xlab = "datetime")
dev.off()
