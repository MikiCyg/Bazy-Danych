UPDATE zawodnik
set drużyna = 'Vive Targi Kielce'
Where pesel = '95053060792';

UPDATE zawodnik
set drużyna = 'Spójnia Gdynia'
Where pesel = '67060298015';

SELECT *
  From zawodnik_zmiana_drużyny
;