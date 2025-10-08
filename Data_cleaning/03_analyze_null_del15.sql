-- Result: 16 rows where arr_del15 and delay columns are NULL, but arr_cancelled or arr_diverted are non-zero
SELECT year, month, carrier, carrier_name, airport, airport_name, arr_flights, arr_del15, arr_delay
FROM flight_delays_raw
WHERE arr_del15 IS NULL
LIMIT 16;