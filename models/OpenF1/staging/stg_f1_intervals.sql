SELECT 
    i.session_key,
    i.driver_number,
    i.date,
    TIMESTAMP(i.date) as date_timestamp,
    SAFE_CAST(NULLIF(TO_JSON_STRING(i.gap_to_leader), 'None') AS FLOAT64) AS gap_to_leader,
    SAFE_CAST(NULLIF(TO_JSON_STRING(i.interval), 'None') AS FLOAT64) AS gap_to_next
FROM {{ source('openf1_livetiming', 'intervals') }} as i