plot2 <- function(){
  
  dev.new()
  
  png(filename = "plot2.png", width = 480, height = 480, units='px')
  plot(data11$datetime,data11$Global_active_power,  type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  
  dev.off()
  
  
}