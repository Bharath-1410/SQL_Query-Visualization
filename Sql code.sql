select * from BikeStores;
select sum(revenue) as Total_revenue, sum(total_units) as Total_units_sold, count(distinct order_id) as Orders,
count(distinct customers) as Customers, count(distinct sales_rep) as Salesreps
from BikeStores;

select count(distinct city) as Cities, count(distinct state) as States,
count(distinct product_name) as Products, count(distinct category_name) as Categories,
count(distinct brand_name) as Brands, count(distinct store_name) as Stores
from BikeStores;
select year , sum(revenue) as total_revenue
from BikeStores
group by year
order by total_revenue;
select month , sum(revenue) as total_revenue , sum(total_units) as unit_sold
from BikeStores
group by month
order by total_revenue desc;

SELECT 
  CASE
     WHEN month IN ('Jan', 'Feb' , 'Mar') THEN 'Winter'
     WHEN month IN ('Apr', 'May' , 'June') THEN 'Spring'
     WHEN month IN ('Jun', 'July' , 'Aug') THEN 'Summer'
     ELSE 'Autumn'
  END As season,  
  SUM(revenue) AS Total_revenue,
  SUM(total_units) AS Total_units_sold
FROM
  BikeStores 
GROUP BY 
  season
ORDER BY
  Total_revenue DESC;


select store_name, sum(revenue) as total_revenue , sum(total_units) as unit_sold
from BikeStores
group by store_name
order by total_revenue desc;

select city,state, sum(revenue) as total_revenue , sum(total_units) as unit_sold
from BikeStores
group by city
order by total_revenue desc
limit 10;

select category_name, sum(revenue) as total_revenue , sum(total_units) as unit_sold
from BikeStores
group by category_name
order by total_revenue desc;


select brand_name, sum(revenue) as total_revenue , sum(total_units) as unit_sold
from BikeStores
group by brand_name
order by total_revenue desc;