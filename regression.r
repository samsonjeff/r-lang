# linear regression analysis using R
# given dataset
sales_data <- data.frame(
  Advertising = c(1889, 3844, 2326, 4553, 4772, 1269, 3111, 4861, 3339, 4832),
  Price = c(61, 64, 42, 69, 68, 41, 56, 56, 54, 54),
  StoreTraffic = c(376, 466, 507, 313, 473, 359, 477, 545, 357, 446),
  CompetitorPrice = c(53, 52, 60, 65, 49, 64, 49, 64, 55, 64),
  MonthlySales = c(27986, 20646, 24344, 31383, 15834, 21484, 28713, 34125, 15112, 30526)
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





