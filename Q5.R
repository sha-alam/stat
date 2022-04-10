library("prob")
#Q5 Ans
#solve i
s=rolldie(3,makespace = TRUE)
sr=addrv(s,X=X1+X2-X3)
tail(sr)

#solve ii
prob(sr,X>4)

#solve iii
sm=addrv(s,FUN=max,invars = c("X1","X2","X3"),name = "Y")
head(sm)
