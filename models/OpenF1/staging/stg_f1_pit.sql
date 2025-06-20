select 
    p.date, 
    p.driver_number,
    p.lap_number,
    p.meeting_key,
    p.pit_duration,
    p.session_key
FROM {{source('openf1_livetiming', 'pit')}} as p