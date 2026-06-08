```sql id="u9g1r0"
/*
TRANSACTIONS
*/


-- Place order + payment + shipment

BEGIN;


INSERT INTO orders(
customer_id,
order_date,
total_amount
)

VALUES
(
1,
CURRENT_DATE,
5000
);



INSERT INTO payments(
order_id,
payment_date,
amount
)

VALUES
(
1,
CURRENT_DATE,
5000
);



INSERT INTO shipments(
order_id,
shipment_date,
shipment_status
)

VALUES
(
1,
CURRENT_DATE,
'Pending'
);


COMMIT;





-- Rollback failed payment

BEGIN;


INSERT INTO payments(
order_id,
amount
)

VALUES
(
1,
1000
);


ROLLBACK;





-- Savepoint example

BEGIN;


INSERT INTO orders(
customer_id
)

VALUES
(
1
);


SAVEPOINT checkout;


INSERT INTO payments(
amount
)

VALUES
(
3000
);


ROLLBACK TO checkout;


COMMIT;





-- Stock deduction transaction

BEGIN;


UPDATE products

SET stock_quantity=
stock_quantity-1

WHERE product_id=1;


COMMIT;




/*
BEGIN
=
start transaction

COMMIT
=
save changes

ROLLBACK
=
undo

SAVEPOINT
=
partial undo
*/
```
