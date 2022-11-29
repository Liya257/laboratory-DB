create temp table zalupka(id_ int, name_ varchar(50) default 'Pupa');
INSERT INTO zalupka(id_) VALUES (1);
INSERT INTO zalupka(id_, name_) VALUES (2,'Игорь Троцкий');
SELECT * FROM zalupka;

select zalupa2();
select * from personnel;
drop function zalupa2()

create function zalupa2() returns int AS  $$
declare
	length_service int;
	fio varchar(50);
	result_ int;
begin
	length_service = (select length_od_service from personnel where id_personnel=13);
	fio = (select surname from personnel where id_personnel=1);
	if (length_service > 5) then
	update personnel set length_od_service = length_od_service +2 where  id_personnel=8;
	return result_ = (select length_od_service from personnel where id_personnel=1);
	else update personnel set length_od_service = 3  where  id_personnel=8;
	return result_ = (select length_od_service from personnel where id_personnel=8);
	end if;
end;
$$
language plpgsql;



select zalupa3(12);
select * from personnel;
drop function zalupa3(id_p integer)

create function zalupa3(id_p integer) returns int AS  $$
declare
	length_service int;
	result_ int;
begin
	length_service = (select length_od_service from personnel where id_personnel=id_p);
	result_ = 1;
	WHILE length_service >= 13 LOOP
    	result_ =  5;
		length_service = 1;
	END LOOP;
	return result_ ;
end;
$$
language plpgsql;


select zalupa4(12);
select * from personnel;
drop function zalupa3(id_p integer)

create function zalupa4(id_p integer) returns int AS  $$
declare
	
begin
	return (select length_od_service from personnel where id_personnel=id_p) ;
end;
$$
language plpgsql;

select * from location

select get_branch();
drop function get_branch();

CREATE FUNCTION get_branch () 
 RETURNS TABLE (
 number_of_parts int,
 id_branchs INT) 
AS $$
BEGIN
 RETURN query 
 SELECT
 number_of_part,
 id_branch
 FROM
 branch;
END; 
$$ 
LANGUAGE plpgsql;


--процедурки............

drop procedure data_();
call data_();
select * from branch;

CREATE PROCEDURE data_()
LANGUAGE SQL
as 
$$
  alter table branch rename column nomer_chasty to  number_of_part;
$$;


drop procedure data_2(int);
call data_2(3);
select * from branch;

CREATE PROCEDURE data_2(id_ int)
LANGUAGE SQL
as 
$$
  update branch set nomer_chasty = 22222  where id_branch = id_;
$$;


select get_branch();
drop function get_branch();

CREATE procedure get_branch () 
 RETURNS TABLE (
 number_of_parts int,
 id_branchs INT) 
AS $$
BEGIN
 RETURN query 
 SELECT
 nomer_chasty,
 id_branch
 FROM
 branch;
END; 
$$ 
LANGUAGE plpgsql;


CREATE FUNCTION Parse(string varchar(150))
RETURNS TABLE
(number_ int,
substr varchar(30))
AS
$$
DECLARE 
str1 varchar(150);
pos int;
begin
SET str1 = string;
WHILE 1>0 LOOP
SET pos = position(str1 in string);
IF pos > 0 then
INSERT INTO tabless VALUES (str1,pos);
ELSE
INSERT INTO tabless VALUE (str1);
END if;
end loop;
RETURN tabless;
END;
$$
LANGUAGE plpgsql;

select Calculator(9,5,'/');

CREATE FUNCTION Calculator
(operand int,
operand2 int,
 action_ varchar(5))
RETURNS real
AS
$$
DECLARE 
 result_ real;
begin
CASE action_
	WHEN '+' THEN result_ = operand + operand2;
	WHEN '-' THEN result_ = operand - operand2;
	WHEN '*' THEN result_ = operand * operand2;
	WHEN '/' THEN result_ = operand / operand2;
	ELSE result_ = 0;
END case;
Return result_;
END;
$$ 
LANGUAGE plpgsql;
