drop database if exists library;
create database library;

use library;

create table books (
    id int not null primary key auto_increment,
    book_title varchar(120) not null,
    description text,
    publication_date date not null default '2018-01-01',
    category_id int not null,
    isbn varchar(20) not null,
    price decimal(5,2) not null default 0.00,
    number_of_pages smallint not null  
);



create table category (
    id int not null primary key auto_increment,
    category varchar(30) not null unique
);

create table author (
    id int not null primary key auto_increment,
    author_name varchar(45) not null,
    author_surname varchar(45) not null,
    author_email varchar(50) not null unique,
    author_adress varchar(120) not null,
    author_age tinyint not null,
    author_birthday date not null,
    author_awards varchar(120) default null
);

create table author_book (
    author_id int not null,
    book_id int not null
);

alter table books add foreign key (category_id) references category(id);
alter table author_book add foreign key (author_id) references author(id);
alter table author_book add foreign key (book_id) references books(id);

insert into author (author_name, author_surname, author_email, author_adress, author_age, author_birthday, author_awards)
    values
	('Дэн','Браун','DanB@gmail.com','США',54,'1964-06-22','new york times'),
    ('Артур','Конан Дойл','Arthur@gmail.com','Великобританія',71,'1859-05-22','golden globe'),
	('Агата','Крісті','Christie@gmail.com','Великобританія',85,'1890-09-15','oskar'),
	('Стівен','Кінг','StephenKing@gmail.com','США',71,'1947-09-21','golden globe'),
	('Джоан','Роулінг','JRowling@gmail.com','Великобританія',53,'1965-07-31',''),
	('Марк','Твен','MarkTw@gmail.com','США',74,'1835-11-30','');
    
insert into category (category)
    values
        ('детектив'),
        ('триллер'),
        ('фантастика'),
        ('драма');

insert into books (book_title, description, publication_date, category_id, isbn, price, number_of_pages)
    values
        ('Приключения Шерлока Холмса','Скандал в Богемії тощо','1892-01-01',1,'899-15-11148-53',100,00,450),
        ('Вбивство в Східному експресі','На цей раз Эркюлю Пуаро прийдеться розслідовати вбивство в поїзді','1991-01-01',1,'5-145-4589-89',120.50,350),
        ('10 негритят','Десять ніяк не связаних між собою людей в особняку на  острові... ','2009-01-01',1,'978-5-699-33504-6',15.00,220),
        ('Ангели і демони','Іллюмінати. Давній таємний орден..','2004-01-01',2,'5-9577-0201-3',379.50,330),
        ('Код да Вінчі','Секретний код є в работах Леонардо да Вінчі… ','2004-01-01',3,'5-17-022457-5',322.00,280),
        ('Гаррі Поттер и філософський камінь','Одинадцатилітній хлопчик-сирота Гаррі Поттер ','2002-01-01',7,'5-353-00308-X',155.25,135),
        ('Пригоди Тома Сойера ','шкільна програма','1958-01-01',7,'1-555-25749-22',212.75,185);
	
    insert into author_book (author_id, book_id)
    values
    (1,4),
	(1,5),
	(2,1),
    (3,2),
    (3,3),
	(5,6),
	(6,7);

select
    books.id,
    book_title,
    description,
    publication_date,
    category,
    isbn,
    price,
    number_of_pages,
    author_name,
    author_surname,
    author_email,
    author_adress,
    author_age,
    author_birthday,
    author_awards
from books
    join category on books.category_id = category.id
    join author_book on books.id = author_book.book_id
    join author on author.id = author_book.author_id
order by books.id limit 10, 10;

select category, sum(price) from books join category on books.category_id = category.id where category = 'Триллеры';
select * from books join author_book on books.id = author_book.book_id join author on author.id = author_book.author_id where author_age like '7_';
