



insert into Manager (manager_id, manager_name, manager_surname, manager_address, manager_contact_number, manager_email)
values 
( 8950, 'Alexander', 'Mitchell', '789 Oak Avenue, Cityville, USA', ' +1 (555) 123-4567', 'alexandermichell@gmail.com')



insert into Hotel (hotel_id, hotel_name, hotel_contact_number, hotel_address, manager_id)
values 
( 1902, 'Sunset View', '+1 (555) 123-4567' , '456 Park Avenue, Townsville, USA', 8950 )



insert into Customer (customer_id, customer_name, customer_surname, customer_address, customer_contact_number, customer_email)
values 
( 0001, 'Antoni',   'Levis',    '123 Main Street, Anytown, USA',      '+1 (555) 123-4567', 'antonilevis@gmail.com'),
( 0002, 'Emma',     'Johnson',  '456 Elm Avenue, Springfield, USA',   '+1 (555) 987-6543', 'emmajohnson@gmail.com'),
( 0003, 'Michael',  'Davis',    '789 Oak Road, Cityville, USA',       '+1 (555) 246-8102', 'michaeldevis@gmail.com'),
( 0004, 'Olivia',   'Williams', '321 Pine Street, Metroville, USA',   '+1 (555) 135-7910', 'oliviawilliams@gmail.com'),
( 0005, 'William',  'Brown',    '567 Cedar Lane, Townsville, USA',    '+1 (555) 369-2580', 'williambrown@gmail.com'),
( 0006, 'Ava',      'Jones',    '890 Walnut Drive, Villageland, USA', '+1 (555) 802-4671', 'ayajones@gmail.com'),
( 0007, 'James',    'Wilson',   '234 Maple Avenue, Countyville, USA', '+1 (555) 624-3579', 'jameswilson@gmail.com'),
( 0008, 'Sophia ',  'Martinez', '678 Birch Street, Suburbia, USA',    '+1 (555) 917-2468', 'sophiamartinez@gmail.com'),
( 0009, 'Benjamin', 'Anderson', '901 Willow Road, Countryside, USA',  '+1 (555) 372-9150', 'benjaminanderson@gmail.com'),
( 0010, 'Mia',      'Taylor',   '345 Ash Lane, Townscape, USA',       '+1 (555) 689-2345', 'miataylor@gmail.com')



insert into Employee (employee_id, employee_name, employee_surname, employee_address, employee_contact_number, employee_position, hotel_id)
values 
( 001, 'Sarah', 'Johnson', '123 Maple Street, Cityville, USA',   '+1 (555) 123-4567', 'Front Desk Receptionist',    1902),
( 002, ' Ethan', 'Williams', '456 Oak Avenue, Townsville, USA',  '+1 (555) 987-6543', 'Concierge',                  1902),
( 003, 'Olivia', 'Smith', '789 Elm Road, Countryside, USA',      '+1 (555) 246-8102', 'Housekeeping Staff' ,        1902),
( 004, 'Noah', 'Anderson', '234 Pine Street, Metroville, USA',   '+1 (555) 135-7910', 'Bellhop',                    1902),
( 005, 'Ava', 'Brown', '567 Cedar Lane, Suburbia, USA',          '+1 (555) 369-2580', 'Restaurant Server',          1902),
( 006, 'William', 'Davis', '890 Walnut Drive, Villageland, USA', '+1 (555) 802-4671', 'Bartender',                  1902),
( 007, 'Sophia', 'Clark', '345 Oak Road, Anytown, USA',          '+1 (555) 624-3579', 'Event Coordinator',          1902),
( 008, 'Jackson', 'Thomas', '678 Pine Avenue, Countyville, USA', '+1 (555) 917-2468', 'Security Officer',           1902),
( 009, 'Emma', 'Martinez', '901 Cedar Lane, Cityville, USA',     '+1 (555) 802-4671', 'Spa Therapist',              1902),
( 010, 'Lucas', 'Walker', ' 123 Elm Street, Townsville, USA',    '+1 (555) 624-3579', 'Sales and Marketing Manager',1902)





insert into Booking (booking_id, booking_date, check_in_date, check_out_date, booking_payment_type, customer_id,  hotel_id)
values 
(1001 , '2023-05-01', '2023-05-05', '2023-05-10', 'Credit Card',   0001,  1902 ),
(1002 , '2023-05-02', '2023-05-06', '2023-05-09', 'Cash',          0002,  1902 ),
(1003 , '2023-05-03', '2023-05-07', '2023-05-11', 'Debit Card',    0003,  1902 ),
(1004 , '2023-05-04', '2023-05-08', '2023-05-12', 'Credit Card',   0004,  1902 ),
(1005 , '2023-05-05', '2023-05-09', '2023-05-13', 'Cash',          0005,  1902 ),
(1006 , '2023-05-06', '2023-05-10', '2023-05-15', 'Credit Card',   0006,  1902 ),
(1007 , '2023-05-07', '2023-05-11', '2023-05-14', 'Debit Card',    0007,  1902 ),
(1008 , '2023-05-08', '2023-05-12', '2023-05-16', 'Cash',          0008,  1902 ),
(1009 , '2023-05-09', '2023-05-13', '2023-05-17', 'Credit Card',   0009,  1902 ),
(1010 , '2023-05-09', '2023-05-14', '2023-05-18', 'Debit Card',    0010,  1902 )


insert into Room_Type (room_type_id, room_type_name, room_type_cost, room_type_description )
values 
(1, 'Standard Room', 100, 'Cozy and comfortable room with basic amenities' ),
(2, 'Deluxe Room',   150, 'Spacious room with modern amenities and a stunning view' ),
(3, 'Suite Room',   150, 'Luxurious suite with separate living area and deluxe facilities')


insert into Room (room_id, room_number, hotel_id, room_type_id)
values 
(101, 202, 1902,  1 ),  
(102, 203, 1902,  2),
(103, 204, 1902,  3 ),  
(104, 205, 1902,  2 ), 
(105, 206, 1902,  2 ),
(106, 207, 1902,  1 ),
(107, 208, 1902,  3 ),
(108, 209, 1902,  1 ),
(109, 210, 1902,  3 ),
(110, 211, 1902,  3 ),
(111, 212, 1902,  1 ),
(112, 213, 1902,  2 ),
(113, 214, 1902,  3 ),
(114, 215, 1902,  1 ),
(115, 216, 1902,  2 ),
(116, 217, 1902,  1 ),
(117, 218, 1902,  2 ),
(118, 219, 1902,  2 ),
(119, 220, 1902,  3 ),
(120, 221, 1902,  1 )




insert into Service1 (service_id,[service_name], service_cost, hotel_id)
values 
( 01 , 'Room Service',          20, 1902),
( 02 , 'Housekeeping',          10, 1902),
( 03 , 'Laundry Service',       15, 1902),
( 04 , 'Concierge Assistence',  10, 1902),
( 05 , 'Fitness Center Access', 0,  1902),
( 06 , 'Spa Service',           50, 1902),
( 07 , 'Valet Parking',         20, 1902),
( 08 , 'Business Center',       0,  1902),
( 09 , 'Tour Desk',             10, 1902),
( 10 , 'Airport Shuttle',       30, 1902)



















