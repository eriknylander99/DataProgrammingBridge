Avec<-c(1,-1,-1,-1)
(A <- matrix(Avec,ncol=2))

Bvec<-c(2,-1,3,-2)
(B<-matrix(Bvec,ncol=2))

Cvec<-c(1,0,0,0)
(C<-matrix(Cvec,ncol=2))

Dvec<-c(0,1,0,1,0,0,0,0,1)
(D<-matrix(Dvec,ncol=3))

Evec<-c(1,0,0,0,0,1,0,1,0)
(E<-matrix(Evec,ncol=3))

#Idempotent Matrices: M is idempotent iff MM = M
#We check our 5 matrices to see which ones are
#Idempotent
A
(A%*%A) #A is not Idempotent

B
(B%*%B) #B is not Idempotent

C
(C%*%C) #C is Idempotent

D
(D%*%D) #D is not Idempotent

E
(E%*%E) #E is not Idempotent

#Orthogonal Matrices: M is Orthogonal if Qtranspose Q = I
#and is QQtranspose = I. We check our 5 matrices to see which
#ones are Orthogonal
(A%*%t(A))
(t(A)%*%(A)) #A is not Orthogonal

(B%*%t(B))
(t(B)%*%B) #B is not Orthogonal

(C%*%t(C))
(t(C)%*%C) #C is not Orthogonal

(D%*%t(D))
(t(D)%*%D) #D is Orthogonal

(E%*%t(E))
(t(E)%*%E) #E is orthogonal

#Creating data types to be placed in a list
vec<-c(1:10)

dfcar<-c("Focus","Sentra","Civic","Corolla")
dfcost<-c(20500,19500,21500,2100)
dfmillage<-c(34,32.5,33,34.5)
cars<-data.frame(Cars=dfcar,Cost=dfcost,MPG=dfmillage)

ray<-array(1:12,dim=c(2,3,2))

lst<-list(20:50)

finalst<-list(Vector=vec,Matrix=A,Array=ray,DataFrame=cars,List=lst)
