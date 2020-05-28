
#====================
# Dimension reduction
#====================


# 분석 시 3차원 이상 부터 해석 난이도가 급상승하기 때문에 보통 2차원으로 차원을 축소한다
# PCA(Principal Compnent Analysis 주성분 분석) 진행을 위해 사용된다


#========
# Library
#========

library(Rtsne)

# 데이터셋에서 중복을 제거해야 한다
distinct()  

# 2차원으로  축소 진행
data <- Rtsne(data, dims = 2, perplexity = 10)

# 3차원으로 축소 진행
data <- Rtsne(data, dims = 3, perplexity = 10)
