## Draw plot2 given quiz specification on coursera
plot2 <- function(){
	## Read full datset as dataframe.
	fulldataset <- read.delim("ExData_Plotting1/household_power_consumption.txt",sep=";",header=TRUE,quote="")	
	## Subset only the data with date in 2007-02-01 and 2007-02-02
	dataset$Date <- as.Date(dataset$Date,"%d/%m/%Y")
	subdataset <- dataset[dataset$Date %in% c(as.Date(c("2007-02-01","2007-02-02","%Y-%m-%d"))),]
	## plot histogram
	png(filename="ExData_Plotting1/plot2.png")
	with(subdataset,plot(as.POSIXct(paste(Date," ",Time)),as.numeric(as.character(Global_active_power)),type="l",ylab="Global Active Power (kilowatts)",xlab=""))
	dev.off()
}
