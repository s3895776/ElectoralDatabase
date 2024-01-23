-- problem as full name requires first, middle and last. 
-- not all names will be entered as 2 to 3 strings either. 

SELECT * from voter where ID BETWEEN 0 AND 20 order by id;

SELECT * from voter where id = 999;

select * from voter where electorate_e_name = 'Melbourne';

SELECT first_name, middle_name, last_name from voter WHERE lower(first_name) LIKE 'b%';

SELECT first_name, middle_name, last_name 
from voter WHERE ID = 7;

SELECT first_name, middle_name, last_name 
from voter WHERE ID = 999;

SELECT *
from irec;

SELECT * from voter where ID BETWEEN 0 AND 20 order by id;


--replace the string with a full name string
-- reason for getting the first letter is to shorten the number of reads to be made
-- also to make sure its the first name alone, as the database stores a full name in three parts. 
SELECT first_name, middle_name, last_name, id
from voter 
WHERE lower(first_name) LIKE CONCAT(lower(SUBSTR('Milli Cent Maske', 0, 1) ), '%' ) ;

select name 
from candidates where electorate_e_name = 'Chisholm';

select * 
from candidates where electorate_e_name = 'Melbourne';

select * from candidates
order by can_id;

select * from parties;

select * from irec;

select * from ball_pap where id = (select max(ID) from ball_pap);

select * from ball_pref where ball_pap_id = (select max(ID) from ball_pap);

select name, can_id 
from candidates 
where electorate_e_name = 'Hotham'
order by can_id;

SELECT c.name, c.can_id, p.name 
FROM candidates c join parties p on c.parties_code = p.code
WHERE c.electorate_e_name = 'Melbourne';

