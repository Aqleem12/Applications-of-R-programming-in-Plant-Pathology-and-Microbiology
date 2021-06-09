#R-objects or data structures 

Vectors

Lists

Matrices

Arrays

Factors

#Data Frames

#Datatypes on which the R-objects are built
Numeric, Integer, Character, Factor, and Logical.
 #Numeric
#Numbers that have a decimal value or are a fraction in nature (non-decimal)
num <- 1.2
print(num)
#You can check the data type of a using keyword class().
class(num)

#Integer
#Integers are numeric data without decimals or no decimal or fractional part
#zero (0), 
#the positive natural numbers (1, 2, 3, ...), also called whole numbers or counting numbers, 
#the negative integers, i.e., ???1, ???2, ???3, ...).

#let's say you are interested in the number of pets.
#This variable is a discrete variable.

int <- as.integer(2.2)
print(int)
class(int)

#Character: As the name suggests, it can be a letter or a combination of letters enclosed by quotes is considered as a character data type by R. 
#It can be alphabets or numbers.

char <- "datacamp"
print(char)
class(char)
#Logical: A variable that can have a value of True and False like a boolean is called a logical variable.
log_true <- TRUE
print(log_true)
class(log_true)

#Factor


fac <- factor(c("good", "bad", "ugly","good", "bad", "ugly"))

print(fac)
levels(fac)


#Levels: bad good ugly

class(fac)

nlevels(fac)

#In R, you can check all the variables or objects that have been defined by you in the working environment by using keyword the ls(), as shown below.
ls()





#Vectors


#For example: c(2, 3, 5), this is a vector containing 3 numeric values 2,3 and 5. 

#And here is a vector of logical values.

c(TRUE, FALSE, TRUE, FALSE, FALSE) 

#If you want the numbers of members in a vector use length function
length(c("aa", "bb", "cc", "dd", "ee")) 


#There are several types of vectors, such as :
  
  #1) Numeric vectors, containing all kind of numbers.
#2) Integer vectors, containing integer values. (An integer vector is a special kind of numeric vector.)
#3) Logical vectors, containing logical values (TRUE and/or FALSE)
#4) Character vectors, containing text
#5) Datetime vectors, containing dates and times in different formats
#6) Factors, a special type of vector to work with categories.

# Combining vectors

#The c() function stands for concatenate. 
#It doesn't create vectors - it just combines them.

fruits <- c("Apple", "oranges", "banana")
vegetables <- c("cabbage", "spinach", "tomatoes")
all_basket_items <- c(fruits, vegetables)
all_basket_items


a <- c(1,2,5.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector

a[c(2,4)] # 2nd and 4th elements of vector

#Repeating Vectors
rep(c(0, 0, 7), times = 3)
rep(c(2, 4, 2), each = 3)
rep(c(0, 7), times = c(4,2))
#how long it should be
rep(1:3,length.out=7)

#Changing values in a vector

fruits[2] <- "strawberries"
fruits


#Matrices

#All columns in a matrix must have the same mode(numeric, character, etc.) and the same length. The general format is
#matrices are capable of holding two-dimensional information inside it.
mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE,
                   dimnames=list(char_vector_rownames, char_vector_colnames))

#byrow=TRUE indicates that the matrix should be filled by rows. byrow=FALSE indicates that the matrix should be filled by columns (the default). 
#dimnames provides optional labels for the columns and rows.

# generates 5 x 4 numeric matrix
y<-matrix(1:20, nrow=5,ncol=4)

# another example
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                   dimnames=list(rnames, cnames))

#Identify rows, columns or elements using subscripts.

x[,4] # 4th column of matrix
x[3,] # 3rd row of matrix
x[2:4,1:3] # rows 2,3,4 of columns 1,2,3

#Arrays

#Create two vectors of different lengths.
vector1 <- c(3,7,5)
vector2 <- c(9,10,11,12,13,14)

# Take these vectors as input to the array.

result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)


#Data Frames


d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(d,e,f)
names(mydata) <- c("ID","Color","Passed") # variable names

#There are a variety of ways to identify the elements of a data frame .

myframe[3:5] # columns 3,4,5 of data frame
myframe[c("ID","Age")] # columns ID and Age from data frame
myframe$X1 # variable x1 in the data frame

#Lists

#Let's understand the concept of lists with a quick example that will have three different types of data types stored in one list.
# example of a list with 4 components -
# a string, a numeric vector, a matrix, and a scaler
w <- list(name="Fred", mynumbers=a, mymatrix=y, age=5.3)

# example of a list containing two lists
v <- c(list1,list2)

#Identify elements of a list using the [[]] convention.

mylist[[2]] # 2nd component of the list
mylist[["mynumbers"]] # component named mynumbers in list

#Factors

# variable gender with 20 "male" entries and
# 30 "female" entries
gender <- c(rep("male",20), rep("female", 30))
gender <- factor(gender)
# stores gender as 20 1s and 30 2s and associates
# 1=female, 2=male internally (alphabetically)
# R now treats gender as a nominal variable
summary(gender)

#An ordered factor is used to represent an ordinal variable.
# variable rating coded as "large", "medium", "small'
rating <- ordered(rating)
# recodes rating to 1,2,3 and associates
# 1=large, 2=medium, 3=small internally
# R now treats rating as ordinal



attributes(airquality)
airquality
attributes(my.array)
z = seq(1,10,.5)
a = c(1,2,3,4,5,6,7,8,9,10,11)
c
a
length(a)
a = c(1:20)
length(a)
gender = c(rep(1,6), rep(2,6))
gender
as.factor(gender)
gender = as.factor(gender)

gender = c(rep(male",6), rep("female",6))

gender = c(rep("male",6), rep("female",6))

gender = as.factor(gender)
