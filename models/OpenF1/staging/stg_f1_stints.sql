select
    JSON_EXTRACT_SCALAR(compound, '$') AS compound,
    driver_number,
    lap_end,
    lap_start,
    meeting_key,
    session_key,
    stint_number,
    tyre_age_at_start
FROM {{source('openf1_livetiming', 'stints')}}