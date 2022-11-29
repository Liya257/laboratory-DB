drop table Сотрудники
CREATE TABLE Сотрудники(
	Фамилия char(10),
	Имя char(10) ,
	Город char(10),
	Должность char(10) not null, 
	PRIMARY KEY (Фамилия, Имя));