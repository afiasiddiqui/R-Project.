----
Tittle: "Introduction to R Programming"
Author: "Afia Siddiqui"
Date:   "4/6/2022"
Output:
----

### SECTION-01 Data Types And Operations P-1  
### QUESTION-01
  
x <- c("A", "f", "i", "a")
x
y <-c(x, "Afia")
y
z <- 100:120
z
m <- matrix(2:10, nrow=3, ncol=3)
m
names= "Afia" 
### END


### QUESTION-02

emp_status <- factor(c("Employed","Unemployed","Unemployed","Employed","Selfemployed","Selfemployed"))
              levels=c("Employed","Unemployed","Selfemployed")
emp_status
table(emp_status)
unclass(emp_status)
### END


### QUESTION-03

bank_customers <- data.frame(CustomerId=c("Alice", "nancy", "Fernando", "Louis", "Danie"), 
                             Hasaccount=c("No", "Yes", "Yes", "Yes", NA),
                             Totalbalance=c(NA, "USD 10,000", "USD 100", "USD 2,000", NA))
bank_customers
nrow(bank_customers)
ncol(bank_customers)
row.names(bank_customers) <- c("a", "b", "c", "d", "e")
bank_customers
### END


### SECTION-02 Control Structures
### QUESTION-01

for(x in 1:100) {
  if(x %% 2)
    print(x)
}
### END


var <- 1
while(var < 10) {
  print(var)
  var <- var + 1
}
### END

### QUESTION-02

mat_1 <- matrix(1:9, nrow=3, ncol=3)
    for(a in seq_len(nrow(mat_1))) {
      for(b in seq_len(ncol(mat_1))){
        print(mat_1 [a,b])
      }
    }
### END


### SECTION-04   Vectorized Operations
### QUESTION-01

matrix_1 <-matrix(1:6, nrow = 2, ncol = 3)
matrix_2 <-matrix(rep(10, 6), nrow = 3, ncol = 2)
matrix_1
matrix_2
matrix_1 * matrix_2               ##Element wise multiplication
matrix_1 %*% matrix_2             ##True matrix multiplication

### END

my_mat <- matrix(1:4, 2,2)
my_mat

### END


### SECTION-05 Date And Time In R
### QUESTION-01


curr_time <- Sys.time()
curr_time
curr_date <- Sys.Date()
curr_date
x <- c(curr_time, curr_date)
p <- as.POSIXlt(x)
p
p$wday
p$year
p$sec
p$hour

### END


### QUESTION-02

x <- Sys.time()
x
x <- as.Date("2022-04-01")
y <- as.Date("2022-04-10")
x-y                      
x <- as.POSIXlt("2022-04-09 01:00:00")
y <- as.POSIXlt("2022-04-09 06:00:00", tz = "GMT")
x-y

### END


### SECTION-06 Loop Functions
### QUESTION-01


numbers <- list(a <- 100:150, b = rnorm(10))
lapply(numbers, mean)
sapply(numbers, mean)
numbers <-  matrix(rnorm(200), 20, 10)
apply(numbers, 1, mean)
apply(numbers, 2, mean)
numbers <- c (rnorm(125), rnorm(125), rnorm(125), rnorm(125), rnorm(125))
f <- gl (5, 125)
f
tapply(numbers, f, mean)

### END


### QUESTION-02

m <- matrix(1:16, nrow = 4, ncol = 4)
m
n1 <- rowMeans(m)
n1
n2 <- colMeans(m)
n2 

### END


### SECTION-07 Data Split
### QUESTION-01

split_data <- split()
