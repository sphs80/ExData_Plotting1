@@ -1,18 +1,19 @@
-if(!"load_data.R" %in% list.files()) {
+## First check whether it has the file in the current dir.
+if (!"load_data.R" %in% list.files()) {
     setwd("~/Desktop/Online Coursera/Coursera-Exploratory-Data-Analysis/ExData_Plotting1/")
 } 
 source("load_data.R")
-png(filename="plot3.png", 
-    width=504, height=504,
-    units="px", bg="transparent")
+png(filename = "plot3.png", 
+    width = 480, height = 480,
+    units = "px", bg = "transparent")
 plot(DateTime, Sub_metering_1, 
-     type="l",
-     col="black",
-     xlab="", ylab="Energy sub metering")
-lines(DateTime, Sub_metering_2, col="red")
-lines(DateTime, Sub_metering_3, col="blue")
+     type = "l",
+     col = "black",
+     xlab = "", ylab = "Energy sub metering")
+lines(DateTime, Sub_metering_2, col = "red")
+lines(DateTime, Sub_metering_3, col = "blue")
 legend("topright", 
-       col=c("black", "red", "blue"),
+       col = c("black", "red", "blue"),
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
-       lwd=1)
+       lwd = 1)
 dev.off() 
