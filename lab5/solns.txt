SELECT name FROM store ORDER BY name; 

SELECT name from store order by name asc limit 3;

select name from store order by name desc limit 3;

select name from store where price>1;

select id, name, qty, price, qty*price AS cost from store;

select sum(qty*price) as totalcost from store;

SELECT count(distinct name) from store;

select c.name from course c inner join department d on c.deptId=d.id where d.name='CSC';

select sum(count) from enrollment;

select count(distinct name, deptId) from course;

select count(distinct  name) from department;

select concat(d.name, ' ', c.name) from department d inner join course c on c.deptId = d.Id;

select concat(d.name, c.name) from department d inner join course c on c.deptId = d.Id where d.name='CSC';

select c.name, d.name, e.count from course c inner join department d on c.deptId=d.Id inner join enrollment e on e.Id=c.Id;

