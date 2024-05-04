create or replace procedure
inc(expr in integer, salary in number, incr out number)
as
begin
if salary>=20000
then
incr:=expr * 1.5;
else
incr:=expr * 1.2;
end if;
end;
/
 