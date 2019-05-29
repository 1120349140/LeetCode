
 -- 627.交换工资
 1>
	updata salary
	set=(
	if(
		sex="m","f","m"
		)
		);
2>
	updata salary
	set=case sex
		WHEN 'm' THEN 'f'
		ELSE 'm'
	END;
	
 -- 181.超过经理收入的员工
 select
	e1.Name Employee
 from
	Employee e1,Employee e2
 where
	e1.ManagerId=e2.Id
 and 
	e1.Salary>e2.Salary;
	
1>
select
	Name as Customers
from	
	Customers
where
	Id not in(
	select
		CustomerId
	form
		Orders
		);
		
2>
select 
    a.Name Customers
from(
    select
        c.Name Name,o.Id Id
    from
        Customers c
    left join
        Orders o
    on 
        c.Id=o.Customerid
) a
where
    a.Id is null;
    
	
 -- 196.删除重复的电子邮箱

1>
delete 
    p1
from
    Person p1,Person p2
where
    p1.Email=p2.Email
and
    p1.Id>p2.Id;
    
	
 -- 601.体育馆的人流量
 
 select distinct a.*
from
    stadium a,stadium b,stadium c
where
    a.people>=100 and b.people>=100 and c.people>=100
and(
    (a.id=b.id-1 and b.id=c.id-1)or
    (a.id=b.id-1 and a.id=c.id+1)or
    (a.id=b.id+1 and b.id=c.id+1)
)order by a.id;


 -- 596.超过5名学生的课
select 
	class
from 
	courses
group by 
	class							
having count(student)>= 5; 

 -- 176.第二高的薪水
 select Salary
from
    employee
limit 1,1;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
	