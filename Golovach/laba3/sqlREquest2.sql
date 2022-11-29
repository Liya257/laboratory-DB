SELECT name_faculteta, kod_faculteta,
facultet_kod_faculteta, name_kafedry
FROM faculty, kafedra;

SELECT name_kafedry FROM kafedra, students
WHERE kod_kafedry = kafedra_kod_kafedry;

SELECT faculty.name_faculteta, kafedra.name_kafedry
FROM faculty, kafedra
WHERE faculty.kod_faculteta = kafedra.facultet_kod_faculteta;

SELECT  kafedra.name_kafedry FROM faculty, kafedra
WHERE faculty.kod_faculteta = kafedra.facultet_kod_faculteta AND
LOWER(faculty.name_faculteta) = 'математики и информатики';

SELECT teacher.name_teacher 
FROM kafedra, teacher
WHERE kafedra.kod_kafedry = teacher.kafedra_kod_kafedry AND
LOWER(kafedra.name_kafedry) = 'информатики' AND
teacher.dolgnost = 'доцент';

SELECT DISTINCT k.name_kafedry FROM kafedra k, students s
WHERE k.kod_kafedry = s.kafedra_kod_kafedry AND s.stipend > 400;

SELECT DISTINCT kafedra.name_kafedry FROM faculty, kafedra,teacher
WHERE faculty.kod_faculteta = kafedra.facultet_kod_faculteta AND
kafedra.kod_kafedry = teacher.kafedra_kod_kafedry AND
faculty.name_faculteta ='Математики и информатики' AND
teacher.dolgnost = 'профессор';

SELECT teacher.name_teacher
FROM faculty, kafedra, teacher
WHERE faculty.kod_faculteta = kafedra.facultet_kod_faculteta AND
kafedra.kod_kafedry = teacher.kafedra_kod_kafedry AND
faculty.name_faculteta ='Математики и информатики' AND
teacher.dolgnost = 'ассистент';

select *
FROM faculty f, kafedra k, teacher t
WHERE f.kod_faculteta = k.facultet_kod_faculteta AND k.kod_kafedry =
t.kafedra_kod_kafedry;

SELECT k.name_kafedry,
f.name_faculteta
FROM faculty f, kafedra k WHERE f.fio_decana = k.fio_zavkaf;

SELECT k.name_kafedry , t.name_teacher
FROM kafedra k, teacher t
WHERE k.kod_kafedry = t.kafedra_kod_kafedry;

SELECT needed.name_teacher
FROM teacher needed, teacher given
WHERE needed.salary + needed.rise > given.salary + given.rise AND
given.name_teacher = 'Игнатьева Олеся';

SELECT needed.name_kafedry
FROM kafedra needed, kafedra given
WHERE needed.num_korpusa = given.num_korpusa AND
given.name_kafedry = 'Информатики';

SELECT g1.sutname, g2.sutname, g1.kafedra_kod_kafedry FROM students g1,
students g2
WHERE g1.kafedra_kod_kafedry = g2.kafedra_kod_kafedry;

SELECT tch1.name_teacher 
FROM teacher tch1, teacher tch2
WHERE tch1.name_teacher = tch2.name_teacher AND
tch1.dolgnost <> tch2.dolgnost;

SELECT kafedra.name_kafedry, teacher.name_teacher
FROM kafedra LEFT OUTER JOIN teacher
ON kafedra.kod_kafedry = teacher.kafedra_kod_kafedry

SELECT kafedra.name_kafedry, teacher.name_teacher
FROM kafedra RIGHT OUTER JOIN teacher
ON kafedra.kod_kafedry = teacher.kafedra_kod_kafedry

SELECT kafedra.name_kafedry, teacher.name_teacher
FROM kafedra LEFT OUTER JOIN teacher
ON kafedra.kod_kafedry = teacher.kafedra_kod_kafedry
WHERE kafedra.num_korpusa= 1;

SELECT kafedra.name_kafedry,
teacher.name_teacher 
FROM kafedra RIGHT OUTER JOIN teacher
ON kafedra.kod_kafedry = teacher.kafedra_kod_kafedry
WHERE teacher.salary > 3000;

SELECT name_faculteta,
name_kafedry , name_teacher FROM faculty  JOIN kafedra 
ON faculty.kod_faculteta = kafedra.facultet_kod_faculteta 
JOIN teahcer ON kod_kafedry = teacher.kafedra_kod_kafedry;



