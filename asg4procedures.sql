--DROP PROCEDURE find_name;
-- NOTE: not the function used in the website.
create or replace function find_name(
full_name VARCHAR2
) 
RETURN VARCHAR2 
as
combine_string VARCHAR2(100);

CURSOR voter_cursor is 
SELECT first_name, middle_name, last_name 
from voter 
WHERE lower(first_name) LIKE CONCAT(lower(SUBSTR(full_name, 0, 1) ), '%' );
voter_first_name VARCHAR(25);
voter_middle_name VARCHAR(25);
voter_last_name VARCHAR(25);

begin

-- add first, middle and last names into combine_string 
open voter_cursor;
LOOP
FETCH voter_cursor INTO voter_first_name, voter_middle_name, voter_last_name;
EXIT WHEN voter_cursor%NOTFOUND;

--check if middle name exists (assume first and last is always there)
if (voter_middle_name = null)
then
    combine_string := voter_first_name || ' ' || voter_middle_name || ' ' || voter_last_name;
else 
    combine_string := voter_first_name || ' ' || voter_middle_name || ' ' || voter_last_name;
end if;

DBMS_output.put_line(combine_string);


--check that the voter exists by comparing with full_name
if (lower(combine_string) = lower(full_name))
then
close voter_cursor;
return combine_string;

end if;

END LOOP;
close voter_cursor;

return 'Voter does not exist';

end; 
/

create or replace function return_id_voter(
full_name VARCHAR2
) 
RETURN NUMBER 
as
combine_string VARCHAR2(100);

CURSOR voter_cursor is 
SELECT first_name, middle_name, last_name, id
from voter 
WHERE lower(first_name) LIKE CONCAT(lower(SUBSTR(full_name, 0, 1) ), '%' );
voter_first_name VARCHAR(25);
voter_middle_name VARCHAR(25);
voter_last_name VARCHAR(25);
voter_id Number;
begin

-- add first, middle and last names into combine_string 
open voter_cursor;
LOOP
FETCH voter_cursor INTO voter_first_name, voter_middle_name, voter_last_name, voter_id;
EXIT WHEN voter_cursor%NOTFOUND;

--dbms_output.put_line('middle_name: "'||voter_middle_name|| '"');

if ( (voter_middle_name IS null) or (voter_middle_name = '') )
then
    combine_string := voter_first_name || ' ' || voter_last_name;

else 
    combine_string := voter_first_name || ' ' || voter_middle_name || ' ' || voter_last_name;


end if;

dbms_output.put_line(combine_string);
--check that the voter exists by comparing with full_name
if (lower(combine_string) = lower(full_name))
then
close voter_cursor;
return voter_id;

end if;

END LOOP;
close voter_cursor;

return -1;

end; 
/

create or replace function return_electorate(
voter_id  voter.id%type
)
return VARCHAR
is
electorate_name electorate.e_name%type;
begin
null;
SELECT electorate_e_name into electorate_name
from voter
where id = voter_id;
return electorate_name;
end;
/

create or replace function previouslyVoted(
election_code IN election.es_num%type,
electorate IN electorate.e_name%type, 
voterID IN voter.id%type
)
RETURN boolean
IS

-- find the voter who has voted in this election (will have an issuance record)
CURSOR voter_cursor is
SELECT Election_es_num
from IREC
where Voter_ID = voterID and Election_es_num = election_code and Voter_Electorate_e_name = electorate;
--select the movie directed by the specified director
votersID voter_cursor%rowtype;
voted_before boolean := false;
BEGIN

OPEN voter_cursor;

-- if there is loop, voter in this electorate must have voted in this election
LOOP
fetch voter_cursor into votersID;
EXIT when voter_cursor%NOTFOUND;
voted_before := true;
END LOOP;
close voter_cursor;

return voted_before;
END;
/


--drop function previouslyVotedString;

create or replace function previouslyVotedInteger(
election_code IN election.es_num%type,
electorate IN electorate.e_name%type, 
voterID IN voter.id%type
)
RETURN NUMBER
IS

-- find the voter who has voted in this election (will have an issuance record)
CURSOR voter_cursor is
SELECT Election_es_num
from IREC
where Voter_ID = voterID and Election_es_num = election_code and Voter_Electorate_e_name = electorate;
--select the movie directed by the specified director
votersID voter_cursor%rowtype;
voted_before number := 0;
BEGIN

OPEN voter_cursor;

-- if there is loop, voter in this electorate must have voted in this election
LOOP
fetch voter_cursor into votersID;
EXIT when voter_cursor%NOTFOUND;
voted_before := 1;
END LOOP;
close voter_cursor;

return voted_before;
END;
/