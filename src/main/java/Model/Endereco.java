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
public class Endereco {
    
    private String rua;
    private String bairro;
    private String cidade;
    private String cep;
    
    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCep() {
        return cep;
    }

    public boolean setCep(String cep) {
        boolean erro;
        try{
            if((cep).matches("(^[0-9]{5})-?([0-9]{3}$)") && cep != null){
                this.cep = cep;
                erro = false;
            }
            else{
                erro=true;
                System.out.println("erro else");
            }
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("erro catch");
            erro=true;
        }
        return erro;
    }
    
}
