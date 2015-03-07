mydat<-read.table("household_power_consumption/household_power_consumption.txt", header=TRUE,na.strings="?",sep=";")

mydat1<-mydat[(mydat$Date=="1/2/2007" | mydat$Date=="2/2/2007" ),]

mydat1$DateTime<-strptime(paste(mydat1$Date,mydat1$Time),"%d/%m/%Y %H:%M:%S")

hist(mydat1$Global_active_power, col = "red", main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()