# library
library(naniar) # na package
library(imputeTS) # na 값 처리
library(VIM) # NA Visualization
library(Hmisc)
library(DMwR)
library(dplyr)
library(rpart) # na data

# Importing Data
data <- car90

# Data Check
help(car90)
head(data)
tail(data)
glimpse(data)

# NA 가 있을까?
na.fail(data)
any_na(data)
anyNA(data)
na.strings(data)
help(na.strings)
??na.strings

# NA 어디에 있을까
data <- car90
data[!complete.cases(data),]
data %>% filter(is.na(Price))

# Count NA 얼마나 있을까
sum(is.na(data))
n_miss(data)

table(is.na(data))

miss_scan_count(data, common_na_strings)

# NA 비중이 얼마나 될까? 
# Propotion NA 
mean(is.na(data))
prop_miss(data)
miss_summary(data)


# View NA
is.na(data) #

# NA 요약 보기
# summary NA
miss_var_summary(data)
miss_case_summary(data)


#==============
# Visualization
#==============

# Visualization NA
data <- car90

vis_miss(data)
vis_miss(data, cluster=TRUE)

gg_miss_var(data) #naniar
gg_miss_var_cumsum(data)


gg_miss_case(data)
gg_miss_case_cumsum(data)

gg_miss_upset(data)
gg_miss_span(data)


#=============
# NA Data 처리 
#=============

# 결측치가 하나만 있더라도 모두 제거하자
# Delete ALL NA
data <- car90
na.exclude(data)
na.omit(data)
data %>% drop_na()

# Delete NA
data %>% filter(!is.na(Price))
data %>% drop_na(Price)

# 이상 데이터들이 특정 데이터인 경우가 많다 따라서 이상 데이터를 무작적 제거 시 데이터가 편향될 수 있음을 주의하자



# - 수동으로 결측치 값을 알고 있어서 수동으로 수정할 수 있따면 가장 좋음
data <- car90
edit(data)
fix(data)

# 결측치 삭제하기 
# 결측치 비중이 매우 낮고 삭제해도 괜찮은 상황이라면 삭제해도 무방할 수 있다.
# 결측치가 편향되는 경우가 있으니 삭제 전 지워
data <- car90
na.odmit(data)
data %>% drop_na()

# NA to Representative Value (mean, median, mode)

# NA to Zero
# 전부 0으로 바꿔보자
data <- car90
data[is.na(data)] <- 0


# NA to Zero
data$Price[is.na(data$Price)] <- 0
data$Price <- ifelse(is.na(data$Price), 0 , data$Price)

# NA to Mean
data <- car90
mean(data$Price)
data$Price[is.na(data$Price)] <- mean(data$Price, na.rm = TRUE)


# NA to Mediam
data <- car90
median(data$Price)
data$Price[is.na(data$Price)] <- median(data$Price, na.rm = TRUE)


# NA 대체 값 추천 받지
tsoutliers(data$Price) # forecast 
tsclean(data$Price)

# NA to 추정값 # forecast 
na.interp(data$Mileage)# forecast 

# NA 값 바로 추정값으로 처리하기
tsclean(data$Price)
data$Price <- data$Price %>% tsclean()


# To NA
# 특정 값을 NA로 바꾸자
data <- car90
data2 <- data %>% replace_with_na(replace = list(Country = c("Korea", "Japan", "USA")))

replace_with_na_all()
#
replace_with_at()
#
replace_with_if()





#==========
# Reference
#==========

# buillee / blog / https://buillee.tistory.com/512
# Forecasting : Principles and Practice / https://otexts.com/fppkr/missing-outliers.html / 
# blog / https://m.blog.naver.com/tjdudwo93/221142961499
# 지그드시 / blog / http://blog.naver.com/liberty264/220992831831
# Jin-Hoon An/ RPubs / https://rpubs.com/jmhome/R_data_processing