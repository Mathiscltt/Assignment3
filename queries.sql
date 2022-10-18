SELECT c.*, oc.id_order,p.bill_amount, p.payment_date, r.reservation_date, r.reservation_time, r.nb_customer
FROM customer c
JOIN order_customer oc ON oc.id_customer=c.id_customer
JOIN payment p ON oc.id_order=p.id_order
JOIN reservation r ON r.id_customer=c.id_customer
WHERE c.id_customer='2';

SELECT c.customer_name, r.reservation_date,r.reservation_time,r.nb_customer
FROM customer c
JOIN reservation r ON r.id_customer=c.id_customer;

SELECT c.customer_name,r.nb_customer,p.bill_amount,p.payment_date
FROM customer c
JOIN reservation r ON c.id_customer=r.id_customer
JOIN payment p ON p.id_customer=c.id_customer;

SELECT c.customer_name,c.id_table,oc.nb_food
FROM customer c
JOIN order_customer oc ON c.id_customer=oc.id_customer
WHERE oc.nb_food>10;