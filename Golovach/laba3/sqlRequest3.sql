SELECT COUNT(*) FROM teacher;

select count(*) from teacher where tel_teacher = null

select count(*) from kafedra, faculty where kafedra.facultet_kod_faculteta=faculty.kod_faculteta and name_faculteta='Математики и информатики'

SELECT count(DISTINCT dolgnost) FROM kafedra d, teacher t
WHERE d.kod_kafedry = t.kafedra_kod_kafedry AND
LOWER(d.name_kafedry) = 'Компьютерные системы и сети';

SELECT SUM(salary)
FROM teacher
WHERE (dolgnost) = 'ассистент';

select avg(salary) from teacher

select avg(distinct salary) from teacher

SELECT MAX(salary + rise)
FROM teacher;

select max(data_hire) from teacher, kafedra
where teacher.kafedra_kod_kafedry=kafedra.kod_kafedry and kafedra.name_kafedry = 'Информатики';


SELECT SUM(salary)*100/SUM(rise), SUM(rise)*100/SUM(salary)
FROM teacher;

SELECT UPPER(name_teacher)
FROM teacher;

SELECT name_teacher, birthday
FROM teacher
WHERE extract(YEAR from birthday)=1979 

SELECT name_teacher, data_hire,
data_hire + (interval '3 months')
FROM teacher
WHERE (name_teacher) LIKE 'С%';

SELECT 'Статывка проработал '|| 
date_part('month', current_date(),data_hire) ||' месяцев'
FROM teacher
WHERE name_teacher LIKE 'Статыв%';

SELECT num_korpusa,
count(*) FROM kafedra
GROUP BY num_korpusa ;

SELECT dolgnost, count(salary) FROM teacher
group by dolgnost


SELECT f.name_faculteta,
s.group_student, count(group_student)
FROM faculty f, kafedra d, students s
WHERE f.kod_faculteta = d.facultet_kod_faculteta AND
d.kod_kafedry = s.kafedra_kod_kafedry AND d.num_korpusa = 1
GROUP BY f.name_faculteta,s.group_student

SELECT salary + rise, count(*) FROM teacher
WHERE salary + rise <= 1500 GROUP BY salary + rise;

SELECT kafedra_kod_kafedry , Count(*)
FROM teacher
WHERE dolgnost='профессор' GROUP BY kafedra_kod_kafedry having
count(dolgnost) > 1;

SELECT d.Name_kafedru, Count(*), SUM(t.salary + t.Rise) FROM
FACULTET f, KAFEDRA d, TEACHER t
WHERE f.KOD_FACULTETA = d.KOD_FACULTETA AND
d.KOD_kafedru = t.KOD_kafedru AND LOWER(f.Name_faculteta) =
&#39;математики и информатики&#39; AND LOWER(t.Dolgnost ) = &#39;профессор&#39;
GROUP BY d.Name_kafedru HAVING COUNT(*) &gt; 0;

SELECT MIN(Salary), MAX(Rise), SUM(Salary + Rise)
FROM TEACHER
HAVING SUM(Salary + Rise) &gt; 15000;

SELECT AVG(Salary), AVG(Rise), SUM(Salary + Rise)
FROM TEACHER
WHERE LOWER(Dolgnost ) = &#39;ассистент&#39;
HAVING SUM(Salary + Rise) &gt; 2500;

SELECT NAME_TEACHER FROM TEACHER
wheRE LOwER(Dolgnost ) =’профессор’ OR
LOWER(Dolgnost ) = &#39;доцент&#39;
ORDER BY NAME_TEACHER;

SELECT Name_teacher, Salary + Rise FROM TEACHER
WHERE LOWER(Dolgnost ) = &#39;асcистент’ ORDER BY Salary + Rise;

SELECT Name_teacher, Data_hire
FROM TEACHER
WHERE LOWER(Dolgnost) = &#39;ассистент&#39; ORDER BY Data_hire ASC;

INSERT INTO KAFEDRA (name_kafedru, kod_faculteta, fio_zavkaf)
VALUES ( &#39;Философии&#39;, 5, (SELECT fio_decana
FROM FACULTET WHERE LOWER(Name_faculteta) = &#39;международный&#39;));

UPDATE TEACHER
SET Salary = Salary + Salary * 0.12, Rise = Rise + Rise *
0.08;

UPDATE TEACHER
SET Salary = Salary * 1.1, Rise = Rise * 1.1
WHERE LOWER(Dolgnost ) = &#39;ассистент&#39;;

UPDATE TEACHER
SET Salary = Salary * 1.5
WHERE KOD_kafedru = (SELECT KOD_kafedru FROM KAFEDRA WHERE
LOWER(Name_kafedru) = &#39;прикладная математика&#39;);

UPDATE TEACHER
SET Rise = (SELECT SUM(Rise) * 0.7 / COUNT(*) FROM TEACHER)
WHERE LOWER(Dolgnost ) = &#39;ассистент&#39;;


