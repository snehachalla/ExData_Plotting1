d = read.table("household_power_consumption.txt",  sep= ";" ,header= T, strip.white=TRUE)
power = d
power$Date = as.Date(power$Date,"%d/%m/%Y" )
pd_sub=subset(power , Date == "2007-02-01" | Date == "2007-02-02")
pd_sub$Global_active_power <- as.numeric(as.character(pd_sub$Global_active_power))
hist(pd_sub $ Global_active_power , col = "red" , breaks =12 , main = "Global Active Power",
     xlab = "Global Active Power(Kilowatts)" , ylab = "Frequency")


