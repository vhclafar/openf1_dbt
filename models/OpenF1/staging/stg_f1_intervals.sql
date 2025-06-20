SELECT 
    session_key,
    driver_number,
    date,
    TIMESTAMP(date) as date_timestamp,
    SAFE_CAST(NULLIF(TO_JSON_STRING(gap_to_leader), 'None') AS FLOAT64) AS gap_to_leader,
    SAFE_CAST(NULLIF(TO_JSON_STRING(`interval`), 'None') AS FLOAT64) AS gap_to_next
FROM {{ source('openf1_livetiming', 'intervals') }}