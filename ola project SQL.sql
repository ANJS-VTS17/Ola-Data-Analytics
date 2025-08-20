SELECT * FROM ola.bangalore_data;


#1. Retrieve all successful bookings:
SELECT *
from booking
where booking_status= "success";


#2. Find the average ride distance for each vehicle type:
use ola;
SELECT vehicle_type, avg(ride_distance)
from booking
group by vehicle_type
order by vehicle_type desc;


#3. Get the total number of cancelled rides by customers:
SELECT SUM(Canceled_Rides_by_Customer)
from booking;


#4. List the top 5 customers who booked the highest number of rides:
 SELECT customer_id , count(booking_status) as total_success_bookings
 from booking
 where booking_status="success"
 group by customer_id
 order by  total_success_bookings desc
 limit 5;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(canceled_rides_by_driver)
 from booking
 where canceled_rides_by_driver= "personal & car related issue";


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 select vehicle_type, min(driver_ratings) as min_rating, max(driver_ratings) as max_rating
 from booking
 where vehicle_type = 'Prime Sedan';


#7. Retrieve all rides where payment was made using UPI:
SELECT *
FROM booking
WHERE LOWER(TRIM(Payment_Method)) = 'upi';


#8. Find the average customer rating per vehicle type:
use ola;
select vehicle_type, round(avg(customer_rating),2) as average_customer_rating
from booking
group by vehicle_type
order by  average_customer_rating desc;


#9. Calculate the total booking value of rides completed successfully:
select sum(booking_value), booking_status
from booking
where Booking_Status='Success';


#10. List all incomplete rides along with the reason:
use ola;
SELECT distinct incomplete_rides, incomplete_rides_reason
from booking;

