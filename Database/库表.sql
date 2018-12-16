create database if not exists Web_Publish_System default character set utf8;
USE Web_Publish_System;

create table Users
(
User_ID char(4) not null,
User_Name varchar(20) not null,
User_Pwd char(10) not null,
Email_ID varchar(30) not null,
Adress Text(10) not null,
Register_On datetime not null,
Primary key (User_ID)

)engine=InnoDB default charset=utf8;

create table Category
(
Cart_ID char(4) not null,
Cat_Name varchar(20) not null,
Create_On datetime not null,
primary key (Cart_ID)
);

create table Editor
(
Editor_ID char(4) not null,
Editor_Name varchar(20) not null,
Editor_Pwd char(10) not null,
Editor_Emailid varchar(20) not null,
Editor_Adress Text(50) not null,
Primary key (Editor_ID)
)engine=InnoDB default charset=utf8;

create table Author
(
Author_ID char(4) not null,
User_ID char(4) not null,
Author_Name varchar(20) not null,
Email_ID varchar(30) not null,
Author_Desc varchar(100) not null,
Created_On datetime not null,
Primary key (Author_ID),
key User_ID(User_ID),
constraint User_ID foreign key(User_ID) references Users (User_ID)
)engine=InnoDB default charset=utf8;

create table Article
(
Article_ID char(4) not null,
User_ID char(4) not null,
Author_ID char(4) not null,
Cat_ID char(4) not null,
Article_Title varchar(20) not null,
Article_Body text not null,
Created_On datetime not null,
Primary key (Article_ID),
constraint fk1 foreign key(User_ID) references Users(User_ID),
constraint fk2 foreign key(Author_ID) references Author(Author_ID)
)engine=InnoDB default charset=utf8;

create table Edit_Reviews
(
Review_ID char(4) not null,
Editor_ID char(4) not null,
Article_ID char(4) not null,
User_ID char(4) not null,
Feedback text not null,
primary key(Review_ID),
constraint fk3 foreign key(Editor_ID) references Editor (Editor_ID),
constraint fk4 foreign key(Article_ID) references Article (Article_ID),
constraint fk5 foreign key(User_ID) references Users (User_ID)
)engine=InnoDB default charset=utf8;

insert into Users values ('U001','Angle Smith','angle@123','angles@qmail.com','RedianceCourt,Virginia','2011-12-15 03:40:40'),
('U002','Barbara Johnson','barb@123','barbaraj@qmail.com','227 Beach Ave,Sunnyvale California','2011-11-15 05:40:30'),
('U003','Betty Williams','betty@123','bettyw@qmail.com','virginia Beach,Virginia','2012-01-13 15:40:40'),
('U004','Carol Jones','carol@123','carolj@qmail.com','706-Furling Road Apt 112,Boone,North Carolina','2012-02-01 08:30:20'),
('U005','Catherine Roberts','cath@123','catheriner@qmail.com','5508 Aquiline Court,San Jose,California','2010-02-19 05:34:16');

insert into Category values('U001','Sports','2012-02-19 05:34:16'),
('U002','Business','2010-02-19 05:34:16'),
('U003','Education','2012-02-19 05:37:16'),
('U004','Food','2012-02-19 05:38:16'),
('U005','IT','2012-02-19 05:39:16'),
('U006','Entertainment','2012-02-19 05:41:16');

alter table Category rename to New_Category;
insert into New_Category values('U007','Healthy and Exercise','2016-9-8 11:20:16');
update New_Category set Cat_Name='Diet' where Cart_ID='U004';
delete from New_Category where Cart_ID='U005';
alter table New_Category rename to Category;
alter table Users add column Marial_Status varchar(10) ;
alter table Users alter column Marial_Status set default 'UnMarried';
alter table Article add column Modify_Human_Nmae varchar(20);
alter table Article add column Update_Day datetime;