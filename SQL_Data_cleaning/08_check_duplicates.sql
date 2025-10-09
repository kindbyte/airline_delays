-- No dublicates found
select year, month, carrier, airport, count(*) as cnt 
from flight_delays_raw 
group by year, month, carrier, airport
having count(*) > 1;