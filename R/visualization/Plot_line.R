# Plot
library(ggplot2)

dat1 <- data.frame('x'=seq(1,100,1),'y'=rnorm(100,0,1),label=rep('1tier',100))
dat2 <- data.frame('x'=seq(1,100,1),'y'=rnorm(100,1,1),label=rep('2tier',100))

ggplot <- ggplot(dat,aes(x=x,y=y,group=label,colour=label)) + # Loading data, set x,y, group, color
          geom_line()                # Drawing line layer

ggplot
