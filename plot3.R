## Draw plot3 given quiz specification on coursera
plot3 <- function(){
	## Read full datset as dataframe.
	fulldataset <- read.delim("ExData_Plotting1/household_power_consumption.txt",sep=";",header=TRUE,quote="")	
	## Subset only the data with date in 2007-02-01 and 2007-02-02
	dataset$Date <- as.Date(dataset$Date,"%d/%m/%Y")
	subdataset <- dataset[dataset$Date %in% c(as.Date(c("2007-02-01","2007-02-02","%Y-%m-%d"))),]
	## plot histogram
	png(filename="ExData_Plotting1/plot3.png")
	with(subdataset,plot(as.POSIXct(paste(Date," ",Time)),as.numeric(as.character(Sub_metering_1)),type="l",ylab="Energy sub metering",xlab=""))
	with(subdataset,points(as.POSIXct(paste(Date," ",Time)),as.numeric(as.character(Sub_metering_2)),type="l",col="red"))
	with(subdataset,points(as.POSIXct(paste(Date," ",Time)),as.numeric(as.character(Sub_metering_3)),type="l",col="blue"))
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c(1, "red", "blue"), lty = c(1, 1, 1), pch = c(NA, NA, NA), merge = TRUE)
	dev.off()
}
