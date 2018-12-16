-- 1 用户名和密码组合主键 或 各加一个唯一约束
alter table users add constraint user_id_uni unique key (User_ID); 
alter table users add constraint user_name_uni unique key (User_Name); 

-- 2 将分类提出建立索引
create index RegIdx_Cat_Name on category(Cat_Name);

-- 3 
alter table shopper add constraint shopper_email_uni unique key (vEmailId);

-- 4
create index RegIdx_Order_Total on orders(mTotalCost);

-- 5
create view Shopper_Orders_View as
select cOrderNo,dorderdate,s.cShopperId,vFirstName,mTotalCost
from Shopper as s, Orders as a
where s.cShopperId = a.cShopperId and mTotalCost > 80;

create view Toys_Cate_View as
select cToyId,vToyName,cCategory
from Toys as t,Category as c
where t.cCategoryId = c.cCategoryId;

create view Toys_ToyBrand_View as
select cToyId,vToyName,cBrandName
from Toys as t, toybrand as tb
where t.cBrandId = tb.cBrandId;

	-- 简化之后查询语句
select * from shopper_orders_view;
select * from Toys_Cate_View;
select * from Toys_ToyBrand_View;

-- 6
create view view_country_shopper as 
select cShopperId,vFirstName,vLastName,cCountry
from country as c,shopper as s
where c.cCountryId = s.cCountryId;
	
select * from view_country_shopper;
-- 错误原因：无cCountryId,并且不能同时修改两个表信息

create view view_country_shopper2 as 
select cShopperId,vFirstName,vLastName,cCountry,c.cCountryId
from country as c,shopper as s
where c.cCountryId = s.cCountryId;

select * from view_country_shopper2;

update view_country_shopper2 
set cCountry = 'US'
where cCountryId = '001';

-- 此处错误原因：由于数据库安全模式引起，SET SQL_SAFE_UPDATES = 0;
update view_country_shopper2 
set vFirstName = 'Smith'
where cCountryId = '001';
