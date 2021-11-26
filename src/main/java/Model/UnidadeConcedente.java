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
public class UnidadeConcedente {

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public boolean setCnpj(String cnpj) {
        boolean erro = false;
        try{
            if((cnpj).matches("(^\\d{2}\\.\\d{3}\\.\\d{3}\\/\\d{4}\\-\\d{2}$)") && cnpj!=null){
                //this.rg = rg.substring(0,2)+"."+rg.substring(2,5)+"."+rg.substring(5,8)+"-"+rg.subSequence(8, 9);
                this.cnpj = cnpj;
                erro = false;
            }
            else{
                System.out.println("erro cnpj");
                erro = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return erro;
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
    private String razaoSocial;
    private String cnpj;
    private String telefone1;
    private String telefone2;
    private Endereco endereco;
    
}
