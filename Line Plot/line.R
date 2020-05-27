
#==========
# Line Plot
#==========

# 시계열 기초적으로 사용되는 차트
# 선은 기본적으로 4개를 넘지 않도록 주의하자
# 선이 많으면 정보량이 많아져 이해하기 어려워 진다

#========
# Library
#========

library(ggplot)


#=======
ggplot(airquality, aes(Day, Wind)) + 
  facet_grid(~ Month) + 
  geom_line(col = "red", linetype = 1, size = 1)
