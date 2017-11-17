# load necessary libraries
library(dplyr)

data <- read.table("../Downloads/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df_filter <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# first plot 

#str(subSetData)
globalActivePower <- as.numeric(df_filter$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()