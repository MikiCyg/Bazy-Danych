INSERT INTO public.drużyna (nazwa, id) VALUES ('Wybrzeże Gdańsk', 1);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Wisła płock', 2);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Iskra Kielce',3);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Vive Targi Kielce',4);
INSERT INTO public.drużyna (nazwa, id) VALUES ('Spójnia Gdynia',5);


INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (1, 10000, 'Gdańsk ul zwycięstwa 51', 1000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (2, 50000, 'Kielce ul. Niepodległości', 12000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (3, 25000, 'Płock ul. Świętojańska', 4000);
INSERT INTO public.hala (id, pojemność, adres, koszt_wynajęcia) VALUES (4, 2000, 'Gdynia ul. legionów 42', 600);


INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń, hala, drużyna_gości, drużyna_gospodarzy, data) VALUES (5, '18:00:00', '', '19:45:00', 'Gdynia ul. legionów 42', 'Vive Targi Kielce', 'Wybrzeże Gdańsk', '2017-11-27');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń, hala, drużyna_gości, drużyna_gospodarzy, data) VALUES (4, '16:00:00', '25:25', '17:00:00', 'Płock ul. Świętojańska', 'Wybrzeże Gdańsk', 'Wisła płock', '2017-05-11');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń, hala, drużyna_gości, drużyna_gospodarzy, data) VALUES (1, '18:30:00', '27:30', '19:45:00', 'Gdańsk ul zwycięstwa 51', 'Wisła płock', 'Spójnia Gdynia', '2017-07-15');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń, hala, drużyna_gości, drużyna_gospodarzy, data) VALUES (3, '15:30:00', '20:21', '16:45:00', 'Kielce ul. Niepodległości', 'Wisła płock', 'Wybrzeże Gdańsk', '2017-10-13');
INSERT INTO public.mecz (id, rzeczywista_godzina_rozp, wynik, rzeczywista_godzina_zakoń, hala, drużyna_gości, drużyna_gospodarzy, data) VALUES (2, '18:30:00', '', '20:00:00', 'Gdańsk ul zwycięstwa 51', 'Vive Targi Kielce', 'Iskra Kielce', '2017-12-13');

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


INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska, drużyna) VALUES ('Ulatowski', 'Radosław', 1, '1991-06-07', 45032870000, 1, 'Wybrzeże Gdańsk');
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska, drużyna) VALUES ('Dąbrowski', 'Sulisław', 1, '1992-02-16', 54061048000, 11, 'Vive Targi Kielce');
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska, drużyna) VALUES ('Walczak', 'Tobiasz', 2, '1991-10-16', 89040593000, 20, 'Spójnia Gdynia');
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska, drużyna) VALUES ('Adamczyk', 'Szymon', 1, '1984-01-10', 88062501000, 6, 'Iskra Kielce');
INSERT INTO public.trener (nazwisko, imie, kategoria_trenerska, data_urodzenia, pesel, licencja_trenerska, drużyna) VALUES ('Rutkowski', 'Bogusław', 2, '1984-02-16', 39050195000, 2, 'Wisła płock');

INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Krzysztof', 'Mokosa', 15, '1994-05-11', 'Wybrzeże Gdańsk', 85013069330);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Robert', 'Wicon', 3, '1982-05-27', 'Vive Targi Kielce', 68110972178);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Mikołaj', 'Cygert', 42, '1998-06-07', 'Wisła płock', 95053060792);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Paweł', 'Kwiatkowski', 2, '1997-07-21', 'Wybrzeże Gdańsk', 49020763551);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Jakub', 'Czaja', 21, '1998-02-25', 'Iskra Kielce', 44100166138);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Przemysław', 'Kudełka', 101, '1997-06-01', 'Vive Targi Kielce', 67060298015);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Tomek', 'Zwolakiewicz', null, '1997-01-27', 'Spójnia Gdynia', 64061221350);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Tomek', 'Lewandowski', null, '1994-01-27', 'Spójnia Gdynia', 34080548900);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Mateusz', 'Kierat', 72, '1993-01-07', 'Iskra Kielce', 66100765000);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Mateusz', 'Kopeć', 150, '1999-01-01', 'Spójnia Gdynia', 94010741712);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Julek', 'Olszewski', 78, '1991-06-11', 'Iskra Kielce', 89090279299);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Artur', 'Piastowski', 66, '1997-01-01', 'Vive Targi Kielce', 36091295478);
INSERT INTO public.zawodnik (imie, nazwisko, ilość_bramek, data_urodzenia, drużyna, pesel) VALUES ('Wojciech', 'Hajnos', 92, '1997-08-19', 'Wisła płock', 44060697792);

INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-11-27', 573918);
INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-11-27', 684320);
INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-11-27', 785930);
INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-05-11', 915478);
INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-07-15', 172859);
INSERT INTO public.mecz_sędzia (data_meczu, licencja_sędziowska) VALUES ('2017-10-13', 915478);
