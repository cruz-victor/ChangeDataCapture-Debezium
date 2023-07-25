#-------------
create table public.claims (claim_id integer, claim_date date, member_id integer, claim_status char(1));
create table public.drugs (drug_id integer, drug_name char(30), drug_price decimal(9,3));
create table public.member (member_id integer, member_name char(50), member_dob date);

#--------------
alter table public.claims replica identity full;
alter table public.drugs replica identity full;
alter table public.member replica identity full;

#--------------
insert into public.claims values (1,'2023-01-01',1,'P');
insert into public.drugs values (1,'Adderall',10);
insert into public.member values (1,'Prasad','1990-01-01');

insert into public.claims values (2,'2023-01-01',2,'P');
insert into public.drugs values (2,'Adderall',10);
insert into public.member values (2,'Prasad','1990-01-01');

update public.claims set member_id=100 where claim_id=1;
update public.drugs set drug_price=200 where drug_id=1;

delete from public.claims where claim_id =1;
delete from public.drugs  where drug_id =1;