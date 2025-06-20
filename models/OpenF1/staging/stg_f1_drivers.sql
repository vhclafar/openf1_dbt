SELECT
    d.driver_number,
    d.broadcast_name,
    d.first_name,
    d.last_name,
    d.full_name,
    d.name_acronym,
    d.team_name,
    d.team_colour,
    d.country_code,
    d.session_key
from {{ source('openf1_livetiming', 'drivers') }} as d