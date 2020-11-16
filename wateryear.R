#Function for extracting water year from:
#Date or
#Datetime (POSIX) object

#Keith Jennings 
#ksjennin@gmail.com
#2016-08-16

wyear_FUN <- function(DATE){
  ifelse(as.numeric(format(DATE, "%m")) >= 10,
         as.numeric(format(DATE, "%Y")) + 1,
         as.numeric(format(DATE, "%Y")))
}