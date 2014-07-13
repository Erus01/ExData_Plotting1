setwd("C:/Users/Erus2/Documents")
usedata<-read.table("household_power_consumption.txt", header=T,sep=";")

flag<-usedata[,1]=="1/2/2007" | usedata[,1]=="2/2/2007"
newdata<-usedata[flag,]
hist(as.numeric(levels(newdata[,3])[newdata[,3]]),col="red",xlab ="Global_active_power(in kilowatt)", main ="Global Active Power",cex.axis=0.75,cex.lab = 0.75 )
dev.copy(png,'plot1.png',width = 480, height = 480,bg = "transparent")
dev.off()
