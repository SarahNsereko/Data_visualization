library(tidyverse)
library(nycflights13)
nycflights13::flights
# Find all flights that;
#1. Had an arrival delay of two or more hours
#2. Flew to Houston (IAH or HOU)
#3. Were operated by United, American, or Delta
#4. Departed in summer (July, August, and September)
#5. Arrived more than two hours late, but didn’t leave late
#6. Were delayed by at least an hour, but made up over 30 minutes in flight
#7. Departed between midnight and 6am (inclusive)
#8. Another useful dplyr filtering helper is between(). What does it do? Can you use it to simplify the code needed to answer the previous challenges?
#9. How many flights have a missing dep_time? What other variables are missing? What might these rows represent?

view(flights)
?flights
#1. Had an arrival delay of two or more hours
filter(flights,arr_delay>=120)
TH<-filter(flights,arr_delay>=120)

#2. Flew to Houston (IAH or HOU)
filter(flights,dest=="HOU" |dest=="IAH")
HD<-filter(flights,dest=="HOU"|dest=="IAH")

#3. Were operated by United, American, or Delta
filter(flights,carrier %in% c("UA","AA","DL")) #carrier withhin given parameters


#4. Departed in summer (July, August, and September)
filter(flights,month==7|month==8|month==9)
JAS<-filter(flights,month==7|month==8|month==9)
view(JAS)

#5. Arrived more than two hours late, but didn’t leave late
filter(flights,arr_delay>120 &dep_delay<0 )
dll<-filter(flights,arr_delay>120 & dep_delay<0)
view(dll)

#6. Were delayed by at least an hour, but made up over 30 minutes in flight
filter(flights,dep_delay>=60 &arr_delay<= -30 )
a<-filter(flights,dep_delay>=60 &arr_delay<=-30)
view(a)

#7. Departed between midnight and 6am (inclusive)

filter(flights,dep_time )
a<-filter(flights,)
view(a)
summary(flights$dep_time)
summary(flights$carrier)



#8. Another useful dplyr filtering helper is between(). What does it do? Can you use it to simplify the code needed to answer the previous challenges?
#between helps us to make comparison faster than the normal way of comparing a variable to its upper and lower bound to get where it lies
#9. How many flights have a missing dep_time? What other variables are missing? What might these rows represent?
filter(flights,is.na(dep_time))
DT<-filter(flights,is.na(dep_time))
view(DT)
#arr_time is also missing as well as dep_delay and arr_delay
#These missing values may represent flights whose data was not recorded or flights that were meant to happen but never happened