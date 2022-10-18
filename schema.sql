CREATE TABLE IF NOT EXISTS Customer (
	id_customer int(50) primary key,
    customer_name varchar(50),
    customer_phone int(50),
    id_table varchar(50)
);

CREATE TABLE IF NOT EXISTS Reservation (
	id_reservation int(50) primary key,
	reservation_date varchar(50),
    reservation_time varchar(50),
    nb_customer int(50),
    id_customer int(50),
    foreign key (id_customer) references Customer(id_customer)
);

CREATE TABLE IF NOT EXISTS Order_customer (
	id_order int(50) primary key,
	id_customer int(50),
    nb_food int(50),
    order_name varchar(50),
    foreign key (id_customer) references Customer(id_customer)
);

CREATE TABLE IF NOT EXISTS Payment(
id_invoice int(50) primary key,
id_order int(50),
id_customer int(50),
bill_amount decimal(50),
payment_date varchar(50),
foreign key (id_order) references Order_customer(id_order),
foreign key (id_customer) references customer(id_customer)
);

