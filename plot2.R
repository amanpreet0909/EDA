data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, na.strings=c("?"))
req_data<- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
req_data$date_time <- mapply(function(s1, s2){as.POSIXct(paste(s1, s2), format = "%d/%m/%Y %H:%M:%S")},req_data$Date,req_data$Time)
png("plot2.png")
plot(req_data$date_time, req_data$Global_active_power, type="l", xaxt = "n",ylab = "Global Active Power (kilowatts)", xlab = "")
axis.POSIXct(1, as.POSIXct(req_data$date_time, origin="1970-01-01"))
dev.off()