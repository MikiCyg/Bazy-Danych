INSERT INTO public.drużyna (nazwa, id) VALUES ('Wybrzeże Gdańsk', 1);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Wisła płock', 2);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Iskra Kielce',4);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Vive Targi Kielce',4);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Spójnia Gdynia',5);


INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (1, 10000, 'Gdańsk ul zwycięstwa 51', 1000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (2, 50000, 'Kielce ul. Niepodległości', 12000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (3, 25000, 'Płock ul. Świętojańska', 4000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (4, 2000, 'Gdynia ul. legionów 42', 600);

INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (1, '18:30:00', '27:30', '19:45:00');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (2, '18:30:00', '31:34', '20:00:00');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (3, '15:30:00', '20:21', '16:45:00');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (4, '16:00:00', '25:25', '17:00:00');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń) VALUES (5, '18:00:00', '34:17', '19:45:00');

INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Pawlak', 'Mieczysław', 53122840694, '1984-05-04', 573918);
INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Piotrowski', 'Wiesław', 73102367797, '1972-09-06', 684320);
INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Dolna', 'Zuzanna', 68060566630, '1998-03-12', 785930);
INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Amadej ', 'Czarnecki', 86042978794, '1986-05-04', 915478);
INSERT INTO public.sędzia (nazwisko, imie, pesel, data_urodzeni, licencja_sędziowska) VALUES ('Krzysztof', 'Mietczyński', 95072929597, '1995-08-04', 172859);

INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (1, 1, '18:00:00', '17:00:00', '2017-05-11');
INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (2, 9, '15:00:00', '14:00:00', '2017-10-13');
INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (3, 4, '14:00:00', '13:00:00', '2017-12-13');
INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (4, 5, '19:00:00', '18:00:00', '2017-11-27');
INSERT INTO public.termin (id, "nr kolejki", godzina_zakończenia, godzina_rozpoczęcia, data_spotkania) VALUES (5, 6, '21:00:00', '20:00:00', '2017-07-15');

INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Ulatowski', 'Radosław', 1, '1991-06-07', 45032870000, 1);
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Rutkowski', 'Bogusław', 2, '1984-02-16', 39050195000, 2);
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Adamczyk', 'Szymon', 1, '1984-01-10', 88062498753, 6);
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Dąbrowski', 'Sulisław', 1, '1992-02-16', 54061049139, 11);
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska) VALUES ('Walczak', 'Tobiasz', 2, '1991-10-16', 89040596199, 20);

INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Mateusz', 'Kierat', 72, '1993-01-07', 1, 66100765000);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Tomek', 'Lewandowski', 0, '1994-01-27', 2, 34080548900);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Jakub', 'Czaja', 21, '1998-02-25', 3, 44100166138);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Julek', 'Olszewski', 78, '1991-06-11', 4, 89090279299);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Wojciech', 'Hajnos', 92, '1997-08-19', 5, 44060697792);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Mikołaj', 'Cygert', 42, '1998-06-07', 6, 95053060792);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Paweł', 'Kwiatkowski', 2, '1997-07-21', 7, 49020763551);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Krzysztof', 'Mokosa', 15, '1994-05-11', 8, 85013069330);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Artur', 'Piastowski', 66, '1997-01-01', 9, 36091295478);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Przemysław', 'Kudełka', 101, '1997-06-01', 10, 67060298015);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Tomek', 'Zwolakiewicz', 0, '1997-01-27', 11, 64061221350);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Robert', 'Wicon', 3, '1982-05-27', 12, 68110972178);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, id, pesel) VALUES ('Mateusz', 'Kopeć', 150, '1999-01-01', 13, 94010741712);
