#Q2 Start
#i
students=c(77,44,49,33,38,33,76,55,68,39,44,59,36,55,47,61,53,32,65,51,29,41,32,45,83,58,73,47,40,26,59,43,66,44,41,25,39,72,37,55,34,47,66,53,55,58,49,45,61,41,55,92,83,77,45,62,45,36,78,48,54,50,51,66,80,73,57,61,56,50,45,82,71,48,46,69,38,72,56,64,38,45,51,44,41,68,45,92,43,12,37,16,44,57,63,71,40,64,57,51)
students=sort(students)

meanstu=mean(students)
median(students)
modestu=unique(students)
modestu[which.max(table(students))]
var(students)
varstu=sum((students-mean(students))^2)/(length(students)-1)
sdstu=sqrt(varstu)
sd(students)
#ii
max(students)
min(students)
quantile(students)
#iii
range(students)
breaks=seq(12,100,by=12)
freq.stu=table(cut(students,breaks,right=FALSE))
cbind(freq.stu)
#iv
hist(freq.stu)
cumulative_freq=cumsum(freq.stu)
cumul.freq=c(0,cumulative_freq)
plot(breaks,cumul.freq,lines(breaks,cumul.freq))
