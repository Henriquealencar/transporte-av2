/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.controller;

import br.com.DAO.StudentDAO;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.domain.Student.Student;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author Henrique
 */

@Controller
@Path("student")
public class StudentController {
    
    @Inject
    private Result result;

    @Inject
    private StudentDAO studentDAO;

    @Get("new")
    public void newStudent() {

    }
    
    @Post("novo")
    public void newStudent(Student student) {
        studentDAO.save(student);
        result.redirectTo(this).listStudent();
    }

    @Post("editar")
    public void editStudent(Student student) {
        studentDAO.update(student);
        result.redirectTo(this).listStudent();
    }

    @Get("editar/{cpf}")
    public void editStudent(String cpf) {
        Student student = studentDAO.findById(cpf);
        result.include("student", student);
    }

    @Get("remover/{cpf}")
    public void removeStudent(String cpf) {

        Student student = studentDAO.findById(cpf);
        result.include("student", student);
        studentDAO.remove(cpf);
        result.redirectTo(this).listStudent();
    }

    @Get("listStudent")
    public void listStudent() {
        List<Student> student = studentDAO.findAll();
        for (Student student1 : student) {
            System.out.println(student1.getNome());
        }
        result.include("student", student);
    }
    
    
    @Post("busca")
    public void simpleSearch(String nome) {
        System.out.println("NOME: "+nome);
        List<Student> student = (List<Student>) studentDAO.findByName(nome);
        
        result.include("student", student);
        result.of(this).listStudent();

    }
}
