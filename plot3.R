setwd("C:/Users/Erus2/Documents")
usedata<-read.table("household_power_consumption.txt", header=T,sep=";")
flag<-usedata[,1]=="1/2/2007" | usedata[,1]=="2/2/2007"
newdata<-usedata[flag,]
subset1<-as.numeric(levels(newdata[,7])[newdata[,7]])
subset2<-as.numeric(levels(newdata[,8])[newdata[,8]])
subset3<-newdata[,9]
subsettime<-(strptime(paste(newdata[,1],newdata[,2]),"%d/%m/%Y %H:%M:%S"))
par(mfrow=c(1,1))
plot(subsettime, subset1, type = "n",ylab ="Energy sub metering",xlab="",cex.lab = 0.75,cex.axis = 0.75 )
lines(subsettime,subset1, lty=1)
lines(subsettime,subset2, lty=1, col = "red")
lines(subsettime,subset3, lty=1, col = "blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1),cex = 0.5)
dev.copy(png,'plot3.png',width = 480, height = 480, bg = "transparent")
dev.off()
