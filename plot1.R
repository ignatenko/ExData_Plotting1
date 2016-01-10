EPCdata <- read.table(file = "/home/ignat/R/MyCode/household_power_consumption.txt", header = T, sep = ";", col.names = c("Date", "Time", "GlobalAP","GlobalRP","Voltage","GlobalI","Sub1","Sub2","Sub3"),na.strings = "?", nrows = 2880, skip = 66636,stringsAsFactors = FALSE)
# not flexible way to read data, but solves the problem to get only needed values  

hist(EPCdata$GlobalAP, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
