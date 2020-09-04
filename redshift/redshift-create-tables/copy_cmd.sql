copy mysql_dwh.orders from 's3://troy-de-course/orders/historical/orders.csv'
iam_role 'arn:aws:iam::387932593219:role/myredshift'
CSV QUOTE '\"' DELIMITER ','
acceptinvchars;


copy mysql_dwh.order_items from 's3://bucket-name/order_items/historical/order_items.csv'
iam_role 'YOUR_ARN'
CSV QUOTE '\"' DELIMITER ','
acceptinvchars;


copy mysql_dwh.order_payment from 's3://bucket-name/order_payments/historical/order_payments.csv'
			iam_role 'YOUR_ARN'
			CSV QUOTE '\"' DELIMITER ','
			acceptinvchars;


copy mysql_dwh.order_reviews from 's3://bucket-name/order_reviews/historical/order_reviews.csv'
			iam_role 'YOUR_ARN'
			CSV QUOTE '\"' DELIMITER ','
			acceptinvchars;
