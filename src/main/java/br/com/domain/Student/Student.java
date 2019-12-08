/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.domain.Student;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 *
 * @author Henrique
 */

@Entity
public class Student {
    
    @Id
    private String cpf;
    
    @Column(nullable = false)
    public String nome;
    
    @OneToOne(cascade = CascadeType.ALL)                                        // Um para um, serve para o que fazer com um fazer com o outro
    @JoinColumn
    public Endereco endereco;
    
    @Column(nullable = false)
    public String faculdade;
    

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if (nome != null) {
            this.nome = nome.toUpperCase();
        }
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getFaculdade() {
        return faculdade;
    }

    public void setFaculdade(String faculdade) {
        this.faculdade = faculdade;
    }
    
    
}
