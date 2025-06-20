SELECT
    session_key,
    driver_number,
    TIMESTAMP(date_start) AS date_start,
    TIMESTAMP_ADD(
        TIMESTAMP(date_start),
        INTERVAL SAFE_CAST(lap_duration AS INT64) SECOND
    ) AS date_end,
    lap_duration,
    lap_number,
    is_pit_out_lap,
    duration_sector_1,
    duration_sector_2,
    duration_sector_3
FROM {{ source('openf1_livetiming', 'laps') }}