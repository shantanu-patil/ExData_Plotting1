## mydat1 is the dataframe that is created in plot1.R and further used in all plots

par(mfrow = c(2, 2), mar = c(4, 4, 0, 1), oma = c(0, 0, 2, 0))

with(mydat1,{
  plot(DateTime, Global_active_power,type="l", xlab ="", ylab = "Global Active Power")
  plot(DateTime, Voltage,type="l", xlab ="datetime", ylab = "Voltage")
  with(mydat1,{
    plot(DateTime, Sub_metering_1,type="l", xlab ="", ylab = "Energy Sub Metering")
    lines(DateTime, Sub_metering_2, col = "red")
    lines(DateTime, Sub_metering_3, col = "blue")
  })
  legend("topright", pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), cex=0.5)
  plot(DateTime, Global_reactive_power,type="l", xlab ="datetime")
})

dev.copy(png, file = "plot4.png")
dev.off()