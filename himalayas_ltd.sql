# Which Sub Category is worst to best in profit and profit margin
Select Sub_Category,sum(profit) as Profit,
round(sum(profit)/sum(sales)*100) as Profit_Margin
From Superstore
Group by Sub_Category
Order by profit, Profit_Margin;


# Heavy discounts sub category and category
Select Category, Sub_Category, 
round(avg(discount)*100,2) as  "average_discounts(%)",
round(sum(discount),2) as Absolute_Discounts
From superstore
Group by Category, Sub_category
Order by  Category, Sub_category;

# It shows transaction level behavior .
Select Sub_category, avg(sales) as Revenue,avg(sales-profit) as Cost,avg(profit),
round(avg(profit)/avg(sales)*100,2) as Profit_Margin
From superstore
Group by sub_category
Order by  profit_margin desc;

#  It shows absolute profitability of a sub-category
Select sub_category, sum(sales) as Revenue,sum(sales-profit) as Cost,sum(profit),
round(sum(profit)/sum(sales)*100,2) as Profit_Margin
From superstore
Group by sub_category
Order by  profit_margin desc;

# The discounting issue
Select sub_category,
round(avg(discount),2) as Avg_Discount,
round(avg(profit),2) as Avg_Profit,
round(avg(profit/sales)*100,2) as Profit_Margin
From superstore
Group by sub_category
Order by  profit_margin desc;

# It shows discount wise average Profit or loss
Select round(discount*100,2) as Discount, round(avg(profit),2) as Avg_Discount
From superstore
Group by discount
Order by discount;

# These State Contribute more than average sales
Select State, sum(sales) as Total_Sales, sum(profit)
From superstore
Group by state
Having sum(sales) > (select sum(sales)/count(distinct state) from superstore)
Order by sum(sales) , sum(profit) desc;

# These state contribute less than avg sale
Select State, sum(sales) as Total_Sales, sum(profit)
From superstore
Group by state
Having sum(sales) < (select sum(sales)/count(distinct state) from superstore)
Order by sum(sales) , sum(profit) desc;

# It shows id wise discount status
Select order_id,category,sub_category,
  case 
  When discount between 0.10 and 0.20 then "Low Discount"
  When discount between 0.30 and 0.90 then "High Discount"
  Else "No Discount"
  end as Discount_Risk
From superstore 
Where order_id = 67
Order by category,sub_category;