SELECT
        s.session_key,
        s.meeting_key,
        s.country_name,
        s.session_name,
        s.session_type,
        s.year,
        s.circuit_short_name,
        s.date_start,
        s.date_end
FROM {{source('openf1_livetiming','sessions')}} as s