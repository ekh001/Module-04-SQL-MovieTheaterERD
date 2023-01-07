--Customer
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	payment_info VARCHAR(150)
);

--Ticket Inventory
create table movie_tickets (
	upc SERIAL primary key,
	ticket_amount INTEGER 
);

--Concession Inventory
create table concession_inventory (
	con_upc SERIAL primary key,
	concession_amount INTEGER 
);

--Payment
create table payment (
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER not null,
	foreign key(upc) references movie_tickets(upc),
	con_upc INTEGER not null,
	foreign key(con_upc) references concession_inventory(con_upc)
);

--Movie Database
create table movie (
	movie_id SERIAL primary key,
	price NUMERIC(5,2),
	movie_title VARCHAR(100),
	upc INTEGER not null,
	foreign key(upc) references movie_tickets(upc)
);

--Concession Counter
create table concessions (
	con_id SERIAL primary key,
	con_price NUMERIC(5,2),
	con_name VARCHAR(100),
	con_upc INTEGER not null,
	foreign key(con_upc) references concession_inventory(con_upc)
);
