insert into personnel (surname,name_personell,post,dofb,year_of_admission,length_od_service,rewards,participation_in_military_events) values
	('Ivanov','Ivan','komandir','1988-05-02','2015-11-23',7,'',''),
	('Petrov','Vlad','serzhant','1979-09-12','2016-12-03',6,'',''),
	('Smirnov','Nikita','serzhant','1978-12-08','2017-02-27',5,'',''),
	('Zolotov','Misha','leytinant','2000-04-28','2015-01-15',7,'',''),
	('Vlaschuk','Andrei','komandir','1975-05-13','2014-06-11',8,'',''),
	('Gozonov','Petr','leytinant','1999-07-21','2019-08-05',3,'',''),
	('Apanasenko','Dima','leytinant','1995-09-15','2012-10-25',10,'','')
	select * from personnel
	delete from personnel
insert into type_company (name_type) values
	('pogran'),
	('raket'),
	('spec')
	
insert into location (country,city,address,square) values
	('Belarus','Gomel','Novaya 25',575),
	('Belarus','Minsk','Vilenskaya 15',369),
	('Belarus','Grodno','Molotovo 120',350),
	('Belarus','Mogilev','Gagarina 5a',230)
	
insert into branch (number_of_part,location_id_location) values
	(322564,1),
	(987452,3),
	(552102,4),
	(124895,2),
	(125964,2),
	(321456,1),
	(564987,1)
	
insert into company (name_company,quantity_of_people,branch_id_branch,type_id_type_company) values
	('lk-523',23,1,1),
	('mn-254',54,2,2),
	('nb-985',36,3,3),
	('ck-002',22,4,3),
	('nb-965',123,2,2),
	('ds-632',55,5,3),
	('cv-256',89,6,2),
	('nm-326',120,7,3)
	select * from personnel
insert into company_has_personnel (company_id_company,personnel_id_personel) values
	(1,8),(2,9),(3,10),(4,11),(5,12),(6,10),(5,9),(7,10),(7,11),(7,12)