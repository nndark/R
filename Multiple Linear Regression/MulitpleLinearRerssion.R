# 다중선형 회귀 분석
# 2개 이상의 설명변수에 기반한 선형 회귀 분석 방법

#library
library(car)
library(MASS)

# Prestige data set
head(Presitge)
glimpse(Presitge)


# data filtering
data <- Presitge[,c(1:4)]

# 다중 산점도 확인
plot(data, pch = 16)

# incom 회귀식 작성
mod <- lm(income ~ education + presitge + women, data = data)
mod2 <- lm(income ~., data = data) # 전체 다 사용 하기

# summary
summary(mod)
summary(mod2)

# 해석
# p-value : 0.05보다 낮다면 유의미하다고 결로
# R-squared : 해석력을 의미하며 모델이 얼마나 많은 부분을 설명할 수 있는지 말해줌.

# 모델의 설명변수들이 모델에 얼마나 많이 기여했는지 확인 가능 
stepAIC(mod)
# 만약 기여도가 너무 낮은 변수가 있다면 제거해주는 것이 더 좋은 모델을 만드는데 도움이 될 수 있다.
# 아니면 해당 변수가 더 좋은 기여를 할 수 있도록 값을 최적화 해주는 방법도 있다 ^^


