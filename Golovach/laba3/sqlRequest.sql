SELECT name_teacher FROM teacher WHERE dolgnost = 'профессор';

SELECT sutname, sutfname FROM students WHERE stipend < 300;

SELECT name_teacher FROM teacher WHERE data_hire > '1/01/2002';

SELECT name_teacher,dolgnost FROM teacher WHERE UPPER(name_teacher) > 'Сычева';

SELECT sutfname FROM students WHERE city = 'Макарово' AND stipend > 100;

SELECT name_kafedry, num_korpusa FROM kafedra WHERE num_korpusa = 1 OR num_korpusa = 8;

SELECT name_faculteta FROM faculty WHERE NOT LOWER(name_faculteta) = 'Математики и
информатики';

SELECT name_teacher, dolgnost, salary, rise FROM teacher WHERE (dolgnost ='ассистент') AND (salary < 550 OR rise > 60);

SELECT name_teacher FROM teacher WHERE salary + rise > 3500;

SELECT name_teacher FROM teacher WHERE (salary + rise) / 2 > 5 * rise;
--//joins
SELECT name_kafedry, num_korpusa FROM kafedra WHERE num_korpusa IN (1, 3, 12);

SELECT name_kafedry, num_korpusa FROM kafedra WHERE num_korpusa not IN (1, 3, 12);

SELECT name_teacher FROM teacher WHERE (salary + rise) IN (800, 900, 1000, 4400);

SELECT name_teacher, salary, salary + rise FROM teacher WHERE salary + rise IN (salary + 100, salary + 200, salary
+ 300, salary + 400, salary + 500);

SELECT name_teacher FROM teacher WHERE salary BETWEEN 1000 AND 2000;

SELECT name_teacher FROM teacher WHERE UPPER(name_teacher) BETWEEN 'З' AND 'Л';

SELECT name_kafedry, num_korpusa FROM kafedra WHERE num_korpusa NOT BETWEEN '1' AND '3';

SELECT name_teacher, data_hire FROM teacher WHERE data_hire BETWEEN '01/01/2000' AND '12/12/2001';

SELECT name_teacher, salary + rise, 2 * rise, 3 * rise + 50 FROM teacher 
WHERE salary + rise BETWEEN 2 * rise AND 3 * rise + 50;

SELECT name_teacher FROM teacher WHERE UPPER(name_teacher) LIKE 'М%';

SELECT name_teacher FROM teacher WHERE name_teacher LIKE 'М__ы%';

SELECT name_kafedry FROM kafedra WHERE LOWER(name_kafedry) LIKE '%анализ%';

SELECT name_teacher, dolgnost FROM teacher
WHERE LOWER(name_teacher + dolgnost) LIKE '%o%o%o%o%o%';

SELECT name_teacher, idef_kod,tel_teacher FROM teacher
WHERE idef_kod IS NULL OR idef_kod IS null;

