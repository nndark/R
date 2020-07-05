#===============
# Data Wrangling 
#===============

# 실제 데이터 전처리는 데이터 분석 업무 시간의 절반 이상을 차지할 만큼 많은 시간이 필요하다.
# 미래에는 쉽게 데이터 전처리 할 수 있겠지만 현재 사용 가능한 기능을 빠르게 사용하면 많은 시간을 줄 일 수 있다.

#========
# library
#========
library(tidyverse)
library(dplyr)
library(car90)

#importing data
data <- car90 

#data Check
glimpse(data)
head(data)

# Select column
data %>% select(id)
data[,1]

# column name 수정
data <- data %>% dplyr::rename

# joining Table

# left_join
join.data <- left_join(data, data, by = "id")
join.data <- data %>% left_join(data, by = "id")


# right_join
join.data <- right_join(data, data)


# Long to Wide
data %>% spread()

# Wide to Long
data %>% melt()

# mutate
data %>% mutate ( price )
