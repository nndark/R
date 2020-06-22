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
register_google(key = 'abcdefg') # 발급 받은 개인키 입력 
# 사용량만큼 과금 있으니 주의



# 좌표 가져오기
data <- geocode(enc2utf8("강남구"))
location <- as.numeric(data) # 경도 위도를 numeric으로 변화

# 지도 생성
map <- get_googlemap(center = location,# 경도 위도 좌표 지정 
                     zoom =  15, # min ~ max (3~21) 까지 zoom setting
                     size = c(1280, 1280), # map size
                     maptype = "roadmap", # terrain, roadmap, satellite, hybrid
                     markers = data)  # 마커 표시 


#  다양한 좌표 가져오기
var <- c("강남구", "서초구", "송파구")
data <- geocode(enc2utf8(var))

# 지도 생성
map <- get_googlemap(center = location,# 경도 위도 좌표 지정 
                     zoom =  11, # min ~ max (3~21) 까지 zoom setting
                     size = c(1280, 1280), # map size
                     maptype = "roadmap", # terrain, roadmap, satellite, hybrid
                     markers = data) 


# text 추가
# geom_text를 활용해서 추가할 수 있음

# 데이터 항목 추가
# ggplot2를 활용해서 map 위에 데이터를 표시 할 수 있음.
# 좌표를 추가하는 것을 잊지 말 것
# as.data.frame 을 사용한 후에 ggmap 에 붙이기


#==========
# Reference
#==========

# 빅데이터 활용을 위한 R프로그래밍 끝내기_중급1(데이터 시각화, 지도와 데이터, 텍스트마이닝) 
