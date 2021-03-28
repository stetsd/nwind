select product_name, unit_price, units_in_stock,
       case when units_in_stock >= 100 then 'lots of'
            when units_in_stock >= 50 and units_in_stock < 100 then 'average'
            when units_in_stock < 50 then 'low num'
            else 'unknown'
           end as amount
from products
order by units_in_stock desc;

-------------------------------------------

select order_id, order_date,
       case when date_part('month', order_date) between 3 and 5 then 'spring'
            when date_part('month', order_date) between 6 and 8 then 'summer'
            when date_part('month', order_date) between 9 and 11 then 'autumn'
            else 'winter'
           END AS season
from orders;

------------------------------------------------

select product_name, unit_price,
       case when unit_price >= 30 then 'expensive'
            when unit_price < 30 and unit_price >= 10 then 'normal'
            when unit_price < 10 then 'cheap'
           end as flag
from products
order by unit_price;