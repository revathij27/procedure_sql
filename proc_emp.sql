create or replace procedure
emply(eno in char)
as
ename employee.empname%type;
depno employee.deptno%type;
begin
select empname,deptno into ename,depno from employee where empno=eno;
dbms_output.put_line('Name: '|| ename);
dbms_output.put_line('DeptNo: '|| depno);
dbms_output.put_line('********************');
end;
/