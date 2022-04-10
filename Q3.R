
install.packages("prob")
#Class work
#Question 3
#Solve i
s=tosscoin(3)
s

#Solve ii
A=subset(s,toss1=='H')
B=subset(s,toss3=='H')

#Solve iii
intersect(A,B)
union(A,B);

#Solve iv
s=tosscoin(3,makespace = TRUE)
A=subset(s,toss1=='H')
B=subset(s,toss3=='H')

#Solve v
prob(A)

