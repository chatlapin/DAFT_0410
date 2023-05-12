SELECT amount, payment_date, customer_id as total_amount FROM sakila.payment order by payment_date;

# Total price
SELECT SUM(amount) as total_amount FROM sakila.payment;

Select * from sakila.payment;

select amount, payment_date, customer_id 
, sum(amount) over () as total_amount
, sum(amount) over (partition by customer_id) as total_amount_per_renter
, avg(amount) over (partition by customer_id) as avg_amount_per_type
from payment limit 100;
use sakila;
select date_format(payment_date, '%Y-%m-%d') as date, amount
, rank() over (partition by date_format(payment_date, '%Y-%m-%d') order by amount desc ) as rank1
, dense_rank() over (partition by date_format(payment_date, '%Y-%m-%d') order by amount) as dense_rk
from payment
order by payment_date;

select amount, payment_date, amount
, lag(amount) over (order by amount) as previous_title_amount
, lead(amount) over (order by amount) as next_title_amount
from payment
order by payment_date;


