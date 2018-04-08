SET client_encoding='utf-8';
-- wyświetl zawartość każdej z tabel, uporządkuj w/g atrybutu
SELECT * FROM klient
;
SELECT * FROM klient ORDER BY nazwisko
;
SELECT * FROM towar
;
SELECT * FROM towar ORDER BY cena DESC
;

-- zadanie P1: wyświetl zawartość powyższych tabel uporządkowanych
-- odpowiednio według miast, opisów;
-- wyświetl zawartość tabeli zamówień uporządkowanej według kosztów
-- i tabeli kodów kreskowych uporządkowanej według kodów.
SELECT * FROM klient ORDER BY miasto
;
SELECT * FROM towar ORDER BY opis
;
SELECT * FROM kod_kreskowy ORDER BY kod
;
SELECT * FROM towar ORDER BY koszt
