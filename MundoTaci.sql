CREATE DATABASE MundoTaci;
GO
USE MundoTaci;
CREATE TABLE FAQ 
(
	FaqID INTEGER IDENTITY PRIMARY KEY,
	Title Varchar(100),
	Description Varchar (1000),
);

CREATE TABLE Client
(
	AdminID INTEGER IDENTITY PRIMARY KEY ,
	Email Varchar(50),
	Password Varchar(100),
	Name Varchar(50)
);

CREATE TABLE Category
(
	CategoryID INTEGER IDENTITY PRIMARY KEY,
	Name Varchar(50),
);

CREATE TABLE Product
(
	ProductID INTEGER IDENTITY PRIMARY KEY,
	Name Varchar (50) NOT NULL,
	Description Varchar (1000) NOT NULL,
	Image Varchar (200) NOT NULL,
	--Tirar d�vida sobre o atributo Ean13 (char 13) que consta no modelo l�gico.
	ColorID INTEGER FOREIGN KEY REFERENCES Color,
	ManufacturerID INTEGER FOREIGN KEY REFERENCES Manufacturer,
	SizeID INTEGER FOREIGN KEY REFERENCES Size
)

CREATE TABLE OwnCategoryProduct
(
	CategoryID INTEGER REFERENCES Category (CategoryID),
	ProductID INTEGER REFERENCES Product (ProductID),
	PRIMARY KEY (CategoryID, ProductID)
);

--EXEC sp_rename 'OwnCategoryProeduct','OwnCategoryProduct'; --Comando para renomear o nome da tabela

CREATE TABLE Size
(
	SizeID INTEGER IDENTITY PRIMARY KEY,
	SizeValue char(5)
);


CREATE TABLE Color
(
	ColorID INTEGER IDENTITY PRIMARY KEY,
	Name Char (20)
);

CREATE TABLE Manufacturer
(
	ManufacturerID INTEGER IDENTITY PRIMARY KEY,
	Name Char (20)
);
CREATE TABLE Bonus
(
	BonusID INTEGER IDENTITY PRIMARY KEY,
	Name Varchar(200) NOT NULL,
	Value smallmoney NOT NULL, 
	ExpirationDate Date NOT NULL,
	StoreID INTEGER FOREIGN KEY REFERENCES Store,
	SalesManID INTEGER FOREIGN KEY REFERENCES SalesMan
);

CREATE TABLE Store
(
	StoreID INTEGER IDENTITY PRIMARY KEY,
	Email Varchar(100) NOT NULL,
	CNPJ Char(14) NOT NULL,
	Name Varchar(100) NOT NULL,
	Image Varchar(200) NOT NULL,
	Adress Varchar(20) NOT NULL,
	CEP Char(8) NOT NULL,
	Phone Varchar(20) NOT NULL,
	Owner Varchar(50) NOT NULL,
	Password Varchar(200) NOT NULL
);
CREATE TABLE SalesMan
(
	SalesManID INTEGER IDENTITY PRIMARY KEY,
	CPF char(11) NOT NULL,
	Name Varchar(50) NOT NULL,
	Phone Varchar(20) NOT NULL,
	Image Varchar(200) NOT NULL,
	Email Varchar(100) NOT NULL,
	Password Varchar(200) NOT NULL,
	StoreID INTEGER FOREIGN KEY REFERENCES Store
);
CREATE TABLE ProductBonus
(
	BonusID INTEGER REFERENCES Bonus (BonusID),
	ProductID INTEGER REFERENCES Product (ProductID)
	PRIMARY KEY (BonusID, ProductID)
);
CREATE TABLE StoreProduct
(
	ProductID INTEGER REFERENCES Product (ProductID),
	StoreID INTEGER REFERENCES Store (StoreID)
	PRIMARY KEY (ProductID, StoreID)
);
