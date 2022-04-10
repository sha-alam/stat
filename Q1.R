blood = c("O", "A", "B", "AB", "O","A", "O", "B", "AB", "B", "O", "A", "A", "B", "O", "B", "A", "AB", "O", "AB", "A", "O", "O", "A", "B", "B", "A", "O", "AB", "O", "A", "O", "O", "A", "B", "O", "O", "B", "AB", "B")
#i
freq=table(blood)
relativeFreq=freq/sum(freq)
#ii
barplot(freq,xlab = "Blood Group",ylab = "Frequency",main="Blood Summary")
color=c("green","gray","black","red")
pie(freq,col = color,main = "Blood type")
lebel=c("A,","B","AB","O")
legend("topright",c(lebel),cex = 1,fill = color)

#iii comment
