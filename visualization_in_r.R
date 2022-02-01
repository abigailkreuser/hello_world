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

