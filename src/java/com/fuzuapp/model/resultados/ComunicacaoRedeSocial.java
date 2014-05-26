/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fuzuapp.model.resultados;

import com.fuzuapp.model.resultados.entidades.GeoPoint;
import com.fuzuapp.model.resultados.entidades.Resultado;
import java.util.List;

/**
 *
 * @author Filipe_2
 */
public class ComunicacaoRedeSocial {

    IRedeSociaisAdapter twitter;
    
    public ComunicacaoRedeSocial(){
        inicializarRedes();
    }
    
    private void inicializarRedes(){
        twitter = new TwitterAdapter();
    }
    public List<Resultado> buscarResultados(GeoPoint localizacao, double raio) {
        return twitter.getResultados(localizacao, raio);
    }
    
}
