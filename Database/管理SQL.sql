use globaltoyz;

-- 第九章-----
-- 1-----
create user 'Christopher' identified by 'christopher@123';
create user 'Anthony' identified by 'anthony@123';
create user 'Deborah' identified by 'deborah@123';
create user 'Nancy' identified by 'nancy@123';
create user 'Ganzalez' identified by 'gonzalez@123';
create user 'Rodriguez' identified by 'rodriguez@123';
create user 'Kenneth' identified by 'kenneth@123';
create user 'Laura Rodriguez' identified by 'laura@123';
create user 'Lisa Lee' identified by 'lisa@123';

-- select * from mysql.user;
-- 2-----
rename user 'Deborah' to 'Deborah1';
set password for 'Deborah1' = password('Deborah1#123');
-- 3----
grant select on globaltoyz.* to 'Christopher';
grant select on globaltoyz.* to 'Anthony';
grant all on globaltoyz.* to 'Deborah1';
grant all on globaltoyz.* to 'Nancy';
grant select on globaltoyz.* to 'Ganzalez';
grant select on globaltoyz.* to 'Rodriguez';
grant select on globaltoyz.* to 'Kenneth';
grant all on globaltoyz.* to 'Laura Rodriguez';
grant all on globaltoyz.* to 'Lisa Lee';
-- show grants for 'Christopher';
-- 4----
revoke insert on globaltoyz from 'Lisa Lee';
revoke alter on globaltoyz from 'Lisa Lee';
-- 5----
revoke update on globaltoyz from 'Laura Rodriguez';
revoke alter on globaltoyz from 'Laura Rodriguez';
-- 6----
drop user 'Laura Rodriguez';
drop user 'Anthony';   
-- 7----
-- cd/<Path>/bin
-- mysqldump -u root globaltoyz > d:/globaltoyz1.sql