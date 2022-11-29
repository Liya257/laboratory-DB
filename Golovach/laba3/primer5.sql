drop table Сотрудники
CREATE TABLE Сотрудники(
	Фамилия char(10) NOT NULL UNIQUE,
	Имя char(10) NOT NULL UNIQUE,
	Город char(10),
	Должность char(10) NOT NULL, 
	PRIMARY KEY ( Фамилия, Имя ));