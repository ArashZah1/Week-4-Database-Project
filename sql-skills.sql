insert into artist (name)
values ('MGK');
insert into artist (name)
values ('Eminem');
insert into artist (name)
values ('Drake');

select name from artist
where artist_id < 6;

select e.first_name, e.last_name
from employee e
where city = 'Calgary';

select * from employee
-- where first_name = 'Nancy';
where reports_to = 2;

select count(*) from employee
where city = 'Lethbridge';

select count(*) from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total > 5;

select count(*) from invoice
where total < 5;

select sum(total) from invoice;


select *
from invoice 
where invoice_id in 
(select invoice_id 
 from invoice_line
 where unit_price > 0.99
);

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id;

select c.first_name "Cust First Name", c.last_name"Cust Last Name",
e.first_name"Emp First Name", e.last_name "Emp Last Name"
from customer c
join employee e on c.support_rep_id = e.employee_id;

select al.title, ar.name
from album al
join artist ar on al.artist_id = ar.artist_id;