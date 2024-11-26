-- 1
SELECT DISTINCT rb.cust_name
FROM restBill rb
JOIN restRest_table rt 
ON rb.table_no = rt.table_no
JOIN restRoom_management rm 
ON rt.room_name = rm.room_name 
AND rb.bill_date = rm.room_date
JOIN restStaff rs ON rm.headwaiter = rs.staff_no
WHERE rb.bill_total > 450.00
AND rs.first_name = "Charles";

-- 2
SELECT DISTINCT rs.first_name, rs.surname
FROM restRoom_management rm
JOIN restStaff rs 
ON rm.headwaiter = rs.staff_no
JOIN restRest_table rt 
ON rm.room_name = rt.room_name
JOIN restBill rb 
ON rt.table_no = rb.table_no
WHERE rb.cust_name = "Nerida Smith"
AND rb.bill_date = 160111;

-- 3
SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);


-- 4
SELECT s.first_name, s.surname
FROM restStaff s
WHERE s.staff_no 
NOT IN (SELECT DISTINCT waiter_no FROM restBill);

-- 5
SELECT rb.cust_name, rs.first_name AS headwaiter_first_name, rs.surname AS headwaiter_surname, rm.room_name
FROM restBill rb
JOIN restRest_table rt ON rb.table_no = rt.table_no
JOIN restRoom_management rm 
ON rt.room_name = rm.room_name 
AND rb.bill_date = rm.room_date
JOIN restStaff rs 
ON rm.headwaiter = rs.staff_no
WHERE rb.bill_total = (SELECT MAX(bill_total) FROM restBill);
