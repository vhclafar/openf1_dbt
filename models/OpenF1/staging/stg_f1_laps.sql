SELECT
    l.session_key,
    l.driver_number,
    TIMESTAMP(l.date_start) AS date_start,
    TIMESTAMP_ADD(
        TIMESTAMP(l.date_start),
        INTERVAL SAFE_CAST(l.lap_duration AS INT64) SECOND
    ) AS date_end,
    l.lap_duration,
    l.lap_number,
    l.is_pit_out_lap,
    l.duration_sector_1,
    l.duration_sector_2,
    l.duration_sector_3
FROM {{ source('openf1_livetiming', 'laps') }} as l