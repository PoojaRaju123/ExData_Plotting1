data<-read.csv("C:\\Users\\MyPc\\Desktop\\pooja\\data\\household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")
data<-na.omit(data)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
d1<-as.Date("2007-02-01")
d2<-as.Date("2007-02-02 ")
data1<-subset(data,data$Date==d1|data$Date==d2)
names<-gsub("_"," ",colnames(data1))
colnames(data1)<-names                            

plot(data1$`Global active power`, type="l",ylab="Global active power(kilowatts)" ,xaxt="n")
axis(1, at=c(0,1500,2900),labels =c("Thu","Fri","Sat"))
dev.copy(png, file="plot2.png")
dev.off()
