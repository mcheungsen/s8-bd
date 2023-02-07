
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