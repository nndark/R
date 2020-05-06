# library
library(naniar) # na package
library(imputeTS) # na 값 처리
library(VIM) # NA Visualization
library(Hmisc)
library(DMwR)
library(dplyr)

# Importing Data
data <- car90

# View NA
is.na(data)
any_na(data)
anyNA(data)
# Count NA
sum(is.na(data))
n_miss(data)

# Prop NA
mean(is.na(data))
prop_miss(data)


# summary NA
miss_var_summary(data)
miss_case_summary(data)

#==============
# Visualization
#==============


# Visualization NA
vis_miss(data)
vis_miss(data, cluster=TRUE)


gg_miss_var(data)
gg_miss_vase(data)

gg_miss_upset(data)

#===============
# NA 값 처리 하기
#===============

# Delete ALL NA
na.omit(data)
data %>% drop_na()
# 이상 데이터들이 특정 데이터인 경우가 많다 따라서 이상 데이터를 무작적 제거 시 데이터가 편향될 수 있음을 주의하자



# NA to Representative Value (mean, median, mode)

# NA to Zero
data$Mileage[is.na(data$Mileage)] <- 0

# NA to 추정 
na.interp()

# NA 대체 값 추천 받지
tsoutliers(data)

# NA 값 바로 처리해보자
edit(data)

# NA 값 바로 처리하기
tsclean()
data %>% tsclean()

#
replace_with_na()
#
replace_with_na_all()
#
replace_with_at()
#
replace_with_if()


# NA to Predict Value (rpart, knn, mice)
impute(data$)

# library
library(naniar) # na package
library(imputeTS) # na 값 처리
library(VIM) # NA Visualization
library(Hmisc)
library(DMwR)
library(dplyr)

# Importing Data
data <- car90

# Data Check
head(data)
tail(data)
glimpse(data)


# na가 있을까?
any_na(data)

# View NA
is.na(data)

# Count NA
sum(is.na(data))
n_miss(data)

# Prop NA
mean(is.na(data))
prop_miss(data)


# summary NA
miss_var_summary(data)
miss_case_summary(data)

#==============
# Visualization
#==============

# Visualization NA
vis_miss(data)
vis_miss(data, cluster=TRUE)


gg_miss_var(data)
gg_miss_vase(data)

gg_miss_upset(data)

#===============
# NA 값 처리 하기
#===============

# Delete ALL NA
na.omit(data)
data %>% drop_na()
# 이상 데이터들이 특정 데이터인 경우가 많다 따라서 이상 데이터를 무작적 제거 시 데이터가 편향될 수 있음을 주의하자



# NA to Representative Value (mean, median, mode)

# NA to Zero
data$Mileage[is.na(data$Mileage)] <- 0

# NA to 추정 
na.interp()

# NA 대체 값 추천 받지
tsoutliers(data)

# NA 값 바로 처리해보자
edit(data)

# NA 값 바로 처리하기
tsclean()
data %>% tsclean()

#
replace_with_na(data, = replace = )
help(replace_with_na)
#
data %>% replace_with_na_all()

#
replace_with_at()
#
replace_with_if()


# NA to Predict Value (rpart, knn, mice)
impute(data$)


# - 수동으로 결측치 값을 알고 있어서 수동으로 수정할 수 있따면 가장 좋음
data2 <- edit(data)
fix(data)
# - 결측치가 있다면 해당 열 지워버리기
# - 데이터가 충분하다면 그냥 지워버려 
data2 <- na.odmit(data)
data2 <- data %>% drop_na()


#==========
# Reference
#==========

# buillee / blog / https://buillee.tistory.com/512
# Forecasting : Principles and Practice / https://otexts.com/fppkr/missing-outliers.html / 

#==========
# Reference
#==========

# buillee / blog / https://buillee.tistory.com/512
# Forecasting : Principles and Practice / https://otexts.com/fppkr/missing-outliers.html / 
# blog / https://m.blog.naver.com/tjdudwo93/221142961499