-- 1. Wybierz treść z tabeli pytania.
-- 2. Wyświetl treść pytań z kategorią "programowanie".
-- 3. Wyświetl treść pytań z roku 2010
-- 4. Wyświetl treść pytań, których odpowiedź to "a".
-- 5. Wyświetl treść pytań z kategorii "urzadzenia techniki komp.".
-- 6. Wyświetl treść pytań, które zostały dodane przed 2010 rokiem.
-- 7. Wyświetl treść pytań z lat 2006-2009.
-- 8. Wyświetl unikalne kategorie (wykorzystaj DISTINCT).
-- 9. Wyświetl liczbę pytań z każdej kategorii.
-- 10. Wyświetl liczbę pytań z roku 2012.
-- 11. Wyświetl pytania odpowiedzią, która zawiera "cin".
-- 12. Wyświetl pytania z kategorii "multimedia i grafika", które zostały dodane po 2008 roku.
-- 13. Wyświetl pytania z najstarszego roku.
-- 14. Wyświetl pytania z najnowszego roku.
-- 15. Wyświetl średni rok dla wszystkich pytań.
-- 16. Wyświetl pytania, których odpowiedź ma mniej niż 5 znaków (zastosuj LENGTH).
-- 17. Wyświetl pierwszych 5 pytań w kolejności alfabetycznej.
-- 18. Wyświetl pytania z roku 2006, posortowanych według kategorii.
-- 19. Wyświetl liczbę pytań w każdym roku.
use quiz;
show tables;
select * from pytania;
-- zad 1
select * from pytania;
-- zad 2
select * from pytania where kategoria='programowanie';
-- zad 3
select * from pytania where rok='2010';
-- zad 4
select * from pytania where answer='a';
-- zad 5
select tresc from pytania where kategoria='urzadzenia techniki komp.';
-- zad 6
select tresc from pytania where rok<'2010';
-- zad 7
select tresc from pytania where rok between 2006 and 2009;
-- zad 8
select distinct kategoria from pytania;
-- zad 9
select count(*) from pytania;
-- zad 10
select count(*) from pytania where rok='2010';
-- zad 11 ?
select * from pytania where(odpa) or (odpb) or(odpc) or (odpd) like '%cin%';
-- zad 12
select * from pytania where kategoria='multimedia i grafika' and rok>'2008'; 
-- zad 13
select min(rok) from pytania;
-- zad 14
select max(rok) from pytania;
-- zad 15
select round(avg(rok),0) from pytania;
-- zad 16 ?
-- select lenght('odpa') from pytania; nwm
-- zad 17
select * from pytania where id between 1 and 5 order by tresc asc; 
-- zad 18
select * from pytania where rok='2006' order by kategoria;
-- zad 19
select count(*) from pytania;
