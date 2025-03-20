# join
# 데이터 중복을 최소화하고 이상현상을 방지하기 위해 테이블을 설계하는 과정에서
# 연관된 테이블을 분리하여 저
# 서로 연관된 데이터였으나 분리되어 저장된 테이블을 결합하여 조회할 때 사용

# 서브쿼리와 동일한 동작을 하는 쿼리를 작성하면 성능상의 문제를 최소할 수 있다. 

# 모든 직원의 이름, 부서명을 조회
select emp_name,
(select dept_title from department where e.DEPT_CODE  = dept_id) as '부서명'
from employee e;

select * from employee;
select * from department;

select *
from employee e
join department d on (e.dept_code = dept_id);

# join
# cross join
# inner join
# outer join
# 	left join
#	right join
# 	full outer join - MySQL은 지원 X

# cross join : 쓰지 말자
# 조인조건절이 무조건 참인 join
# 30만개의 상품데이터와 300만개의 주문데이터를 cross join
#  => 9천억개의 행을 가진 result set
select *
from employee
cross join department;

# inner join (equals join, 등가조인)
# inner join => join

# 사번 이름 직급명을 조회
select emp_id, emp_name, job_name
from employee e
join job j on (e.job_code = j.job_code);

# select emp_id, emp_name, job_name, job_code  
# 'job_code' in field list is ambiguous
# 두 테이블에 job_code가 있기 때문에 하나를 선택해주어야 함.
select emp_id, emp_name, job_name, e.job_code
from employee e
join job j on (e.job_code = j.job_code);

select emp_id, emp_name, job_name, job_code
from employee e
join job j using(job_code);  # 두 테이블의 컬럼명이 같다면 using

# 여러 테이블 join 하기
# 모든 사원들의 사번, 이름, 부서명, 근무지를 출력
select emp_id, emp_name, dept_title, local_name
from employee e
join department d on(e.dept_code = d.dept_id)
join location l on(d.location_id = l.local_code);









