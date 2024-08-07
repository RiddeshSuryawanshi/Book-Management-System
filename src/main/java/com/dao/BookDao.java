package com.dao;

import java.util.List;
import javax.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.configuration.Hibernate_Configuration;
import com.entity.Book;

public class BookDao {

    public static boolean save(Book book) {
        Transaction transaction = null;
        Session session = Hibernate_Configuration.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            session.save(book);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public static List<Book> booksList() {
        Session session = Hibernate_Configuration.getSessionFactory().openSession();
        TypedQuery<Book> query = session.createQuery("from Book", Book.class);
        List<Book> booklist = query.getResultList();
        session.close();
        return booklist;
    }

    public static boolean updateBook(Book book) {
        Transaction transaction = null;
        Session session = Hibernate_Configuration.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            session.update(book);
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public static boolean deleteBook(int id) {
        Transaction transaction = null;
        Session session = Hibernate_Configuration.getSessionFactory().openSession();
        try {
            transaction = session.beginTransaction();
            Book book = session.get(Book.class, id);
            if (book != null) {
                session.delete(book);
                transaction.commit();
                return true;
            }
            return false;
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public static Book getBookById(int id) {
        Session session = Hibernate_Configuration.getSessionFactory().openSession();
        Book book = session.get(Book.class, id);
        session.close();
        return book;
    }
}
