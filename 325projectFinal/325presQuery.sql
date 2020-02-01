-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/13/2019

prompt Query 2: See what the most popular type of event is, so we know what
prompt supplies to stock up on.

select   event_type, count(event_type) AS EVENT_POPULARITY
from     events
group by event_type
order by EVENT_POPULARITY desc;

