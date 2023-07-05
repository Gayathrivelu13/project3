-- 1. create database
create database Bookdp;
-- 2. create table
create table Bookdp.Books(
Books_id int primary key auto_increment,
Books_Title varchar(70),
Books_Author varchar(70),
Books_genre varchar(100),
publication_year int ,
Book_price int 
);
-- 3. create table 2
create table Bookdp.Author(
SI_NO int primary key auto_increment,
Author_name varchar(70),
Book_Title varchar(90),
foreign key(SI_NO) References Books(Books_id)
);
select * from Bookdp.Books;
select * from Bookdp.Author;

-- 4. insert into values for table 1
insert into Bookdp.Books values
(1,"Name of the women","jeet thayil","indepent",2021,500),
(2,"monsoon","sahitya akademi","winds of a region",2022,800),
(3,"achild of destiny","ramakrishna rao","beginning",2020,750),
(4,"a heartfullness way","kamlesh patel alies","desining destiny",2020,900);

-- 5. insert into values for table 2
insert into Bookdp.Author values
(1,"Mahatma Gandhi","The Story of Truth"),
(2,"Stories I Must Tell","Kabir Bedi","The Journey of Actor",2021,500),
(3,"Manohar Parrikar","Nitin Gokhale","Simple Life",2021,900),
(4,"Romeo and Julit","William Shakespeare",2022,700);

select distinct Books_Title from Bookdp.Books;
select distinct Book_Title from Bookdp.Author;
-- 6. update the given condition of the table
update Bookdp.Books set Books_Title="a heartfullness way" where Books_id=4;
update Bookdp.Books set Books_Author="kamlesh patel alies" where Books_id=4;
-- 7. delete the table for given condition
delete from Bookdp.Author where SI_NO=4;
use Bookdp;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
inner join Author
on Books.Books_id=Author.SI_NO;
select * from Bookdp.Books;
select * from Bookdp.Author;
use Bookdp;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
left join Author
on Books.Books_id=Author.SI_NO;
use Bookdp;
select 
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
right join Author
on Books.Books_id=Author.SI_NO;
