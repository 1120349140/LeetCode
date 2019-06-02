 -- 197.上升的温度
 select 
    w1.Id
from
    Weather as w1
left join
    Weather as w2
on
    datediff(w1.RecordDate,w2.RecordDate)=1
where
    w1.Temperature>w2.Temperature
	
	
 -- 178.分数排名
select 
	s1.score,count(distinct s2.score) ranking
from
	scores s1,scores s2
where
	s1.score<=s2.score
group by
	s1.Id
order by
	ranking;、
	
 -- 180.连续出现的数字
 1>
select 
	l1.num consecutiveNums
from
	logs l1
join
	logs l2
on
	l1.Id=l2.Id-1
join
	logs l3
on
	l1.Id=l3.Id-2
where
	l1.num=l2.num
AND
	l1.num=l3.num;

2> 用户变量方法
select distinct num as consecutiveNums
from
	(
    select 
		Num,
		case
			when @prev = num then @count := @count +1
			when (@prev := num)is not null then @count := 1
		end as CNT
    from 
		logs,(select @prev :=null,@count :=null) as t
    ) as temp
where
	temp.CNT>=3;
	
	
添加一条测试语句
