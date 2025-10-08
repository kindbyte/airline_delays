-- Result: 16 rows filled where arr_del15 IS NULL
UPDATE flight_delays_raw
SET 
    arr_del15 = COALESCE(arr_del15, 0),
    carrier_ct = COALESCE(carrier_ct, 0),
    weather_ct = COALESCE(weather_ct, 0),
    nas_ct = COALESCE(nas_ct, 0),
    security_ct = COALESCE(security_ct, 0),
    late_aircraft_ct = COALESCE(late_aircraft_ct, 0),
    arr_delay = COALESCE(arr_delay, 0),
    carrier_delay = COALESCE(carrier_delay, 0),
    weather_delay = COALESCE(weather_delay, 0),
    nas_delay = COALESCE(nas_delay, 0),
    security_delay = COALESCE(security_delay, 0),
    late_aircraft_delay = COALESCE(late_aircraft_delay, 0)
WHERE arr_del15 IS NULL;