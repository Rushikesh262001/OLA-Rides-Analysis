create database ola;
use ola;

ALTER TABLE bookings
RENAME COLUMN `Booking Value` TO Booking_Value;

--1.Retrieve all successful bookings:
create view Successful_Bookings as
select * from bookings
where Booking_Status = 'Successful';

select * from Successful_Bookings;

--2. Find the average ride distance for each vehicle type:
create view average_ride_distance as
select Vehicle_Type,round(avg(Ride_Distance),2) as avg_ride_distance
from bookings
group by Vehicle_Type;

select * from average_ride_distance;

--3. Get the total number of cancelled rides by customers
select count(*) as cancelled_rides_by_customer 
from bookings 
where Booking_Status = 'Cancelled_by_Customer';

--4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers as
select Customer_ID,
count(Booking_ID) as number_of_rides
from bookings
group by Customer_ID
order by number_of_rides desc
limit 5;

select * from top_5_customers;

--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_cancelled_by_drivers_personal_and_car_related_issues as
select count(*) from bookings
where Booking_Status = 'Cancelled_by_Driver' 
and Reason_for_cancelling_by_Driver = 'Personal & Car related issues';

select * from rides_cancelled_by_drivers_personal_and_car_related_issues;

--6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings as 
select max(Driver_Ratings),
min(Driver_Ratings)
from bookings
where Vehicle_Type = 'Prime Sedan';

select * from maximum_and_minimum_driver_ratings_for_Prime_Sedan_bookings;

--7. Retrieve all rides where payment was made using UPI:
--8. Find the average customer rating per vehicle type:
create view customer_rating_per_vehicle_type as
select Vehicle_Type,round(avg(Customer_Rating),2) as avg_rating
from bookings
group by Vehicle_Type;

select * from customer_rating_per_vehicle_type;

--9. Calculate the total booking value of rides completed successfully:
create view total_booking_value_of_rides_completed_successfully as 
select round(sum(Booking_Value),2) as total_booking_value
from bookings
where Booking_Status = 'Successful';

select * from total_booking_value_of_rides_completed_successfully;


--10. List all incomplete rides along with the reason:
create view incomplete_rides_along_with_the_reason as
select Booking_ID,`Incomplete Rides`,`Incomplete Rides Reason`
from bookings
where `Incomplete Rides` = 1;

select * from incomplete_rides_along_with_the_reason;
