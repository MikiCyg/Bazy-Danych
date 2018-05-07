INSERT INTO public.drużyna (nazwa, id) VALUES ('Wybrzeże Gdańsk', 1);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Wisła płock', 2);

INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (1, 10000, 'Gdańsk ul zwycięstwa 51', 1000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (2, 50000, 'Kielcie ul. Niepodległości', 12000);

INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (1, '18:30:00', '27:30', '19:45:00');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (2, '18:30:00', '31:34', '20:00:00');

INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Pawlak', 'Mieczysław', 53122840694, '1984-05-04', 573918);
INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Piotrowski', 'Wiesław', 73102367797, '1972-09-06', 684320);

INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (1, 1, '18:00:00', '17:00:00', '2017-05-11');
INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (2, 9, '15:00:00', '14:00:00', '2017-10-13');

INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Ulatowski', 'Radosław', 1, '1991-06-07', 45032870000, 1);
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Rutkowski', 'Bogusław', 2, '1984-02-16', 39050195000, 2);

INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Mateusz', 'Kierat', 72, '1993-01-07', 1, 66100765000);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Tomek', 'Lewandowski', 0, '1994-01-27', 2, 34080548900);