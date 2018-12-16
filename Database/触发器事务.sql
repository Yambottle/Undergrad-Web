-- 1
-- select * from wrapper;
-- alter table wrapper add column cGiftWrap varchar(5);
delimiter @
create procedure ChangeID(in cOrderNo varchar(10),
	in toyscToyId varchar(10),
    in wrapperid varchar(10))
begin
	start transaction;
    update wrapper 
    set wrapper.cWrapperId = '002' where wrapper.cWrapperId=wrapperid;
	commit;
end@

delimiter @
create trigger after_wrap after update on wrapper
for each row
begin
declare toyid varchar(10);
declare orderid varchar(10);
if new.cGiftWrap = 'Y' 
	then
    set toyid = '00001';
    set orderid = '00001';
	call ChangeID(toyid,orderid,new.cWrapperId);
end if;
end@

-- 2
delimiter @
create trigger after_change_dec after update on toys
for each row
begin
	declare newid varchar(10);
    declare oldid varchar(10);
	set newid = new.cToyId;
    set oldid = old.cToyId;
	if newid != oldid then
		update toys set cToyId = oldid where cToyId = ;
    end if;
end@

-- 3
create trigger delete_all_in_cate after delete on category
for each row
delete from toys where toys.cCategoryId = old.cCategoryId;