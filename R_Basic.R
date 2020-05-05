#==========================
# Basic Data Analsis in R
#==========================



#====================================
# 0. 분석 목적을 정의 및 가설 정립
#    Defintion Problem & Hypothesis 
#====================================

# Definition
# Reference
# http://www.dodomira.com/2016/01/12/%eb%8d%b0%ec%9d%b4%ed%84%b0-%eb%b6%84%ec%84%9d%ec%9d%98-%ec%9c%a0%ed%98%95/

# EDA -> Visullization -> Predict


#==========================
# 1. 패키지 불러오기
#    Library Pakcages
#==========================

# 필요한 패키지를 설치한다
# 
install.package("name")

# 설치한 패키지를 장착한다
library(name)


#==========================
# 2. 데이터 가져오기
#    Importing Data  
#==========================


# txt file
data.txt <- read_txt()
# CSV file
data.csv <- read_csv("data.csv")
# Excel file
data.xlsx <- read_xlsx("data.xlsx")
# json
# Sample data
data <- car90


# 2. 데이터 구조 파악
# - 컬럼 파악, 정의 확인 
names(data)
str(data)
glimpse(data) #df.describe()
dim(data)
# - 필요 없는 컬럼은 제거 한다
data2 <- data[,-(1:3)]

names(data2)
str(data2)
glimpse(data2)

#==========================
# 3. 탐색적 데이터 분석 / 데이터 상태 파악 / 기술통계 확인 
#    EDA- Exploratory Data Analysis /  / Descriptive Analysis
#==========================


# 전체 데이터 보기
View(data)
# 앞/ 끝 데이터 보기
head(data)
tail(data)
# 데이터 요약 보기
summary(data)

# Histogram
hist(data)

# Boxplot
boxplot(data)

# Scatter plot
ggplot(data, aes(x = x, y = y) ) + geom_point()

# 데이터 파악하기과 전처리 

#==========================
# 4. 집중경향치를 우선 판단한다  - 데이터 대표가 누구인가를 나타내는 수치 
#==========================
# - mean (평균)
# - median (중앙치) 순서 가운데 
# - mode (최빈치)

#==========================
# 5. 데이터 분포 상태를 판단 한다. - 데이터 분포가 대표값과 얼마나 떨어져 있는가?
#==========================
# - (편차) : 평균에서 각 데이터까지의 거리를 의미 : X-평균
# - 편차의 합은 ∑(X-μ) = 0
# - (분산) : 편차제곱의 평균 
# - 분산을 확인한다. : 
# - 표준편차 : 분산의 제곱근 
# - 분포 해석 : 분산, 표준편차가 크면 데이터가 수렴되지 않고 퍼져 있다

#==========================
# 6. 이상치 처리 확인한다. -   아웃 라이어는 데이터를 왜곡 시킨다  
#==========================
# - Outlier (이상치) : 극단적으로 이상 수치 

summary(data)
hist(data)
boxplot(data)
# - NA, NaN, Null 처리
# - 얼마나 많은 NA 이 있는 처리 한다
is.na(data)
sum(is.na(data))
colSums(is.na(data))
cumsum(is.na(data))

# - 수동으로 결측치 값을 알고 있어서 수동으로 수정할 수 있따면 가장 좋음
data2 <- edit(data)
fix(data)
# - 결측치가 있다면 해당 열 지워버리기
# - 데이터가 충분하다면 그냥 지워버려 
data2 <- na.odmit(data)
data2 <- data %>% drop_na()

# Dviding Case 
# - 케이스를 분할하여 분석하는게 때론 효과적일 수 있음


# - Outlier를 해결하는 방법 
# 7. Bias(편향) 확인
# 
#
# 7. 시각화
# 8. 모델링 
# 9. 리포팅 
#
# - 
# R에서는 summary(data), head(data)로 시작
#
#




# 정규분포
좌우대칭 종모양 평균을 중심으로 데이터가 골고루 퍼져 있음

# 편포 
데이터가 한쪽으로 치우쳐짐

# 데이터는 정규분포임을 확인해야함
분석방법들의 통계적 가정
중심극한 정리를 따름

