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
public class SobreEstagio {

    
    private String inicioEstagio;
    private String fimEstagio;
    
    private boolean[] diasSemana; //seta null
    private boolean diasVariados;
   
    private String horaEntrada;
    private String horaSaida;
    
    private boolean horasVariadas;
    private String horasSemanais;
    
    private double bolsa;
    private String apolice;
    private String seguradora;
    
    public SobreEstagio(){
        inicializaDias();
    }
    
    public void inicializaDias(){
        //0 - sabado ...
        //6 - sexta
        
        //inicializaVetor
        setDiasSemana(new boolean[7]);
        
        //for i + tab
        for (int i=0; i < getDiasSemana().length; i++){
            getDiasSemana()[i] = false; //coloca falso para todo os dias
        }
    }   

    public boolean[] getDiasSemana() {
        return diasSemana;
    }

    public void setDiasSemana(boolean[] diasSemana) {
        this.diasSemana = diasSemana;
    }

    public boolean isDiasVariados() {
        return diasVariados;
    }

    public void setDiasVariados(boolean diasVariados) {
        this.diasVariados = diasVariados;
    }

    public String getInicioEstagio() {
        return inicioEstagio;
    }

    public void setInicioEstagio(String inicioEstagio) {
        this.inicioEstagio = inicioEstagio;
    }

    public String getFimEstagio() {
        return fimEstagio;
    }

    public void setFimEstagio(String fimEstagio) {
        this.fimEstagio = fimEstagio;
    }

    public String getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(String horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public String getHoraSaida() {
        return horaSaida;
    }

    public void setHoraSaida(String horaSaida) {
        this.horaSaida = horaSaida;
    }

    public boolean isHorasVariadas() {
        return horasVariadas;
    }

    public void setHorasVariadas(boolean horasVariadas) {
        this.horasVariadas = horasVariadas;
    }

    public String getHorasSemanais() {
        return horasSemanais;
    }

    public void setHorasSemanais(String horasSemanais) {
        this.horasSemanais = horasSemanais;
    }

    /*private String formataData(String date){
    ManipulaData md = new ManipulaData();
    }*/
    
    public void setDiaSemana(int dia){
        diasSemana[dia] = true; //
    }
    
    public double getBolsa() {
        return bolsa;
    }

    public void setBolsa(double bolsa) {
        this.bolsa = bolsa;
    }

    public String getApolice() {
        return apolice;
    }

    public void setApolice(String apolice) {
        this.apolice = apolice;
    }

    public String getSeguradora() {
        return seguradora;
    }

    public void setSeguradora(String seguradora) {
        this.seguradora = seguradora;
    }
    
}

