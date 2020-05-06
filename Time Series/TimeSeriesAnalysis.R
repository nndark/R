#======================
# Time Series Analysis
# 시계열 분석
# 時系列 
#======================

#====================
# Mean reversion test
#====================

# Package library
library(tseies) # ADF(Augmented Dickey-Fuller) TEST

# code
adf.test(coredata(ts)) # ts data ADF test
adf.test(coredata(ts1)) # ts1 data ADF test
adf.test(coredata(ts1)) # ts2 data ADF test
# 해석
# p < 0.05 
# 시계열은 평균 회귀를 하고 있을 가능성이 크다고 판단.
# 반대인 경우 평균 회귀를 하는 증거가 미약하다고 판단.

# 노이즈가 많은 경우
library(KernSmooth)
library(expsmooth)
library(HoltWinters)


#==========
# Reference
#==========
# Paul Tetor / R Cookbook / 978-596-80915-7
# https://wikidocs.net/20164 / 9788924067200