USE books;
CREATE table favoriteBooks(
id INT,
 name VARCHAR(255) NOT NULL,
 author VARCHAR(255),
 publishDate INT,
 PRIMARY KEY(id)
 );
 INSERT INTO favoriteBooks
 VALUES (1,'In Search of Lost Time', 'Marcel Proust', 1913),
		(2,'The Great Gatsby', 'F. Scott Fitzgerald', 1925),
        (3,'Moby Dick', 'Herman Melville', 1851),
        (4,'Hamlet', 'William Shakespeare', 1601),
        (5,'The Odessey', 'Homer', 1614),
        (6,'Crime and Punishment', 'Fyodor Dostoyevsky', 1866),
        (7,'Pride and Prejudice', 'Jane Austen', 1813);
