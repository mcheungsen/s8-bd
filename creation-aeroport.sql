/*
* Création du schéma Aéroport.
*/
create table Avion (
NumSerie int constraint cle_avion PRIMARY KEY,
Type varchar(20) constraint type_check check (type in ('Airbus', 'Boeing', 'Bombardier', 'Embraer')),
modele varchar(25) not null,
Capacite int constraint capacite_positive check(capacite >=0),
Localisation char(3) constraint localisation_null not null
);

create table Vols(
NumVol int constraint cle_vols PRIMARY KEY,
Heure time,
Depart char(3) constraint localisation_null not null,
Arrivee char(3) constraint localisation_null not null
);

create table Pilote(
Matricule int constraint cle_matricule PRIMARY KEY,
Nom varchar(20) constraint nom_notnull not null,
Anciennete int constraint anciennete_positive check(anciennete >= 0),
Age int constraint age_positive check(age >= 0)
);

create table Planning(
NumVol int REFERENCES Vols(numVol),
DateVol timestamp,
Matricule int REFERENCES Pilote(matricule),
NumSerie int REFERENCES Avion(numSerie),
PRIMARY KEY (numVol, DateVol)
);