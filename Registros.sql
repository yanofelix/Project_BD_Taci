--USE MundoTaci;

--INSERT INTO FAQ
--			(Title, Description)
--VALUES
--			('Como realizar o login?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
--			Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'),
--			('Acesso aos treinamentos', 'when an unknown printer took a galley of type and scrambled it to make 
--			a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, 
--			remaining essentially unchanged.'),
--			('N�o visualizo os v�deos', 'when an unknown printer took a galley of type and scrambled it to make 
--			a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, 
--			remaining essentially unchanged.');

--SELECT * FROM FAQ;


--INSERT INTO Client	
--			(Email, Password, Name)
--VALUES
--			('flavinha.goncalves@gmail.com', 'novaroma123@187','Flavia Costa'),
--			('fred.lucena@gmail.com', 'novaroma44@1997','Fred Lucena'),
--			('silviosantos@hotmail.com', 'silviano@maciano','Silvio Santos');

--SELECT * FROM Client;


--INSERT INTO Category
--			(Name)
--VALUES		('Vestidos'),
--			('Shorts'),
--			('Blusas'),
--			('Conjuntos');

--SELECT * FROM Category;

--INSERT Size
--		(SizeValue)
--VALUES 
--		('PP'),
--		('P'),
--		('M');
--SELECT * FROM Size;

--INSERT Color	
--		(Name)
--VALUES	('Rosa'),
--		('Amarelo'),
--		('Vermelho'),
--		('Azul Beb�');
--SELECT * FROM Color;

--INSERT Trainings
--		(Title, Description, TotalViews, StoreViews, Video, UniqueUserViews)
--VALUES
--		('Venda Consultiva', 'Contrary to popular belief, Lorem Ipsum is not simply random text.',
--		100, 5, 'Where does it come ', 6),
--		('Sou de Algod�o', 'Contrary to popular belief, Lorem Ipsum is not simply random text.',
--		100, 5, 'Where does it come ', 6),
--		('Todos Ganham', 'Contrary to popular belief, Lorem Ipsum is not simply random text.',
--		100, 5, 'Where does it come ', 6);

--SELECT * FROM Trainings;

--INSERT Type
--		(Name)
--VALUES	
--		('Vendas'),
--		('Finan�as'),
--		('Gerenciamento'),
--		('Especialista no produto');
			
--SELECT * FROM Type;

--INSERT INTO Bonus
--		(Name, Value, ExpirationDate)
--VALUES
--		('Vale Presente', 150, '2022-07-15'),
--		('Ganhe um Jantar', 250, '2022-07-21'),
--		('Vale 500', 500, '2022-07-22');

--UPDATE Bonus
--SET StoreID = 2, SalesmanID = 1
--WHERE BonusID = 3;

--SELECT * FROM Bonus;

--INSERT INTO Manufacturer
--	       (Name)
--VALUES
--			('algod�o egp'),
--			('algod�o marcio'),
--			('fio peruano');

--INSERT INTO Manufacturer
--			(Name)
--VALUES
--			('Elastano');

--SELECT name FROM Manufacturer;

--INSERT INTO Product
--            (Name, Description, Image, Ean13)
--VALUES
--           ('Camisa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'asd123se58145'),
--		   ('Bermuda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,', 'Contrary to popular belief, Lorem Ipsum is not simply random text.','fdr568dfg1236'),
--		   ('Vestido', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,', 'Contrary to popular belief, Lorem Ipsum is not simply random text.','yth569hji1235');
			
--SELECT * FROM Product;

--INSERT INTO Salesman
--            (CPF, Name, Phone, Image, Email, Password)
--VALUES
--            ('10744152413', 'Ronaldo Naz�rio', '81997452501', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'fenomeno@hotmail.com', 'Copa2002'),
--			('02115298725', 'Diego Maradona', '81987524658', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'dieguitoarmando@hotmail.com', 'Lamanodios'),
--			('52874598736', 'Ademir Menezes', '819887543698', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'queixadabrabo@hotmail.com', 'Fazedordegol');

--SELECT * FROM Salesman;

--INSERT INTO Store
--            (Email, CNPJ, Name, Image, Adress, CEP, Phone, Owner, Password)
--VALUES
--            ('lojadotico@gmail.com', '14017797000109', 'Tico Lojas', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'Rua 01, vazea', '50040580','81997586321', 'There is no one who loves pain itself', 'senhadotico'),
--			('lojadoidel@gmail.com', '12587197000150', 'Idel Lojas', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'Rua 02, ibura', '55780570','81887746351', 'There is no one who loves pain itself', 'senhadoidel01'),
--			('ellocolojas@gmail.com', '87492547001287', 'Elloco rouparia', 'Contrary to popular belief, Lorem Ipsum is not simply random text.', 'Rua 99, raio', '40014967','8197682507','There is no one who loves pain itself', 'soosloucossabem');


--Atualiza��o de registros na tabela Training
--Setados os tipos de treinamentos nos registros de treinamentos (1 - Vendas / 2 - Finan�as / 3 - Gerenciamento / 4 - Especialista de Produto)

--UPDATE Trainings
--SET TypeID ='1'
--WHERE TrainingID = '3';
--SELECT * FROM Trainings;

--Atualiza��o de registros na tabela Salesman
--Setado o ID da Loja nos registros do vendedores

--UPDATE Salesman
--SET StoreID ='1'
--WHERE SalesmanID = '3';
--SELECT * FROM Salesman;

--Atualiza��o de registros na tabela Trainings

--UPDATE Trainings set TypeID = 1 WHERE TrainingID = 1;
--UPDATE Trainings set TypeID = 2 WHERE TrainingID = 3;
--UPDATE Trainings set TypeID = 3 WHERE TrainingID = 2;

		