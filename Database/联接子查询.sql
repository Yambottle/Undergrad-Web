use globaltoyz;
-- 1 显示所有玩具的名称 品牌 类别
select t.vToyName,b.cBrandName,c.cCategory
from toys t,toybrand b,category c
where t.cBrandId=b.cBrandId and t.cCategoryId=c.cCategoryId;


-- 2 显示所有玩具名称和购物车ID,若玩具不在购物车中，显示null
select toys.vToyName,shoppingcart.cCartId
from toys,shoppingcart
where toys.cToyId=shoppingcart.cCartId;
-- 下面的是正确的 表示左边表里的全部数据都有 若左边表的数据有而右边表的数据没有 则自动显示null
SELECT toys.vToyName,shoppingcart.cCartId FROM toys 
LEFT OUTER JOIN shoppingcart ON toys.cToyID=shoppingcart.cToyId;
-- 3 显示所有购物者id 状态和对应的订单号
select shopper.cShopperId,shopper.cState,orders.cOrderNo
from shopper,orders
where shopper.cShopperId=orders.cShopperId;

-- 4 编写一个查询来检索与每个客户关联的订单数目以及所有客户的购物者id、名和姓。
select shopper.cShopperId,shopper.vFirstName,shopper.vLastName,count(orders.cShopperId)
from shopper
join orders
on shopper.cShopperId=orders.cShopperId
group by shopper.cShopperId;

-- 5 显示订单号、玩具id以及用于所有玩具的礼物包装纸描叙 
select orderdetail.cOrderNo,orderdetail.cToyId,wrapper.vDescription
from wrapper
straight_join orderdetail
on orderdetail.cWrapperId=wrapper.cWrapperId; 

-- 6 编写一个查询来检索id为000001的购物车中玩具的玩具id 玩具名称和数量
 select shoppingcart.cToyId,toys.vToyName,toys.siToyQoh
 from shoppingcart,toys
 where shoppingcart.cToyId in(
 select toys.cToyId
 from toys
 where toys.cToyId=000001
 );
 
-- 7 显示所有类别详细信息以及对应的玩具详细信息 
select*from category
left outer join toys
on category.cCategoryId=toys.cCategoryId;
-- 8 显示国家详细信息以及所有国家的运费详细信息 如果有任何国家的运费详细信息不存在 应在对应字段中显示null 
select country.*,shippingrate.mRatePerPound 
from country,shippingrate
left outer join shippingrate
on country.cCountryId=shippingrate.cCountryID;
-- 9 编写一个查询来显示住在“United States of Ameri”的购物者的购物id 名称和姓 
select shopper.cShopperId,shopper.vFirstName,shopper.vLastName
from shopper
where shopper.vAddress='United States of Ameri';
-- 10 显示所有国家的国家id 购物模式id 以及运送模式描叙
select country.cCountryId,shippingmode.cModeId,shippingmode.cMode
from country,shippingmode
where country.cCountryId in(
select shippingrate.cCountryID
from shippingrate
where shippingrate.cModeId in(
select shippingmode.cModeId
from shippingmode
)
);
-- 11 使用子查询显示“20May2001”以下所有订单的订单详细信息 
select*from orderdetail 
where cOrderNo in(select cOrderNo from orders where dOrderDate=20010520);
-- 12 显示与数据库中存在的玩具对应的所有玩具类别的详细信息 
select * from category WHERE EXISTS (
SELECT * FROM toys WHERE category.cCategoryId=toys.cCategoryId);
-- 13 显示属于类别“Stuffed Toys”的所有玩具的名称 
select vToyName
from toys where cCategoryId IN (
select cCategoryId 
from category 
where cCategory='Stuffed Toys');
-- 14 显示已运出的订单的订单号 
select cOrderNo from orders WHERE EXISTS (
SELECT * FROM shipment 
WHERE orders.cOrderNo=shipment.cOrderNo and cDeliveryStatus='d');
-- 15 创建一份报告 其中包含总值超过所有订单总之平均值的那些订单的订单id和总值
SELECT cOrderNo, mTotalCost FROM orders WHERE mTotalCost > (SELECT Avg(mTotalCost) FROM orders); 
-- 16 编写一个查询显示pickofmonth表中总销量大于id为0000015的玩具总销量的那些玩具的玩具id 月 年 以及总销量
 select cToyId,siMonth,iYear,iTotalSold 
 from pickofmonth 
 where iTotalSold>all (
 select iTotalSold 
 from pickofmonth 
 where cToyId=0000015);
-- 17 编写一个查询来显示订单号为00005的所有已订购玩具的品牌名称 
SELECT cBrandName FROM toybrand Where cBrandId IN 
(SELECT cBrandId FROM toys Where 
cToyId IN (SELECT cToyId FROM orders Where cOrderNo=000005));
-- 18 显示总支付费用大于使用购物车id000002所支付金额的那些订单的订单号 订单日期和购物者id
select cOrderNo,dOrderDate, cShopperId from orders 
where mTotalCost>all (
select mTotalCost 
from orders 
where cCartId=000002);
-- 19 显示费率大于类别id000002的玩具类别中玩具的任何费率的所有玩具详细信息 
SELECT * FROM toys 
WHERE mToyRate> Any ( 
SELECT mToyRate 
from toys 
where cCategoryId=000002);
-- 20 显示玩具“Robby the Whale”的购物车详细信息 
select * from shoppingcart 
where cToyId=(
select cToyId 
from toys 
where vToyName='Robby the whale');




