https://leetcode.com/problems/find-the-team-size/

create table employee (employee_id int, team_id INT);

insert employee values(1,8);
insert employee values(2,8);
insert employee values(3,8);
insert employee values(4,7);
insert employee values(5,9);
insert employee values(6,9);

select A.employee_id , B.team_size from employee A 
join (select count(e2.employee_id) as team_size, e2.team_id as team_id from employee e2 group by e2.team_id ) B
on A.team_id = B.team_id;

select A.employee_id , B.team_size from employee A 
join 
(select count(*) as team_size, team_id from employee group by team_id ) B
on A.team_id = B.team_id
