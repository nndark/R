

# Imporing Data
data <- car90

# Check Data
help(car90)
glimpse(data)
summary(data)
names(data)
head(data)
tail(data)

#========================
# 상관관계 분석 하는 이유
#========================

# 1. 두변수의 관계를 통계학적으로 의미가 있는지 알기 위해서 사용함.

#===============
# 분석 목표 설정  
#==============

# 1. 호기심 
#    자동차가 비쌀 수록 더 힘이 좋을까?, 
#   싸이즈, 수화물 공간, 연료통도 더 클까?

#================
# EDA 
#===============

# 차트로 그려보자
ggplot(data, aes(Price, HP)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE)
# 가격이 비쌀 수록 힘이 더 좋은 것 같은데?


#================
# 데이터  전처리 
#===============
data <- car90 %>% drop_na(Price)

#====================
# 상관계수를 확인하자
#====================

# 자동차  가격이랑 자동차 마력(net horsepower)이과의 상관관계
cor(data$Price, data$HP, method = "pearson")
cor(data$Price, data$HP, method = "spearman")
cor(data$Price, data$HP, method = "kendall")
cor.test(data$Price, data$HP)

# 자동차 가격과  자동차 무게 상관관계
cor(data$Price, data$Weight)
cor.test(data$Price, data$Weight)
# 자동차  가격이랑 자동차 폭 상관과계
cor(data$Price, data$Width)
cor.test(data$Price, data$Width)
# 자동차 가격이랑 height of car(자동차 높이) 상관과계
cor(data$Price, data$Heigh)
cor.test(data$Price, data$Heigh)
# 자동차 가격이랑 Length(자동차 길이) 상관과계
cor(data$Price, data$Length)
cor.test(data$Price, data$Length)
# 자동차 가격이랑 자동차 트렁크 공간 이과의 상관관계
cor(data$Price, data$Tank)
cor.test(data$Price, data$Tank)
# 자동차  가격이랑 luggage space(수화물 공간)  상관관계 있을까?
cor(data$Price, data$Luggage)
cor.test(data$Price, data$Luggage)
# 가격이랑 자동차 fuel refill capacity(연료 탱크 용량)과의 상관관계
cor(data$Price, data$Tank)
cor.test(data$Price, data$Tank)

#==============
# Pearson's correlation
# 상관 계수 해석
#==============

cor.test(data$Price, data$HP)
# cor 0.7828474 값으로 나왔으니 높은 상관관계가 있다고 해석
# p-value는 0.0

#===============
# Visuallization
#===============

#==============
# 결정 계수 해석
#==============

# R^2 값은 coefficient of determination(결정계수)라고 부른다
# variability(변이성)을 다른 변수가 어느 정도나 공유하는지 말해주는 척도이다
# 예를 들어서 상관과계수가 0.5라면 R^2 값이 0.25이다 
# 즉. 25%
cor


# 전처리 해야함
# 상관과계는 수치형만 사용 가능
data <- car90 %>% drop_na(Price) 

# 한꺼번에 많은 변수들의 피어슨 상관관계를 계산하려고 하면 rcorr을 사용하자
rcorr(cbind(data$Price, data$HP, data$Weight, data$Width, data$Tank), type=c("pearson","spearman"))
names(data)
data2 <- data[,c(10, :Tank)]

rcorr(cbind(data$Price, data$HP, data$Weight, data$Width, data$Tank), type=c("pearson","spearman"))

# 오류 가 발생한다 

# 상관계수, p-value, 신뢰구간을 쉽게 확인할 수 있다
data <- data[,("")]
cor.test(data)


# 모수가 적다면 켄달의 타우를 사요여할 수 있다
# 모집단의 상관을 추정할떄는 켄달이 더 잘먹히기도 한다
cor(data$Price, data$Luggage, method = "kendall")

# 만약 이연값과의 상관계수를 구한다면 polycor 패키지를 사용하자 ()
library(polycor)
polyserical(data$1 , data$2)

# 시각화
chart.Correlation(data, histogram = TRUE, pch = 19)

#==============
# 분석 결과 해석
#==============


#==========
# Reference
#==========


# Andy Field /Discovering Statistics Using R