use ola_data_analysis;

select * from ola;

select count(Customer_ID)
from ola;


-- SQL Questions and Quaries

-- 1. Retrieve all successful bookings and its

create view Successful_Bookings AS
select * from ola
where Booking_Status = 'Success';

select * from Successful_Bookings;

-- 2. Find the average ride distance for each vehicle type:

create view ride_distance_for_each_vehicle  As
select Vehicle_Type, 
round(Avg(Ride_Distance),2)
as avg_distance from ola
group by Vehicle_Type;

SELECT * FROM ride_distance_for_each_vehicle;

-- 3. Get the total number of cancelled rides by customer:


Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM ola
WHERE Booking_Status = 'cancelled by Customer';

select * from cancelled_rides_by_customers;



-- 4. List the top 5 customers who booked the highest number of rides:

Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM ola
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

select * from Top_5_Customers;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

create View Rides_canceled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM ola
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from Rides_canceled_by_Drivers_P_C_Issues;

select * from ola;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM ola 
WHERE Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating;

-- 7. Retrieve all rides where payment was made using UPI:

Create View UPI_Payment As
SELECT * FROM Ola
WHERE Payment_Method = 'UPI';

select * from UPI_Payment;

-- 8. What is the total count of rides paid for using the UPI payment method?

CREATE VIEW Paid_by_UPI_View AS
SELECT
	COUNT(Payment_Method) AS Paid_by_UPI
	FROM ola
	WHERE Payment_Method = 'UPI';
    
SELECT * FROM Paid_by_UPI_View;


-- 9. Find the average customer rating per vehicle type:

Create View AVG_Cust_Rating As
SELECT Vehicle_Type, 
	Round(AVG(Customer_Rating),2) as avg_customer_rating
	FROM ola
	GROUP BY Vehicle_Type;

select * from AVG_Cust_Rating ;


-- 10. Calculate the total booking value of rides completed successfully?

Create View total_successful_ride_value As
SELECT 
	SUM(Booking_Value) as total_successful_ride_value
	FROM ola
	WHERE Booking_Status = 'Success';

select * from total_successful_ride_value;

-- 11. List all incomplete rides along with the reason:

Create View Incomplete_Rides_Reason As
SELECT 
	Booking_ID, 
	Incomplete_Rides_Reason
	FROM ola
	WHERE Incomplete_Rides = 'Yes';

select * from Incomplete_Rides_Reason;

-- 12.What is the total number of incomplete rides grouped by the reason for their incompletion?

create View incomplete_rides_grouped_by_the_reason_for_their_incompletion as
SELECT 
	count(Booking_ID) as Total_Count,
	Incomplete_Rides_Reason
	FROM ola
	WHERE Incomplete_Rides = 'Yes'
	group by Incomplete_Rides_Reason;

select * from incomplete_rides_grouped_by_the_reason_for_their_incompletion;


-- Retrieve All Answers:

-- 1. Retrieve all successful bookings and its?
      SELECT * from Successful _Bookings;
      
-- 2. Find the average ride distance for each vehicle type?
     SELECT * FROM ride_distance_for_each_vehicle;
     
-- 3. Get the total number of cancelled rides by customer?
     SELECT * from cancelled_rides_by_customers;
     
-- 4. List the top 5 customers who booked the highest number of rides?
     SELECT * from Top_5_Customers;
     
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues?
    SELECT * from Rides_canceled_by_Drivers_P_C_Issues;
    
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings?
     SELECT* from Max_Min_Driver_Rating; 
     
-- 7. Retrieve all rides where payment was made using UPI?
     SELECT* from UPI_Payment; 
     
-- 8. What is the total count of rides paid for using the UPI payment method?
     SELECT * FROM Paid_by_UPI_View;
     
-- 9. Find the average customer rating per vehicle type?
    SELECT * from AVG_Cust_Rating ;
    
-- 10. Calculate the total booking value of rides completed successfully?
     SELECT * from total_successful_ride_value; 
     
-- 11. List all incomplete rides along with the reason?
    SELECT * from Incomplete_Rides_Reason;
    
-- 12. What is the total number of incomplete rides grouped by the reason for their incompletion?
    SELECT* from incomplete_rides_grouped_by_the_reason_for_their_incompletion;











