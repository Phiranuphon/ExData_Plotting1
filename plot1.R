plot1 <- function(){
  dev.new()
  png(filename = "plot1.png", width = 480, height = 480, units='px')
  hist(data11$Global_active_power,col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
  dev.off()
  
  
}