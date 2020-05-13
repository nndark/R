

# Imporing Data
data <- car90
# Check Data
help(car90)
glimpse(data)
summary(data)
names(data)
head(data)
tail(data)

#===============
# 분석 목표 설정  
#==============

# 1. 호기심 
#    자동차 가격이랑 어떤 요소가 상관관계가 있을까?
#    자동차가 비싸면 트렁크 공간이 넓을까?
#    자동차가 비싸면 더 빠를까?

#================
# 데이터  전처리 
#===============
data <- car90 %>% drop_na(Price)

#====================
# 상관계수를 확인하자
#====================

# 가격이랑 트렁크 공간 상관관계 있을까?
cor(data$Price, data$Luggage)

# 가격이랑 자동차 마력이과의 상관관계
cor(data$Price, data$HP)

# 자동차 가격과 무게 상관관계
cor(data$Price, data$Weight)

# 가격이랑 자동차 마력이과의 상관관계
cor(data$Price, data$Width)

# 가격이랑 자동차 마력이과의 상관관계
cor(data$Price, data$Tank)

head(data)

# 전처리 해야함
# 상관과계는 수치형만 사용 가능

data <- car90 %>% drop_na(Price) 
data <- as.data.table(data)

View(data)

data2
head(data2)
help(sapply)
help(unlist)

data2 <- lapply(data, as.numeric) %>% unlist()


data <- data2[,c("Luggage", "HP", "Weight", "Width", "Tank")] %>% unlist()

View(data2)
data <- 
glimpse(data)
head(data)

# 한꺼번에 많은 변수들의 피어슨 상관관계를 계산하려고 하면 rcorr을 사용하자
head(data2)
rcorr(data2)

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

#==============
# 분석 결과 해석
#==============


# 상관관계 해석
# R^2 값은 coefficient of determination(결정계수)라고 부른다
# variability(변이성)을 다른 변수가 어느 정도나 공유하는지 말해주는 척도이다
cor

#==========
# Reference
#==========


# Andy Field /Discovering Statistics Using R