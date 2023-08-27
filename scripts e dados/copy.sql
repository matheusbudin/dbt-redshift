copy categories 
from 's3://dbt-redshift-udemy/categories.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy customers
from 's3://dbt-redshift-udemy/customers.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy employees 
from 's3://dbt-redshift-udemy/employees.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy order_details 
from 's3://dbt-redshift-udemy/orderdetails.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy orders 
from 's3://dbt-redshift-udemy/orders.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy products 
from 's3://dbt-redshift-udemy/products.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy shippers 
from 's3://dbt-redshift-udemy/shippers.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy suppliers 
from 's3://dbt-redshift-udemy/suppliers.csv' 
CREDENTIALS 'aws_access_key_id=AKIAXHWWNXLTN4XFX26A;aws_secret_access_key=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' 
delimiter ';' 
region 'sa-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

