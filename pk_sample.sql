ALTER TABLE top_books
ADD PRIMARY KEY (isbn);

ALTER TABLE goodreads_book
ADD PRIMARY KEY (id);

ALTER TABLE goodreads_book
ADD FOREIGN KEY (isbn) REFERENCES top_books(isbn);

select * from goodreads_book;
select * from top_books;

select t.isbn, t.title, g.title as title_in_goodreads, g.author,t.volume, t.publish_date, g.average_rating as average_rating_in_goodreads
from top_books t
join goodreads_book g on g.isbn=t.isbn;