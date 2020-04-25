

#====================
# Reference
# 참고
# DODOMIRA # http://www.dodomira.com/2016/02/20/r%ec%9d%84-%ec%82%ac%ec%9a%a9%ed%95%9c-k-means-%ea%b5%b0%ec%a7%91%eb%b6%84%ec%84%9d-k-means-clustering-in-r/
# glimmssilvar # https://brunch.co.kr/@gimmesilver/32
#====================


#====================
# Cluster Analysis
# 군집 분석
#====================

# Grouping
# 분류하여 분석한다!

#===============
# 군집 분석 종류
#==============

# kmeans
# 좌표 기반
# 쉽고 직관적, Outlier에 민감

# DBSCAN
# 좌표 기반
# Outlier 제외 가능하지만 다양한 분포 분석 가능

# GMM
# 좌표 기반
# 계산량 많음

# 계층 클라스터 
# 모든 유사도
# 계산량 많음

#===================
# Customer Segmentation
# 고객 세분화 
#==================


#install.packages(caret)
library(caret)

# 그룹핑 분석
# Data Setting
set.seed(123)
inTrain <- createDataPartition(y=iris$Species, p=0.7, list=FALSE)
training <- iris[inTrain,]
testing <- iris[-inTrain,]



training.data <- scale(training[-5])
summary(training.data)

# Modeling
iris.kmeans &lt;- kmeans(training.data[,-5], centers = 3, iter.max = 10000)

# Visuallization
training$cluster<-as.factor(iris.kmeans$cluster)
qplot(Petal.Width,Petal.Length,colour=cluster,data=training)


# 중심의 갯수가 몇개가 적당한지 셋팅하는 방법

install.packages("NbClust")
library(NbClust)

nc <- NbClust(training.data, min.nc=2, max.nc=15, method="kmeans")
par(mfrow=c(1,1))
barplot(table(nc$Best.n[1,]),
 xlab="Numer of Clusters", ylab="Number of Criteria",
 main="Number of Clusters Chosen")
# 해석 : 클러스터  숫치가 높을 수록 해당 클러스트 분류가 적당하는것


wssplot <- function(data, nc=15, seed=1234){
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")}

wssplot(training.data)


# 새로운 데이터에 군집 할당

training.data<-as.data.frame(training.data)
modFit <- train(x=training.data[,-5],
                y=training$cluster,
                method="rpart")
 
 
testing.data<-as.data.frame(scale(testing[-5]))<br>testClusterPred <- predict(modFit,testing.data) <br>table(testClusterPred ,testing$Species)
 
 