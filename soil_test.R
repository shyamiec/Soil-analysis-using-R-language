getwd()
setwd("F:/project")

dataset <- read.csv("train_soil.csv")
head(dataset)
df1 <- as.data.frame(dataset)
str(dataset)
y=df1$Average.nutrient.power..
x1=df1$pH
x2=df1$CEC
x3=df1$phosphorous
x4=df1$potassium
x5=df1$calcium
x6=df1$magnessium
x7=df1$nitrogen
x8=df1$lime_index
model1 <- lm(y~x1+x2+x3+x4+x5+x6+x7+x8,data = df1)
plot(model1)
summary(model1)
#plot(model1)


test_data <- read.csv("soil.csv",as.is = 1,stringsAsFactors = FALSE)
summary(test_data)
dim(test_data)
head(test_data)
str(test_data)
names(dataset)
#x <-as.vector(as.numeric(test_data[3:6,1]))
#x

x1 = as.numeric(test_data[2:975,4])
x2=as.numeric(test_data[2:975,5])
x3= as.integer(test_data[2:975,6])
x4= as.integer(test_data[2:975,7])
x5= as.integer(test_data[2:975,8])
x6= as.integer(test_data[2:975,9])
x7= as.integer(test_data[2:975,10])
x8=  as.integer(test_data[2:975,11])

class(x1)
df <- data.frame(x1,x2,x3,x4,x5,x6,x7,x8)
print(df)
str(df)

pred = predict(model1,newdata = df)
nut <- sum(pred)/nrow(test_data)
print(nut)

