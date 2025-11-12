#Create DataFrame ####
friend_data <- data.frame(
  friend_id = c(1:4),
  friend_name = c("Easin","Sanim",
                  "Shafin","Alom"),
  friend_city= c("Dinajpur", "Brisha","Dhaka","xx"),
  friend_bool= c(T,F,F,T),
  stringsAsFactors = FALSE
  
  
)
print(friend_data)

#Structure of the Data Frame
print(str(friend_data))

#Summary of the Data Frame 
print(summary(friend_data))


#Extract Data ####
result<-data.frame(friend_data $friend_name)
print(result)

#Using [ , ] (comma separates rows and columns)
friend_data[,"friend_bool"]

#Extracting by row number
friend_data[1,]

#Get rows 1 to 3
friend_data[1:3,]

#Extracting specific row and column
friend_data[2,"friend_city"]

#Extracting multiple columns
friend_data[,c("friend_name","friend_city")]

#Extracting using conditions (filters)
#friend_data[friend.data$friend_id>2]

#Friends from a specific name
friend_data[friend_data$friend_city=="Dhaka",]
