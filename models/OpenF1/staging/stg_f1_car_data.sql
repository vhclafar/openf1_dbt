select
    cd.session_key,
    CAST(cd.driver_number AS STRING) AS driver_number,
    timestamp(cd.date) as timestamp,
    cd.rpm,
    cd.speed,
    cd.throttle,
    cd.brake,
    cd.drs
from {{ source('openf1_livetiming', 'car_data') }} as cd
