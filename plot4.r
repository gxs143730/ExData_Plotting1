setwd("R/Exploratory Data Analysis/Project 1")
x<-read.table("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE,  dec=".", header=TRUE)
data<-x[x$Date %in% c("1/2/2007","2/2/2007"),]
d<-paste(data[,1],data[,2])
y<-strptime(d,"%d/%m/%Y %H:%M:%S")

png(file="plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(y,as.numeric(data[,3]),type="l",xlab="",ylab="Global Active Power (Kilowatts)")

plot(y,as.numeric(data[,5]),type="l",xlab="datetime",ylab="Voltage")


plot(y,as.numeric(data[,7]),type="l",xlab="",ylab="Energy sub metering")
lines(y,as.numeric(data[,8]),type="l", col="red")
lines(y,as.numeric(data[,9]),type="l", col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red", "blue"))

plot(y,as.numeric(data[,4]),type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()