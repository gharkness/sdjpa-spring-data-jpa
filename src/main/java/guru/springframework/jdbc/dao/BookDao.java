package guru.springframework.jdbc.dao;

import guru.springframework.jdbc.domain.Book;

import java.util.Optional;

public interface BookDao {
    Book getById(Long id);

    Book findByTitle(String title);

    Book saveNewBook(Book book);

    Book updateBook(Book book);

    void deleteBookById(Long id);
}
