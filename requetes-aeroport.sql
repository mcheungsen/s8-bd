-- 1. Quel est le type et le modèle de l'avion avec la capacité la plus faible ?--
SELECT type, modele, capacite
FROM avion
WHERE capacite = (SELECT MIN(capacite) FROM avion);

--2. Quels sont le modèle et la capacité de l'avion utilisé pour le vol du 10 Novembre vers Nice (NCE) ?--
SELECT type, modele, capacite
FROM avion
JOIN planning ON avion.numserie = planning.numserie
JOIN vols ON planning.numvol = vols.numvol
WHERE datevol = '2023-11-10' AND arrivee = 'NCE';

-- 3. Quel est le nom du pilote le plus expérimenté ?--
SELECT nom
FROM pilote
WHERE anciennete = (SELECT MAX(anciennete) FROM pilote);

--4. Donner le nom et l’âge des pilotes qui effectuent les vols aller-retour entre Paris Orly (ORY) et Toulouse (TLS) ?--
(SELECT nom, age
FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
WHERE vols.depart = 'ORY' AND vols.arrivee = 'TLS')
INTERSECT
(SELECT nom, age
FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
WHERE vols.depart = 'TLS' AND vols.arrivee = 'ORY');

--5. Quels sont les noms des pilotes qui assurent le vol depuis Londres (LHR) ?--
SELECT DISTINCT nom
FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
WHERE depart = 'LHR';

--6. Quelles sont les villes de destination classées selon l’heure de départ des vols dont le nom du pilote commence par la lettre ’S’ ?--
SELECT arrivee
FROM vols
INNER JOIN planning ON vols.numvol = planning.numvol
INNER JOIN pilote ON planning.matricule = pilote.matricule
WHERE pilote.nom ~* '^S'
ORDER BY heure

--7. Quel est le nom du pilote qui assure le plus de vols ? le moins de vols ?--
SELECT pilote.nom
FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
GROUP BY pilote.nom
ORDER BY COUNT(vols.numvol) --DESC--
LIMIT 1;

--8. Quels sont les noms des pilotes qui ne vont jamais à Pragues (PRG) ?--
SELECT DISTINCT pilote.nom
FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
WHERE pilote.matricule NOT IN 
(SELECT pilote.matricule FROM pilote
INNER JOIN planning ON pilote.matricule = planning.matricule
INNER JOIN vols ON planning.numvol = vols.numvol
WHERE arrivee = 'PRG'
);

--9. Quels sont les vols qui décollent entre 07:00 et 11:00 ?--
SELECT *
FROM vols
WHERE heure > '07:00' AND heure < '11:00';

--10. Donner le nombre de vols par pilote.--
SELECT COUNT(*), pilote.nom
FROM planning
INNER JOIN pilote ON planning.matricule = pilote.matricule
GROUP BY pilote.nom;

--11. Donner le nombre de vols par type d’avion.--
SELECT COUNT(numvol), avion.type
FROM planning
INNER JOIN avion ON planning.numserie = avion.numserie
GROUP BY avion.type;

--12. Donner le nombre de vols par type d’avion classé par ordre croissant du nombre de vols.--
SELECT COUNT(*), Avion.type
FROM vols
INNER JOIN planning ON vols.numvol = planning.numvol
INNER JOIN avion ON planning.numserie = avion.numserie
GROUP BY avion.type;

--13. Donner la liste des vols qui partent l'après-midi uniquement--
SELECT *
FROM vols
WHERE heure >= '12:00';

--14. Où est-ce possible d'aller au départ de Londres LHR en passant par Paris CDG--
--On considère que la planning rend les voyages possibles ?--
SELECT *
FROM vols
INNER JOIN vols AS vols2 ON vols.arrivee = vols2.depart 
WHERE vols.depart = 'LHR' AND vols.arrivee = 'CDG';

--15. Quel(s) est(sont) le(s) pilote(s) qui réalise(nt) le plus de vols à bord d’un Airbus ?--
SELECT pilote.nom, COUNT(planning.numvol) as nb
FROM pilote
NATURAL JOIN planning
NATURAL JOIN avion
WHERE avion.type = 'Airbus'
GROUP BY pilote.nom
ORDER BY nb DESC

--16. Quels sont les numéros de série et la localisation des avions qui ne sont pas en service ?--
SELECT numserie, localisation
from avion
WHERE numserie not in (SELECT numserie FROM avion NATURAL JOIN planning);

--17. Quel est l’avion qui dessert tous les vols vers Pragues (PRG) ?--
SELECT *
FROM avion
NATURAL JOIN planning
NATURAL JOIN vols
WHERE vols.arrivee = 'PRG' AND avion.numserie not in (
   SELECT numserie
   FROM avion 
   NATURAL JOIN planning 
   NATURAL JOIN vols 
   WHERE vols.arrivee != 'PRG');

--18.Quelle est la ligne qui a la plus importante capacité de transport ?--
SELECT depart, arrivee, SUM(avion.capacite)as nb
FROM vols
NATURAL JOIN planning
NATURAL JOIN avion
GROUP BY depart,arrivee
ORDER BY nb DESC
LIMIT 1;

--19. Quelles lignes ne sont plus desservis ?--
SELECT depart
FROM vols
WHERE depart not in (
    SELECT arrivee
    FROM vols);

--20. Est-ce qu’il y a un pilote qui vole sur tous les modèles d’avion ?--
