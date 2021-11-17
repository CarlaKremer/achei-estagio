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

    public boolean setRg(String rg) {
        boolean erro = false;
        try{
            if((rg).matches("(^\\d{1,2}).?(\\d{3}).?(\\d{3})-?(\\d{1}|X|x$)") && rg!=null){
                this.rg = rg.substring(0,2)+"."+rg.substring(2,5)+"."+rg.substring(5,8)+"-"+rg.subSequence(8, 9);
                erro = false;
            }
            else{
                erro = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return erro;
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
                System.out.println("");
                erro = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return erro;
    }
   private String pessoaAutorizada;
   private String cargo; 
   private String rg;
   private String cpf;
}
