# Himalayas-Limited-Profit-Analysis
This project is about Himalayas Limited and they facing constantly decrease in profits.
There sales are incresing but the profit of Himalayas Limited is constantly decreasing. This project identifies the reasons for there constant decrease in profits.

# Objectives
1 What are the key reasons for despites in profits.\
2 Identify identify loss making Products.\
3 Find highly discounted products.\
4 Find profitability ratio for each Category and sub-category.

# Tools Used
1 MS Excel
2 MySQL
3 Power BI

# Dataset
I made this dataset from chat gpt to increase its hardness level. After cleaning the data we have these columns (Row ID,	Order Date,	Country,	City,	State,	Category,	Sub-Category,	Sales,	Quantity,	Discount,	Profit).

# Process
1 Data Cleaning:- MS Excel is very suitable and easy for data cleaning, from the dataset i remove those columns which doesn't need for analysis or which have above 50% missing values. After that Sort and Filter the data(eg: Sorting Date, Remove Duplicate values).

2 Exploratory Data Analysis(EDA):-  MySQL Help to uncover profit leakage, I find unusual pattern in discount some of the products have more discount  then its actual cost which leads to heavily loss and increase in sales.
Some of the Product have high profit margin then it cost them to bear the low sales of that product, this is the main reason for some products shows low proformance in markets and increase there cost for storing that product.

3 Aggregations:- It helps a lot to find the actual pattern in our overall sales process, I find transaction level behavior with a perfect format(like:- Revenue → Cost → Profit → Profit Margin) this helps to find actual performing products and absolute profitability.

4 Visualisation:- For Visualisation i use Power BI, It shows state wise sales by category, sales by month (which shows pattern of sales overtime), sales by subcategory with there average discounts. KPIs are Profit Margin by Category, Total Profit, Total orders.
From the above Charts and KPIs itr helps a lot to find Discount pattern.

# Key Insights 
1 Decrease in Discounts in some product which have greater than 20% discount(>20%).eg: Binders, Tables, Machines etc
2 Fasteners in sub-category is very low performance so they have to discountinue it or increase in discount for Fasteners.
3 Furniture is a category which has very low performance overall so they should work on that or increase in type of sub-category in furniture.
4 Certain states provide very low performance in every category or sub-category, so they can improve there distibution, marketing, stock management.(eg states:- colorado, illinois, florida, ohio, etc).
5 Instead of direct discounts they can provide coupons code. Coupan code help them for making limit or quantity in each orders.

# Recommendations
1 Reduce Discounts.
2 Focus on Profitable Category or Sub-category.
3 Work on disributions.
4 Impliment Coupons codes.

# Conclusion 
If everything implimented perfectly then the problem they facing is solved and also they can increase there sales also with constantly increase in profit also.They have to work or some state also becuase if they don't it cause them for decrease in sales.
