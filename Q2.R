#i
maturity=c(70,64,99,55,64,89,87,65,62,38,67,70,60,69,78,39,75,56,71,51,99,68,95,86,57,53,47,50,55,81,80,98,51,36,63,66,85,79,83,70)
length(maturity)
range(maturity)
interval=seq(30,100,by=10)
freqMaturity=table(cut(maturity,breaks = interval, right = FALSE))
cbind(freqMaturity)

#ii
hist(maturity,xlab = "Maturity",breaks = interval,ylab = "Frequency")

#iii
mean(maturity)
meanx=sum(maturity)/length(maturity)

var(maturity)
varx=sum((maturity-mean(maturity))^2)/(length(maturity)-1)

sd(maturity)
sd=sqrt(varx)

quantile(maturity,c(0.25,0.50,0.75))

mode(maturity)
modex=which.max(table(maturity))

boxplot(maturity)

summary(maturity)


#iv

md.mean=sum(abs(maturity-mean(maturity)))/length(maturity)
md.median=sum(abs(maturity-median(maturity)))/length(maturity)

modeMeasure=which.max(table(maturity))
#for -70
md.mode=sum(abs(maturity-70))/length(maturity)
#for -20
md.mode2=sum(abs(maturity-20))/length(maturity)



#v
cv=(sd(maturity)/mean(maturity))*100
meu2=sum((maturity-mean(maturity))^2)/length(maturity)
meu3=sum((maturity-mean(maturity))^3)/length(maturity)
meu4=sum((maturity-mean(maturity))^4)/length(maturity)
sk=(((meu3)^2)/((meu2)^3))

skewness(maturity)
ku=(meu4)/(meu2)^2
kurtosis(maturity)
