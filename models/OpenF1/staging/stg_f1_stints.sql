select
    JSON_EXTRACT_SCALAR(s.compound, '$') AS compound,
    s.driver_number,
    s.lap_end,
    s.lap_start,
    s.meeting_key,
    s.session_key,
    s.stint_number,
    s.tyre_age_at_start
FROM {{source('openf1_livetiming', 'stints')}} as s