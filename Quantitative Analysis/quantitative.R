
library(quantmod)

# Apple 주가 데이터 가져오기
getSymbols('AAPL')

head(AAPL)
tail(AAPL)

# Visuallization

chart_Series(Ad(AAPL))
chart_Series(AAPL)

# Apple Daily bar Chart
barChart(`AAPL`)
addMACD()
addBBands()

# Apple Weekly bar Chart
barChart(to.weekly(`AAPL`))
addMACD()
addBBands()

# Apple Monthly bar Chart
barChart(to.monthly(`AAPL`))
addMACD()
addBBands()

# Apple Daily candle Chart
candleChart(`AAPL`)
addMACD()
addBBands()

# Apple Weekly candle Chart
candleChart(to.weekly(`AAPL`))
addMACD()
addBBands()

# Apple Monthly candle Chart
candleChart(to.monthly(`AAPL`))
addMACD()
addBBands()


# Samsung 주가 데이터 가져오기
getSymbols(`005930.KS`)

# Data Check
head(`005930.KS`)
tail(`005930.KS`)

# Samsung Visuallization

chart_Series(Ad(`005930.KS`))
chart_Series(`005930.KS`)

# Samsung Daily bar Chart
barChart(`005930.KS`)
addMACD()
addBBands()


# Samsung Weekly bar Chart
barChart(to.weekly(`005930.KS`))
addMACD()
addBBands()


# Samsung Monthly bar Chart
barChart(to.monthly(`005930.KS`))
addMACD()
addBBands()


# Samsung Daily candel Chart
candleChart(`005930.KS`)
addMACD()
addBBands()

# Samsung Weekly candel Chart
candleChart(to.weekly(`005930.KS`))
addMACD()
addBBands()

# Samsung Monthly candel Chart
candleChart(to.monthly(`005930.KS`))
addMACD()
addBBands()

#==========
# Reference
#==========

# kimpro82 / blog / http://blog.naver.com/PostView.nhn?blogId=kimpro82&logNo=220673451739