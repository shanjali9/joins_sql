--Customer table for Presidents
create table customer_sh(
    customer_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200),
    address VARCHAR(150),
    city VARCHAR(150),
    customer_state VARCHAR(100),
    zipcode VARCHAR(50)
);

--Orders table for Presidents
create table order_s(
    order_id SERIAL primary key, 
    order_date DATE default current_DATE,
    amount NUMERIC(5,2),
    customer_id INTEGER,
    foreign key(customer_id) references customer(customer_id)
);

insert into customer_sh(customer_id, first_name,last_name, email, address, city, customer_state, zipcode)
values(1, 'George', 'Washington','gwash@usa.gov','3200 Mt Vernon Hwy','Mt Vernon', 'VA','22121');

insert into customer_sh(customer_id, first_name,last_name, email, address, city, customer_state, zipcode)
values(2,'John','Adams','yaboijohn@usa.gov','1200 Hancock','Quincy','MA','02169');

insert into customer_sh(customer_id, first_name,last_name, email, address, city, customer_state, zipcode)
valuesI(3, 'Thomas','Jefferson','goawayuk@usa.gov','931 Thomas Jefferson Parkaway','Charlottesville','VA','02169');

insert into customer_sh(customer_id,first_name,last_name, email, address, city, customer_state, zipcode
values(4, 'James','Madison','madjames@usa.gov','11350 Conway', 'Orange', 'VA', '02169');

insert into customer_sh(customer_id, first_name,last_name, email, address, city, customer_state, zipcode)
values (5, 'James', 'Monroe','jmonroe@usa.gov','2050 James Monroe Parkway','Charlotesville','VA','02178351489');

--insert info into order_sh
 
insert into order_sh(order_id, amount, customer_id)
values(1,234,56.1);

insert into order_sh(order_id, amount, customer_id)
values(2,78.50,3);

insert into order_sh(order_id, amount, customer_id)
values(3,124,2);

insert into order_sh(order_id, amount, customer_id)
values(4,65.50,3);

insert into order_sh(order_id, amount, customer_id)
values(5,55.50,NULL);

select * from order_sh

--Time to do some joins
select first_name, last_name, order_date, amount
from customer_sh 
inner join order_sh
on customer_sh.customer_id = order_sh.order_id;

--Left join 
select first_name, last_name, order_date, amount 
from customer_sh 
left join order_sh 
on customer_sh.customer_id = order_sh.customer_id;

--Rigth join
select first_name, last_name, order_date, amount 
from customer_sh 
right join order_sh 
on customer_sh.customer_id = order_sh.customer_id;

--customer_sh = table A
--order_sh = table B 

--Full join 
select first_name, last_name, order_date, amount 
from customer_sh 
full join order_sh 
on customer_sh.customer_id = order_sh.customer_id
