###repetative
rep_vec <- rep(c(1,2,3),times =3)
print (rep_vec)c

mat <- matrix(1:9 ,nrow=3, ncol=3)
print(mat)

rownames(mat) <- c("Row1","Row2","Row3")
colnames(mat) <-c("Col1","Col2","Col2")
print(mat)


mat <-matrix (1:9, nrow =3)

mat1 <- matrix(1:4, nrow =2)
mat2 <-matrix(5:8 , nrow=2)
sum_mat<-mat1+mat2
print(sum_mat)
sub_mat<-mat1-mat2
print(sub_mat)
mul_matrix<-mat1*mat2
print(mul_matrix)

dot_prod_mat <- mat1 %% mat2
print(dot_prod_mat)

arr <- array(1:18 ,dim = c(3,3,2))
print (arr)
print (arr[2,1,1])



df <- data.frame(
  ID = c(101,102,103,104),
  Name=c("Alic","Bob","charly","David"),
  Age =c(23,24,26,29),
  Score=c(89,87,67,90),
  Passed=c(T,F,T,T)
  
  
  
  
  
  
)
print(df)






