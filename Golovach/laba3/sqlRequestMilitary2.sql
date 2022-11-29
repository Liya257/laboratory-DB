SELECT surname,name_personell,company_id_company
FROM personnel, company_has_personnel;

SELECT name_company FROM company, branch
WHERE branch_id_branch = id_branch;

SELECT name_company,branch_id_branch
FROM company, branch
WHERE branch_id_branch = id_branch;

SELECT DISTINCT k.name_company FROM company k, branch s
WHERE k.branch_id_branch = s.id_branch AND s.number_of_part > 322564;

SELECT name_company,name_type
FROM company, type_company,branch
WHERE company.type_id_type_company = type_company.id_type AND
company.branch_id_branch = branch.id_branch 

SELECT name_company,number_of_part,id_branch 
FROM company left OUTER JOIN branch
ON company.branch_id_branch = branch.id_branch

SELECT name_company,number_of_part,id_branch 
FROM company RIGHT OUTER JOIN branch
ON company.branch_id_branch = branch.id_branch

SELECT name_company,number_of_part,id_branch 
FROM company left OUTER JOIN branch
ON company.branch_id_branch = branch.id_branch
WHERE branch.number_of_part= 322564;

SELECT name_company,number_of_part,id_branch 
FROM company RIGHT OUTER JOIN branch
ON company.branch_id_branch = branch.id_branch
WHERE branch.number_of_part > 322564;

SELECT name_company,quantity_of_people, number_of_part FROM company  JOIN branch 
ON company.branch_id_branch = branch.id_branch 
JOIN type_company ON type_id_type_company = type_company.id_type;



