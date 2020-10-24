
#========
# library
#========

library(data.table)

# data.table 에서 화폐 단위 적용

# 도움말
help(formatCurrency)



#===================
# KRW format Setting
#===================

# ggplot
KRW <- dollar_format(prefix = "",
                     suffix = "\u20A9", # KRW
                     big.mark = ".",
                     decimal.mark = ",",
                     negative_parens = TRUE # finance Style
                     ) 

# Vi
ggplot(data, aes(x, y), na.rm = TRUE) +
  geom_point() + 
  geom_line() +
  scale_y_continuous(labels = KRW) 


# datatale krw 
datatable(data) %>% 
  formatCurrency(c('col1', 'col2'),  # 한화 단위 표기 : 숫자 단위를 적용한 column  
                 currency = '\u20A9', # KRW 
                 interval = 3, # 숫자 3자리 마다 적용 
                 mark = ',' , # 단위 표기
                 digits = 0   # 소수점 0 처리 
  )


#=============================
# Currency Escape Description
#=============================
# $	\u0024	dollar
# €	\u20AC	euro
# £	\u00A3	pound
# ¥	\u00A5	yen
# ¢	\u00A2	cent
# ₹	\u20B9	Rupee
# ₨	\u20A8	rupee
# ₱	\u20B1	peso
# ₩	\u20A9	korean won
# ฿	\u0E3F	thai baht
# ₫	\u20AB	dong
# ₪	\u20AA	hekel

# 참고
# xwMOOC - https://statkclee.github.io/text/nlp-number-to-text.html