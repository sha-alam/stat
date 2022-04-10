
###############problem-1#################

Religion<-c("Muslim","Hindu","Muslim","Hindu","Muslim","Christian","Muslim","Hindu","Muslim","Others","Hindu","Christian","Others","Muslim","Hindu","Christian","Muslim","Others","Muslim","Others")
summary(Religion)
fre<-table(Religion)
cbind(fre)

cols<-c("red","blue","green","yellow")
l<-c("christian","Hindu","Muslim","Others")
pie(fre,main="pie_chart",col=cols,c(label))
label<-paste(l,"-",p,"%",sep="")
p=round(fre/sum(fre)*100)
legend("topright",c(l),fill=cols)

edu<-c("Primary","Graduate","Illiterate","Graduate","Primary","Graduate","Illiterate","Primary","Others","Higher","Primary","Graduate","Second","Second","Higher","Others","Primary","Illiterate","Second","Higher")
n<-table(edu)
cbind(n)

barplot(n,xlab="edu",ylab="Frequency",main="barplot")

###########problem-2##############

students<-c(77,44,49,33,38,33,76,55,68,39,44,59,36,55,47,61,53,32,65,51,29,41,32,45,83,58,73,47,40,26,59,43,66,44,41,25,39,72,37,55,34,47,66,53,55,58,49,45,61,41,55,92,83,77,45,62,45,36,78,48,54,50,51,66,80,73,57,61,56,50,45,82,71,48,46,69,38,72,56,64,38,45,51,44,41,68,45,92,43,12,37,16,44,57,63,71,40,64,57,51)
stu<-sort(students)
length(students)
mean(stu)
median(stu)
mode<-unique(stu)
mode[which.max(tabulate(match(stu,mode)))]
v<-var(stu)
s<-sqrt(v)
summary(stu)

max(stu)
min(stu)
quantile(stu,.25)
quantile(stu,.50)
quantile(stu,.75)


length(stu)
breaks<-seq(12,100,by=12)
stu.freq<-table(cut(stu,breaks,left=FALSE,right=FALSE))
cbind(stu.freq)
hist(stu,breaks,xlab="class Interval",ylab="Frequency",main="Histogram",right=FALSE)
(There is another hist method that run smoothly)

par(mfrow=c(1,2))
cumulative.freq<-cumsum(stu.freq)
cum.freq<-c(0,cumulative.freq)
plot(breaks,cum.freq,main="Ogive curve",xlab="Class Interval",ylab="Frequency")
lines(breaks,cum.freq)

##########problem-3###########
rich<-c(89,89,87,86,85,83,83,82,81,80,78,78,77,76,73,73,73,72,69,69,68,67,66,66,65,65,64,63,61,61,60,59,58,57,56,54,54,53,53,51,51,49,47,46,44,43,42,36,2000)
sort(rich)
length(rich)
sd(rich)
mean(rich)
mean1<-sum(rich)/length(rich)
median(rich)
mode1<-unique(rich)
mode1[which.max(tabulate(match(rich,mode1)))]
rich1<-c(89,89,87,86,85,83,83,82,81,80,78,78,77,76,73,73,73,72,69,69,68,67,66,66,65,65,64,63,61,61,60,59,58,57,56,54,54,53,53,51,51,49,47,46,44,43,42,36,35)
sort(rich1)
length(rich1)
mean2<-mean(rich1)  
median2<-median(rich1)
mode2<-unique(rich1)
mode2[which.max(tabulate(match(rich1,mode2)))]
summary(rich1)
max(rich1)

quantile(rich1,.25)
quantile(rich1,.50)
quantile(rich1,.75)
breaks<-seq(35,98,by=9)
rich1.freq<-table(cut(rich1,breaks,left=FALSE,right=FALSE))
cbind(rich1.freq)
rel.freq<-rich1.freq/sum(rich1.freq)
hist(rel.freq)
hist(rel.freq,xlab='Class',ylab='frequency',main='HISTofR.F',breaks,right=FALSE)
(here is the problem)

###################problem-4##################
A<-c(2.5,2.5,3.0,3.5,3.5,4.0,3.5,3.5)
B<-c(2.5,3.0,4.0,4.0,4.0,2.0,2.5,4.0)
S1<-sd(A)
M1<-mean(A)
CV.A<-(S1/M1)*100
S2<-sd(B)
M2<-mean(B)
CV.B<-(S2*100)/M2


#####################Problem-5##########################

x <- seq(0,150,by = 1)
y <- dbinom(x,150,0.5)
par(mfrow=c(1,2))
plot(x,y,type='l')
plot(x,dpois(x,lambda=75),type='l')


####################problrm-6############
 
x<-seq(from=-4,to=+4,length.out=100)
plot(x,dnorm(x),type='l')
z<-c(-4:+4)
p<-exp(-0.5*(z)^2)/sqrt(2*3.1416)
cbind(p)
exp(-0.5*(-3.9)^2)/sqrt(2*3.1416)
exp(-0.5*(-2)^2)/sqrt(2*3.1416)
exp(-0.5*(-1)^2)/sqrt(2*3.1416)
exp(-0.5*(0)^2)/sqrt(2*3.1416)
exp(-0.5*(1)^2)/sqrt(2*3.1416)
exp(-0.5*(2)^2)/sqrt(2*3.1416)
exp(-0.5*(3.9)^2)/sqrt(2*3.1416)
exp(-0.5*(4)^2)/sqrt(2*3.1416)


exp(-0.5*(3)^2)/sqrt(2*3.1416)
exp(-0.5*(2)^2)/sqrt(2*3.1416)


pbinom(850)


############lab-2
maturity<-c(70,64,99,55,64,89,87,65,62,38,67,70,60,69,78,39,75,56,71,51,99,68,95,86,57,53,47,50,55,81,80,98,51,36,63,66,85,79,83,70)
breaks<-seq(30,100,by=10)
maturity.table<-table(cut(maturity,breaks,left=FALSE,right=FALSE))
cbind(maturity.table)
summary(maturity)
modex<-unique(maturity)
z<-modex[which.max(tabulate(match(maturity,modex)))]
quantile(maturity,c(.25,.50,.75))
meanDeviation<-sum(abs(maturity-mean(maturity)))/length(maturity)
meanDeviation2<-sum(abs(maturity-median(maturity)))/length(maturity)
meanDeviation3<-sum(abs(maturity-z))/length(maturity)

meu3<-sum((maturity-mean(maturity))^3)/length(maturity)
meu2<-sum((maturity-mean(maturity))^2)/length(maturity)
skewness<-((meu3)^2)/((meu2)^3)
sk<-meu3/((meu2)^(3/2))
meu4<-sum((maturity-mean(maturity))^4)/length(maturity)
Kurtosis<-meu4/((meu2)^2)
library(prob)
s<-rolldie(3,makespace = TRUE)
SR<-addrv(s,X=X1+X2-X3)
prob(SR)
n<-5
p<-0.45
X<-0:5
px<-choose(n,X)*p^X*(1-p)^(n-X)
