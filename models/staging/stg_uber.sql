select
  cast("Date" as date) as booking_date,
  cast("Time" as time) as booking_time,
  "Booking ID" as booking_id,
  lower(trim("Booking Status")) as booking_status,
  "Customer ID" as customer_id,
  lower(trim("Vehicle Type")) as vehicle_type,
  lower(trim("Pickup Location")) as pickup_location,
  lower(trim("Drop Location")) as drop_location,
  "Avg VTAT"::float as avg_vtat,
  "Avg CTAT"::float as avg_ctat,
  "Booking Value"::float as booking_value,
  "Ride Distance"::float as ride_distance,
  "Driver Ratings"::float as driver_rating,
  "Customer Rating"::float as customer_rating,
  lower(trim("Payment Method")) as payment_method
from {{ ref('data') }}
