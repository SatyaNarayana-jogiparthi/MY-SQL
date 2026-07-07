create database day;
use day;
create table stu(id int primary key,name varchar(100),dept char(5),mark int, city varchar(100));
insert into stu values(1,"satya","cse", 95,"chennai");
insert into stu values(2,"nani","aero", 90,"chennai");
insert into stu values(3,"avi","eee", 89,"chennai");
insert into stu values(4,"nandu","cec",10,"chennai");
insert into stu values(5,"loki","ari", 40,"chennai");
insert into stu values(6,"bhat","cse", 30,"chennai");
insert into stu values(7,"bujji","mech",44,"chennai");
insert into stu values(8,"lucky","ece", 66,"chennai");
insert into stu values(9,"ajay","cse", 91,"chennai");
insert into stu values(10,"rizwan","ece", 39,"chennai");
insert into stu values(11,"eshwar","eee", 45,"chennai");
select * from stu;
update stu set city = if(dept="cse","chennai","banglore");
set sql_safe_updates=0;
#3.many entries
update stu set dept = "ece" where id in (2,7);
#4.one entry
update stu set mark = 100 where name = "satya";
#5.based on many com->all entries
alter table stu add column grade varchar(10);
update stu set grade = case
when mark = 100 then "S"
when mark>80 then "A"
when mark>60 then "B"
when mark>40 then "P"
else "F"
end;
