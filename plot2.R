EPCdata <- read.table(file = "/home/ignat/R/MyCode/household_power_consumption.txt", header = T, sep = ";", col.names = c("Date", "Time", "GlobalAP","GlobalRP","Voltage","GlobalI","Sub1","Sub2","Sub3"),na.strings = "?", nrows = 2880, skip = 66636,stringsAsFactors = FALSE)

x <- data.frame(strptime(paste(EPCdata$Date,EPCdata$Time),format = "%d/%m/%Y %H:%M:%S"),EPCdata$GlobalAP)
names(x)<-c("Time","Power")

png("/home/ignat/R/MyCode/plot2.png",width=480,height=480,units="px",res=72)
plot(x$Time,x$Power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()
