declare
cursor empnames is select upper(empname) from employee;
empname varchar2(30);
begin
open empnames;
loop
fetch empnames into empname;
exit when empnames%notfound;
pal_chkr(empname);
end loop;
close empnames;
end;
/