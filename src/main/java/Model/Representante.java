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
        try{
            if((rg).matches("(^\\d{1,2}).?(\\d{3}).?(\\d{3})-?(\\d{1}|X|x$)")){
                this.rg = rg.substring(0,2)+"."+rg.substring(2,5)+"."+rg.substring(5,8)+"-"+rg.subSequence(8, 9);
            }
            else{
                this.rg = ("erro");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        ValidarCpf vc = new ValidarCpf();
        try {
            if(vc.isCPF(cpf) == true){
                this.cpf = vc.imprimeCPF(cpf);
            }
            else{
                System.out.println("");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
   private String pessoaAutorizada;
   private String cargo; 
   private String rg;
   private String cpf;
}
