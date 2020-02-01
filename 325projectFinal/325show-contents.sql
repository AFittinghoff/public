-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/1/2019

spool 325result-contents.txt

set wrap off;

prompt Daily_Sales

select	 *
from	 Daily_Sales;

prompt Purchase_Type

select	 *
from	 Purchase_Type;

prompt Favored_Customers

select 	 cust_id, cust_lname, cust_fname
from	 Favored_Customers;

select   cust_id, cust_phone_num
from     Favored_Customers;

select	 cust_address, cust_email
from     Favored_Customers;

prompt Events

select 	 event_id, event_name, event_type
from	 Events;

select   event_id, event_date, event_time, cust_id
from     Events;

prompt Desserts;

select 	 *
from	 Desserts;

prompt Toppings;

select	 *
from	 Toppings;

prompt Dessert_Sales;

select	 *
from	 Dessert_Sales;

prompt Ice_Cream;

select 	 ice_cream_id, ice_cream_flavor, ice_cream_size
from	 Ice_Cream;

select   ice_cream_id, cup_or_cone, scoop_num
from     Ice_Cream;

select   ice_cream_id, num_ice_creams, dessert_id
from     Ice_Cream;

prompt Cakes

select 	 cake_id, cake_type, cake_layer_num
from	 Cakes;

select   cake_id, cake_frosting_type, cake_shape
from     Cakes;

select   cake_id, num_cakes, dessert_id
from     Cakes;

spool off

set wrap on;
