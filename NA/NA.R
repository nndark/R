# Count NA
data <- car90

sum(is.na(data))
# Prop NA
mean(is.na(data))


# Delete ALL NA
na.omit(data)

# NA to Representative Value (mean, median, mode)

# NA to Zero
data$Mileage[is.na(data$Mileage)] <- 0

# NA to Predict Value (rpart, knn, mice)