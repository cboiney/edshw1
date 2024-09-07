#p1
recent_snow <- c(2.5, 3, 5, 4.5)

#p2
mt_names <- c("Mount Haystack", "Mount Skylight", "Dix Mountain", "Gray Peak")
elevations <- c(4960, 4926, 4857, 4840)
ascents <- c(3570, 4265, 2800, 4178)
rtlengths <- c(17.8, 17.9, 13.2, 16)

table <- data.frame(name = mt_names, 
                    elevation = elevations, 
                    climb_ascent = ascents, 
                    round_trip_length = rtlengths)
#p3

celsius_temps <- c(-44, 0, 20, 35)
convert <- function(a) {a*1.8 + 32}
fahrenheit_temps <- convert(celsius_temps)

#HOMEWORK

