select 
	a.* ,
	b.product_category_name
from ecommerce.order_items a 
join ecommerce.products b 
on a.product_id = b.product_id
where date(a.order_purchase_timestamp) BETWEEN STR_TO_DATE("2018-10-17","%Y-%m-%d") - INTERVAL 180 DAY AND STR_TO_DATE("2018-10-17","%Y-%m-%d")