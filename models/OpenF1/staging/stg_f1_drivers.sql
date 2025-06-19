SELECT
    driver_number,
    broadcast_name,
    first_name,
    last_name,
    full_name,
    name_acronym,
    team_name,
    team_colour,
    country_code,
    session_key
from {{ source('openf1_livetiming', 'drivers') }}