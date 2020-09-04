# ETL_project_BOOK

## Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
Our original data sources are Goodreads API and The Guardian  We extracted book, author, and average book rating data from the Goodreads API.  We also, extracted a CSV file from The Guardian listing the Top 100 Books of All Time.  Both datasets have common data, such as, ISBN, book titles, and author names.  The ISBN will be useful in transforming and joining the data later.  The Top 100 Books CSV is listed by position and may relate to the average rating by book from Goodreads API.  

  
## Transform: what data cleaning or transformation was required.
From The Guardian a CSV file was downloaded and read into a Python Jupyter Notebook.  Once in the Jupyter Notebook unnecessary columns were dropped and renamed. Duplicate ISBNs were dropped, and the “position” column was set as the index.  The file was now ready to load into PostgreSQL/pgAdmin. 

From Goodreads API data was pulled into a Python Jupyter Notebook.  Only the necessary columns were extracted and renamed.  A column for listing the number of pages presented approximately 10 null results which does not significantly impact our transformation and results.  We used the ISBN from the CSV file to find the book information in Goodreads API.  The data was now ready to load into PostgreSQL/pgAdmin.  

  
## Load: the final database, tables/collections, and why this was chosen.
Once loaded into PostgreSQL/pgAdmin we can join the two tables.  PostgreSQL/pgAdmin was chosen as a relational database to relate the data on a primary and foreign key.  We used the ISBN as the primary and foreign key to join our two tables. The purpose of joining the two tables was to correlate the average book rating (from Goodreads) to the overall rank position (from The Guardian) of the book. Our final database was now complete.  
