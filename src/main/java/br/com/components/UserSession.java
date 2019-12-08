/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.components;

import java.io.Serializable;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Henrique
 */

@SessionScoped
public class UserSession implements Serializable{
    
    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    private boolean isLogged;

	public boolean isIsLogged() {
        return userName != null;
    }
    
    public void logout(){
        this.userName = null;
        this.isLogged = false;
    }
    
}
