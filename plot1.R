## Draw plot1 given quiz specification on coursera
plot1 <- function(){
	## Read full datset as dataframe.
	fulldataset <- read.delim("ExData_Plotting1/household_power_consumption.txt",sep=";",header=TRUE,quote="")	
	## Subset only the data with date in 2007-02-01 and 2007-02-02
	dataset$Date <- as.Date(dataset$Date,"%d/%m/%Y")
	subdataset <- dataset[dataset$Date %in% c(as.Date(c("2007-02-01","2007-02-02","%Y-%m-%d"))),]
	## plot histogram
	png(filename="ExData_Plotting1/plot1.png")
	hist(as.numeric(as.character(subdataset$Global_active_power)),main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
	dev.off()
}