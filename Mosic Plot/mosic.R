
#=======
# Mosaic
#=======

# 한눈에 비중에 대한 정보를 볼 수 있어서 좋은 시각화 인사이트를 끌어낼 수 있다
# 데이터의 분류가 복잡한 경우에는 적합하지 않지만 적은 카테고리 분류(남여 성별과 자동차 보유 여부 등)의 경우 좋은 인사이트를 준다


#========
# Library
#========

library(ggplot2)
library(ggmosaic)

# 
head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color = c("red", "blue"))


#=======
# ggplot
#=======

ggplot(data = mtcars) + 
   geom_mosaic(aes(x = product(gear, vs)), na.rm = T)  +   
  labs(x= "x name",
       y = "y name",
       title = "title") 

  