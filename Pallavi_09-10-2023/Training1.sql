create table tab1998(
gmail varchar(30)
);
insert into tab1998 values('pgpallavi75@gmail.com');


insert into tab1998 values('abc@gmail.com');

insert into tab1998 values('xyz@gmail.com');
insert into tab1998 values('abc@hotmail.com');
insert into tab1998 values('lmc@gmail.com');
insert into tab1998 values('esd@yahoo.com');
insert into tab1998 values('abc@yahoo.com');
insert into tab1998 values('mn@yahoo.com');

select * from tab1998;

select substr(gmail,(instr(gmail,'@' ,1))+1,(instr(gmail,'.',1)-instr(gmail,'@',1))-1),lower(gmail)
from tab1998;

select substr(gmail,(instr(gmail,'@'))+1)
from tab1998


select *
from tab1998
order by substr(gmail,instr(gmail,'@')+1),substr(gmail,1,instr(gmail,'@'));

select



