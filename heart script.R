#Importing data set to R

heart <- read.csv(file.choose(), header = TRUE)

#to view the data set

View(heart)

#Now trying to plot the values of data set on graph
#Line graph

line <- heart[1:30,"chol"]
plot(line,type = "o", col= "blue", xlab = "Gender", ylab = "chol", main = "Heart details of male and female and Cholestrol level")

#pie chart
pie <- heart[1:10,"oldpeak"]
labels <- heart [1:10, "oldspeak"]
pie(pie,labels,main= "oldpeak in heart disease", col= rainbow(length(pie)))

#bar plot

Bar <- heart[1:21,"age"]
okay <- heart[1:21, "cp"]
barplot(Bar,names.arg = okay, xlab = "age", ylab = "cp", main = "Disease of heart patient ages and cp", col="Blue")

#Box plot

input_data <- heart[,c('age','cp')]
print(input_data)

boxplot(age~cp,data = heart, xlab = "No. of age", ylab = "cp", main = "Details of heart attack patient", col= c("red", "blue"))

#scatter plot

scatter <- heart[1:303,c("trtbps", "thalachh")]
print(scatter)
plot(x=heart$trtbps,y=heart$thalachh, xlab = "trtbps", ylab = "thalachh", main = "trtbps vs thalachh", col="blue")
