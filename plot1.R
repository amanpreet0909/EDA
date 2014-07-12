data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, na.strings=c("?"))
req_data<- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
png("plot1.png")
hist(req_data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()