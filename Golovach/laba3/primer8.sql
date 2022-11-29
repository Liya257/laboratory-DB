CREATE TABLE Продавцы2( 
	КодПродавца integer NOT NULL PRIMARY KEY,
	Фамилия char(10) NOT NULL UNIQUE,
	Город char(10) ,
	Комиссионные decimal,
	CHECK (Комиссионные < 0.15 OR Город='Барселона'));