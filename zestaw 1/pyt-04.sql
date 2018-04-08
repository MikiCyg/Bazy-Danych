SET client_encoding='utf-8';
-- użycie różnych warunków, IS NOT NULL, dopasowanie wzorców tekstowych, warunki dotyczące dat:
-- wyświetl klientów z Sopotu,
SELECT * FROM klient WHERE miasto='Sopot'
;
-- towary z podaną ceną,
SELECT * FROM towar WHERE cena IS NOT NULL
;
-- dane o donicach, które mają podaną cenę,
SELECT * FROM towar WHERE opis LIKE '%donica%' AND cena IS NOT NULL
;
-- zamówienia złożone w marcu 2017
SELECT * FROM zamowienie WHERE data_zlozenia BETWEEN '2017/03/01' AND '2017/03/31'
;
-- wyświetl dane o zysku dla towarów, ale tylko wtedy, gdy zysk da się określić
SELECT *,cena-koszt AS zysk FROM towar WHERE cena is NOT NULL
;

-- zad P4: wyświetl w kolejnych zapytaniach:
-- dane klientów spoza Gdańska,
-- klientów bez telefonu,
-- klientów spoza Gdańska i bez telefonu,
-- dane o układankach,
-- zamówienia niezrealizowane (bez daty wysyłki),
-- zrealizowane w lutym 2017,
-- wyświetl dane o czasie realizacji zamówień już zrealizowanych
SELECT * FROM klient WHERE NOT miasto='Gdańsk'
;
SELECT * FROM klient WhERE telefon IS NULL
;
SELECT * FROM klient WHERE NOT miasto= 'Gdańsk' AND
 telefon IS NULL
;
SELECT * FROM towar WHERE opis LIKE '%układanka%'
;
SELECT * FROM zamowienie WHERE data_wysylki IS NULL
;
SELECT * FROM zamowienie WHERE data_wysylki BETWEEN '2017/02/01' AND '2017/02/28'
;
SELECT *,data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie zamowienie WHERE data_wysylki IS NOT NULL
;
