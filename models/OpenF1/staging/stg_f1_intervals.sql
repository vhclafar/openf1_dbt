SELECT 
    session_key,
    driver_number,
    date,
    SAFE_CAST(NULLIF(gap_to_leader, 'None') AS FLOAT64) AS gap_to_leader,
    SAFE_CAST(NULLIF(`interval`, 'None') AS FLOAT64) AS gap_to_next
FROM {{ source('openf1_livetiming', 'intervals') }}