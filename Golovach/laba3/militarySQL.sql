create database military
create table branch (
	id_branch serial not null primary key,
	number_of_part int not null,
	location_id_location int not null,
	constraint fk_location_branch foreign key (location_id_location) references "location"(id_location)
)
create table location (
	id_location serial not null primary key,
	country varchar(50) not null,
	city varchar(50) not null,
	address varchar(75) not null,
	square float not null
)
create table type_company(
	id_type serial not null primary key,
	name_type varchar(50) not null
)
create table personnel(
	id_personnel serial not null primary key,
	surname varchar(50) not null,
	name_personell varchar(50) not null,
	post varchar(40) not null,
	dofb timestamp not null,
	year_of_admission date not null,
	length_od_service int not null,
	rewards varchar(75),
	participation_in_military_events varchar(150)
)
create table company(
	id_company serial not null primary key,
	name_company varchar(75) not null,
	quantity_of_people int not null,
	branch_id_branch int not null,
	type_id_type_company int not null,
	constraint fk_company_branch foreign key (branch_id_branch) references "branch"(id_branch),
	constraint fk_type_company foreign key (type_id_type_company) references "type_company"(id_type)
)
create table company_has_personnel(
	company_id_company int not null,
	personnel_id_personel int not null,
	constraint fk_company_company foreign key (company_id_company) references "company"(id_company),
	constraint fk_personnel_personnel foreign key (personnel_id_personel) references "personnel"(id_personnel)
)