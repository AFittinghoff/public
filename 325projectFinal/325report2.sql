-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/12/2019

set termout off

ttitle CENTER '2020 Events' RIGHT 'Alex Fittinghoff'

show ttitle

set termout on

spool 325report2-results.txt

prompt Report 2: Let's find the set of events coming up in 2020, so that we
prompt can properly prepare for them.

set pagesize 50

col "Event ID" format 999999

col "Event" format a24

col "Date" format a12

col "Customer ID" format 999999

col "Host name" format a20	

break on "Date" skip 1

compute count of "Event ID" on "Date" 

select   to_char(event_date, 'Mon DD, YYYY') "Date",
	 event_id "Event ID", event_name "Event", 
	 fc.cust_id "Host ID", cust_lname || ', ' || cust_fname "Host Name"
from     Events e, Favored_Customers fc
where    e.cust_id = fc.cust_id
and      event_date > '31-DEC-2019'
order by event_date;

spool off

start cleanup.sql
