# SAMSON, JEFFERSON BA 3101
# `**R programming**`
# given dataset
sales_data <- data.frame( 
Advertising = c(2000, 2500, 3000, 1500, 1000, 4000, 3500, 2000, 1800, 4200), 
Price = c(50, 55, 52, 60, 65, 45, 48, 55, 58, 44), 
StoreTraffic = c(300, 350, 400, 280, 250, 500, 450, 320, 310, 520), 
CompetitorPrice = c(48, 50, 49, 55, 60, 47, 46, 52, 54, 46), 
MonthlySales = c(21000, 22000, 25000, 18000, 16000, 30000, 28000, 21000, 19000, 31000) 
)

# The model
# MonthlySales is the variable that I am going to predict
model <- lm(MonthlySales ~ Advertising + Price + StoreTraffic, data = sales_data)

# this frame is the example of the problem in number 3.1
monthlySalesPrediction <- data.frame(
  Advertising = 3000, 
  Price = 50, 
  StoreTraffic = 380)
result <- predict(model, monthlySalesPrediction)
print(result)

# Change your variable name to something unique.
# If you are going to use my code, use this as a guide.

