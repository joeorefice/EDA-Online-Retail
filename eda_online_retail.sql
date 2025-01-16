-- Determining structure of data

select *
from sys.online_retail
order by invoice_no asc
limit 20;


-- each row denotes a product (stockcode, description, quantity, unit_price) purchased (invoice_no, invoice_date) by a customer (customer_id, country)
-- multiple rows per invoice, denoting one or more products forming part of the overall transaction
-- invoice value can be determined from sum each product's quantity * unit_price

-- General EDA/aggregation;
-- min and max unit prices

select description,
	stockcode,
	unit_price
from sys.online_retail
where unit_price >= 0.01
group by 1, 2, 3
order by 3 asc
limit 1;

select description,
	stockcode,
    unit_price
from sys.online_retail
group by 1, 2, 3
order by 3 desc
limit 1;


-- max invoice transaction values

select invoice_no, 
	description,
	quantity,
    unit_price,
    round(sum(quantity * unit_price) over (partition by invoice_no), 2) as invoice_total
from sys.online_retail
order by invoice_total desc
limit 1;


-- most common product across invoices

select count(stockcode) as item_count,
	stockcode,
    description
from sys.online_retail
group by 2, 3
order by item_count desc
limit 1;


-- Invoice totals and country per invoice

select invoice_no, invoice_date, round(sum(quantity * unit_price)) as invoice_total, country
from sys.online_retail
group by 1, 2, 4
order by 2 asc;


-- Average Transaction Value

select round(sum(quantity * unit_price) / count(distinct invoice_no), 2) as atv
from sys.online_retail;


-- Average Transaction Value per country

select country, round(sum(quantity * unit_price) / count(distinct invoice_no), 2) as atv
from sys.online_retail
group by country
order by round(sum(quantity * unit_price) / count(distinct invoice_no), 2) desc;


-- aggregating revenue and transaction count by country

select country,
	count(distinct invoice_no) as transaction_count,
    round(sum(quantity * unit_price), 2) as total_revenue
from sys.online_retail
group by 1
order by 3 desc;


-- analysing sales patterns by country over time

select country,
	year(invoice_date) as year,
    month(invoice_date) as month,
    round(sum(quantity * unit_price), 2) as total_revenue,
    round(sum(sum(quantity * unit_price)) over (
		partition by country, year(invoice_date)
        order by month(invoice_date)
	), 2) as running_total_revenue
from sys.online_retail
group by country, year(invoice_date), month(invoice_date)
order by 1, 2, 3;
