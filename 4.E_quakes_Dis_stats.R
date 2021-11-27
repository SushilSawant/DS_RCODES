#Download the dataset
e_quakes = datasets::quakes

# top 10 and bottom 10 rows  
head(e_quakes,10)
tail(e_quakes,10)

#Columns
e_quakes[,c(1,3)]

#Remove columnslike 5
df1=e_quakes[,-5]

#Summary
summary(e_quakes[,1])

#Specific column
e_quakes$long

summary(e_quakes$long)

#Summary of the data
summary(e_quakes)

#Grahical Representation
plot(e_quakes$long)

plot(e_quakes$long,e_quakes$depth,type='p')

#Plot points and lines
plot(e_quakes$long,type='l')

plot(e_quakes$long,type='b')

plot(e_quakes$long,xlab='Long concentration',
     ylab='number of instance',main='observation by long',col='Blue')

#Ploting Horizontal bar graph
barplot(e_quakes$long, main = 'long Concenteration',
        ylab = 'long levels', col= 'blue',horiz = F,axes=T)

#Histogram

hist(e_quakes$lat)

hist(e_quakes$depth, 
     main = 'depth of quake in scale',
     xlab = 'depth of quakes', col='blue')

#Single boxplot
boxplot(e_quakes$lat,main='Boxplot')

boxplot.stats(e_quakes$lat)$out


# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')



#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$lon)
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
plot(e_quakes$lat, type= "l")
barplot(e_quakes$lat, main = 'lat of e_quakes',
        xlab = 'lat scale', col='green',horiz = TRUE)
hist(e_quakes$lat.R)
boxplot(e_quakes$lat.R)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

#Variance
var(e_quakes$lat) # changes fo eah point from mean

#Standard deviaion
sd(e_quakes$lat,na.rm = T) # removing missing values

#Skewness
skewness(e_quakes$lat)

#Kurtosis
kurtosis(e_quakes$lat)
