
df <- read.table("../Downloads/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df_filter <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# plot 2
plot_dt <- strptime(paste(df_filter$Date, df_filter$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(df_filter$Global_active_power)
png("plot2.png", width=480, height=480)
plot(plot_dt, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()