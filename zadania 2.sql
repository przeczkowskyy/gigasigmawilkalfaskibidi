show databases;
use mydatabase;
show tables;
-- 1. Wyświetl wszystkich użytkowników wraz z ich zamówieniami.
-- 2. Wyświetl wszystkie zamówienia zawierające produkty.
-- 3. Wyświetl imię i nazwisko klientów, którzy zamówili produkty z kategorii 'Elektronika'.
-- 4. Uzyskaj nazwę produktu, datę zamowienia oraz ilość.
-- 5. Wyświetl pełną listę zamówień, uwzględniając tylko tych użytkowników, którzy dokonali zamówienia.
-- 6. Wyświetl zamówione produkty oraz ich cenę.
-- 7. Wyświetl imię, nazwisko oraz produkty, które zostały zamówione.
-- 8. Połącz tabelę Zamowienia i Uzytkownicy, aby wyświetlić użytkowników oraz daty ich zamówień.
-- 9. Wyświetl użytkowników oraz produkty, które zamówili, posortowane po dacie zamówienia.
-- 10. Połącz tabelę Produkty i Zamowienia, aby uzyskać listę produktów zamówionych w dniu 1 stycznia 2025.
-- 11. Połącz tabelę Uzytkownicy i Produkty, aby wyświetlić imiona i nazwiska użytkowników oraz produkty, które zamówili w kategorii 'Meble'.
-- 12. Połącz tabelę Produkty i Zamowienia, aby uzyskać produkty, które zostały zamówione więcej niż 3 razy.

-- 1
select uzytkownicy.imie,nazwisko, zamowienia.data_zamowienia,ilosc from uzytkownicy join zamowienia on uzytkownicy.id=zamowienia.id;
-- 2
select produkty.nazwa, zamowienia.data_zamowienia,ilosc from produkty join zamowienia on produkty.id=zamowienia.id;
-- 3
select uzytkownicy.imie,nazwisko, produkty.kategoria from uzytkownicy join produkty on uzytkownicy.id=produkty.id where kategoria like 'elektronika';
-- 4 
select produkty.nazwa, zamowienia.data_zamowienia,ilosc from produkty join zamowienia on produkty.id=zamowienia.id;
-- 5
select zamowienia.*, uzytkownicy.* from zamowienia join uzytkownicy on zamowienia.id=uzytkownicy.id;
-- 6
select produkty.nazwa,cena, zamowienia.produkt_id as ID_Produktu from produkty join zamowienia on produkty.id=zamowienia.id;
-- 7 
select uzytkownicy.imie,nazwisko, produkty.nazwa from uzytkownicy join produkty on uzytkownicy.id=produkty.id;
-- 8
select uzytkownicy.imie,nazwisko, zamowienia.data_zamowienia from uzytkownicy join zamowienia on uzytkownicy.id=zamowienia.id;
-- 9
select uzytkownicy.imie,nazwisko, produkty.nazwa, zamowienia.data_zamowienia from uzytkownicy join produkty on uzytkownicy.id=produkty.id join zamowienia on uzytkownicy.id=zamowienia.id order by data_zamowienia;
-- 10
select produkty.nazwa, zamowienia.data_zamowienia from produkty join zamowienia on produkty.id=zamowienia.id where data_zamowienia like '2025-01-01';
-- 11
select uzytkownicy.imie,nazwisko, produkty.nazwa,kategoria from uzytkownicy join produkty on uzytkownicy.id=produkty.id where kategoria like 'Meble'; 
-- 12
select produkty.nazwa, sum(zamowienia.ilosc) as Ilosc_zamowien from produkty join zamowienia on produkty.id=zamowienia.id group by produkty.nazwa having Ilosc_zamowien >3;
-- 13
select uzytkownicy.imie,nazwisko, zamowienia.data_zamowienia from uzytkownicy join zamowienia on uzytkownicy.id=zamowienia.id where data_zamowienia like '%2025%';
-- 14
select produkty.nazwa,kategoria, zamowienia.data_zamowienia,ilosc from produkty join zamowienia on produkty.id=zamowienia.id where kategoria like 'Dom';
-- 15
select uzytkownicy.imie,nazwisko, produkty.nazwa from uzytkownicy join produkty on uzytkownicy.id=produkty.id where wiek>30;
-- 16 
select produkty.nazwa,cena, zamowienia.ilosc from produkty join zamowienia on produkty.id=zamowienia.id where cena>1000;