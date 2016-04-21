plot4 <- function(){
  data11<- plotimport()
  
  dev.new()
  #png(filename = "plot4.png", width = 480, height = 480, units='px')
  png("plot4.png")
  split.screen( figs = c( 1, 2 ))
  split.screen( figs = c( 2,1 ),screen = 1)
  split.screen( figs = c( 2,1 ),screen = 2)
  
  #1
  screen(3)
  plot(data11$datetime,data11$Global_active_power,  type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  
  #2
  screen(4)  
  
  plot(data11$datetime,data11$Sub_metering_1, col = 'blue' , type ='l',ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(data11$datetime,data11$Sub_metering_2, col = 'red' ,type ='l')
  lines(data11$datetime,data11$Sub_metering_3, col = 'black' ,type ='l') 
  
  #3
  screen(5)
  plot(data11$datetime,data11$Voltage , type ='l',ylab = "Voltage", xlab = "")
  
  #4
  screen(6)
  plot(data11$datetime,data11$Global_reactive_power , type ='l',ylab = "Global reactive power", xlab = "")
  close.screen(all.screens = TRUE)
  dev.off()
}