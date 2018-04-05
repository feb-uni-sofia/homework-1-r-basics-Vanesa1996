
(a) Create a vector called xmin for the minimum temperature measurements
and a vector called xmax for the maximal temperature measurements.

xmin <- c (23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2 ) 
xmax <- c ( 25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1 ) 

(b) Compute the difference between the maximal and the minimum temperatures for each day.

xmax - xmin

(c) Compute the average minimum temperature and the average maximal
temperature.

totalMinimum <- sum ( xmin ) 
totalMaximum <- sum (xmax ) 
avgMaximum <- totalMaximum / length (xmax)
avgMinimum <- totalMinimum / length (xmin ) 

(d) Use the subsetting operator [ ] to select those elements of xmin where
the minimum temperature was below its weekly average.

xmin < avgMinimum

## NOTE: this works but is inefficient
xmin [ c (2,4,6,7)]

## Better:
xmin[xmin < avgMinimum]

(e) Use the subsetting operator [ ] to select those elements of xmin where
the maximal temperature was above its weekly average.

## Wrong condition
xmin > avgMaximum
xmin [ c (3)]

## Correct:
xmin[xmax > avgMaximum]

(f) Assign names to the elements of xmin and xmax.

## Nice
dayNames <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmin) <- dayNames
names(xmax) <- dayNames

(g) Combine xmin and xmax to a data.frame called temperatures.

temperatures= data.frame (dayNames,xmin, xmax )

(h) Create a new column in xminFahrenheit that equals the minimum
temperature converted to a Fahrenheit scale.

## It is not clear how xminFahrenheit is calculated!

xminFahrenheit <- c( 73.4, 68.9, 82.76, 68.54, 72.32, 62.96, 64.76 )
temperatures [["xminFahrenheit"]] <- xminFahrenheit

(i) Create a new data.frame that contains only the temperature measurements in Fahrenheit.

## Same comment as above
xmaxFahrenheit <- c(77, 72.32, 88.16, 81.14, 83.12, 68.36, 75.38)
temperatureFahrenheit = data.frame (  xminFahrenheit, xmaxFahrenheit)

(j) Create a new data.frame that contains only the temperature measurements
in Fahrenheit for the first five days of the week. 
i) By explicitly including the first five days. 

xminFahrenheit1 <- c(73.4, 68.9, 82.76, 68.54, 72.32)
xmaxFahrenheit1 <-c (77, 72.32, 88.16, 81.14, 83.12)
dayNames1 <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18')
temperatureFahrenheit1 <- data.frame (dayNames1, xminFahrenheit1, xmaxFahrenheit1 )

ii) By excluding the last two days. 

temperatureFahrenheit <- temperatureFahrenheit[-c( 6,7), ]


