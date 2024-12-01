-- 1. Wyświetl wszystkie dane z tabeli.
-- 2. Wyświetl tylko kolumnę Name wszystkich rekordów.
-- 3. Wyświetl dane wszystkich osób, które mają więcej niż 45 lat.
-- 4. Wyświetl dane osoby o imieniu "Alice Johnson.
-- 5. Wyświetl dane wszystkich osób, których wiek wynosi dokładnie 25 lat.
-- 6. Wyświetl wszystkie rekordy, posortowane według kolumny JoinDate w kolejności rosnącej.
-- 7. Wyświetl dane wszystkich osób, które dołączyły po 1 stycznia 2023 roku.
-- 8. Policz, ile osób ma więcej niż 40 lat.
-- 9. Wyświetl dane osób, których adres e-mail kończy się na "@example.com".


use simpledb;
-- ZADANIE 1
select * from SimpleTable;
-- ZADANIE 2
select name from SimpleTable;
-- ZADANIE 3
select * from SimpleTable where age>45;
-- ZADANIE 4
select * from SimpleTable where name='Alice Johnson';
-- ZADANIE 5
select * from SimpleTable where age=25;
-- ZADANIE 6
select * from SimpleTable order by JoinDate asc;
-- ZADANIE 7
select * from SimpleTable where JoinDate>'2023-01-01';
-- ZADANIE 8
select count(*) from SimpleTable where age>40;
-- ZADANIE 9
select * from SimpleTable where Email like '%@example.com%';




set sql_safe_updates = 0;
use Simpledb;
-- ZAD 1
select * from SimpleTable where name like 'J%'; 
-- ZAD 2
select * from SimpleTable order by JoinDate asc;
 -- ZAD 3
 select count(*) from SimpleTable where age>30;
-- ZAD 4
update SimpleTable set age=34 where id=11; 
-- ZAD 5
delete from SimpleTable where age=20;
select * from SimpleTable;
-- ZAD 6
select round(avg(age),0) from SimpleTable; 
-- ZAD 7
update SimpleTable set email='john.doe@newdomain.com' where id=1;
select * from SimpleTable;
-- ZAD 8
select * from SimpleTable where age between 25 and 35;
-- ZAD 9
select * from SimpleTable order by age desc; 
-- ZAD 10
select * from SimpleTable where name='Alice Johnson' or name='Bob Brown';
-- ZAD 11
select count(*) from SimpleTable where JoinDate<'2023.01.01';
-- ZAD 12
select * from SimpleTable where Email like 'alice%';
-- ZAD 13
select count(*) from SimpleTable where age>30 and email not like '%example%'; 
