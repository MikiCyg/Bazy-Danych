create table if not exists "drużyna"
(
	nazwa varchar(60),
	id serial not null
		constraint "drużyna_pkey"
			primary key
)
;

create table if not exists trener
(
	nazwisko varchar(10) not null,
	imie varchar(10) not null,
	kategoria_trenerska integer,
	data_urodzenia date,
	pesel integer not null,
	licencja_trenerska integer not null
		constraint trener_licencja_trenerska_pk
			primary key
		constraint "trener_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null
)
;

create unique index if not exists trener_pesel_uindex
	on trener (pesel)
;

create table if not exists zawodnik
(
	imie varchar(60),
	nazwisko varchar(60),
	ilosc_bramek integer,
	data_urodzenia date not null,
	licencja_sportowa integer not null
		constraint zawodnik_pkey
			primary key
		constraint "zawodnik_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null,
	pesel integer not null
)
;

create unique index if not exists zawodnik_licencja_sportowa_uindex
	on zawodnik (licencja_sportowa)
;

create unique index if not exists zawodnik_pesel_uindex
	on zawodnik (pesel)
;

create unique index if not exists "drużyna_id_uindex"
	on "drużyna" (id)
;

create table if not exists "sędzia"
(
	nazwisko varchar(60),
	imie varchar(60),
	pesel integer not null,
	data_urodzeni date not null,
	"licencja_sędziowska" integer not null
		constraint "sędzia_pkey"
			primary key
)
;

create unique index if not exists "sędzia_pesel_uindex"
	on "sędzia" (pesel)
;

create unique index if not exists "sędzia_licencja_sędziowska_uindex"
	on "sędzia" ("licencja_sędziowska")
;

create table if not exists hala
(
	id serial not null
		constraint hala_pkey
			primary key,
	pojemnosc integer not null,
	adres varchar(100) not null,
	"koszt_wynajęcia" integer
)
;

create unique index if not exists hala_id_uindex
	on hala (id)
;

create unique index if not exists hala_adres_uindex
	on hala (adres)
;

create table if not exists mecz
(
	id serial not null
		constraint mecz_pkey
			primary key
		constraint "mecz_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null
		constraint mecz_hala_id_fk
			references hala
				on update cascade on delete set null,
	rzeczywista_godzina_rozp time,
	"rzeczywista_godzina_zakoń" integer,
	wynik integer
)
;

create table if not exists termin
(
	id serial not null
		constraint termin_pkey
			primary key
		constraint termin_mecz_id_fk
			references mecz,
	"nr kolejki" integer not null,
	"godzina_zakończenia" time not null,
	"godzina_rozpoczęcia" time not null,
	data_spotkania date not null
)
;

create unique index if not exists termin_id_uindex
	on termin (id)
;

create unique index if not exists mecz_id_uindex
	on mecz (id)
;

create table if not exists "mecz_sędzia"
(
	id integer not null
		constraint "mecz_sędzia_id_fkey"
			references mecz
				on update cascade,
	"licencja_sędziowska" integer not null
		constraint "mecz_sędzia_licencja_sędziowska_fkey"
			references "sędzia"
				on update cascade on delete cascade,
	constraint "mecz_sędzia_pkey"
		primary key (id, "licencja_sędziowska")
)
;

