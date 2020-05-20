
#==========
# Company
# Title
# Sub Title
# Date
# Name
#==========

#===============
# Data Standards
#===============

#=============
# 문제 정의
#==============

#=======
# Update
#=======


version
#updateR()
#update.packages()
#remove.packages() 

#install.packages()
#library()


#==============
# Options
#==============
options(encoding = 'UTF-8')
options("scipen" = 100)
win.graph(width = 7.0, height = 5.5)
fig.asp = 0.618

#==============
# Data Location
#==============
setwd("C:/R")
getwd()
search()
now()


#==============
# functions
#==============

mode = function(x){ 
  ux=unique(x) 
  ux[which.max(tabulate(match(x,ux)))]
}



#=================
# Packages Library
#=================

#a
library(actuaryr) # calendar Visuallization
library(arules)
library(arulesViz)
library(arules) # classification from raw text

#b
library(broom)
#c
library(caret) # Decision tree 
library(cowplot)
library(corrplot)
library(circular)
#d
library(data.table)# Data Wragling
library(directlabels) # Beyond GGPLOT
library(dplyr)     # Data Wragling
library(doBy)
library(DBI)       # Data Importing
#e
#f
library(forecast)     # forecast
#g
library(gdata)
library(ggpubr)
library(ggplot2)   # Visualization
library(gganimate)   # Visualization
library(gridExtra) # Visualization
library(ggrepel) # Beyond ggplot 
library(ggforce) # Beyond ggplot 
library(GGally) # Beyond ggplot 
library(ggnetwork) # Beyond ggplot 
library(geomnet) # Beyond ggplot 
library(ggtree) # Beyond ggplot 
library(ggdag) # Beyond ggplot 
library(ggraph) # Beyond ggplot
library(ggthemes) ## Beyond ggplot
library(ggmosaic) ## Beyond ggplot

#h
library(httr)      # Data Importing
library(Hmisc)     # 교차 검증 
#i
library(installr) # Update 

#j
library(jsonlite)  # Data Importing
#k
library(knitr)
#l
library(lubridate) # Tidy
library(lpSolve) # Linear Modeling
#m
library(MASS) #Beyond GGPLOT
library(modelr)    # modeling
#n
#o
#p
library(party) # Decision Tress
library(parsnip)
library(purrr)
library(PerformanceAnalytics) # Visuallization
library(productplots)
#q
#r
library(reshape)
library(reshape2)
library(readr)
library(readxl)
library(rJava)
library(rpart)  # Decision Tress
library(rpart.plot)
library(randomForest)
library(rattle) # Decision Tress
library(RColorBrewer) #Color Plalettes 
library(RPostgreSQL)
library(reticulate) # R Interface to Python

#s
library(sandwich)
library(stringr)
library(swirl)
library(shiny)
library(summarytools) # summary
library(SSLR) # Regression modeling
library(showtext) # ggplot Fonts
font_add_google('Noto Sans KR', 'notosanskr')
showtext_auto()

#t
library(tm)       # Text Mining
library(tidyverse)
library(tidyr)     # Data Wragling
library(tidymodels) # Regression Modeling
library(treemap)  # Data Visuallization 
library(tensorflow) # tensorflow

#u
library(usethis) ## Beyond ggplot

#v
#w
library(writexl) #Exporting
library(wesanderson) #Color Plalettes

#x
library(XLConnect) # Data Importing -  Excel Connector for R
library(extrafont) # font

#y

library(yardstick)
#z

##

