-- 1
SELECT DISTINCT rs.first_name, rs.surname
FROM restBill rb
JOIN restStaff rs
ON rb.waiter_no = rs.staff_no
WHERE rb.cust_name = 'Tanya Singh';


-- 2
SELECT DISTINCT room_date 
FROM restRoom_management rr
JOIN restStaff rs
ON rr.headwaiter = rs.staff_no
WHERE rs.first_name = "Charles"
AND rr.room_name = "Green"
And rr.room_date BETWEEN 160201 AND 160229;

-- 3
SELECT rs.first_name, rs.surname
FROM restStaff rs
JOIN restStaff zoe 
ON rs.headwaiter = zoe.headwaiter
WHERE zoe.first_name = 'Zoe' AND zoe.surname = 'Ball'
AND rs.staff_no != zoe.staff_no;

-- 4
SELECT rs.first_name, rs.surname
FROM restStaff rs
JOIN restStaff zoe 
ON rs.headwaiter = zoe.headwaiter
WHERE zoe.first_name = 'Zoe' AND zoe.surname = 'Ball'
AND rs.staff_no != zoe.staff_no;

-- 5
SELECT DISTINCT rs.first_name, rs.surname
FROM restRoom_management rr
JOIN restStaff rs 
ON rr.headwaiter = rs.staff_no
WHERE rr.room_name = 'Blue' AND rr.room_date = 160312

UNION

SELECT DISTINCT rs.first_name, rs.surname
FROM restBill rb
JOIN restRest_table rt 
ON rb.table_no = rt.table_no
JOIN restStaff rs 
ON rb.waiter_no = rs.staff_no
WHERE rt.room_name = 'Blue' AND rb.bill_date = 160312;

-- 6
SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
JOIN restRoom_Management rr 
ON rs.headwaiter = rr.headwaiter 
WHERE rr.room_name = "Blue"
AND rr.room_date = 160312

UNION 

SELECT DISTINCT rs.first_name, rs.surname
FROM restBill rb
JOIN restRest_table rr 
ON rb.table_no = rr.table_no
JOIN restStaff rs 
ON rb.waiter_no = rs.staff_no
WHERE rr.room_name = 'Blue' AND rb.bill_date = 160312;
