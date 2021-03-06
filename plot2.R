setwd("C:/Users/Erus2/Documents")
usedata<-read.table("household_power_consumption.txt", header=T,sep=";")
flag<-usedata[,1]=="1/2/2007" | usedata[,1]=="2/2/2007"
newdata<-usedata[flag,]
subsetdata<-as.numeric(levels(newdata[,3])[newdata[,3]])
subsettime<-(strptime(paste(newdata[,1],newdata[,2]),"%d/%m/%Y %H:%M:%S"))
plot(subsettime, subsetdata, type = "n",ylab ="Global Active Power (kilowatts)",xlab="",cex.lab = 0.75,cex.axis = 0.75 )
lines(subsettime,subsetdata, lty=1)
dev.copy(png,'plot2.png',width = 480, height = 480, bg = "transparent")
dev.off()
