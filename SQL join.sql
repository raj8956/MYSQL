use hamrodatabase;
drop VIEW if EXISTS hamroda;
create view hamroda as
select firstName, LastName
from customers
where customerID = 5;

use hamrodatabase;
select c.FirstName, c.LastName, o.OrderStatus, p.Notes
from customers as c
INNER JOIN orders as o
on c.CustomerID = o.CustomerID
right JOIN  payments p on o.orderID = p.orderID;

use hamrodatabase;
select concat(c.FirstName," ",c.LastName) as name, o.OrderStatus, p.Notes
from customers as c
INNER JOIN orders as o using(CustomerID)
right JOIN  payments p using(orderID);

use hamrodatabase;
select PaymentType, amount
from payments
where amount between 15 and 80;

use hamrodatabase;
select c.firstName, c.lastName, o.orderstatus, 
case 
when o.orderstatus = 'shipped' Then "good"
when o.orderstatus = 'pending' Then 'Follow up'
else  'check it default'
end as 'Remarks'
from customers c
inner join orders o using(customerID)
order by Remarks;
