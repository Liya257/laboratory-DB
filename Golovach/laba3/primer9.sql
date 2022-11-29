drop table Продавцы2
CREATE TABLE Продавцы2( 
	КодПродавца integer NOT NULL PRIMARY KEY,
	Фамилия char(10) NOT NULL UNIQUE,
	Город char(10) ,
	Комиссионные decimal,
	CHECK (Комиссионные = 0.15 And Город='Лондон'),
	CHECK (Комиссионные = 0.14 And Город='Барселона'),
	CHECK (Комиссионные = 0.13 And Город='Сан Хосе'),
	CHECK (Комиссионные = 0.12 And Город='Нью Йорк'));