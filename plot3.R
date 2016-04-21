plot3 <- function(){
  data11<- plotimport()
  dev.new()
  png(filename = "plot3.png", width = 480, height = 480, units='px')
  plot(data11$datetime,data11$Sub_metering_1, col = 'blue' , type ='l',ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(data11$datetime,data11$Sub_metering_2, col = 'red' ,type ='l')
  lines(data11$datetime,data11$Sub_metering_3, col = 'black' ,type ='l')
  
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
  
  
  
  
}