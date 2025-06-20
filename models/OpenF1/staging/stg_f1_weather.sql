select 
    air_temperature,
    TIMESTAMP(date) as date,
    humidity,
    meeting_key,
    pressure,
    rainfall,
    session_key,
    track_temperature,
    wind_direction,
    wind_speed
FROM {{source('openf1_livetiming', 'weather')}}