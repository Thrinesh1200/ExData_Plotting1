power<-read.table("household_power_consumption.txt",header = TRUE, sep = ";",stringsAsFactors = FALSE,dec = ".")
subsetpower<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
globalactivepower<-as.numeric(subsetpower$Global_active_power)
hist(globalactivepower,col = "RED",main = "Global Active Power",xlab = "Global active power(kilowat)")
dev.copy(png,file="plot1.png",height=480,width=480)
dev.off()