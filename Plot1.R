
# 
# # set working directory
# workdir <- "C:/Users/username/Desktop/Suresh/Coursera/C-4"
# setwd(workdir)
# 
# # check for data directory and if not exist create one
# 
# if (!file.exists("data")){
#         dir.create("data")
# }

dataFile <- "C:/Users/username/Desktop/Suresh/Coursera/C-4/data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
#print(globalActivePower)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
