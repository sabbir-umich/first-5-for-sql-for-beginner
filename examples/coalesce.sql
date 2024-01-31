select
    work.person,
    coalesce(sum(job.billable), 0.0) as pay
from work left join job
on work.job = job.name
group by work.person;
