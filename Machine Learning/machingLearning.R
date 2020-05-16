
#=================
# Machine Learning
# 기계 학습
#=================

# EDA > Analysis of the features > Finding any relation or trends considering multiple features.
# Feature Engineering and Data cleaning > Adding any few feature > Removing redundant features > converting feature into suitable form for modeling
# Predictive Modeling > Running Basic Algorithms > Corss Validation > Ensembling > important features extraction



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

# Reference
# RPubs  / https://rpubs.com/BBSSDDSD/simple_h2o_intro_usage
# Gravity / https://statkclee.github.io/model/model-h2o-automl.html
# Must Learning with R / https://wikidocs.net/73507