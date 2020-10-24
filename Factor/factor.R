
# LIBRARY

library(fivethirtyeight)
library(dplyr)


# CHECK factor
is.factor(data$a)
is.character(data$a)

# Get the number of categories
nlevels(data$a) # 얼마나 많은 레벨로 구성되었는지 확인

Get the list of categories (levels)
levels(data$a)

# 한번에 확인 factor ghkrdls
data %>% summary_if(is.factor, nlevels)

# Change all the character columns to factors
data %>% mutate_if(is.character, as.factor)
