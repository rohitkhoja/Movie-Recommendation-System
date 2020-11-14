

library(readxl)
library(Metrics)

## DATA PREPARATION -- TRAINING DATA
sampled_train_assignment4_1_ <- read_excel("C:/Users/rohit khoja/Downloads/sampled_train_assignment4 (1).xls")
View(sampled_train_assignment4_1_)
## DATA PREPARATION -- TESTING DATA
sampled_test_assignment4_1_ <- read_excel("C:/Users/rohit khoja/Downloads/sampled_test_assignment4 (1).xls")
View(sampled_test_assignment4_1_)
scatter.smooth(x=sampled_train_assignment4_1_$last, y=sampled_train_assignment4_1_$rating, main="last ~ rating")
cor(sampled_train_assignment4_1_$MAvg, sampled_train_assignment4_1_$rating)
cor(sampled_train_assignment4_1_$last, sampled_train_assignment4_1_$rating)


#regression

linearMod1 <- lm(rating ~ last + MAvg, data=sampled_train_assignment4_1_)  # build linear regression model on full data
print(linearMod)
summary(linearMod1)
predictions <-  predict(linearMod1,sampled_test_assignment4_1_)
rmse(sampled_test_assignment4_1_$rating, predictions)






