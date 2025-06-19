select 
    date, 
    driver_number,
    lap_number,
    meeting_key,
    pit_duration,
    session_key
FROM {{source('openf1_livetiming', 'pit')}}