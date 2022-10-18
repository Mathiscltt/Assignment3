SELECT c.*, oc.id_order,p.bill_amout, p.payment_date, r.reservation_date, r.reservation_time, r.nb_customer
FROM customer c
JOIN order_customer oc ON oc.id_customer=c.id_customer
JOIN payment p ON oc.id_order=p.id_order
JOIN reservation r ON r.id_customer=c.id_customer
WHERE c.id_customer='1';


