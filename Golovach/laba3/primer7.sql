CREATE TABLE Продавцы( 
	КодПродавца integer NOT NULL PRIMARY KEY,
	Фамилия char(10) NOT NULL UNIQUE,
	Город char(10),
	Комиссионные decimal CHECK (Комиссионные < 1 ));
	drop table Продавцы
CREATE TABLE Продавцы( 
	КодПродавца integer NOT NULL PRIMARY KEY,
	Фамилия char(10) NOT NULL UNIQUE,
	Город char(10) CHECK (Город IN ('Лондон', 'Барселона','Сан Хосе','Нью Йорк')),
	Комиссионные decimal CHECK (Комиссионные < 1 ));