select
    p.session_key,
    p.driver_number,
    p.position,
    TIMESTAMP(p.date) as date,
    DATE(TIMESTAMP(p.date)) AS date_only
from {{ source('openf1_livetiming', 'position') }} as p