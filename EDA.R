install.packages("car")
library(car)


data <- read.csv('forVIF.csv',header=T, stringsAsFactors =  TRUE)
head(data)                      


model <- lm(labeling ~ ., data = data)  # 다중회귀분석 모델 적합
alias(model) #-1이면 다중공선성 있음, rain과 snow빼기 
