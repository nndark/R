
# R 데이터 시각화의 시작과 끝


#========
# Library
#========

library(ggplot2)
library(forcats)
library(extrafont)


#=============
# Font Setting
#=============

# 네이버 나눔스퀘어 폰트 설치하기 
font_import(pattern = 'NanumSquare') # 시간이 걸릴 수 있으므로 주의, 폰트는 이미 컴퓨터에 설치된 폰트를 불러오므로 미리 설치해두자  https://hangeul.naver.com/


# 설치된 폰트 리스트 확인하기
fonts()

# 설치된 폰트 자세한 정보 확인하기
fonttable()

# ggplot 나눔 스퀘어 폰트로 전체 적용하기  
theme_set(theme_gray(base_family="NanumSquare"))

# import data
data <- car90

# data check
head(data)
glimpse(data)
names(data)


#===============
# Visuallization
#===============

data %>% drop_na(Price) %>% 
  ggplot(aes(reorder(Country, -Price), Price)) +  # reorder로 순서를 정렬할 수 있다
  geom_boxplot() + 
  ggtitle("자동차 가격") + 
  labs(subtitle = "제조 국가별",
       x = "국가", # x축 title  
       y = "가격(USD)", # x축 title
       caption = "Automobile Data from 'Consumer Reports' 1990" # Caption 달리
       ) +
  theme(axis.text.x=element_text(angle=45)) +

