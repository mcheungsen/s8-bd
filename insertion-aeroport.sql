
-- Données Avion--
insert into Avion(Numserie, Type, modele, capacite, localisation) values (101, 'Airbus', 'A380', 538, 'CDG');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (102, 'Airbus', 'A330', 208, 'ORY');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (103, 'Boeing', 'B777', 250, 'TLS');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (104, 'Boeing', 'B737', 130, 'BOD');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (105, 'Embraer', 'ERJ145', 50, 'NCE');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (106, 'Bombardier', 'CRJ700', 70, 'MRS');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (107, 'Airbus', 'A319', 142, 'MRS');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (108, 'Embraer', 'ERJ135', 37, 'LHR');
insert into Avion(Numserie, Type, modele, capacite, localisation) values (109, 'Boeing', 'B787', 240, 'CDG');

--Données Vol--
insert into vols(numvol, heure, depart, arrivee) values (1002, '14:00:00', 'LHR', 'CDG');
insert into vols(numvol, heure, depart, arrivee) values (1003, '11:35:00', 'TLS', 'ORY');
insert into vols(numvol, heure, depart, arrivee) values (1007, '23:30:00', 'CDG', 'SEA');
insert into vols(numvol, heure, depart, arrivee) values (1004, '07:00:00', 'BOD', 'TUN');
insert into vols(numvol, heure, depart, arrivee) values (1005, '09:15:00', 'MRS', 'PRG');
insert into vols(numvol, heure, depart, arrivee) values (1008, '08:00:00', 'ORY', 'NCE');
insert into vols(numvol, heure, depart, arrivee) values (1006, '16:45:00', 'ORY', 'TLS');
insert into vols(numvol, heure, depart, arrivee) values (1009, '18:00:00', 'CDG', 'LUX');

--Données Pilote--
insert into pilote(matricule, nom, age, anciennete) values (2, 'Peter', 40, 10);
insert into pilote(matricule, nom, age, anciennete) values (3, 'Scott', 32, 5);
insert into pilote(matricule, nom, age, anciennete) values (4, 'John', 46, 12);
insert into pilote(matricule, nom, age, anciennete) values (5, 'Bill', 42, 13);
insert into pilote(matricule, nom, age, anciennete) values (6, 'Steve', 55, 20);
insert into pilote(matricule, nom, age, anciennete) values (7, 'Adam', 30, 2);
insert into pilote(matricule, nom, age, anciennete) values (8, 'Tom', 37, 8);
insert into pilote(matricule, nom, age, anciennete) values (9, 'Philip', 60, 23);

--Données Planning--
insert into planning(numvol, datevol, matricule, numserie) values (1002, '2023-11-24', 2, 108);
insert into planning(numvol, datevol, matricule, numserie) values (1003, '2023-11-03', 3, 104);
insert into planning(numvol, datevol, matricule, numserie) values (1006, '2023-11-01', 4, 104);
insert into planning(numvol, datevol, matricule, numserie) values (1005, '2023-11-16', 9, 106);
insert into planning(numvol, datevol, matricule, numserie) values (1003, '2023-11-02', 8, 107);
insert into planning(numvol, datevol, matricule, numserie) values (1007, '2023-11-10', 7, 101);
insert into planning(numvol, datevol, matricule, numserie) values (1007, '2023-11-24', 5, 103);
insert into planning(numvol, datevol, matricule, numserie) values (1008, '2023-11-10', 5, 107);
insert into planning(numvol, datevol, matricule, numserie) values (1002, '2023-11-30', 5, 108);
insert into planning(numvol, datevol, matricule, numserie) values (1006, '2023-11-05', 4, 104);
insert into planning(numvol, datevol, matricule, numserie) values (1008, '2023-11-02', 2, 105);
insert into planning(numvol, datevol, matricule, numserie) values (1005, '2023-11-02', 3, 106);
insert into planning(numvol, datevol, matricule, numserie) values (1002, '2023-11-15', 5, 101);
insert into planning(numvol, datevol, matricule, numserie) values (1005, '2023-11-03', 9, 106);
insert into planning(numvol, datevol, matricule, numserie) values (1003, '2023-11-05', 4, 104);
insert into planning(numvol, datevol, matricule, numserie) values (1009, '2023-11-24', 7, 101);








