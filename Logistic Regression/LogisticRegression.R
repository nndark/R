
#====================
# logistic-regression
#====================

# logistic regression 이란 회귀 모델에서 종속 변수의 값 형태가 numeric(연속형 숫자)가 아닌 범주형 값인 경우를 다루기 위해서 만들어진 통계적 방법이다.
glm()


# 아이리스 데이터 사용
iris

# 데이터 가져오기
data  <- iris

# 데이터 확인
head(data) 
glimpse(data)

# 데이터 integer로 변환
data$Species
data$Species <- as.integer(data$Species)

# 변환된 데이터 확인
head(data$Species)
glimpse(data$Species)
names(data)

# 모델링
mod <- glm(Species ~ . ,data = data)

# 모델링 확인
summary(mod)

# 모델링된 것을 가지고 예측하기
unknown <- data.frame(rbind(c(3,3,1,0.3,NA)))

unknown

colnames(unknown) <- colnames(data)


colnames(data)
colnames(unknown)

# 예측 하기
pred <- predict(mod, unknown)
pred

# 정수로 변환하여 다시 확인
round(pred, 0)

# 기존 아이리스 기준 레벨로 다시 확인하기 
levels(iris$Species)[pred]

#====================
# Reference
#  
# 신경진 / 빅데이터 활용을 위한 R프로그래밍 끝내기_중급2(회귀분석, 군집화와 분류, 데이터 분석 사례)
# DODOMIRA /  http://www.dodomira.com/2016/02/12/logistic-regression-in-r/
#====================