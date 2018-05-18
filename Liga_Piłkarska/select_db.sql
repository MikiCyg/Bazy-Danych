--Występowanie złączenia pomiędzy drużyną a zawodnikiem za pomocą INNER JOIN
SELECT * FROM mecz INNER JOIN hala h2 on mecz.hala = h2.adres
;

--średnia ilość bramek na zawodnika w lidze
select avg(ilość_bramek) from zawodnik
;
--Wyliczenie jaką ilość zawodników posiadają drużyny
SELECT count(imie), drużyna FROM zawodnik GROUP BY drużyna order by drużyna
;
--Arytmetyczne wyliczenie rzeczywistego czasu rozgrywki
SELECT *, rzeczywista_godzina_zakoń-rzeczywista_godzina_rozp
  AS rzeczywisty_czas_meczu
    FROM mecz ORDER BY rzeczywisty_czas_meczu
;
--Warunki odwołujące się do wzorców napisów
SELECT * FROM drużyna WHERE nazwa LIKE '%płock%'
;
--Wyświetla zawodników których statystyka strzelonych bramek jest większa niż ogólna średnia
SELECT imie, nazwisko FROM zawodnik WHERE ilość_bramek>(
select avg(ilość_bramek) from zawodnik)
;
--Warunek Null
SELECT * FROM zawodnik WHERE ilość_bramek IS NULL
;

--Użycie widoku(view)
CREATE VIEW Sędzia_VIEW AS
SELECT pesel, imie, nazwisko
  FROM sędzia
  ;
SELECT * FROM sędzia_view
;
DROP VIEW Sędzia_VIEW
;
--Usuwanie z tabeli: Usunięcie zawodnika z bazy danych
DELETE FROM zawodnik
WHERE pesel<85013069330
;
--Zmiana drużyny którą trenuje dany trener
Update trener
  SET drużyna = NULL
WHERE pesel = 39050195000
;