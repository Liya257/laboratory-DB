SELECT COUNT(*) FROM branch;

select count(*) from branch where location_id_location = 1

select count(*) from branch, company where branch.id_branch=company.branch_id_branch and number_of_part=552102

SELECT count(DISTINCT name_company) FROM branch d, company t
WHERE d.id_branch = t.branch_id_branch AND
LOWER(t.name_company) = 'mn-254';

SELECT SUM(length_od_service)
FROM personnel
WHERE (post) = 'serzhant';

select avg(length_od_service) from personnel

select avg(distinct length_od_service) from personnel

SELECT MAX(length_od_service)
FROM personnel;

SELECT UPPER(name_company)
FROM company;

SELECT surname,name_personell
FROM personnel
WHERE extract(YEAR from dofb)=1979 

SELECT surname,name_personell, dofb,
dofb + (interval '3 months')
FROM personnel

SELECT number_of_part,
count(*) FROM branch
GROUP BY number_of_part ;

SELECT post, count(length_od_service) FROM personnel
group by post

UPDATE personnel
SET length_od_service = length_od_service * 1.1
WHERE LOWER(post) = 'serzhant';

SELECT name_company
FROM company
ORDER BY name_company ASC;







