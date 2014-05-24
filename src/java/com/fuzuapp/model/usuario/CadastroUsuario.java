/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model.usuario;

import com.fuzuapp.model.usuario.entidades.Usuario;

/**
 *
 * @author Filipe_2
 */
public class CadastroUsuario {
   private IRepositorioUsuario repositorioUsuario;
    
    
    public CadastroUsuario(IRepositorioUsuario repositorioUsuario){
        this.repositorioUsuario = repositorioUsuario;
    }
    public Usuario getUsuario(String login){
        //TODO
        
        return null;
    }
    
    public void autenticar (String login, String senha){
        //TODO
    }
    
    public void inserirUsuario(Usuario usuario){
        //TODO
    }
    
    public void remover(Usuario usuario){
        //TODO
    }
}
