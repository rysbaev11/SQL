create table employees(
id serial primary key,
employee_name varchar(50)not null 

);
insert into employees(id,employee_name)
values  (default,'Omurbek Rysbaev'),
        (default,'luliia Ekkart'),
        (default,'Alexandr T'),
        (default,'John Magnus'),
        (default,'Anya Garmatii'),
        (default,'Evgeniy Chronology'),
        (default, 'Katya Ope'),
        (default,'Artem Nalivayka'),
        (default,'Elen Krava'),
        (default,'Dima Shevchik'),
        (default,'Marina Shurpakova'),
        (default,'Nataliya Ishtiaq'),
        (default,'Andrew Komarnitsky'),
        (default,'Ilya Devyatkin'),
        (default,'Anastasiya Kolesnikovich'),
        (default,'Lyahovec Cklimenti'),
        (default,'Alina Povstyan'),
        (default,'Inna O'),
        (default,'Violetta Leonova'),
        (default,'Maria Parfik'),
        (default,'Elena Stepanova'),
        (default,'Alla Besedina'),
        (default,'Anna Leonovich'),
        (default,'Anna Sheviha'),
        (default,'Anton Trovimenko'),
        (default,'Nikolay Kadasov'),
        (default,'Gleb'),
        (default,'Evgeny Kolodenets'),
        (default,'Tatyana Vikulova'),
        (default,'Evgeniy Petrov'),
        (default,'Max Ermolin'),
        (default,'Liudmyla Liudmyla '),
        (default,'Vladimir Leshenko'),
        (default,'Evvgeniy Belousov'),
        (default,'Elena Kot'),
        (default,'Olga Vladimirovna'),
        (default,'Hanna Mikh'),
        (default,'Andrei Plakhov'),
        (default,'Sergey Logunov'),
        (default,'Julio Vo'),
        (default,'lidia Gromiko'),
        (default,'Victoria Taratuta'),
        (default,'Lyubov Radenckaya'),
        (default,'Ekaterina Grigorteva'),
        (default,'Evgeniy Davidenko'),
        (default,'Pavel Knyazev'),
        (default,'German Dzebisov'),
        (default,'Aleksei Zvonilov'),
        (default,'Katya Prokopiuk'),
        (default,'Igor Karabach'),
        (default,'Olga Polhovskaya'),
        (default,'Lyuba Alekseeva'),
        (default,'Diana Baneevich'),
        (default,'Olga Ruzanova'),
        (default,'Anna Krasner'),
        (default,'Ayrin Vira'),
        (default,'Danila Hazhiev'),
        (default,'Vladimir Serov'),
        (default,'Vadim Khomich'),
        (default,'Regina Kirichenko'),
        (default,'Bulat'),
        (default,'Klim Molokov'),
        (default,'Alexey Belyaev'),
        (default,'Dmitry Nevedomiy'),
        (default,'Alexei Revenko'),
        (default,'Aleksey Volkov'),
        (default,'Evgenii Samsonov'),
        (default,'Evdokimov Vova'),
        (default,'Masha Bondorenko'),
        (default,'Yuliya Koval');
       
       select * from employees;
        
create table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary(id,monthly_salary)
values (default,1000),
       (default,1100),
       (default,1200),
       (default,1300),
       (default,1400),
       (default,1500),
       (default,1600),
       (default,1700),
       (default,1800),
       (default,1900),
       (default,2000),
       (default,2100),
       (default,2200),
       (default,2300),
       (default,2400),
       (default,2500);
      
      
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);      
select *from employee_salary;
insert into employee_salary(id, employee_id, salary_id)
values (default,5,1),
       (default,6,2),
       (default,7,3),
       (default,8,4),
       (default,9,5),
       (default,10,6),
       (default,11,7),
       (default,12,8),
       (default,13,9),
       (default,14,10),
       (default,15,11),
       (default,16,12),
       (default,17,13),
       (default,18,14),
       (default,19,15),
       (default,20,16),
       (default,21,17),
       (default,22,18),
       (default,23,19),
       (default,24,20),
       (default,25,21),
       (default,26,22),
       (default,27,23),
       (default,28,24),
       (default,29,25),
       (default,30,26),
       (default,201,27),
       (default,202,28),
       (default,203,29),
       (default,204,30),
       (default,205,31),
       (default,209,32),
       (default,206,33),
       (default,303,34),
       (default,304,35),
       (default,305,36),
       (default,306,37),
       (default,307,38),
       (default,308,39),
       (default,309,40);
      

create table roles(
id serial primary key,
role_name int not null unique
) ;

alter table roles
alter column role_name type varchar(30);

insert into roles(id, role_name)
values (default,'Junior Python developer'),
       (default,'Middle Python developer'),
       (default,'Senior Python developer'),
       (default,'Junior Java developer'),
       (default,'Middle Java developer'),
       (default,'Senior Java developer'),
       (default,'Junior JavaScript developer'),
       (default,'Middle JavaScript developer'),
       (default,'Senior JavaScript developer'),
       (default,'Junior Manual QA engineer'),
       (default,'Middle Manual QA engineer'),
       (default,'Senior Manual QA engineer'),
       (default,'Project Manager'),
       (default,'Designer'),
       (default,'HR'),
       (default,'CEO'),
       (default,'Sales manager'),
       (default,'Junior Automation QA engineer'),
       (default,'Middle Automation QA engineer'),
       (default,'Senior Automation QA engineer');
        
      
 create table roles_employee (
 id serial primary key,
 employee_id int not null unique ,
 role_id int not null,
 foreign key (employee_id)
      references employees(id),
 foreign key (role_id)
      references roles(id)
 );     

insert into roles_employee (id, employee_id, role_id)
values (default,5,3),
       (default,6,11),
       (default,45,1),
       (default,65,2),
       (default,35,3),
       (default,49,6),
       (default,54,8),
       (default,43,10),
       (default,42,11),
       (default,11,13),
       (default,25,14),
       (default,7,11),
       (default,8,8),
       (default,9,9),
       (default,10,6),
       (default,15,1),
       (default,12,2),
       (default,13,4),
       (default,16,6),
       (default,17,8),
       (default,18,1),
       (default,19,2),
       (default,20,3),
       (default,21,4),
       (default,22,5),
       (default,44,6),
       (default,24,7),
       (default,26,8),
       (default,18,9),
       (default,46,10),
       (default,28,11),
       (default,29,13),
       (default,39,14),
       (default,25,15),
       (default,19,1),
       (default,33,2),
       (default,22,3);
      
  select * from roles_employee;   
      