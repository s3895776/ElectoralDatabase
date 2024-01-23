
select * from voter where ID = 1;
select * from voter where ID = 2;
select * from voter where ID = 3;
select * from voter where ID = 4;
select * from voter where ID = 5;
select * from voter where ID = 6;
select * from voter where ID = 7;
select * from voter where ID = 8;
select * from voter where ID = 9;
select * from voter where ID = 10;
select * from voter where ID = 11;
select * from voter where ID = 12;
select * from voter where ID = 13;
select * from voter where ID = 14;

INSERT INTO VOTER (ID, POST_ADD, RES_ADD, ELECTORATE_E_NAME) 
VALUES (4, '908', 'NT', 'Durack');

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 1);

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 2);

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 3);

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 4);

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 5);

insert into irec (election_es_num, voter_electorate_e_name, voter_id)
values (1, 'Melbourne', 6);

update voter
set first_name = 'Bob', middle_name = 'John', last_name = 'Doe', electorate_e_name = 'Melbourne'
where ID = 1;

update voter
set first_name = 'Bob', middle_name = 'Mane', last_name = 'Tan', electorate_e_name = 'Melbourne'
where ID = 2;

update voter
set first_name = 'Milli', middle_name = 'Cent', last_name = 'Maske', electorate_e_name = 'Melbourne'
where ID = 3;

update voter
set first_name = 'Milli', middle_name = 'Illya', last_name = 'Margarine', electorate_e_name = 'Melbourne'
where ID = 4;

update voter
set first_name = 'Barst', middle_name = 'Water', last_name = 'Lake', electorate_e_name = 'Melbourne'
where ID = 5;

update voter
set first_name = 'Barst', middle_name = 'Kars', last_name = 'Dio', electorate_e_name = 'Melbourne'
where ID = 6;

update voter
set first_name = 'Marwan', middle_name = 'Lops', last_name = 'Uria', electorate_e_name = 'Melbourne'
where ID = 7;

update voter
set first_name = 'Marwan', middle_name = 'Senna', last_name = 'John', electorate_e_name = 'Melbourne'
where ID = 8;

update voter
set first_name = 'Sagcitus', middle_name = 'Ros', last_name = 'Poly', electorate_e_name = 'Melbourne'
where ID = 9;

update voter
set first_name = 'Sagcitus', middle_name = 'Terius', last_name = 'Mold', electorate_e_name = 'Melbourne'
where ID = 10;

update voter
set first_name = 'Quarry', middle_name = '', last_name = 'Doe', electorate_e_name = 'Melbourne'
where ID = 11;

update voter
set first_name = 'Quarry', middle_name = 'Lassus', last_name = 'Moose', electorate_e_name = 'Melbourne'
where ID = 12;

update voter
set first_name = 'Quarry', middle_name = 'Courier', last_name = 'Rock', electorate_e_name = 'Melbourne'
where ID = 13;

update voter
set first_name = 'Milli', middle_name = '', last_name = 'Night', electorate_e_name = 'Melbourne'
where ID = 14;

update candidates
set electorate_e_name = 'Chisholm'
where can_id between 1 and 13;


--Election Events:
--2022 Federal election for Hotham electorate
--2022 Federal election for Melbourne electorate

INSERT INTO election
VALUES (2, NULL, 'Federal' ); 

insert into parties (code, name)
values (1, 'Liberal Democrats');

insert into parties (code, name)
values (2, 'Australian Labor Party');

update parties 
set name = 'The Greens'
where code = 3;
--values (3, 'Louisa The Greens');

insert into parties (code, name)
values (4, 'United Australia Party');

insert into parties (code, name)
values (5, 'Pauline Hanson''s One Nation');

insert into parties (code, name)
values (6, 'Liberal');

insert into parties (code, name)
values (7, 'Animal Justice Party');

insert into parties (code, name)
values (8, 'Victorian Socialists');

commit;
--Hotham Electorate:
--Candidates
--SOK, Edward - Liberal Democrats	
--O'NEIL, Clare - Australian Labor Party
--WILLOUGHBY, Louisa - The Greens	 
--RIDGWAY, Bruce Scott - United Australia Party	
--TULL, Roger - Pauline Hanson's One Nation	 
--BEVINAKOPPA, Savitri - Liberal

select * from parties;

-- insert candidates
insert into candidates (can_id, name, parties_code, electorate_e_name)
values (14, 'SOK, Edward', 1, 'Hotham') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (15, 'O''NEIL, Clare', 2, 'Hotham') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (16, 'WILLOUGHBY, Louisa', 3, 'Hotham') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (17, 'RIDGWAY, Bruce Scott', 4, 'Hotham') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (18, 'TULL, Roger', 5, 'Hotham') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (19, 'BEVINAKOPPA, Savitri', 6, 'Hotham') ;

--Melbourne Electorate:
--Candidates
--BORG, Justin - United Australia Party
--PATERSON, Keir - Australian Labor Party
--BANDT, Adam - The Greens
--DAMCHES, James - Liberal	 
--PEPPARD, Richard - Liberal Democrats 
--ROBSON, Scott - Independent 
--STRAGAN, Walter - Pauline Hanson's One Nation	 
--POON, Bruce - Animal Justice Party	 
--BOLGER, Colleen - Victorian Socialists	

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (20, 'PEPPARD, Richard', 1, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (21, 'PATERSON, Keir', 2, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (22, 'BANDT, Adam', 3, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (23, 'BORG, Justin', 4, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (24, 'STRAGAN, Walter', 5, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (25, 'DAMCHES, James', 6, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (26, 'POON, Bruce', 7, 'Melbourne') ;

insert into candidates (can_id, name, parties_code, electorate_e_name)
values (27, 'BOLGER, Colleen', 8, 'Melbourne') ;

--Voters
--Joe Bloggs
--Address: 124 Latrobe Street Melbourne VIC 3000
--Registered to vote in Melbourne Electorate 

--Penny Chan
--Address:246 Clayton Road, Clayton VIC 3168
--Registered to vote in Hotham Electorate 

update voter
set first_name = 'Joe', middle_name = null, last_name = 'Bloggs', electorate_e_name = 'Melbourne'
where ID = 15;

update voter
set first_name = 'Penny', middle_name = null, last_name = 'Chan', electorate_e_name = 'Hotham'
where ID = 16;

ALTER TABLE parties
MODIFY name VARCHAR(100);

-- 2 is the election num
-- 16 is the voter
INSERT INTO irec values (2, 'Hotham', 16);

insert into ball_pap
values ((select max(ID) + 1 from ball_pap), 'Hotham', 2);

-- 14th for one of the candidates
-- 1 for a preference 
-- id from ball_pap
insert into ball_pref
values ((select max(ID) from ball_pap), 1, 14, 'Hotham', 2 );

delete from irec where voter_id = 16;
delete from irec where voter_id = 15;
delete from irec where voter_id = 10;

delete from ball_pref where ball_pap_id = (select max(ID) from ball_pap);

delete from ball_pap where id = (select max(ID) from ball_pap);

commit;

rollback;

