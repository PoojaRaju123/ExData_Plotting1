data<-read.csv("C:\\Users\\MyPc\\Desktop\\pooja\\data\\household_power_consumption.txt")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
d1<-as.Date("2007-02-01")
d2<-as.Date("2007-02-02 ")
data1<-subset(data,data$Date==d1|data$Date==d2)
data1&date1<-NULL
data1 <- data1[,-(10),drop=FALSE]
names<-gsub("_"," ",colnames(data1))
colnames(data1)<-names

hist(data1$`Global active power`,xlab="Global active power(kilowatts)",main="Global active power",col="red")
dev.copy(png, file="plot1.png")
dev.off()
