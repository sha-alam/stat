A<-c(2.5,2.5,3.0,3.5,3.5,4.0,3.5,3.5)
B<-c(2.5,3.0,4.0,4.0,4.0,2.0,2.5,4.0)
S1<-sd(A)
M1<-mean(A)
CV.A<-(S1/M1)*100
S2<-sd(B)
M2<-mean(B)
CV.B<-(S2*100)/M2
#student A is better 