-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/12/2019

set termout off

ttitle CENTER 'Customers Favoring Ice Cream' RIGHT 'Alex Fittinghoff'

show ttitle

set termout on

spool 325report3-results.txt

-- Report 3: Let's see which of our customers have bought Ice Cream
-- so far, so that we can get a sense of their preferred flavor(s).

set pagesize 30

col "Date of Sale" format a13

col "Flavor" format a20

col "Customer" format a20

select   to_char(sale_date, 'Mon DD, YYYY') "Date of Sale", 
	 ice_cream_flavor "Flavor", 
	 cust_lname || ', ' || cust_fname "Customer"
from     Desserts des, Ice_Cream ic, Favored_Customers fc,
	 Daily_Sales ds, Dessert_Sales dess
where    ic.dessert_id = des.dessert_id and
	 des.cust_id = fc.cust_id and
         dess.dessert_id = des.dessert_id and
         ds.sale_id = dess.sale_id;

spool off
