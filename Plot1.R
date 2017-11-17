# load necessary libraries
library(dplyr)

df <- read.table("../Downloads/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df_filter <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# first plot 
gAP <- as.numeric(df_filter$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
