setwd("R/Exploratory Data Analysis/Project 1")
x<-read.table("household_power_consumption.txt", sep=";", stringsAsFactors=FALSE,  dec=".", header=TRUE)
data<-x[x$Date %in% c("1/2/2007","2/2/2007"),]
d<-paste(data[,1],data[,2])
y<-strptime(d,"%d/%m/%Y %H:%M:%S")


png(file="plot2.png",width = 480, height = 480)
plot(y,as.numeric(data[,3]),type="l",xlab="",ylab="Global Active Power (Kilowatts)")
dev.off()
