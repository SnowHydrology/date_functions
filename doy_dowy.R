#Function for extracting calculating day of year (doy)
#and day of water year (dowy) from:
#Date or
#Datetime (POSIX) object

#Keith Jennings 
#ksjennin@gmail.com
#2016-09-20

#x = date/datetime object
doy_FUN <- function(DATE){
  as.POSIXlt(DATE)$yday + 1
}

#for dowy:
#x = date/datetime object
#y = doy as calculated above
dowy_FUN <- function(DATE, DOY){
  ifelse(as.numeric(format(DATE, "%Y")) %% 4 == 0,
         ifelse(as.numeric(format(DATE, "%m")) > 9,
                DOY - 274,
                DOY + 92),
         ifelse(as.numeric(format(DATE, "%m")) > 9,
                DOY - 273,
                DOY + 92))
}
