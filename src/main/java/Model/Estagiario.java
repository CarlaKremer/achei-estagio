/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Utilitario.ValidarCpf;

/**
 *
 * @author carla
 */
public class Estagiario {

    

    private String id;
    private String nome;
    private String curso;
    private String cpf;
    private String nascimento;
    private String telefone1;
    private String telefone2;
    private String professor;
    private String disciplina;
    private Endereco endereco;
    
    private String parametro;
    
    public String getParametro() {
        return parametro;
    }

    public void setParametro(String parametro) {
        this.parametro = parametro;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome.toUpperCase();
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getCpf() {
        return cpf;
    }
    

    public boolean setCpf(String cpf) {
        boolean erro = false;
        ValidarCpf vc = new ValidarCpf();
        try {
            if(vc.isCPF(cpf) == true && cpf != null){
                this.cpf = vc.imprimeCPF(cpf);
                erro = false;
            }
            else{
                System.out.println();
                erro = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
         return erro;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getTelefone1() {
        return telefone1;
    }

    public void setTelefone1(String telefone1) {
        this.telefone1 = telefone1;
    }
    
    public String getTelefone2() {
        return telefone2;
    }

    public void setTelefone2(String telefone2) {
        this.telefone2 = telefone2;
            
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }


}
