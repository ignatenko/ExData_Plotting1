EPCdata <- read.table(file = "/home/ignat/R/MyCode/household_power_consumption.txt", header = T, sep = ";", col.names = c("Date", "Time", "GlobalAP","GlobalRP","Voltage","GlobalI","Sub1","Sub2","Sub3"),na.strings = "?", nrows = 2880, skip = 66636,stringsAsFactors = FALSE)
# not flexible way to read data, but solves the problem to get only needed values  

<<<<<<< HEAD
png("/home/ignat/R/MyCode/plot1.png",width=480,height=480,units="px",res=72)

hist(EPCdata$GlobalAP, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
# making histogram
=======
hist(EPCdata$GlobalAP, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
>>>>>>> e99aa58d4959edf3e074245f6eee8770426f75d8

dev.off()
