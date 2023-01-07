alter table customer
add customer_age integer;

update customer 
set customer_age = 58
where customer_id = 1;

select * from customer