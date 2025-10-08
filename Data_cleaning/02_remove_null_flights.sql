-- Result: 76 lines deleted (0.11% of 69,978)
SELECT year, month, carrier, carrier_name, airport, airport_name, arr_flights, arr_del15, arr_delay
FROM flight_delays_raw
WHERE arr_del15 IS NULL
;