Map

#========
# Library
#========

library(ggplot2)
library(ggmap)

#===================
# GET API google Map
#===================


# https://console.cloud.google.com/
register_google(key = 'abcdefg') # 발급 받은 개인키 입력 # 사용량만큼 과금 cvcj있으니 주의


# 좌표 가져오기
data <- geocode(enc2utf8("강남구"))
data <- as.numeric(data)
# 지도 생성
map <- get_googlemap(center = data)
# 시각화
ggmap(map)