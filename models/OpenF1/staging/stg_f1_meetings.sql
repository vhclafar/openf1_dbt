SELECT
        meeting_key,
        meeting_name,
        meeting_official_name,
        country_name,
        circuit_short_name,
        year,
        date_start
FROM {{source('openf1_livetiming','meetings')}}