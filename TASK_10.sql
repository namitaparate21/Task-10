select * from sales

select * from vehical
 
----- trigger function used as sales
create or replace function updated_sales_customer_id()
returns trigger as $$
begin 
	if new.customer_id > 20000 then
    new.new_customer_id := new.customer_id+100;
    end if;
return new;
end
$$ language plpgsql;

create trigger trigger_updated_sales_customer_id
before insert on sales
for each row
execute function updated_sales_customer_id()

select * from sales

insert into sales(customer_id,vehical_id,loan_status) values('6785','9','false')


-----updated query 

update sales set customer_id = 2763 where id = 4
	
update sales set vehical_id = 14 where loan_status = 'false'

select * from sales



