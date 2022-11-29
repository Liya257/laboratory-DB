SELECT surname,name_personell FROM personnel WHERE post = 'serzhant';

SELECT country,city,address FROM location WHERE square < 400;

SELECT surname,name_personell FROM personnel WHERE year_of_admission > '1/01/2002';

SELECT surname,name_personell FROM personnel WHERE UPPER(name_personell) > 'Nikita';

SELECT country,city,address FROM location WHERE city = 'Grodno' AND country = 'Belarus';

SELECT country,city,address FROM location WHERE city = 'Grodno' OR city = 'Minsk';

SELECT country,city,address FROM location WHERE NOT LOWER(city) = 'Grodno';

SELECT surname,name_personell FROM personnel WHERE length_od_service not IN (7, 6, 10);

SELECT surname,name_personell FROM personnel WHERE length_od_service BETWEEN 5 AND 10;

SELECT surname,name_personell FROM personnel WHERE name_personell NOT BETWEEN 'I' AND 'H';

SELECT  surname,name_personell FROM personnel WHERE UPPER(name_personell) LIKE 'N%';

SELECT  surname,name_personell FROM personnel WHERE name_personell LIKE 'N__%';

SELECT surname,name_personell FROM personnel
WHERE surname IS not null

