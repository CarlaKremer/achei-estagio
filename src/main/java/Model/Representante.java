/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author carla
 */
public class Representante {

    public String getPessoaAutorizada() {
        return pessoaAutorizada;
    }

    public void setPessoaAutorizada(String pessoaAutorizada) {
        this.pessoaAutorizada = pessoaAutorizada;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
   private String pessoaAutorizada;
   private String cargo; 
   private String rg;
   private String cpf;
}
