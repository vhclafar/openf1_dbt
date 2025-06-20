select
    session_key,
    driver_number,
    position,
    TIMESTAMP(date) as date,
    DATE(TIMESTAMP(date)) AS date_only
from {{ source('openf1_livetiming', 'position') }}