setwd("D:\\Vytenio_f\\Online_courses\\Coursera\\Data_science\\Exploratory_Data_Analysis\\Week1")
data <- read.table(file="household_power_consumption.txt", header = TRUE, 
    sep = ";",
    colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
    ,na.strings="?")
data$Date <- strptime(data$Date, "%d/%m/%Y")
data$Time <- strptime(data$Time, "%H:%M:%S")
data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
png(plot1.png)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
