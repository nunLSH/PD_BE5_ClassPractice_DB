# function
# 1. 문자 관련 함수
# 2. length, char_length, instr, substr, concat, replace, trim, lpad, rpad

# length
select length('text');
select length('텍스트');

# instr
select instr('programmers', 'r');
# locate
select locate('r','programmers');
select locate('r','programmers', 6);

# substr
select substr('programmers', 2);
select substr('programmers', 2, 5);

select substr('programmers' from 2);
select substr('programmers' from 2 for 5);

# employee 테이블에서 남자인 직원을 조회하시오.
# 남자: 주민등록번호의 8번째 자리가 1 또는 3
select emp_name, emp_no
from employee
where substr(emp_no, 8, 1) in (1, 3);

# concat
select concat('pro', 'gram', 'mers');

# cocat_ws
select concat_ws('!', 'pro', 'gram', 'mers');

# replace
select replace('programmers', 'mers', '!');

# trim
select length(trim('    programmers    '))
, trim('  programmers  ');

select trim(leading 'x' from 'xxxprogrammersxxx');
select trim(trailing 'x' from 'xxxprogrammersxxx');
select trim(both 'x' from 'xxxprogrammersxxx');
select trim('x' from 'xxxprogrammersxxx');

# lpad, rpad
select lpad('program', 11, 'hi');
select rpad('program', 11, 'mers');
select lpad('program', 11, ' ');

# employeee 테이블에서 사원명과 주민번호를 조회하시오
# 단 주민번호의 뒤 7자리는 * 로 마스킹처리 해주세요.
# 000000-*******
select emp_name, 
rpad(substr(emp_no,1 ,7), 14, '*')
from employee;

select emp_name,
replace(emp_no, substr(emp_no, 8), '*******')
from employee;

# 숫자 관련 함수
# abs, mod, floor, ceil, round, truncate
select abs(-222);
select mod(777, 10);
select floor(333.999);
select floor(-333.999);
select ceil(99.9999);
select ceil(-99.9999);
select round(99.99);
select round(93.99, -1);
select truncate(87.001, 0);
select truncate(87.001, -1);

# 날짜 관련 함수
# now, datediff, date_add, date_sub, year, month, date
select now();
select sysdate();
select curdate();

# datediff
# employee 테이블에서 사원들의 근무일자를 조회
select emp_name, DATEDIFF(now(), hire_date) as '근속일자'
from employee
where ent_yn = 'N';

# date_add
select date_add(now(), INTERVAL 1 day);
# 현재 시간에서 5분 10.0001초를 더한 시간을 구해보자
select date_add(now(), INTERVAL '5:10.0001' MINUTE_MICROSECOND);

# date_sub
select date_sub(now(), INTERVAL 1 day);
# 현재 시간에서 5분 10.0001초를 뺸 시간을 구해보자
select date_sub(now(), INTERVAL '5:10.0001' MINUTE_MICROSECOND);

select now(),
year(now()),
month(now()),
dayofweek(now()),
hour(now()),
minute(now()),
second(now());

# 형변환 함수
select cast('2025-03-21' as date) > '90-03-21';
select cast('2025-03-21' as datetime);
select cast('2025-03-21 1:1:1.1111111' as datetime(3));
select cast('9999.99' as double);
select cast('9999.99' as decimal(6,2));
select cast('1872년' as year);

# case-when-then
# case
# when 조건식 then 표현식
# ...
# else 표현식
# end 별칭

# 급여레벨
select emp_name, salary,
case 
	when salary >= 6000000 and salary <= 10000000 then 'S1'
	when salary >= 5000000 then 'S2'
	when salary >= 4000000 then 'S3'
	when salary >= 3000000 then 'S4'
	when salary >= 2000000 then 'S5'
	when salary >= 1000000 then 'S6'
	else 'S7'
end as '급여레벨'
from employee;






















