1. Report:

How many rows do i have in each table in the employees database?

SELECT table_schema, table_name, table_rows FROM information_schema.tables WHERE TABLE_SCHEMA = 'employees' ORDER BY table_rows DESC ;

2. Report:

How many customer with the lastname name "Ahmed" do i have in our company?

   SELECT count(lastname) FROM customer WHERE lastname='Ahmed' ;
3. Report:
customer with the first name "metta" and the last name  with "Ares" do we have in our company?

SELECT Firstname,LastName FROM customer WHERE Firstname='Metta' and LastName='Ares'

4. Report:
 How many customer do we have that are booking cars for us since 2000 and who are they?
 SELECT fk_customerID

FROM Booking WHERE Booking.pickUpDate >= '2000-12-31'


5. Report:
   How many customer do we have booking cars  from 2000 up 20001 ?
SELECT count(customer.customerID) FROM customer 
INNER JOIN Booking ON Booking.fk_officeID = Booking.fk_officeID 
inner join vehicle on vehicle.vehicleID = vehicle.vehicleID WHERE pickUpDate = '2000-12-04' 
AND returnDate= '2000-12-06'