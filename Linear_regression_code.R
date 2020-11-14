

library(readxl)
library(Metrics)

## DATA PREPARATION -- TRAINING DATA
sampled_train_assignment4 <- read_excel("C:/Users/rohit khoja/Downloads/sampled_train_assignment4.xls")
View(sampled_train_assignment4)
sampled_test_assignment4 <- read_excel("C:/Users/rohit khoja/Downloads/sampled_test_assignment4.xls")
View(sampled_test_assignment4)
scatter.smooth(x=sampled_train_assignment4$Avg, y=sampled_train_assignment4$rating, main="Avg ~ rating")
cor(sampled_train_assignment4$Avg, sampled_train_assignment4$rating)



#regression

linearMod <- lm(rating ~ Avg, data=sampled_train_assignment4)  # build linear regression model on full data
print(linearMod)
summary(linearMod)
predictions <-  predict(linearMod,sampled_test_assignment4)
rmse(sampled_test_assignment4$rating, predictions)






