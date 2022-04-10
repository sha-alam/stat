#Q4
#Solve i
samplespace=rolldie(2)
s=rolldie(2,makespace = TRUE);

#solve ii
A=subset(s,X1==X2)
prob(A)

#solve iii
B=subset(s,X1+X2>=4)
prob(B)

#solve iv
prob(A,given=B)
