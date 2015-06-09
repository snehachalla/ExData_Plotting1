

pd_sub$Sub_metering_1 = as.numeric(as.character(pd_sub$Sub_metering_1))
pd_sub$Sub_metering_2 = as.numeric(as.character(pd_sub$Sub_metering_2))
pd_sub$Sub_metering_3 = as.numeric(as.character(pd_sub$Sub_metering_3))
b=melt(pd_sub, measure.vars =c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"  ) )

png(filename = "Plot3.PNG")
qplot(DatTime ,value , data = b, color = variable  )
dev.off()
