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