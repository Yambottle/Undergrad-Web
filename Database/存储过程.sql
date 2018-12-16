-- Chapter06 exercise--
-- 1
delimiter //
create procedure getDetails()
begin
declare id char(20),countryName char(20);
declare counter int default 0;
declare select_cursor for select cCountryId,cCountry from country;
open select_cursor;
select_loop:loop
set counter =counter+1;
fetch select_cursor into id,countryName;
if counter=10 then
close select_cursor;
leave select_loop;
end if;
end loop select_loop;
end;
delimiter ;

-- 2 
delimiter //
create procedure getDetails()
begin
select cToyId,vToyDescription from toys order by cToyId limit 0,9;
end;
delimiter ;
-- 3 
delimiter //
create procedure getDetails(in name varchar(20))
begin
select cToyId,vToyDescription from toys where vToyName=name;
end;
delimiter ;
-- 4
delimiter //
create procedure getDetails(in id varchar(20),out name varchar(20))
begin
select vToyName from toys where cToyId=id;
end;
delimiter ;
-- 5 
delimiter //
create procedure getDetails(in description varchar(50),out wrapperId varchar(20),wrapperRate varchar(20))
begin
select cWrapperId,mWrapperRate from wrapper where vDescription=description;
end;
delimiter ;
-- 6
delimiter //
create procedure getDetails(in inputRate,out description)
begin
select*from wrapper where mWrapperRate<inputRate order by mWrapperRate;
end;
delimiter ;
-- 7
delimiter //
create procedure getDetails(in id,out pwd)
begin
select cShopperId,cPassword from shopper where cShopperId =id;
end;
delimiter ;
-- 8 use globaltoyz
delimiter //
create function getDetails(id char(3)) returns char(20) reads sql data
begin
declare countryName char(20);
select cCountry into countryName from country where cCounryId=id;
return(coutryName);
end;
delimiter ;
-- 9
delimiter //
create function getDetails(id char(3))returns char(20) reads sql data
begin
declare phone char(30);
select cPhone into phone from recipient where cOrderNo=id;
return(phone);
end;
delimiter ;


