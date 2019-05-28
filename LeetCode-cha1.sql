show databases;
create database leetcode;

-- 182.编写一个SQL查询，查找Person表中所有重复的电子邮箱

use leetcode;
create table Person(
Id int(4) primary key auto_increment,
Email varchar(50) not null
);
Truncate table Person;
desc Person;
insert Person value
(1,'a@b.com'),(2,'c@d.com'),(3,'a@b.com');
select * from Person;

select Email
from Person
group by Email
having count(Email)>1;

 -- 595.大的国家
 -- 编写一个SQL查询，输出表中所有大国家的名称、人口和面积
Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp bigint);
Truncate table World;
insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '2034300000');
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '1296000000');
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '1886810000');
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '371200000');
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '1009900000');
select * from World;
select 
		a.name as name,
        a.population as population,
        a.area as area
from 
		World a
where 
		area>3000000
        or a.population>25000000;
        
        
 -- 620.有趣的电影
 
 Create table If Not Exists cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1));
Truncate table cinema;
insert into cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
insert into cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
insert into cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
insert into cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
insert into cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');

desc cinema;
select * from cinema;
 -- 找到非 boring 且 id 为奇数的影片，并按照 rating 排列
 select * from cinema
 where 
	description != 'boring'
and
	id%2=1
order by rating desc;









