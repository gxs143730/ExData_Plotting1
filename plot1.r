setwd("R/Exploratory Data Analysis/Project 1")
x<-read.table("household_power_consumption.txt", sep=";",  stringsAsFactors=FALSE, dec=".")
y1<-x[x[,1]=="1/2/2007",]
y2<-x[x[,1]=="2/2/2007",]
y<-rbind(y1,y2)
dat1<-as.numeric(y[,3])

png(file="plot1.png",width = 480, height = 480)
hist(dat1,col="red",main="Global Active Power", xlab="Global Active Power (Kilowatts)")
dev.off()