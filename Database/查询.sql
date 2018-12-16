create database Toys_Conpany;
use Toys_Conpany;
create table toys
(
t_id varchar(4) not null,
t_name varchar(40) not null,
t_desc text not null,
t_fee varchar(10) not null,
t_type varchar(10) not null,
t_price int(10) not null,
primary key (t_id)
);
create table wrapper
(
w_id int(10) not null,
w_name varchar(20) not null,
 w_fee varchar(10) not null,
 w_type float(20),
 w_desc text not null,
 w_num int ,
 primary key (w_id)
);
create table country
(
c_name varchar(10)

);
select t_name,t_desc,t_fee from toys;
select t_desc,t_type from toys;
select t_name,t_desc from Toys where t_price between 12.99 and 18.99;
select t_name,t_type from Toys where t_name like'C%';
select t_name,t_desc from Toys where t_price between 7 and 26;
select w_desc  from wrapper where w_fee>2;
select w_desc  from wrapper where w_fee=1.25;
select w_desc from wrapper where w_fee between 1.5 and 2.25;
select w_fee from wrapper limit 3;
select c_name from country limit 10;
select w_desc from wrapper where w_id=008;
select w_fee from wrapper where w_name like '%les';
select c_name from country where c_name like'Bul%';
select sum(w_num) as 'Number of Wrappers' from wrapper;
select max(w_fee) as 'Maximum Rate of Wrappers' from wrapper;
select Avg(w_fee) as'avg_fee' from wrapper;
select w_desc from wrapper order by w_fee desc;
select count(c_name) from country;
select t_name,t_desc from toys where t_name like '%Kit';
select t_type,avg(t_price) as Average from toys group by t_type;