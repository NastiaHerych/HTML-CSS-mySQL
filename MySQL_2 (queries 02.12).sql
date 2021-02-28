drop database if exists library;
create database library;

use library;

create table books (
    id int not null primary key auto_increment,
    book_title varchar(120) not null,
    description text,
    publication_date date not null default '2018-01-01',
    category varchar(30) not null,
    isbn varchar(20) not null unique,
    number_of_pages smallint not null,
    author_name varchar(45) not null,
    author_surname varchar(45) not null,
    author_email varchar(50) not null,
    author_age tinyint not null,
    author_birthday date not null,
    author_awards varchar(120) default null
);


insert into books (book_title, description, publication_date, category, isbn, number_of_pages, author_name, author_surname, author_email, author_age, author_birthday, author_awards)
    values 
    ('Гаррі Поттер', 'магія, школа, 7 книг','1992-01-01','фантастика','5-111-22222-33',440,'Джоан','Роулінг','jroyling@gmail.com',56,'1955-02-10','new york times'),
    ('Після', 'Тесса і Хардін, 4 книги','2018-10-10','драма','5-112-22222-33',570,'Анна','Тодд','annat@gmail.com',35,'1985-10-10','oskar'),
    ('Дивергент', 'Тріс пріор, 3 книги','2010-11-11','фантастика','5-113-22223-33',280,'Вероніка','Рот','veronrot@gmail.com',62,'1954-02-02','new york times'),
    ('Інферно', 'Роберт Ленгдон, 5 книг','2005-05-05','пригоди','5-114-22224-34',510,'Ден','Браун','denbr@gmail.com',57,'1954-07-07','oskar'),
    ('Код да Вінчі', 'Роберт Ленгдон, 5 книг','2002-06-06','пригоди','5-115-22225-35',460,'Ден','Браун','denbr@gmail.com',57,'1954-07-07','oskar'),
    ('Голодні ігри', 'Кітніс Евердін, 3 книги','2007-07-07','триллер','5-116-22226-36',328,'Сюзанна','Колінз','scoll@gmail.com',44,'1969-03-03','new york times'),
    ('Персі Джексон', 'однойменно, 6 книг','2010-03-03','пригоди','5-117-22227-37',687,'Рік','Ріордан','rikr@gmail.com',68,'1955-12-12','golden globe'),
    ('Герої Олімпу', '7 напівкровок, 5 книг','2006-08-08','пригоди','5-118-22228-38',598,'Рік','Ріордан','rikr@gmail.com',68,'1955-12-12','golden globe'),
    ('В метрі один від одного', 'Зои і Коул','2017-04-04','драма','5-119-22229-39',210,'Сесилія','Ахерн','axern@gmail.com',35,'1981-02-10','new york times'),
    ('Таймлесс', 'Гвен і Гідеон, 3 книги','2012-01-01','фантастика','5-110-22220-30',360,'Керстін','Гір','kerstin@gmail.com',54,'1959-02-10','oskar');
    
    
select * from books;
select * from books where id = 5 or id = 10 or id = 13;
select * from books where number_of_pages > 150;
select * from books where author_age > 30;
select * from books where author_awards is null;
select * from books where author_email = 'rikr@gmail.com';
select * from books where isbn = '5-110-22220-30';
select * from books where category = 'пригоди';
select * from books where number_of_pages > 200 and author_age > 25;
select * from books where category = 'драма' or category = 'триллер';
select * from books order by book_title asc;
select * from books order by author_email asc;
select * from books order by number_of_pages desc;
select distinct category from books;
select distinct author_name from books;
select * from books where publication_date > '2000-01-01';
select * from books where publication_date < '2010-01-01';



