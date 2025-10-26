# `**R programming**`
# given dataset (Problem #2)
sales_data <- data.frame( 
Advertising = c(2000, 2500, 3000, 1500, 1000, 4000, 3500, 2000, 1800, 4200), 
Price = c(50, 55, 52, 60, 65, 45, 48, 55, 58, 44), 
StoreTraffic = c(300, 350, 400, 280, 250, 500, 450, 320, 310, 520), 
CompetitorPrice = c(48, 50, 49, 55, 60, 47, 46, 52, 54, 46), 
MonthlySales = c(21000, 22000, 25000, 18000, 16000, 30000, 28000, 21000, 19000, 31000) 
)

# The model
# MonthlySales is the variable that I am going to predict
model <- lm(MonthlySales ~ Advertising + Price + StoreTraffic+ CompetitorPrice, data = sales_data)

# this frame is the example of the problem in number 3.2
monthlySalesPrediction <- data.frame(
  Advertising = 6900, 
  Price = 45,
  CompetitorPrice = 89, 
  StoreTraffic = 170)
result <- predict(model, monthlySalesPrediction)
print(paste0("The monthly sales will be $", result))
