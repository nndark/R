
# R에서는 결측치를 NA(Not Applicable 또는 Not Available)라고 표시된다. 
# 데이터에 NA값이 없다면 좋겠지만
# 만약 1개의 NA값이 있다면 데이터 분석에 많은 문제가 생긴다.
# NA값을 처리하고 본격적인 데이터 분석을 해보자.

#========
# LIBRARY
#========
library(naniar) # na package
library(imputeTS) # na 값 처리
library(VIM) # NA Visualization
library(Hmisc)
library(DMwR)
library(dplyr)
library(rpart) # na data
library(RANN)
library(zoo)
library(DMwR) # na data

#===============
# Importing Data
#===============
data <- car90

# Data Check
help(car90)
head(data)
tail(data)
glimpse(data)
summary(data)

# NA 가 있을까?
na.fail(data)
any_na(data)
anyNA(data)
na.strings(data)
help(na.strings)

# NA 어디에 있을까
data <- car90
data[!complete.cases(data),]
data %>% filter(is.na(Price))

# Count NA 얼마나 있을까
data <- car90
sum(is.na(data))
n_miss(data)

table(is.na(data))

miss_scan_count(data, common_na_strings)
common_na_strings # na sample

# NA 비중이 얼마나 될까? 
# Propotion NA 
data <- car90
mean(is.na(data))
prop_miss(data)
miss_summary(data)

# NA 요약 보기
# summary NA
miss_var_summary(data)
miss_case_summary(data)


#==============
# Visualization
#==============

# Visualization NA
data <- car90

# 한번에 보기
vis_miss(data)
vis_miss(data, cluster=TRUE)
data %>% vis_miss

gg_miss_var(data) #naniar
data %>% gg_miss_var()

gg_miss_var_cumsum(data)
data %>% gg_miss_var_cumsum()

gg_miss_case(data)
data %>% gg_miss_case()


gg_miss_case_cumsum(data)
data %>% gg_miss_case_cumsum(data)

gg_miss_upset(data)
data %>% gg_miss_upset()
#gg_miss_span(data)

gg_miss_span(data, Country, span_every = 10)
gg_miss_span(data, Type, span_every = 10, facet = Country)


#=============
# NA 값 처리 
#=============

# 결측치 값을 오기입한 수준이고 NA 값 대신 값을 입력할 수 있는 경우 수동으로 수정하자
# 수정 즉시 반영 되므로 실수를 조심하자
data <- car90
edit(data)
fix(data)

# 결측치 삭제하기 
# 이상 데이터들이 특정 데이터인 경우가 있을 수 있다. 
#(예를 들어 설문조사에서 수입을 기입하는 항목의 경우 수입이 너무 적거나 많은 경우 빈칸(NA)값으로 입력되어 있을 수 있다)
# 따라서 이상 데이터를 제거 시 데이터가 편향될 수 있음을 주의하자
na.exclude(data)
na.omit(data)
data %>% drop_na()



#===========
# Delete NA
#===========

data %>% filter(!is.na(Price))
data %>% drop_na(Price)


#===========
# NA to Zero
#===========

# 상황에 따라서 NA값으로 0으로 대신하는게 필요할 때가 있다 
# 0으로 변경될 경우 분석에 여러가지 영향을 미칠 수 있음을 잊지말자

# 전부 0으로 바꿔보자
data <- car90

data[is.na(data)] <- 0
data$Price[is.na(data$Price)] <- 0
data$Price <- ifelse(is.na(data$Price), 0 , data$Price) # IF를 사용해서 0으로 처리 가능하다



mean(car90$Price)


#===========
# Replace NA
#===========
data <- car90

data %>% replace_na()


#===========
# NA to Mean
#===========

data <- car90

mean(car90$Price) # NA 값이 있다면 평균 계산 오류 발생 
mean(car90$Price, na.rm = TRUE) # 평균 계산에 NA 제외하기 

data <- car90
mean(data$Price, na.rm = TRUE)
data$Price[is.na(data$Price)] <- mean(data$Price, na.rm = TRUE)
data$Price <- ifelse(is.na(data$Price), mean(data$Price, na.rm = TRUE) , data$Price)

#=============
# NA to Median
#=============

data <- car90
median(data$Price, na.rm =TRUE)
data$Price[is.na(data$Price)] <- median(data$Price, na.rm = TRUE)
data$Price <-  centralImputation(data[17])
centralImputation(data)  # NA 한번에 다 처리 

#=============================
# NA to forward/backward value
#=============================

# 시계열 데이터에서 유용하게 사용할 수 있다.

data <- car90

data$Price <- na.locf0(data$Price, fromLast = FALSE) # forward value를 가져와서 NA 값을 바꿔준다.
data$Price <- na.locf0(data$Price, fromLast = TRUE)  # backward value를 가져와서 NA 값을 바꿔준다.


#=====================================
# NA 예측값으로 넣기 - 시계열 (forecast) 
#=====================================
data <- car90
tsclean(data$Price)
data$Price <- tsclean(data$Price)
data$Price <- data$Price %>% tsclean()

# NA to 추정값 - 시계열  (forecast)
data <- car90
na.interp(data$Mileage)# forecast 
data$Price <- na.interp(data$Price)
data$Price <- data$Price %>% na.interp()

# NA to k-NN 가까운 이웃 값으로 바로 대체하기 
data <- car90
knnImputation(data)
data <- knnImputation(data)


#======================

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
# datadoctor / homepage / https://datadoctorblog.com/