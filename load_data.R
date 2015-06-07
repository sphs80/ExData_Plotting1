@@ -1,12 +1,14 @@
+## This file is for loading the large dataset.
 filename <- "./data/household_power_consumption.txt"
 data <- read.table(filename,
-                 header=TRUE,
-                 sep=";",
-                 colClasses=c("character", "character", rep("numeric",7)),
-                 na="?")
+                   header = TRUE,
+                   sep = ";",
+                   colClasses = c("character", "character", rep("numeric",7)),
+                   na = "?")
 dim(data) # 2075259 9
 attach(data)
-subset <- Date=="1/2/2007" | Date=="2/2/2007"
+## We only need data of 2 days.
+subset <- Date == "1/2/2007" | Date == "2/2/2007"
 newData <- data[subset, ]
 attach(newData)
 x <- paste(Date, Time)

