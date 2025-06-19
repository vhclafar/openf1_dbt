SELECT
        session_key,
        meeting_key,
        country_name,
        session_name,
        session_type,
        year,
        circuit_short_name,
        date_start,
        date_end
FROM {{source('openf1_livetiming','sessions')}}