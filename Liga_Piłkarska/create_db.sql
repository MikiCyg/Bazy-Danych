create table "drużyna"
(
	nazwa varchar(60),
	id serial not null
		constraint "drużyna_pkey"
			primary key
)
;

create unique index "drużyna_nazwa_uindex"
	on "drużyna" (nazwa)
;

create table trener
(
	nazwisko varchar(10) not null,
	imie varchar(10) not null,
	kategoria_trenerska integer,
	data_urodzenia date,
	pesel real not null,
	licencja_trenerska serial not null
		constraint trener_licencja_trenerska_pk
			primary key,
	"drużyna" varchar(60)
		constraint "trener_drużyna_nazwa_fk"
			references "drużyna" (nazwa)
)
;

create unique index trener_pesel_uindex
	on trener (pesel)
;

create table zawodnik
(
	imie varchar(60),
	nazwisko varchar(60),
	"ilość_bramek" integer,
	data_urodzenia date not null,
	"drużyna" varchar(60) not null
		constraint "zawodnik_drużyna_nazwa_fk"
			references "drużyna" (nazwa),
	pesel double precision not null
		constraint zawodnik_pesel_pk
			primary key
)
;

create unique index zawodnik_pesel_uindex
	on zawodnik (pesel)
;

create table "sędzia"
(
	nazwisko varchar(60),
	imie varchar(60),
	pesel double precision not null,
	data_urodzeni date not null,
	"licencja_sędziowska" double precision not null
		constraint "sędzia_pkey"
			primary key
)
;

create unique index "sędzia_pesel_uindex"
	on "sędzia" (pesel)
;

create unique index "sędzia_licencja_sędziowska_uindex"
	on "sędzia" ("licencja_sędziowska")
;

create table hala
(
	id serial not null
		constraint hala_pkey
			primary key,
	"pojemność" integer not null,
	adres varchar(100) not null,
	"koszt_wynajęcia" integer
)
;

create unique index hala_id_uindex
	on hala (id)
;

create unique index hala_adres_uindex
	on hala (adres)
;

create table mecz
(
	id serial not null
		constraint mecz_pkey
			primary key,
	rzeczywista_godzina_rozp time,
	wynik varchar(20),
	"rzeczywista_godzina_zakoń" time,
	hala varchar(120)
		constraint mecz_hala_adres_fk
			references hala (adres),
	"drużyna_gości" varchar(60)
		constraint "mecz_drużyna_nazwa_fk"
			references "drużyna" (nazwa)
				on update cascade on delete cascade,
	"drużyna_gospodarzy" varchar(60)
		constraint "mecz_drużyna_nazwa_fk_2"
			references "drużyna" (nazwa)
				on update cascade on delete cascade,
	data date
)
;

create unique index mecz_id_uindex
	on mecz (id)
;

create unique index mecz_data_uindex
	on mecz (data)
;

create table termin
(
	id serial not null
		constraint termin_pkey
			primary key,
	"nr kolejki" integer not null,
	"godzina_zakończenia" time not null,
	"godzina_rozpoczęcia" time not null,
	data_spotkania date
		constraint termin_mecz_data_fk
			references mecz (data)
)
;

alter table mecz
	add constraint mecz_termin_data_spotkania_fk
		foreign key (data) references termin (data_spotkania)
			on update cascade on delete set null
;

create unique index termin_id_uindex
	on termin (id)
;

create unique index termin_data_spotkania_uindex
	on termin (data_spotkania)
;

create table "mecz_sędzia"
(
	data_meczu date not null
		constraint "mecz_sędzia_mecz_data_fk"
			references mecz (data)
				on update cascade on delete set null,
	"licencja_sędziowska" double precision
		constraint "mecz_sędzia_sędzia_licencja_sędziowska_fk"
			references "sędzia"
)
;

