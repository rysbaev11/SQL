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
drop table salary;
insert into salary(monthly_salary)
	values (1000),
	       (1100),
	       (1200),
	       (1300),
	       (1400),
	       (1500),
	       (1600),
	       (1700),
	       (1800),
	       (1900),
	       (2000),
	       (2100),
	       (2200),
	       (2300),
	       (2400),
	       (2500);

      
      drop table employee_salary;
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
	values (3, 7),
	 	   (1, 4),
	 	   (5, 9),
	 	   (40, 13),
	 	   (23, 4),
	 	   (11, 2),
	 	   (52, 10),
	 	   (15, 13),
	 	   (26, 4),
	 	   (16, 1),
	 	   (33, 7),
	 	   (71, 11),
	 	   (2, 4),
	 	   (4, 6),
	 	   (6, 15),
	 	   (72, 5),
	 	   (7, 3),
	 	   (8, 9),
	 	   (20, 15),
	 	   (73, 14),
	 	   (74, 10),
	 	   (22, 1),
	 	   (27, 7),
	 	   (12, 6),
	 	   (13, 13),
	 	   (75, 2),
	 	   (76, 7),
	 	   (77, 11),
	 	   (78, 15),
	 	   (79, 4),
	 	   (80, 8),
	 	   (53, 5),
	 	   (48, 11),
	 	   (34, 1),
	 	   (35, 5),
	 	   (36, 8),
	 	   (37, 13),
	 	   (38, 15),
	 	   (39, 7),
	 	   (47, 3);
      

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
       
      select * from roles;
     drop  table roles_employee;
 create table roles_employee (
 id serial primary key,
 employee_id int not null unique ,
 role_id int not null,
 foreign key (employee_id)
      references employees(id),
 foreign key (role_id)
      references roles(id)
 );     
 
insert into roles_employee(employee_id, role_id)
	values (7, 2),		
		   (20, 4),
		   (3, 9),
		   (5, 13),
		   (23, 4),
		   (11, 2),
		   (10, 9),
		   (22, 13),
		   (21, 3),
		   (34, 4),
		   (6, 7),
		   (1, 6),
		   (2, 15),
		   (4, 11),
		   (8, 4),
		   (9, 12),
		   (13, 7),
		   (14, 1),
		   (15, 8),
		   (17, 12),
		   (18, 13),
		   (19, 5),
		   (24, 2),
		   (25, 6),
		   (35, 4),
		   (36, 9),
		   (40, 15),
		   (33, 8),
		   (69, 3),
		   (41, 9),
		   (42, 14),
		   (43, 11),
		   (47, 5),
		   (48, 7),
		   (50, 10),
		   (51, 11),
		   (55, 14),
		   (60, 3),
		   (65, 2),
		   (68, 13);
      
 -- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select e.employee_name, s.monthly_salary from employee_salary 
 inner join employees e on employee_id = e.id 
 inner join salary s on salary_id = s.id  ;
 
-- 2. Вывести всех работников у которых ЗП меньше 2000.
select distinct  e.employee_name , s.monthly_salary from employee_salary 
inner join employees e on employee_id = e.id 
inner join salary s on salary_id = s.id 
where s.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.id, monthly_salary, employee_name from salary s 
left join employee_salary es ON s.id = es.salary_id 
left join employees e on es.employee_id = e.id 
where es.employee_id is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.id, monthly_salary, employee_name from salary s 
left join employee_salary es ON s.id = es.salary_id 
left join employees e on es.employee_id = e.id 
where monthly_salary < 2000 and es.employee_id is null 
order by monthly_salary ;

-- 5. Найти всех работников кому не начислена ЗП.

select   employee_name 
from employees
left join employee_salary on employees.id = employee_salary.employee_id
where employee_salary.employee_id is null;

-- 6. Вывести всех работников с названиями их должности.
select  employee_name , role_name 
from employees e 
left join roles_employee re on e.id  = re.employee_id  
left join roles r on re.role_id  = r.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name ,role_name 
from  employees e 
join roles_employee re on e.id  = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name ,role_name 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%Python developer%';
-- 9. Вывести имена и должность всех QA инженеров.
select employee_name ,role_name 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '%QA%';
-- 10. Вывести имена и должность ручных QA инженеров.

select employee_name ,role_name 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where role_name like '% Manual QA engineer%';
select * from roles ;
-- 11. Вывести имена и должность автоматизаторов QA
select employee_name ,role_name 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where  role_name like '%Automation QA engineer %';


-- 12. Вывести имена и зарплаты Junior специалистов

select distinct  employee_name ,role_name , monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on es.salary_id = es.salary_id 
join salary s on s.id = salary_id 
where  role_name like '%Junior%'

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name ,role_name, monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on es.salary_id = es.salary_id 
join salary s on s.id = salary_id 
where  role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

select employee_name ,role_name monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on es.salary_id = es.salary_id 
join salary s on s.id = salary_id 
where  role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков

select  role_name , monthly_salary 
from roles r   
inner join roles_employee re on r.id = re.role_id 
inner join employee_salary es on re.employee_id  = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name   like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков

select  role_name , monthly_salary 
from roles r   
inner join roles_employee re on r.id = re.role_id 
inner join employee_salary es on re.employee_id  = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name   like '%Python %';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, role_name, monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
left join employee_salary es on e.id = re.employee_id
left join salary s on es.salary_id = s.id
where role_name like 'Junior Python developer';


-- 18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, role_name, monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
left join employee_salary es on e.id = re.employee_id
left join salary s on es.salary_id = s.id
where role_name like 'Middle JavaScript developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, role_name, monthly_salary
from employees e 
left join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
left join employee_salary es on e.id = re.employee_id
left join salary s on es.salary_id = s.id
where role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров

select monthly_salary, role_name
from salary s 
left join employee_salary es on s.id = es.salary_id 
left join roles_employee re on es.employee_id = re.employee_id 
left join roles r on re.role_id = r.id
where role_name like '%Junior %'or role_name like '%QA%' ;

-- 21. Вывести среднюю зарплату всех Junior специалистов
select AVG (monthly_salary ) 
from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary)
from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%JavaScript developer%';

-- 23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary)
from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer%';

-- 24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary)
from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer%';

-- 25. Вывести количество QA инженеров

select count (r.role_name) 
from roles_employee re
left join employees e on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
where r.role_name like '%QA engineer%';

-- 26. Вывести количество Middle специалистов.

select count (r.role_name) 
from roles_employee re
left join employees e on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
where r.role_name like '%Middle%';

-- 27. Вывести количество разработчиков

select count (r.role_name) 
from roles_employee re
left join employees e on re.employee_id = e.id 
left join roles r on re.role_id = r.id 
where r.role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select e.employee_name, r.role_name, s.monthly_salary 
from salary s 
inner join employee_salary es on es.salary_id = s.id 
inner join employees e on es.employee_id = e.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
order by  s.monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select e.employee_name, r.role_name, s.monthly_salary 
from salary s 
inner join employee_salary es on es.salary_id = s.id 
inner join employees e on es.employee_id = e.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where s.monthly_salary between 1700 and 2300
order by  s.monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select e.employee_name, r.role_name, s.monthly_salary 
from salary s 
inner join employee_salary es on es.salary_id = s.id 
inner join employees e on es.employee_id = e.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where monthly_salary < 2300
order by  s.monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary 
from salary s 
inner join employee_salary es on es.salary_id = s.id 
inner join employees e on es.employee_id = e.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by  s.monthly_salary asc;
-- 
 
       