SELECT
        m.meeting_key,
        m.meeting_name,
        m.meeting_official_name,
        m.country_name,
        m.circuit_short_name,
        m.year,
        m.date_start
FROM {{source('openf1_livetiming','meetings')}} as m