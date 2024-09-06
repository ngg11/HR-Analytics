Create database kpi;
use  kpi;
select * from hr_2;
select * from hr_1;

#Average Hourly rate of Male Research Scientist
select avg(HourlyRate) as Avg_Hourly_Payout_Research_Scientist
from hr_1
where Gender= "Male" and JobRole= "Research Scientist";

#Average working years for each Department
select avg(hr2.TotalWorkingYears) as Avg_Working_hrs, hr1.Department
from hr_1 as hr1 inner join hr_2 as hr2 on 
hr1.EmployeeID= hr2.EmployeeID
group by Department;

#Job Role Vs Work life balance
SELECT hr1.jobrole , avg(hr2.WorkLifeBalance) as Avg_Work_Life_bal
from hr_1 as hr1 inner join hr_2 as hr2
on hr1.EmployeeID= hr2.EmployeeID
group by hr1.jobrole
order by Avg_Work_Life_bal desc;

    

















