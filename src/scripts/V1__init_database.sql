-- V1__init_database.sql

DROP TABLE IF EXISTS book CASCADE;
DROP TABLE IF EXISTS author;

CREATE TABLE author (
                        id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        first_name VARCHAR(255),
                        last_name VARCHAR(255)
) ENGINE = InnoDB;

CREATE TABLE book (
                      id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      isbn VARCHAR(255),
                      publisher VARCHAR(255),
                      title VARCHAR(255) UNIQUE,
                      author_id BIGINT,
                      CONSTRAINT book_author_fk FOREIGN KEY (author_id) REFERENCES author (id)
) ENGINE = InnoDB;

-- Insert authors
INSERT INTO author (first_name, last_name) VALUES
                                               ('Robert', 'Martin'),
                                               ('Martin', 'Fowler'),
                                               ('Kent', 'Beck'),
                                               ('Erich', 'Gamma'),
                                               ('Richard', 'Helm'),
                                               ('Ralph', 'Johnson'),
                                               ('John', 'Vlissides'),
                                               ('Joshua', 'Bloch'),
                                               ('Michael', 'Feathers'),
                                               ('Steve', 'McConnell'),
                                               ('Andrew', 'Hunt'),
                                               ('David', 'Thomas'),
                                               ('Donald', 'Knuth'),
                                               ('Frederick', 'Brooks'),
                                               ('Grady', 'Booch'),
                                               ('James', 'Gosling'),
                                               ('Bjarne', 'Stroustrup'),
                                               ('Brian', 'Kernighan'),
                                               ('Dennis', 'Ritchie'),
                                               ('Douglas', 'Crockford'),
                                               ('Craig', 'Walls'),
                                               ('Eric', 'Evans');

-- Insert books
INSERT INTO book (isbn, publisher, title, author_id) VALUES
                                                         ('9780132350884', 'Prentice Hall', 'Clean Code', (SELECT id FROM author WHERE first_name = 'Robert' AND last_name = 'Martin' LIMIT 1)),
                                                         ('9780201485677', 'Addison-Wesley', 'Refactoring', (SELECT id FROM author WHERE first_name = 'Martin' AND last_name = 'Fowler' LIMIT 1)),
                                                         ('9780321146533', 'Addison-Wesley', 'Test Driven Development', (SELECT id FROM author WHERE first_name = 'Kent' AND last_name = 'Beck' LIMIT 1)),
                                                         ('9780201633610', 'Addison-Wesley', 'Design Patterns', (SELECT id FROM author WHERE first_name = 'Erich' AND last_name = 'Gamma' LIMIT 1)),
                                                         ('9780134685991', 'Addison-Wesley', 'Effective Java', (SELECT id FROM author WHERE first_name = 'Joshua' AND last_name = 'Bloch' LIMIT 1)),
                                                         ('9780131177055', 'Prentice Hall', 'Working Effectively with Legacy Code', (SELECT id FROM author WHERE first_name = 'Michael' AND last_name = 'Feathers' LIMIT 1)),
                                                         ('9780735619678', 'Microsoft Press', 'Code Complete', (SELECT id FROM author WHERE first_name = 'Steve' AND last_name = 'McConnell' LIMIT 1)),
                                                         ('9780201616224', 'Addison-Wesley', 'The Pragmatic Programmer', (SELECT id FROM author WHERE first_name = 'Andrew' AND last_name = 'Hunt' LIMIT 1)),
                                                         ('9780201896831', 'Addison-Wesley', 'The Art of Computer Programming', (SELECT id FROM author WHERE first_name = 'Donald' AND last_name = 'Knuth' LIMIT 1)),
                                                         ('9780201835953', 'Addison-Wesley', 'The Mythical Man-Month', (SELECT id FROM author WHERE first_name = 'Frederick' AND last_name = 'Brooks' LIMIT 1)),
                                                         ('9780201895513', 'Addison-Wesley', 'Object-Oriented Analysis and Design with Applications', (SELECT id FROM author WHERE first_name = 'Grady' AND last_name = 'Booch' LIMIT 1)),
                                                         ('9780131872486', 'Prentice Hall', 'The Java Programming Language', (SELECT id FROM author WHERE first_name = 'James' AND last_name = 'Gosling' LIMIT 1)),
                                                         ('9780321563842', 'Addison-Wesley', 'The C++ Programming Language', (SELECT id FROM author WHERE first_name = 'Bjarne' AND last_name = 'Stroustrup' LIMIT 1)),
                                                         ('9780131103627', 'Prentice Hall', 'The C Programming Language', (SELECT id FROM author WHERE first_name = 'Brian' AND last_name = 'Kernighan' LIMIT 1)),
                                                         ('9780596517748', 'O\'Reilly Media', 'JavaScript: The Good Parts', (SELECT id FROM author WHERE first_name = 'Douglas' AND last_name = 'Crockford' LIMIT 1)),
                                                         ('9781617294945', 'Simon & Schuster', 'Spring in Action, 5th Edition', (SELECT id FROM author WHERE first_name = 'Craig' AND last_name = 'Walls' LIMIT 1)),
                                                         ('9781617292545', 'Simon & Schuster', 'Spring Boot in Action, 1st Edition', (SELECT id FROM author WHERE first_name = 'Craig' AND last_name = 'Walls' LIMIT 1)),
                                                         ('9781617297571', 'Simon & Schuster', 'Spring in Action, 6th Edition', (SELECT id FROM author WHERE first_name = 'Craig' AND last_name = 'Walls' LIMIT 1)),
                                                         ('9780321125217', 'Addison Wesley', 'Domain-Driven Design', (SELECT id FROM author WHERE first_name = 'Eric' AND last_name = 'Evans' LIMIT 1)),
                                                         ('9780132350885', 'Prentice Hall', 'Clean Code 2', (SELECT id FROM author WHERE first_name = 'Robert' AND last_name = 'Martin' LIMIT 1)),
                                                         ('9780201485678', 'Addison-Wesley', 'Refactoring 2', (SELECT id FROM author WHERE first_name = 'Martin' AND last_name = 'Fowler' LIMIT 1)),
                                                         ('9780321146534', 'Addison-Wesley', 'Test Driven Development 2', (SELECT id FROM author WHERE first_name = 'Kent' AND last_name = 'Beck' LIMIT 1)),
                                                         ('9780201633611', 'Addison-Wesley', 'Design Patterns 2', (SELECT id FROM author WHERE first_name = 'Erich' AND last_name = 'Gamma' LIMIT 1)),
                                                         ('9780134685992', 'Addison-Wesley', 'Effective Java 2', (SELECT id FROM author WHERE first_name = 'Joshua' AND last_name = 'Bloch' LIMIT 1)),
                                                         ('9780131177056', 'Prentice Hall', 'Working Effectively with Legacy Code 2', (SELECT id FROM author WHERE first_name = 'Michael' AND last_name = 'Feathers' LIMIT 1)),
                                                         ('9780735619679', 'Microsoft Press', 'Code Complete 2', (SELECT id FROM author WHERE first_name = 'Steve' AND last_name = 'McConnell' LIMIT 1)),
                                                         ('9780201616225', 'Addison-Wesley', 'The Pragmatic Programmer 2', (SELECT id FROM author WHERE first_name = 'Andrew' AND last_name = 'Hunt' LIMIT 1)),
                                                         ('9780201896832', 'Addison-Wesley', 'The Art of Computer Programming 2', (SELECT id FROM author WHERE first_name = 'Donald' AND last_name = 'Knuth' LIMIT 1)),
                                                         ('9780201835954', 'Addison-Wesley', 'The Mythical Man-Month 2', (SELECT id FROM author WHERE first_name = 'Frederick' AND last_name = 'Brooks' LIMIT 1)),
                                                         ('9780201895514', 'Addison-Wesley', 'Object-Oriented Analysis and Design with Applications 2', (SELECT id FROM author WHERE first_name = 'Grady' AND last_name = 'Booch' LIMIT 1)),
                                                         ('9780131872487', 'Prentice Hall', 'The Java Programming Language 2', (SELECT id FROM author WHERE first_name = 'James' AND last_name = 'Gosling' LIMIT 1)),
                                                         ('9780321563843', 'Addison-Wesley', 'The C++ Programming Language 2', (SELECT id FROM author WHERE first_name = 'Bjarne' AND last_name = 'Stroustrup' LIMIT 1)),
                                                         ('9780131103628', 'Prentice Hall', 'The C Programming Language 2', (SELECT id FROM author WHERE first_name = 'Brian' AND last_name = 'Kernighan' LIMIT 1)),
                                                         ('9780596517749', 'O\'Reilly Media', 'JavaScript: The Good Parts 2', (SELECT id FROM author WHERE first_name = 'Douglas' AND last_name = 'Crockford' LIMIT 1)),
                                                         ('9780132350886', 'Prentice Hall', 'Clean Code 3', (SELECT id FROM author WHERE first_name = 'Robert' AND last_name = 'Martin' LIMIT 1)),
                                                         ('9780201485679', 'Addison-Wesley', 'Refactoring 3', (SELECT id FROM author WHERE first_name = 'Martin' AND last_name = 'Fowler' LIMIT 1)),
                                                         ('9780321146535', 'Addison-Wesley', 'Test Driven Development 3', (SELECT id FROM author WHERE first_name = 'Kent' AND last_name = 'Beck' LIMIT 1)),
                                                         ('9780201633612', 'Addison-Wesley', 'Design Patterns 3', (SELECT id FROM author WHERE first_name = 'Erich' AND last_name = 'Gamma' LIMIT 1)),
                                                         ('9780134685993', 'Addison-Wesley', 'Effective Java 3', (SELECT id FROM author WHERE first_name = 'Joshua' AND last_name = 'Bloch' LIMIT 1)),
                                                         ('9780131177057', 'Prentice Hall', 'Working Effectively with Legacy Code 3', (SELECT id FROM author WHERE first_name = 'Michael' AND last_name = 'Feathers' LIMIT 1)),
                                                         ('9780735619680', 'Microsoft Press', 'Code Complete 3', (SELECT id FROM author WHERE first_name = 'Steve' AND last_name = 'McConnell' LIMIT 1)),
                                                         ('9780201616226', 'Addison-Wesley', 'The Pragmatic Programmer 3', (SELECT id FROM author WHERE first_name = 'Andrew' AND last_name = 'Hunt' LIMIT 1)),
                                                         ('9780201896833', 'Addison-Wesley', 'The Art of Computer Programming 3', (SELECT id FROM author WHERE first_name = 'Donald' AND last_name = 'Knuth' LIMIT 1)),
                                                         ('9780201835955', 'Addison-Wesley', 'The Mythical Man-Month 3', (SELECT id FROM author WHERE first_name = 'Frederick' AND last_name = 'Brooks' LIMIT 1)),
                                                         ('9780201895515', 'Addison-Wesley', 'Object-Oriented Analysis and Design with Applications 3', (SELECT id FROM author WHERE first_name = 'Grady' AND last_name = 'Booch' LIMIT 1)),
                                                         ('9780131872488', 'Prentice Hall', 'The Java Programming Language 3', (SELECT id FROM author WHERE first_name = 'James' AND last_name = 'Gosling' LIMIT 1)),
                                                         ('9780321563844', 'Addison-Wesley', 'The C++ Programming Language 3', (SELECT id FROM author WHERE first_name = 'Bjarne' AND last_name = 'Stroustrup' LIMIT 1)),
                                                         ('9780131103629', 'Prentice Hall', 'The C Programming Language 3', (SELECT id FROM author WHERE first_name = 'Brian' AND last_name = 'Kernighan' LIMIT 1)),
                                                         ('9780596517750', 'O\'Reilly Media', 'JavaScript: The Good Parts 3', (SELECT id FROM author WHERE first_name = 'Douglas' AND last_name = 'Crockford' LIMIT 1)),
                                                         ('9780132350887', 'Prentice Hall', 'Clean Code 4', (SELECT id FROM author WHERE first_name = 'Robert' AND last_name = 'Martin' LIMIT 1)),
                                                         ('9780201485680', 'Addison-Wesley', 'Refactoring 4', (SELECT id FROM author WHERE first_name = 'Martin' AND last_name = 'Fowler' LIMIT 1)),
                                                         ('9780321146536', 'Addison-Wesley', 'Test Driven Development 4', (SELECT id FROM author WHERE first_name = 'Kent' AND last_name = 'Beck' LIMIT 1)),
                                                         ('9780201633613', 'Addison-Wesley', 'Design Patterns 4', (SELECT id FROM author WHERE first_name = 'Erich' AND last_name = 'Gamma' LIMIT 1)),
                                                         ('9780134685994', 'Addison-Wesley', 'Effective Java 4', (SELECT id FROM author WHERE first_name = 'Joshua' AND last_name = 'Bloch' LIMIT 1)),
                                                         ('9780131177058', 'Prentice Hall', 'Working Effectively with Legacy Code 4', (SELECT id FROM author WHERE first_name = 'Michael' AND last_name = 'Feathers' LIMIT 1)),
                                                         ('9780735619681', 'Microsoft Press', 'Code Complete 4', (SELECT id FROM author WHERE first_name = 'Steve' AND last_name = 'McConnell' LIMIT 1)),
                                                         ('9780201616227', 'Addison-Wesley', 'The Pragmatic Programmer 4', (SELECT id FROM author WHERE first_name = 'Andrew' AND last_name = 'Hunt' LIMIT 1)),
                                                         ('9780201896834', 'Addison-Wesley', 'The Art of Computer Programming 4', (SELECT id FROM author WHERE first_name = 'Donald' AND last_name = 'Knuth' LIMIT 1)),
                                                         ('9780201835956', 'Addison-Wesley', 'The Mythical Man-Month 4', (SELECT id FROM author WHERE first_name = 'Frederick' AND last_name = 'Brooks' LIMIT 1)),
                                                         ('9780201895516', 'Addison-Wesley', 'Object-Oriented Analysis and Design with Applications 4', (SELECT id FROM author WHERE first_name = 'Grady' AND last_name = 'Booch' LIMIT 1)),
                                                         ('9780131872489', 'Prentice Hall', 'The Java Programming Language 4', (SELECT id FROM author WHERE first_name = 'James' AND last_name = 'Gosling' LIMIT 1)),
                                                         ('9780321563845', 'Addison-Wesley', 'The C++ Programming Language 4', (SELECT id FROM author WHERE first_name = 'Bjarne' AND last_name = 'Stroustrup' LIMIT 1)),
                                                         ('9780131103630', 'Prentice Hall', 'The C Programming Language 4', (SELECT id FROM author WHERE first_name = 'Brian' AND last_name = 'Kernighan' LIMIT 1)),
                                                         ('9780596517751', 'O\'Reilly Media', 'JavaScript: The Good Parts 4', (SELECT id FROM author WHERE first_name = 'Douglas' AND last_name = 'Crockford' LIMIT 1));
