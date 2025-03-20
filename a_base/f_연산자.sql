# 산술연산자
# +, -, *, /
select 10 + 10;
select 10 - 10;
select 10 * 10;
select 10 / 3;

# 비교연산자
# <, >, <=, >=, =, [!=, <>]
select 20 < 10;
select 20 > 10;
select 20 <= 10;
select 20 >= 10;
select 20 = 10;
select 20 <> 10;

select '90-01-01' > '25-03-20';  ## 1 (문자열로 비교)
select date('90-01-01') > date('25-03-20');  ## 0

# 논리연산자
# not, and, or
select true and true;
select not false and true;
select not false and false;   ## 0 (not이 and보다 우선순위 높)
select false or false;
select true or false;





