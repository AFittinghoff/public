-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/12/2019

--set termout off
--start 325design.sql
--start 325populate.sql
--set termout on

spool 325query-results.txt

prompt Query 1:  Select ice creams sold so far.

select 	 sale_date, ice_cream_flavor
from 	 Daily_Sales ds, Desserts des, Dessert_Sales dess, 
	 Ice_Cream ic
where    ic.dessert_id = des.dessert_id and
	 dess.dessert_id = des.dessert_id and
	 ds.sale_id = dess.sale_id;

prompt Query 2: See what the most popular type of event is, so we know what
prompt supplies to stock up on.

select 	 event_type, count(event_type) AS EVENT_POPULARITY
from	 events
group by event_type
order by EVENT_POPULARITY desc;

-- Most popular date of event later?

prompt Query 3: Which of our customers have hosted events other than
prompt birthdays, and which events? This way, we know what to market
prompt to them.

select 	 cust_lname, cust_fname, event_name
from 	 Favored_customers fc, Events e
where	 NOT(event_type = 'Birthday')
and 	 fc.cust_id = e.cust_id;

prompt Query 4: We're having a fun contest where we find the largest amount
prompt of a topping ever added to a Dessert. Whoever wins gets a fun prize.
prompt This query will help us find out who the winner is.

select 	 cust_lname, fc.cust_id, topping_name, topping_amount
from	 Toppings t, Favored_customers fc, Desserts d
where  	 t.dessert_id = d.dessert_id
and 	 d.cust_id = fc.cust_id
and	 topping_amount = (select   max(topping_amount)
			   from     toppings);

prompt Query 5: Let's find the set of events coming up in 2020, so that we
prompt can properly prepare for them.

select 	 event_id, event_name, event_date, fc.cust_id, cust_lname, cust_fname
from 	 Events e, Favored_Customers fc
where	 e.cust_id = fc.cust_id 
and	 event_date > '31-DEC-2019';

prompt Query 6: Let's find out what sales were paid for with something
prompt other than cash, in case there is an issue with the Credit/Debit
prompt cards. 

(select	 ds.sale_id, purchase_method
from	 Purchase_Type pt, Daily_sales ds
where 	 ds.sale_id = pt.sale_id)
minus
(select  ds.sale_id, purchase_method
from	 Purchase_Type pt, Daily_sales ds 
where    ds.sale_id = pt.sale_id
and	 purchase_method = 'Cash');

prompt Query 7: I can't remember Mary Samuels' contact info! Let's look
prompt it up.

select	 *
from	 Favored_Customers
where	 cust_lname = 'Samuels'
and 	 cust_fname = 'Mary';

prompt Query 8: Now that we have her contact info, let's see what she's
prompt ordered from us so far.

select	 dessert_id, dessert_type
from	 Desserts d, Favored_Customers fc
where 	 d.cust_id = fc.cust_id
and	 d.cust_id = 10302; 

spool off
