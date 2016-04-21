plotimport <- function(){
  
  a<- unzip(dir()[1],list = TRUE)
  data11<- read.table(text = grep("^[1,2]/2/2007", readLines(a[[1]]), value = TRUE),sep = ";",header = TRUE)
  coldata11<- read.table(a[[1]],sep = ";",header = TRUE)[c(1),]
  colnames(data11)<-names(coldata11)
  test1<- paste(data11[,1],'',data11[,2])
  data11$datetime <-strptime(test1,format ="%d/%m/%Y %H:%M:%S")
  return (data11)
}