/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilitario;

import java.util.ArrayList;

/**
 *
 * @author carla
 */
public class Cursos {
    public ArrayList<String> cursos = new ArrayList();
    public ArrayList<String> disciplina = new ArrayList();
    
    public Cursos(){
        preencherCursos();
        preencherDisciplina();
    }
    
    public void preencherCursos(){
        cursos.add("Ciência da Computação");
        cursos.add("Jogos Digitais");
    }
    public void preencherDisciplina(){
        disciplina.add("Pesquisa da Prática em Ciência da Computação I");
        disciplina.add("Pesquisa da Prática em Ciência da Computação II");
        disciplina.add("Pesquisa da Prática em Ciência da Computação III");
    }
}
