-- 1. Pytanie nr 15
-- 2. Pytania, w których poprawną odpowiedzią jest "a"
-- 3. Pytania z roku 2007
-- 4. Pytania z programowania z roku 2009
-- 5. Tylko treści pytań i 4 odpowiedzi z roku 2010
-- 6. Pytania ułożone alfabetycznie wg treści
-- 7. Treści pytań o numerach 10-12
-- 8. Pytania zaczynające się od słów “Jak”
-- 9. Pytania zawierające frazę "C++"
-- 10. Pytania z programowania oraz systemów operacyjnych i sieci z roku 2012

use quiz;
select * from pytania; 


-- ZAD 1
select * from pytania where id=15;
-- ZAD 2
select * from pytania where answer like '%a%';
-- ZAD 3
select * from pytania where rok ='2007';
-- ZAD 4
select * from pytania where kategoria='programowanie' and rok='2009';
-- ZAD 5
select tresc,answer from pytania where rok='2010';
-- ZAD 6
select * from pytania order by tresc asc;
-- ZAD 7
select tresc from pytania where id between 10 and 12;
-- ZAD 8
select * from pytania where tresc like 'Jak%';
-- ZAD 9
select * from pytania where tresc like '%C++%';
-- ZAD 10
select * from pytania where kategoria='programowanie' or kategoria='systemy operacyjne i sieci' having rok='2012';
