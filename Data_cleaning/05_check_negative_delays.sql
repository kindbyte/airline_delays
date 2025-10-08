-- Result: No negative values
SELECT *
FROM flight_delays_raw
WHERE arr_delay < 0
   OR carrier_delay < 0
   OR weather_delay < 0
   OR nas_delay < 0
   OR security_delay < 0
   OR late_aircraft_delay < 0
LIMIT 10;