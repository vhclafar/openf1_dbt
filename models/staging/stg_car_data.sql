-- models/staging/stg_car_data.sql
select
  driver_number,
  session_key,
  date_time,
  speed,
  n_gear,
  throttle,
  drs,
  rpm,
  source,
  time
from {{ source('openf1_livetiming', 'car_data') }}