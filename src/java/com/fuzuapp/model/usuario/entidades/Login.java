/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model.usuario.entidades;

/**
 *
 * @author Filipe_2
 */
public class Login {
       private String str;
    
    public Login(String str){
        this.setStr(str);
    }

    /**
     * @return the str
     */
    public String getStr() {
        return str;
    }

    /**
     * @param str the str to set
     */
    public void setStr(String str) {
        this.str = str;
    }

    @Override
    public String toString() {
        return this.getStr();
    }
    
}
