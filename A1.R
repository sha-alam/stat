#Q1 start
#i
Religion=c("Muslim","Hindu","Muslim","Hindu","Muslim","Christian","Muslim","Hindu","Muslim","Others","Hindu","Christian","Others","Muslim","Hindu","Christian","Muslim","Others","Muslim","Others")
freq.rel=table(Religion)
cbind(freq.rel)

edu=c("Primary","Graduate","Illiterate","Graduate","Primary","Graduate","Illiterate","Primary","Others","Higher","Primary","Graduate","Second","Second","Higher","Others","Primary","Illiterate","Second","Higher")
freq.edu=table(edu)
cbind(freq.edu)


#ii
color=c("Red","black","yellow","green")
pie(freq.rel,col = color)
legend("topright",fill = color,c("christian","Hindu","Muslim","Others"))


#iii
#edu=c("Primary","Graduate","Illiterate","Graduate","Primary","Graduate","Illiterate","Primary","Others","Higher","Primary","Graduate","Second","Second","Higher","Others","Primary","Illiterate","Second","Higher")
barplot(freq.edu,main = "Bar diagram",ylab = "Frequency",xlab = "Education Background",col = "red")
