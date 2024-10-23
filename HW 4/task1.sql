
-- 1.	Insert into events table the information ‘Fluffy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’.

INSERT INTO petEvent(petname, eventdate,eventtype,remark)
VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics");

-- 2.	Insert into events table the information ‘Hammy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’. 
-- Note that Hammy is a male ‘hamster’ of ‘Diane’ which was born on 2010-10-30 and STILL DIDN’T DIE.

INSERT INTO petPet (petname, owner, species, gender, birth,death)
VALUES ("HAMMY", "DIANE", "HAMSTER", "M" ,"2010-10-30", null);


INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES("Hammy", "2020-10-15", "vet", "antibiotics");

-- 3.	It appeared that Fluffy had 5 kittens 2 of which are male.
-- I HAD TO MAKE UP A DATE AS I USED THE ATTRIBUTE "eventdate" AS A 
-- PART OF THE PRIMARY KEY FOR THE "petEvent" TABLE AS YOU CAN SEE ON TASK1

INSERT INTO petEvent(petname, eventdate, eventtype, remark)
VALUES("FLUFFY", "2024-10-23", "LITTER", "5 KITTENS, 3 FEMALE, 2 MALE");


-- 4.	Also, on “1997-08-03” it was Claws who broke the rib.


UPDATE petEvent 
SET petname = "Claws", 
    eventtype = "vet", 
    remark = "broken rib" 
WHERE eventdate = "1997-08-03" 
    AND petname = "Slim";


-- 5.	Unfortunately, Puffball died on ‘2020-09-01’.

INSERT INTO petEvent (petname,eventdate,eventtype,remark)
VALUES ("PUFFBALL", "2020-09-01", "DEATH", "DIED");

UPDATE petPet
SET death = "2020-09-01"
WHERE petname = "Puffball";


-- 6.	Harold asked me to remove his dog from my database due to GDPR.
-- I HAD TO DELETE ANY ROWS THAT INCLUDED THE NAME "Buffy" SINCE THE 
-- ATTRIBURE "petname" WAS RELATED TO THE FOREIGN KEY OF THE TABLE "petEvent".

DELETE FROM petEvent 
Where petname = "Buffy";


DELETE FROM petPet
WHERE petname = "Buffy";
