begin 
DBMS_output.put_line(previouslyVotedInteger(216));
end;
/

begin
DBMS_output.put_line( CONCAT(lower(SUBSTR('Milli Cent Maske', 0, 1) ), '%' ) );
end;
/

declare
voter_id number;
begin

voter_id :=  return_id_voter('Milli Cent Mask');

dbms_output.put( 'Does voter ' || 'Milli Cent Maske' );
   dbms_output.put_line( ' exist: ' || 
   case
      when voter_id = -1 then 'No'
      when voter_id is null then 'NULL'
      else 'Yes'
   end
   ); 
   
end;
/

--declare using previouslyVoted
declare
--TYPE v_array_type IS VARRAY (10) OF NUMBER;
--variable v_array_type;
f_name VARCHAR(20);
m_name VARCHAR(20);
l_name VARCHAR(20);
voter_id number;
electorate VARCHAR(20) := 'abc';
election_code NUMBER := 1;
has_voted boolean;

begin

voter_id :=  return_id_voter('Milli Cent Maske');

--dbms_output.put( 'Does voter ' || 'OONGA BOONGA' );
--   dbms_output.put_line( ' exist: ' || 
--   case
--      when voter_id = -1 then 'No'
--      when voter_id is null then 'NULL'
--      else 'Yes,' || ' voter id is: ' || voter_id
--   end
--   ); 
   
if (voter_id = -1) then 
Null;

else 

--SELECT first_name, middle_name, last_name INTO f_name, m_name, l_name
--from voter WHERE ID = voter_id;
--dbms_output.put_line(f_name || m_name || l_name); 

has_voted := previouslyVoted(election_code, electorate, voter_id);
   dbms_output.put( 'Has voter ' || voter_id );
   dbms_output.put_line( ' voted: ' || 
   case
      when has_voted then 'TRUE'
      when has_voted is null then 'NULL'
      else 'FALSE'
   end
   ); 

end if;

   
end;
/

declare
--TYPE v_array_type IS VARRAY (10) OF NUMBER;
--variable v_array_type;
f_name VARCHAR(20);
m_name VARCHAR(20);
l_name VARCHAR(20);
voter_id number;
electorate VARCHAR(20) := 'Melbourne';
election_code NUMBER := 1;
has_voted number;

begin

voter_id :=  return_id_voter('Bob John Doe');
dbms_output.put_line(return_electorate(voter_id));
--dbms_output.put( 'Does voter ' || 'OONGA BOONGA' );
--   dbms_output.put_line( ' exist: ' || 
--   case
--      when voter_id = -1 then 'No'
--      when voter_id is null then 'NULL'
--      else 'Yes,' || ' voter id is: ' || voter_id
--   end
--   ); 
   
if (voter_id = -1) then 
Null;

else 

--SELECT first_name, middle_name, last_name INTO f_name, m_name, l_name
--from voter WHERE ID = voter_id;
--dbms_output.put_line(f_name || m_name || l_name); 

has_voted := previouslyVotedInteger(election_code, electorate, voter_id);
   dbms_output.put( 'Has voter ' || voter_id );
   dbms_output.put_line( ' voted: ' || 
   case
      when has_voted = 1 then 'TRUE'
      when has_voted is null then 'NULL'
      else 'FALSE'
   end
   ); 

end if;

   
end;
/

CREATE Or REPLACE TYPE namearray AS VARRAY(20) OF VARCHAR2(25); 
/ 

declare
candidate_array namearray;
begin
SELECT name into candidate_array from candidates where electorate_e_name = 'Chisholm';
--dbms_output.put_line(candidate_array(0));
end;
/

begin
dbms_output.put_line(return_id_voter('Joe Bloggs'));
dbms_output.put_line(return_id_voter('Penny Chan'));

end;
/

declare 
ball_pap_id number;
BEGIN 
SELECT max(ID) INTO ball_pap_id from ball_pap;
dbms_output.put_line(ball_pap_id);
END;
/