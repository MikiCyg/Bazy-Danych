SET client_encoding TO 'UTF-8';
CREATE LANGUAGE plpgsql
;
CREATE TABLE zawodnik_zmiana_drużyny (
id serial primary key ,
imie varchar(60) ,
nazwisko varchar(60),
pesel double precision ,
drużyna varchar(60) ,
dnia timestamp(6) NOT NULL
);




CREATE OR REPLACE FUNCTION log_zmiana_drużyny_zawodnika()
  RETURNS trigger as
  $BODY$
BEGIN
IF new.drużyna <> old.drużyna THEN
  INSERT INTO zawodnik_zmiana_drużyny(imie, nazwisko, pesel, drużyna, dnia)
    VALUES (old.imie,old.nazwisko,old.pesel,old.drużyna,now());
end if;

RETURN new;
end;
$BODY$;

  CREATE TRIGGER zmiana_drużyny
  BEFORE UPDATE
  ON zawodnik
  FOR EACH ROW
  EXECUTE PROCEDURE log_zmiana_drużyny_zawodnika();