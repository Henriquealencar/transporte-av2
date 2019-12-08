/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.vraptor;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.components.UserSession;
import br.com.controller.IndexController;
import javax.inject.Inject;

/**
 *
 * @author Henrique
 */

@Controller
@Path("auth")
public class AuthController {
    
    @Inject                                                                     // responsavel pelo ciclo de vida
    private UserSession userSession;                                            // Garante que só vai existir um objeto por seção
    
    @Inject         
    private Result result; 
    
    @Get("signin")
    public void signinView(){
        
    }
    
    @Post("authenticate")
    public void signin( String userName, String password){
        if (userName.equalsIgnoreCase("joao") && password.equalsIgnoreCase("123")){
            userSession.setUserName(userName);
            result.redirectTo(IndexController.class).Index();
        }
    }
    
    @Get("signout")
    public void signOut(){
        userSession.logout();
        result.redirectTo(this).signinView();
    }
}
