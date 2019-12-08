/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.execut;

import br.com.DAO.StudentDAO;
import br.com.domain.Student.Endereco;
import br.com.domain.Student.Student;

/**
 *
 * @author Henrique
 */
public class Executavel {
    
    public static void main(String[] args) {
        
        Student student  = new Student();
        student.setCpf("123459876");
        student.setNome("Ricardo");
        student.setFaculdade("FJN");
                
        Endereco endereco = new Endereco();
        endereco.setRua("Pr Cicecro");
        endereco.setBairro("Apartamento");
        endereco.setNumero("163");
        
        student.setEndereco(endereco);
        
        StudentDAO studentDAO = new StudentDAO();
        studentDAO.save(student);

        
        
    }
}
