declare
cursor c1 is select empname,salary,hire_date from employee;
emp c1%rowtype;
expr integer;
incr number(5);
begin
open c1;
fetch c1 into emp;
while c1%found
loop
expr:=floor(months_between(sysdate,emp.hire_date)/12);
inc(expr,emp.salary,incr);
dbms_output.put_line(emp.empname||' - '||emp.salary||' - '||incr||' - '||expr);
fetch c1 into emp;
end loop;
close c1;
end;
/
