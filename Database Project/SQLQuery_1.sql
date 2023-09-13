
--Table creation

create table Hotel 
(    
    --finding the attributes for this table 

    hotel_id int primary key not null, 
    hotel_name varchar(100) not null, 
    hotel_contact_number varchar(100),
    hotel_address varchar(100) not null,
    manager_id int not null,


);
go 


create table Manager
(   
    --finding the attributes and setting them to not null 
    --setting primary key manager_id
    manager_id int primary key not null,
    manager_name varchar(100) not null,
    manager_address varchar(200) not null,
    manager_contact_number varchar(100),
    manager_surname varchar(100) not null,
    manager_email varchar(100) not null

  
);
go 

create table Room_Type 
(
    room_type_id int primary key not null, 
    room_type_name varchar(100),
    room_type_cost decimal (10, 2) not null,
    room_type_description varchar(300) not null,
   

);


create table Room 
(

    room_id int primary key not null, 
    room_number varchar(100) not null,
    hotel_id int not null,
    room_type_id int not null, 
    constraint Hotel_To_Room_FK foreign key (hotel_id) references Hotel(hotel_id),
    constraint Room_Type_to_Room_FK foreign key (room_type_id) references Room_Type (room_type_id)
    
);
go 



go 


create table Customer
(
    customer_id int primary key not null, 
    customer_name varchar(100) not null, 
    customer_surname varchar(100), 
    customer_address varchar(100) not null, 
    customer_contact_number varchar(100),
    customer_email varchar(100) not null
);


go 


create table Booking 
(
    booking_id int primary key not null, 
    booking_date datetime not null, 
    check_in_date datetime not null, 
    check_out_date datetime not null, 
    booking_payment_type varchar(100) not null, 
    customer_id int not null,
    hotel_id int not null, 
    constraint Booking_to_Hotel foreign key (hotel_id) references  Hotel (hotel_id),
    constraint Booking_to_Customer_FK foreign key (customer_id) references Customer(customer_id)
);


go 


create table Bookin_To_Room 
(
    booking_id int not null, 
    room_id int not null,
    constraint Booking_To_Room_Fk foreign key (booking_id) references Booking(booking_id),
    constraint Booking_To_Room_Fk1 foreign key (room_id) references Room(room_id),
    primary key (booking_id, room_id)

);

go 


create table Employee
(
    employee_id int primary key not null, 
    employee_name varchar(100) not null, 
    employee_surname varchar(100), 
    employee_address varchar(100)not null,
    employee_contact_number varchar(100),
    employee_position varchar(100) not null, 
    employee_email varchar(100),
    hotel_id int not null, 
    constraint Employee_to_Hotel_FK foreign key  (hotel_id) references Hotel(hotel_id)
);

go

create table Service1
(
    service_id int primary key not null, 
    service_name varchar(100) not null, 
    service_cost decimal(10, 2) not null,
    hotel_id int not null, 
    constraint Service1_to_Hotel_FK foreign key (hotel_id) references Hotel (hotel_id)
);


go 

alter table Hotel
--creating a foreign key constraint to named Manager_to_Hotel_FK 
add constraint Manager_to_Hotel_FK foreign key (manager_id) references Manager (manager_id);
    






