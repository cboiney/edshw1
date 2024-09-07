#p1
recent_snow <- c(2.5, 3, 5, 4.5)

#p2
mt_names <- c("Mount Haystack", "Mount Skylight", "Dix Mountain", "Gray Peak")
elevations <- c(4960, 4926, 4857, 4840)
ascents <- c(3570, 4265, 2800, 4178)
rtlengths <- c(17.8, 17.9, 13.2, 16)

mtn_info <- data.frame(name = mt_names, 
                    elevation = elevations, 
                    climb_ascent = ascents, 
                    round_trip_length = rtlengths)
#p3

celsius_temps <- c(-44, 0, 20, 35)
convert <- function(a) {a*1.8 + 32}
fahrenheit_temps <- convert(celsius_temps)

#HOMEWORK

#q1

#creating conversion function
feet_to_meters <- function(ft) {ft/3.281}

#pulling out elevation column (maybe slower than ideal)
elevations_pull <- mtn_info[2]

#creating new column that has elevations in meters
elevations_in_meters <- feet_to_meters(elevations_pull)

#copying table of all info on mountains
new_mtn_info_table <- mtn_info

#swapping the new column in for the old one
new_mtn_info_table[2] <- elevations_in_meters

#renaming column for precision
colnames(new_mtn_info_table)[2] <- "elevation(m)"

#q2

#q3

#pull out length of longest round trip
max_length = max(new_mtn_info_table[4])

#go through each row
for (i in 1:4) {
  #compare trip length of current row to the max 
  if (new_mtn_info_table[i, 4] == max_length){
    #if they are equal, create desired variable with that row
    longest_climb <- new_mtn_info_table[i,]
    }
}
