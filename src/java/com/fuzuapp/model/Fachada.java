/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model;

import com.fuzuapp.model.resultados.ControladorResultados;
import com.fuzuapp.model.resultados.entidades.GeoPoint;
import com.fuzuapp.model.usuario.ControladorUsuario;
import com.fuzuapp.model.usuario.RepositorioList;
import com.fuzuapp.model.usuario.RepositorioUsuarioHibernate;
import com.fuzuapp.model.usuario.entidades.Login;
import com.fuzuapp.model.usuario.entidades.Senha;
import com.fuzuapp.model.usuario.entidades.Usuario;
import com.fuzuapp.model.usuario.exceptions.AutenticacaoInvalida;

/**
 *
 * @author Filipe_2
 */
public class Fachada {
    private ControladorUsuario controladorUsuario;
    private ControladorResultados controladorResultados;
    private static Fachada fachada = new Fachada();
    
    public static Fachada getInstance(){
        return fachada;     
    }
    
    private Fachada(){
        this.controladorResultados = new ControladorResultados();
        this.controladorUsuario = new ControladorUsuario(new RepositorioUsuarioHibernate());
    }
    
    public void logar(Login login, Senha senha) throws AutenticacaoInvalida{
        controladorUsuario.autenticar(login, senha);
    }
    public void cadastrar(Usuario usuario){
        controladorUsuario.cadastrar(usuario);
    }
    
    public void buscarResultados(GeoPoint geopoint, double raio){
        //TODO
    }
    
}
