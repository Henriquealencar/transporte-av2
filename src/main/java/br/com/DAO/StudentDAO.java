/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.connection.Connection;
import br.com.domain.Student.Student;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Henrique
 */
public class StudentDAO {
    
    public Student save(Student student) {
        EntityManager connection = Connection.getConnection();
        try {
            connection.getTransaction().begin();
            if (student.getCpf() == null) {
                connection.persist(student);
            } else {
                connection.merge(student);
            }
            connection.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            connection.getTransaction().rollback();
        } finally {
            connection.close();
        }
        return student;
    }

    public Student update(Student student) {
        EntityManager connection = Connection.getConnection();
        try {
            connection.getTransaction().begin();
            connection.merge(student);
            connection.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            connection.getTransaction().rollback();
        } finally {
            connection.close();
        }
        return student;
    }

    public Student findById(String cpf) {
        EntityManager connection = Connection.getConnection();
        Student student = null;
        try {
            student = connection.find(Student.class, cpf);
        } catch (Exception e) {
            System.err.println(e);
            connection.getTransaction().rollback();
        } finally {
            connection.close();
        }
        return student;
    }

    public List<Student> findAll() {
        EntityManager connection = Connection.getConnection();
        List<Student> student = null;

        try {
            student = connection.createQuery("from Student").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            connection.getTransaction().rollback();
        } finally {
            connection.close();
        }
        return student;
    }

    public Student remove(String cpf) {
        EntityManager connection = Connection.getConnection();
        Student student = null;
        try {
            student = connection.find(Student.class, cpf);
            connection.getTransaction().begin();
            connection.remove(student);
            connection.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            connection.getTransaction().rollback();
        } finally {
            connection.close();
        }
        return student;
    }

    public List<Student> findByName(String name) {
        EntityManager connection = Connection.getConnection();
        System.out.println("br.com.DAO.StudentDAO.findByName()");
        Session session = (Session) connection.getDelegate();
        Criteria criteria = session.createCriteria(Student.class);
        Criterion c1 = Restrictions.ilike("nome", name, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<Student> student = criteria.list();
        connection.close();
        return student;
    }
}
