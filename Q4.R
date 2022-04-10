#Q4
#Solve i
s=rolldie(2,makespace = TRUE);

#solve ii
A=subset(s,X1==X2)
prob(A)

#solve iii
B=subset(s,X1+X2>=4)
prob(B)

#solve iv
prob(A,given=B)
