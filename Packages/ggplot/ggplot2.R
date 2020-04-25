
# ggplot2 설치 및 호출
install.packages("ggplot2")
library(ggplot2) 


 : coord_fixed()
 

 

(3) 분석가 마음대로 x축, y축 설정

 : scale_x_continuous(breaks=c())

 # manual setting of x and y axis : scale_x_continuous(breaks=c())
 ggplot(Cars93, aes(x=MPG.city, y=MPG.highway)) +
    geom_point(shape=21, colour="black", size=3) + 
   coord_fixed() +
   scale_x_continuous(breaks=c(10, 15, 20, 25, 30, 40)) + 
   scale_y_continuous(breaks=c(20, 25, 30, 40, 50)) + 
   ggtitle("manual setting of x and y axis : scale_x_continuous(breaks=c())")
 


출처: https://rfriend.tistory.com/86 [R, Python 분석과 프로그래밍의 친구 (by R Friend)]