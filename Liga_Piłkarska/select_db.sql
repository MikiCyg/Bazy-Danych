--Występowanie złączenia pomiędzy drużyną a zawodnikiem za pomocą INNER JOIN
SELECT * FROM drużyna INNER JOIN zawodnik z on drużyna.id = z.id
;

--średnia ilość bramek na zawodnika w lidze
select avg(ilość_bramek) from zawodnik
;
--Grupowanie zawodników po ilości bramek
SELECT ilość_bramek FROM zawodnik GROUP BY ilość_bramek order by ilość_bramek
;
--Arytmetyczne wyliczenie rzeczywistego czasu rozgrywki
SELECT *, rzeczywista_godzina_zakoń-rzeczywista_godzina_rozp
  AS rzeczywisty_czas_meczu
    FROM mecz ORDER BY rzeczywisty_czas_meczu
;
--Warunki odwołujące się do wzorców napisów
SELECT * FROM drużyna WHERE nazwa LIKE '%płock%'
;
--Zapytania zagnieżdżone- zawodnicy którzy grają w drużynie Wisła Płock
SELECT nazwisko from zawodnik WHERE id IN
      (SELECT drużyna.id FROM drużyna WHERE id = 2)
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
--Usuwanie z tabeli
DELETE FROM termin
WHERE data_spotkania<2017-07-16
;
--Update w tabeli
Update trener
  SET id = NULL
WHERE id = 1
;