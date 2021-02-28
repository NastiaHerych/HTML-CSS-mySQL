drop database if exists library;
create database library;

use library;

create table books (
    id int not null primary key auto_increment,
    book_title varchar(120) not null,
    description varchar(1000) default 'Опис відсутній',
    publication_date date not null default '2018-01-01',
    author varchar(60) not null,
    category varchar(30) not null
);

insert into books (book_title, author, category)
    values
        ('Гаррі Поттер', 'Дж. Роулінг', 'Фантастика'),
        ('Після', 'Анна Тодд', 'Драма'),
        ('Дивергент', 'Вероніка Рот', 'Триллер');

insert into books (book_title, author, category, publication_date)
    values
        ('Інферно', 'Ден Браун', 'Фантастика', '2018-04-07'),
        ('Таймлесс', 'Керстін Гір', 'Пригоди', '2016-11-11'),
        ('Східний експрес', 'агата Крісті', 'Детектив', '2010-01-10');
     
select * from books;