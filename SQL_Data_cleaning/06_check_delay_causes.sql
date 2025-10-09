-- Result: Minor discrepancies (e.g., 99.00 vs. 97.99) due to rounding are left unchanged.
SELECT arr_del15, SUM(carrier_ct + weather_ct + nas_ct + security_ct + late_aircraft_ct) AS total_delay
FROM flight_delays_raw
WHERE ABS((carrier_ct + weather_ct + nas_ct + security_ct + late_aircraft_ct) - arr_del15) > 1
GROUP BY arr_del15;