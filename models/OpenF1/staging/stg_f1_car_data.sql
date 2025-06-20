select
    session_key,
    CAST(driver_number AS STRING) AS driver_number,
    timestamp(date) as timestamp,
    rpm,
    speed,
    throttle,
    brake,
    drs
from {{ source('openf1_livetiming', 'car_data') }}
