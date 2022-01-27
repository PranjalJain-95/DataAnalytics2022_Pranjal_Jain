EPI2010 = read.csv(file.choose(), header = T)

View(EPI2010)
attach(EPI2010)
fix(EPI_data)
EPI2010$EPI
tf <- is.na(EPI2010)
E <- EPI2010$EPI[!tf]
E
summary(EPI2010$EPI)
fivenum(EPI2010$EPI,na.rm=TRUE)
stem(EPI2010$EPI) 
hist(EPI2010$EPI)
hist(EPI2010$EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI2010$EPI,na.rm=TRUE,bw=1.)) 
lines(density(EPI2010$EPI,na.rm=TRUE,bw="SJ")) 
rug(EPI2010$EPI) 
plot(ecdf(EPI2010$EPI), do.points=FALSE, verticals=TRUE) 
par(pty="s")
qqnorm(EPI2010$EPI); qqline(EPI2010$EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)