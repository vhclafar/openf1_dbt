select
     session_key,
    driver_number,
    position,
    date
from {{ source('openf1_livetiming', 'position') }}