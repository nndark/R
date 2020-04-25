
#===========
# ANOVA in R 
#===========

# R.A. Fisher가 고안한 방법


# ANalysis Of VAriance(분산 분석) 
# 세개 이상의 집단의 평균 차이가 있는지 확인

# t-test 는 t 분포를 이용하여 비교
# ANOVA test는 F분포를 이용





##----------------------------------------------------------
 ## One-way ANOVA : aov(), oneway.test
 ##----------------------------------------------------------

 ##--- Are there any daily outcome differences among temperature conditions?
 # group 1 : temperature condition 1 
 # group 2 : temperature condition 2
 # group 3 : temperature condition 3
 
 # daily outcome by tmep condition (group 1/2/3)
 y1 <- c(50.5, 52.1, 51.9, 52.4, 50.6, 51.4, 51.2, 52.2, 51.5, 50.8)
 y2 <- c(47.5, 47.7, 46.6, 47.1, 47.2, 47.8, 45.2, 47.4, 45.0, 47.9)
 y3 <- c(46.0, 47.1, 45.6, 47.1, 47.2, 46.4, 45.9, 47.1, 44.9, 46.2)
 
 y <- c(y1, y2, y3)
 y
 
 n <- rep(10, 3)
 n

 group <- rep(1:3, n)
 group
 
 # combining into data.frame
 group_df <- data.frame(y, group)
 group_df
 
 # transform from 'integer' to 'factor'
 group_df <- transform(group_df, group = factor(group))
 sapply(group_df, class)

 
 
 # boxplot
 attach(group_df)

 boxplot(y ~ group, 
+         main = "Boxplot of Daily Outcome by Temperature condition 1/2/3", 
+         xlab = "Factor Levels : Temperature condition 1/2/3", 
+         ylab = "Daily Outcome")
 
 


 

 
 
 
 
 # descriptive statistics by group
 tapply(y, group, summary)

 detach(group_df)
 
 # one-wayANOVA
 aov(y ~ group, data = group_df)
 
 summary(aov(y ~ group, data = group_df))


출처: https://rfriend.tistory.com/131 [R, Python 분석과 프로그래밍의 친구 (by R Friend)]






#===========
# Reference
#
# dodomira
# http://www.dodomira.com/2016/02/24/r%ec%9d%84-%ec%82%ac%ec%9a%a9%ed%95%9c-%ec%9d%bc%ec%9b%90%eb%b0%b0%ec%b9%98-%eb%b6%84%ec%82%b0-%eb%b6%84%ec%84%9d-anova-in-r-%ec%a7%91%eb%8b%a8-%eb%b3%84-%ec%b0%a8%ec%9d%b4%ea%b0%80-%ed%86%b5/
#
# rfreind
# https://rfriend.tistory.com/131
#
# Wiki
# https://ko.wikipedia.org/wiki/%EB%B6%84%EC%82%B0_%EB%B6%84%EC%84%9D
# https://namu.wiki/w/%EB%B6%84%EC%82%B0%20%EB%B6%84%EC%84%9D?from=%EB%B6%84%EC%82%B0%EB%B6%84%EC%84%9D
#=============


