-- cibler les population des usa:
-- SELECT country.Population, country.Name
-- FROM world.country
-- WHERE country.Name LIKE 'United States';

-- independance apres 1989:
SELECT country.IndepYear, country.Name
FROM world.country
WHERE country.IndepYear > 1989;

-- sélectionner les villes dont la population est supérieure à 1 million d'habitants aux États-Unis : 9 résultats attendus:

SELECT city.Name, city.Population
FROM city
WHERE city.CountryCode = 'USA'
AND city.population > 1000000;

-- sélectionner les villes dont la population est supérieure à 1 million d'habitants en Chine et renommer la colonne en « Villes les plus peuplées en Chine » : 35 résultats attendus

SELECT city.Population, city.Name AS 'Villes les plus peuplées en Chine'
FROM city
WHERE city.CountryCode LIKE 'CHN'
AND city.Population > 1000000;

-- sélectionner toutes les villes dont la population est supérieure à 5 millions et afficher le résultat en millions sous forme de chiffre décimal (par exemple 1.0 pour 1 million) : 24 résultats attendus

SELECT city.Population/1000000, city.Name
FROM world.city
WHERE city.Population > 5000000;

-- sélectionner tous les pays dont la forme de gouvernement est liée à la monarchie : 43 résultats attendus

SELECT country.GovernmentForm, country.Name
FROM world.country
WHERE country.GovernmentForm LIKE '%Monarchy%';

-- sélectionner toutes les formes de gouvernement sans doublons : 35 résultats attendus

-- DISTINCT = sans doublon
SELECT DISTINCT country.GovernmentForm
FROM world.country
ORDER BY country.GovernmentForm;


-- sélectionner toutes les villes dont la population est supérieure à 5 millions et les afficher par ordre décroissant : 24 résultats attendus

SELECT city.Name, city.Population
FROM city
WHERE city.Population > 5000000
ORDER BY city.Population DESC;

SELECT city.Name, city.Population
FROM city
ORDER BY city.Population DESC
LIMIT 2;

-- sélectionner le premier pays dont la date d'indépendance est connue : 1 résultat attendu

SELECT country.Name, country.GovernmentForm, country.IndepYear
FROM world.country
WHERE country.IndepYear IS NOT NULL
ORDER BY country.IndepYear
LIMIT 1;