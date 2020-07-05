
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


# 테스트셋의 실제 정답설정
answer <- as.integer(iris$Species)
answer <- answer[1:100]
answer
  
# 테스트셋 기존 모델로 예측하기
pred <- predict(mod, test)
# 테스트셋 라운드 함수로 정수로 전환
pred <- round(pred, 0)

# 예측 되었는지 확인
pred == answer

# 예측 정확도 계산
mean(pred == answer)
# 100 개 중 98개를 맞춤. 2개 틀림
# 모델을 개선해서 정확도를 올리거나 이 모델을 그냥 사용한다.
# 몇가지 모델을 만든 이후에 정확도가 높은걸 사용하자 

#==========
# Reference
#==========

# 신경진 / 빅데이터 활용을 위한 R프로그래밍 끝내기_중급2(회귀분석, 군집화와 분류, 데이터 분석 사례)
# DODOMIRA /  http://www.dodomira.com/2016/02/12/logistic-regression-in-r/
