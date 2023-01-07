--insert data into customer
insert into customer(
	customer_id,
	first_name,
	last_name,
	address, 
	payment_info
) values (
	1,
	'Namjoon',
	'Kim',
	'23 SorryforalltheBTSreferences Dr, Hot Springs, AR 06137',
	'5555-5555-5555-5555 555 05/25'
);

--insert ticket inventory data 
insert into movie_tickets (
	upc,
	ticket_amount
) values (
	1,
	100.00
);

--insert concession inventory data 
insert into concession_inventory (
	con_upc,
	concession_amount
) values (
	1,
	100.00
);

--Movie Data Creation
insert into movie(
	movie_id,
	price,
	movie_title,
	upc
) values (
	1,
	25.00,
	'Incredible Journey to the Center of Nic Cages Ego',
	1
);

--Concession Data Creation
insert into concessions(
	con_id,
	con_price,
	con_name,
	con_upc
) values (
	1,
	475.00,
	'small popcorn',
	1
);


--payment data
insert into payment (
	order_id,
	sub_total,
	total_cost,
	upc,
	con_upc
) values (
	1,
	425.00,
	428.50,
	1,
	1
);


select * from payment






