## mydat1 is the dataframe that is created in plot1.R and further used in all plots

with(mydat1,{
     plot(DateTime, Sub_metering_1,type="l", xlab ="", ylab = "Energy Sub Metering")
     lines(DateTime, Sub_metering_2, col = "red")
     lines(DateTime, Sub_metering_3, col = "blue")
})

legend("topright", pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), cex=0.7)

dev.copy(png, file = "plot3.png")
dev.off()