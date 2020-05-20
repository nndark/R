
#=================
# Machine Learning
# 기계 학습
#=================

# EDA > Analysis of the features > Finding any relation or trends considering multiple features.
# Feature Engineering and Data cleaning > Adding any few feature > Removing redundant features > converting feature into suitable form for modeling
# Predictive Modeling > Running Basic Algorithms > Corss Validation > Ensembling > important features extraction

#=========
# Library
#=========

library(h20)
library(bit64)
Library(h20)
Library(h20)


# ho setting
h2o.init(nthreads = 14, max_mem_size = "16g")
h2o.init(nthreads=-1)


# 데이터 가져오기
data <- car90
# 전처리
data2 <- centralImputation(data)
# h2o
car_h2o <- as.h2o(data2[,c(1:20)])
# upload 확인
h2o.ls()
# data CHECK
summary(car_h2o)

#=========
# Modeling
#=========

train_idx <- sample(i:nrow(car_h2o), size = 0.7 * nrow(car_h2o))
train_car <- 
test_car

set.seed(777)

# 랜덤 포레스트

 
# Supervised Machine Learning
#    - regression
#    - clustering
#    - classification   
#    - dimensionality reduction

# 주의점
# Underfitting

# Overfitting
# noise(잡음에 예민해짐) 

# taining set
index <- createDataPartition(data_processed$Loan_Status, p=0.75, list=FALSE)
trainSet <- data_processed[ index,]
testSet <- data_processed[-index,]




#==========
# Reference
#==========
# RPubs  / https://rpubs.com/BBSSDDSD/simple_h2o_intro_usage
# Gravity / https://statkclee.github.io/model/model-h2o-automl.html
# Must Learning with R / https://wikidocs.net/73507
# https://rstudio-pubs-static.s3.amazonaws.com/359032_6d2fa1280f8a40a582c8a40fb46c8c15.html