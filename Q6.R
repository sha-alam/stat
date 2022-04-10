#i
n=5
p=0.45
x=0:5
px=choose(n,x)*p^x*(1-p)^(n-x)
barplot(px,names=x,xlab = "Outcomes",ylab = "Probability")

#ii
pbinom(2,5,0.45)
#iii
1-pbinom(2,5,0.45)
#iv
dbinom(2,5,0.45)
#v
dbinom(2,5,0.45)+dbinom(3,5,0.45)

#vi
qx=cumsum(px)
plot(x,qx,type="s",xlab="Outcome",ylab="Probability")
