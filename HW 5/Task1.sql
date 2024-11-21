-- 1
SELECT bill_date, bill_total from restBill
where cust_name = "Bob Crow";

--  2
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name like '%Smith'
ORDER BY cust_name DESC;

-- 3
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name like '% C%'
ORDER BY cust_name DESC;

-- 4
SELECT DISTINCT first_name, surname
FROM restStaff
WHERE headwaiter is NULL ;

-- 5
SELECT DISTINCT    bill_no, bill_date, bill_total, cust_name, covers, table_no, waiter_no
from restBill
where bill_date like "1602%";

-- 6
SELECT DISTINCT   bill_date
from restBill
where bill_date between "150101" and "151231"
order by bill_date;