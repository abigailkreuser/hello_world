# 2022-02-01 AMK

#Visualizations in R

# notes from week 4 "reading"

### BASE R

Important base graphic parameters
pch #plotting symbol (default open circle)
lty #line type, can be dashed or dotted  
lwd #line width 
col # plotting color, specified as a number, string, or hex code
colors() # gives you a list of colors by name 
xlab #character string for the x-axis label 
ylab #character string for the y-axis label 

par() #global graphic parameters all plots in an R session 
      # these paramters can be overridden when specified as arguments to specific 
      # plotting functions 
las # orientation of axis labels on the plot
bg # the background color
mar # the margin sizee 
oma # the outer margin size (default is 0 for all slides)

#for multiple plots!! 
mfrow # the number of plots per row, column (plots are filled row-wise)
mfcol # number of plots per row, column (plots are filled column-wise)

plot #make a scatterplot, or other type of plot 
lines # add lines to scatterplot, given vector x values and corresponding y values
points #add points to a plot
text #add text to a plot 
title # add annotations to x, y, axis labels title, subtitle, outer margin
mtext #add arbitrary text to margins inner or outer 
axis #adding axis ticks or labels

# 2022-02-08
# in class were learning base R visualizations 

# covid data

dat <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv")
head(dat)

#having issues connecting to the server tried to look for previous data files but could not find

plot(1:10)
par(mar=c(4, 4, 0.5, 0.5))
plot(1:10)

pdf('plot.pdf', height=4, width=4) # since its a vecotr grraphic it doesn't become pixelated when you zoom in 
numPups <-1:20
app <-runif(20)
par(mar=c(4, 4, 1, 1), mfrow = c(1,2))
plot(numPups, app,
     xlab='number of puppies',
     ylab='sanity',
     pch=16, # tad always uses pch= 16, filled in circle
     col=adjustcolor('#73000A', 0.5), # color can look up hex codes on google and then call by number 
     cex=runif(20, 1, 5), #size
     cex.lab=2, # label size
     las=1, # changes y labels to be oriented up and down
     main='') #title
    title("happy dogs", line = -1) # can have more control over title
    legend('topleft', legend = 'a', bty='n', cex=2)
    text(0, 1, 'a')
    points(1:5, runif(5), pch=16,
           col='orange')
mod <- lm(app~ numPups)
abline(mod)    

   histogram <- hist(rpois(1000,4),
         xlab="poisson values",
         ylab='', las=1, breaks=100,
         col='pink',
         main='',cex.lab=1.25,
         text(0,200,'b'))    
    
    dev.off()
    
#savinng as a pdf doesnt save it side by side 
    
    
histogram[1[1]]
    
#tad always uses pch= 16, filled in circle
    
    
    




other major plot fxns 
hist() - histogram
image() - heatmap
boxplot()
barplot()

hello

I am trying to git git to realize this is new 
1+2

hello hello 

