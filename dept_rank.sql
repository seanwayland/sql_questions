
/*
Find the top three distinct salaries for each department.
Output the department name and the top 3 distinct salaries by each department. 
Order your results alphabetically by department and then by highest salary to lowest.
*/



with cte as ( select department, salary, dense_rank() over (partition by department order by salary desc) as rnk from twitter_employee ) 
select distinct department, salary from cte where rnk <= 3 order by department, salary desc ;
