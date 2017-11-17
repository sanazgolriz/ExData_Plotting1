df <- read.table("../Downloads/Coursera/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df_filter <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
df_filter$Global_active_power <- as.numeric(df_filter$Global_active_power)

plot_dt <- strptime(paste(df_filter$Date, df_filter$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMet1 <- as.numeric(df_filter$Sub_metering_1)
subMet2 <- as.numeric(df_filter$Sub_metering_2)
subMet3 <- as.numeric(df_filter$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(plot_dt, subMet1,  ylab="Energy Sub metering", xlab="", type="l")
lines(plot_dt, subMet3, col="blue",type="l")
lines(plot_dt, subMet2, col="red", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty=1, lwd=2.5)
dev.off()
