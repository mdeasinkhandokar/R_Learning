#Condition####

x<-10
if(x>5){
  print ("x")
}else{
  print("Small")
}


score <-40
if(score>=90){
  print("Advance level")
}else if(score >=70){
  print("Intermediate level")

}else if(score>=50){
  print("beginer level")

}else{
  print ("Try again")
}

#For Loop ####
for (i in 1:5){
  print(p1aste("Iteration", i))
}

#repeat loop (with break)
i<-1
repeat{
  print (i)
  i<- i+1
  if(i>5)break
}

#next statement(skip to next iteration )
for(i in 1:5){
  if(i==3)next
  print(i)
}

#mean()
numbers <-c(10,20,30,40);
mean(numbers)

#User-Define Function
number<- function (a,b, c){
   return((a+b+c)/3) 
  
  
}
number(20,2,3)

is_even<-function(x){
  if(x%%2==0){
    return (T)
  }else{
    return(F)
  }
}
is_even(9)

#Function with default parameter
greet<-function (name ="User"){
  paste("Hello", name)
  
}
greet()




  
  













