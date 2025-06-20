select 
    w.air_temperature,
    TIMESTAMP(w.date) as date,
    w.humidity,
    w.meeting_key,
    w.pressure,
    w.rainfall,
    w.session_key,
    w.track_temperature,
    w.wind_direction,
    w.wind_speed
FROM {{source('openf1_livetiming', 'weather')}} as w