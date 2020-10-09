power<-read.table("household_power_consumption.txt",header = TRUE, sep = ";",stringsAsFactors = FALSE,dec = ".")
subsetpower<-power[power$Date %in% c("1/2/2007","2/2/2007"),]
globalactivepower<-as.numeric(subsetpower$Global_active_power)
datetime<-strptime(paste(subsetpower$Date,subsetpower$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
plot(datetime,globalactivepower,type = "l", xlab = " ",ylab = "Global active power(kilowatts)")
dev.copy(png,file="plot2.png",height=480,width=480)
dev.off()