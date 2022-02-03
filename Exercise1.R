EPI2010 = read.csv(file.choose(), header = T)

View(EPI2010)
attach(EPI2010)
fix(EPI_data)
EPI2010$DALY
tf <- is.na(EPI2010)
E <- EPI2010$DALY[!tf]
E
summary(EPI2010$DALY)
fivenum(EPI2010$DALY,na.rm=TRUE)
stem(EPI2010$DALY) 
hist(EPI2010$DALY)
hist(EPI2010$DALY, seq(0., 92., 1.0), prob=TRUE)
lines(density(EPI2010$DALY,na.rm=TRUE,bw=1.)) 
lines(density(EPI2010$DALY,na.rm=TRUE,bw="SJ")) 
rug(EPI2010$DALY) 
plot(ecdf(EPI2010$DALY), do.points=FALSE, verticals=TRUE) 
par(pty="s")
qqnorm(EPI2010$DALY); qqline(EPI2010$DALY)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

EPI2010$WATER_H
tf <- is.na(EPI2010)
E <- EPI2010$WATER_H[!tf]
E
summary(EPI2010$WATER_H)
fivenum(EPI2010$WATER_H,na.rm=TRUE)
stem(EPI2010$WATER_H) 
hist(EPI2010$WATER_H)
hist(EPI2010$WATER_H, seq(0., 92., 1.0), prob=TRUE)
lines(density(EPI2010$WATER_H,na.rm=TRUE,bw=1.)) 
lines(density(EPI2010$WATER_H,na.rm=TRUE,bw="SJ")) 
rug(EPI2010$WATER_H) 
plot(ecdf(EPI2010$WATER_H), do.points=FALSE, verticals=TRUE) 
par(pty="s")
qqnorm(EPI2010$WATER_H); qqline(EPI2010$WATER_H)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)
boxplot(EPI,DALY)
qqplot(EPI,DALY)