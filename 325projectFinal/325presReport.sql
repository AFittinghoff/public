-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/12/2019

-- Report 1: Which of our customers have hosted events other than
-- birthdays, and which events? This may help us determine what to
-- market to them.

set termout off

ttitle CENTER 'Non-Birthday Customers' RIGHT 'Alex Fittinghoff'

show ttitle

set termout on

spool 325report1-results.txt

set pagesize 30

col "Name" format a20

col "Event" format a22

col "Event Type" format a20

select   cust_lname || ', ' || cust_fname "Name", event_name "Event", 
	 event_type "Event Type"
from     Favored_customers fc, Events e
where    NOT(event_type = 'Birthday')
and      fc.cust_id = e.cust_id;

spool off

start cleanup.sql
