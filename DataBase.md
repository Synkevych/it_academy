### DataBase

- DBMS Database mangement system - softwate application 
- Data Model 
- RDBMS 
- Client-Server 
- DB server installation 

- дані не зникають в наслідок збоїв 

Типи 

- hierarchical 
- network 
- ralational 
- object 

Клієнт серверна система 

Типи данних:
- iny
- numeric
- float 
- char
- varchar
- DataTime, Data, Time
- NULL 

Data Definition Language
- Create 
- Alter 
- Drop 

Data Manipulation Language 
- Insert 
- Select 
- Update 
- Delete

### Relationships 
- one to one
- one to many, many to one  
- many to many 

### Keys

- Primary key - унікальний внутрішній для таблиці, і лише один 
- Foreing key - зовнішній ключ, зв'язної таблиці 


INSERT INTO where values data
UPDATE <table> 
	SET 
		<column1> = <value>,
	WHERE <param> = <value>
DELETE FROM <table>

	WHERE <param> = <value>

### Normalization Data 
- Надлишковість чи дублювання информації - приводить до аномалій, зміни, видалення.
- Мінімізувати зміни у структури БД
- Роблення БД більш інформативною
- Більш ефективне використання запитів 

- first normal form 
ліквідувати дублювання, ідинтифікувати кожен рядок певним ключем 
- second normal form 
відсутність функціональній заежності 
знайти функ, залежнімть 
знайти часткові залежності і перенести їх в окремі таблиці
- third normal form 
відсутність транзитивна залежність, ключові поля 1 від одного 
залежати від ід ключів
Транзитивні залежності залежать тільки від 1 ід ключа чи є ще якась від яких залежать 
- denormalization 
робиться запитами SQL 

функціональна залежність -> один ключ для всіх персон
