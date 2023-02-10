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