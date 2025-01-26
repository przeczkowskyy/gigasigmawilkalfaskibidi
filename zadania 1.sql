show databases;
use sampledb;
show tables;

-- 1. Wyświetl wszystkie dane użytkowników.
-- 2. Wyświetl tylko imiona i nazwiska użytkowników.
-- 3. Wyświetl użytkowników, którzy mają więcej niż 30 lat.
-- 4. Wyświetl użytkowników, których imię zaczyna się na "J".
-- 5. Wyświetl użytkowników, których nazwisko kończy się na "son".
-- 6. Znajdź użytkowników w wieku 28 lat.
-- 7. Znajdź użytkowników w wieku pomiędzy 25 a 35 lat.
-- 8. Wyświetl użytkowników, którzy mają mniej niż 25 lat lub więcej niż 35 lat.
-- 9. Wyświetl użytkowników, którzy mają dokładnie 22 lub 27 lat.
-- 10. Posortuj użytkowników według wieku rosnąco.
-- 11. Posortuj użytkowników według wieku malejąco.
-- 12. Posortuj użytkowników według nazwiska, a następnie według imienia.
-- 13. Policz wszystkich użytkowników w tabeli.
-- 14. Policz, ilu użytkowników ma więcej niż 30 lat.
-- 15. Znajdź średni wiek użytkowników.
-- 16. Znajdź maksymalny wiek użytkownika.
-- 17. Znajdź sumę wszystkich wieków użytkowników.
-- 18. Znajdź liczbę użytkowników w każdej grupie wiekowej większej niż 30 lat.
-- 19. Pogrupuj użytkowników według nazwiska i znajdź, ilu użytkowników ma takie samo nazwisko.

-- 1 
select * from users;
-- 2
select FirstName,LastName from users;
-- 3
select * from users where age>30;
-- 4
select * from users where FirstName like 'J%';
-- 5
select * from users where LastName like '%son';
-- 6
select * from users where age=28;
-- 7
select * from users where age between 25 and 35;
-- 8 
select * from users where age<25 or age>35;
-- 9 
select * from users where age=22 or age=27;
-- 10 
select * from users order by age asc;
-- 11
select * from users order by age desc;
-- 12
select * from users order by FirstName and LastName; 
-- 13
select count(*) from users;
-- 14
select count(*) from users where age>30;
-- 15
select round(avg(age),0) from users;
-- 16
select max(age) from users;
-- 17
select sum(age) as wiek from users;
-- 18
select count(age) from users where age>30;
-- 19 
select LastName,count(LastName) as Ile_Razy from users group by LastName;