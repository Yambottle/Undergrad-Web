-- chapter 8
-- 1
select * from toys limit 4 into outfile 'd:toy_details.txt';
-- 2
select * from wrapper into outfile 'd:wrapper_details.txt';
-- 3
select * from country limit 5 into outfile 'd:country_details.txt' fields terminated by','  enclosed by'"';
-- 4
select cToyId,cCategoryId from toys into outfile'd:shoppingcart_details.txt' fields terminated by '\t';
-- 5
select cCartId,cToyId from shoppingcart into outfile'd:shoppingcart3_details.txt' lines starting by '$' terminated by '&';
-- 6
select * from shopper where cShopperId=000007 into dumpfile 'd:shopperdump_details.txt';
-- 7
select * from orders where cOrderNo=000004 into dumpfile 'd:orderdump_details.txt';
-- 8
load data infile "d:/country_details.txt" into table  country_details;