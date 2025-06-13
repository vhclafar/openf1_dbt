
select
    _id as car_data_id,
    drs,
    rpm,
    _key as key,
    date as datetime,
    brake,
    speed,
    n_gear,
    throttle,
    meeting_key,
    session_key,
    driver_number
from {{ source('openf1_livetiming', 'car_data') }}
