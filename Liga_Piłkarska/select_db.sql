--Występowanie złączenia pomiędzy drużyną a zawodnikiem za pomocą INNER JOIN
SELECT * FROM drużyna INNER JOIN zawodnik z on drużyna.id = z.id
;
--Grupowanie zawodników po ilości bramek
SELECT nazwisko FROM zawodnik GROUP BY nazwisko HAVING count(nazwisko) > 1
;
--Arytmetyczne wyliczenie rzeczywistego czasu rozgrywki
SELECT *, rzeczywista_godzina_zakoń-rzeczywista_godzina_rozp
  AS rzeczywisty_czas_meczu
    FROM mecz ORDER BY rzeczywisty_czas_meczu
;
--Warunki odwołujące się do wzorców napisów
SELECT * FROM drużyna WHERE nazwa LIKE '%płock%'
