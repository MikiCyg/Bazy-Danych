create table "drużyna"
(
	nazwa varchar(60),
	id serial not null
		constraint "drużyna_pkey"
			primary key
)
;

create unique index "drużyna_id_uindex"
	on "drużyna" (id)
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
			primary key
		constraint "trener_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null
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
	id serial not null
		constraint zawodnik_pkey
			primary key
		constraint "zawodnik_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null,
	pesel double precision not null
)
;

create unique index zawodnik_licencja_sportowa_uindex
	on zawodnik (id)
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
			primary key
		constraint "mecz_drugadrużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null
		constraint "mecz_drużyna_id_fk"
			references "drużyna"
				on update cascade on delete set null
		constraint mecz_hala_id_fk
			references hala
				on update cascade on delete set null,
	rzeczywista_godzina_rozp time,
	wynik varchar(20),
	"rzeczywista_godzina_zakoń" time
)
;

create unique index mecz_id_uindex
	on mecz (id)
;

create table termin
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

create unique index termin_id_uindex
	on termin (id)
;

create table "mecz_sędzia"
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

