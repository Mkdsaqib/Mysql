CREATE database AJS_School;
use AJS_School;

create table student_info(std_name varchar(60), std_id int, std_course varchar(150));
show columns from student_info;

insert inTo student_info(std_name,std_id) values ('Waqas',28),('Mushtaq',61);
insert inTo student_info(std_course) values ('Phyics'),('Computer science');

insert inTo student_info values ('Amjad Butt',45,'English Language'),('Pervaiz Iqbal',57,'Urdu');
select * from student_info;

drop table student_info;
drop database AJS_School;




alter table student_info add column marks int;
alter table student_info drop column std_course;

alter table student_info rename student_information;

insert into student_info values ('Majid',34,'Matric',10), ('Azhar',56,'Inter',60);

select std_id,std_name as studentName from student_information;

select * from student_information where std_id <= 45;
select * from student_information where std_name in ('Azhar','Salman');

select * from student_information where std_id between 30 and 60;


select * from student_information where std_name like 'y____';
select * from student_information where std_name like 'e%';
select * from student_information where std_name like '%r';
select * from student_information where std_name like '%r';
select * from student_information where std_name like '%a%';
select * from student_information where std_name like '_a%';

select * from student_information order by std_name desc;

select count(std_id) from student_information;
select min(std_id) from student_information;
select max(std_id) from student_information;
select sum(std_id) from student_information;
select avg(std_id) from student_information;

create table students(std_id int primary key auto_increment, std_name varchar(55), std_contact int unique, std_nic varchar(15) unique);

drop table students;

insert into students(std_name, std_contact,std_nic) value
('zubair',32145434,'42401-6783273-1'),
('farooq',23235374,'43401-6783273-1'),
('akram',17437287,'44401-6783273-1'),
('masood',53422333,'45401-6783273-1'),
('kazim',73443534,'46401-6783273-1'),
('Raza',86676778,'47401-6783273-1');

truncate table students;

select * from students;

create table faculty(fac_id int primary key auto_increment, fac_name varchar(30), subject varchar(30));

select * from faculty;

drop table faculty;

insert into faculty(fac_name, subject) values
('Mr SAQIB', 'SEO'),
('Mr KAMRAN', 'Data Analyst'),
('Mr NASIR', 'Programming Fundamental'),
('Mr WAHAB', 'SQL Analyst');
   
   
alter table faculty add column std_id int;

alter table faculty add constraint foreign key (std_id) references students(std_id);

update faculty set std_id = 10 where fac_id = 4;


select faculty.fac_name, faculty.subject, students.std_name from
faculty inner join students on faculty.std_id = students.std_id;

select * from
faculty left join students on faculty.std_id = students.std_id;

select * from
faculty right join students on faculty.std_id = students.std_id;


select * from faculty where fac_name = 'Mr Tahir' and std_id >= 8;
select * from faculty where not fac_name = 'Mr Tahir' and not std_id > 8;
select * from faculty where fac_name = 'Mr Tahir' or std_id > 8;


select * from faculty where not fac_name = 'Mr Tahir';


select f1.fac_id,f1.fac_name, f1.subject,
f2.std_id from faculty as f1 right join faculty as f2 on f1.fac_id = f2.std_id;


create table class1 (stud_id int auto_increment primary key, stud_name varchar(20), stud_marks int);
create table class2 (stud_id int auto_increment primary key, stud_name varchar(20), stud_marks int);

insert into class1 (stud_name, stud_marks) values
('Jameela', 100),
('Sajida', 400),
('SADAF',560),
('Wajeeha', 180),
('Samreen', 980);


insert into class2 (stud_name, stud_marks) values
('ASHI', 1000),
('ANUSHA', 300),
('RABIA',500),
('Safia', 800),
('Kanwal', 50);

select * from class1
union
select * from class2;