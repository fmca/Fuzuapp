/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model.usuario;

import com.fuzuapp.model.usuario.entidades.Login;
import com.fuzuapp.model.usuario.entidades.Usuario;

/**
 *
 * @author Filipe_2
 */
public class ControladorUsuario {
   
    private CadastroUsuario cadastroUsuario;
    
    public ControladorUsuario(IRepositorioUsuario repUsuario){
        this.cadastroUsuario = new CadastroUsuario(repUsuario);
    }
    public void cadastrar (Usuario usuario){
        //TODO
    }
    
    public void autenticar (Login login, String senha){
        //TODO
    }
}
