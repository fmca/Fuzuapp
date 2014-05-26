/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model.resultados.entidades;

/**
 *
 * @author Filipe_2
 */
public class Resultado {
    
    public static final int TEXTO = 1;
    public static final int IMAGEM = 2;
    public static final int VIDEO = 3;
    
    private String url;
    private String descricao;
    private int tipo;
    private GeoPoint local;
    
    public Resultado(){
        
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the tipo
     */
    public int getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the local
     */
    public GeoPoint getLocal() {
        return local;
    }

    /**
     * @param local the local to set
     */
    public void setLocal(GeoPoint local) {
        this.local = local;
    }
}
