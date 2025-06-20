SELECT
    session_key,
    driver_number,
    MAX(CASE
        WHEN CAST(gap_to_leader AS STRING) LIKE '%L%' THEN NULL
        ELSE CAST(gap_to_leader AS FLOAT64)
    END) AS gap_to_leader,
    MAX(CASE
        WHEN CAST(gap_to_next AS STRING) LIKE '%L%' THEN NULL
        ELSE CAST(gap_to_next AS FLOAT64)
    END) AS gap_to_next
FROM {{ ref('stg_f1_intervals') }}
GROUP BY session_key, driver_number