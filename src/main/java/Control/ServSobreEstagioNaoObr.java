/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.SobreEstagio;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author carla
 */
@WebServlet(name = "ServSobreEstagioNaoObr", urlPatterns = {"/ServSobreEstagioNaoObr"})
public class ServSobreEstagioNaoObr extends HttpServlet {

    SobreEstagio sobreEstagio;
    String destino = "/planoEstagio.jsp";
    private void recebeSobreEstagio(HttpServletRequest request){
        String inicioEstagio = request.getParameter("dtInicioEstagio");
        String fimEstagio = request.getParameter("dtFimEstagio");
        
        String domingo =request.getParameter("cbDomingo");
        String segunda =  request.getParameter("cbSegunda");
        String terca = request.getParameter("cbTerca");
        String quarta = request.getParameter("cbQuarta");
        String quinta = request.getParameter("cbQuinta");
        String sexta = request.getParameter("cbSexta");
        String sabado = request.getParameter("cbSabado");
        String diasVariados = request.getParameter("cbDiasVariados");
        
        String horaEntrada = request.getParameter("dtHoraEntrada");
        String horaSaida = request.getParameter("dtHoraSaida");
        String horasVariadas = request.getParameter("cbHorasVariadas");
        String horasSemanais = request.getParameter("hrHorasSemanais");
        
        double bolsa = 0;
        if(request.getParameter("txtBolsa") != null){
            bolsa = Double.parseDouble(request.getParameter("txtBolsa"));
        }
        String apolice = request.getParameter("txtApolice");
        String seguradora = request.getParameter("txtSeguradora");
        
        preencheDadosSobreEstagio(inicioEstagio, fimEstagio, diasVariados,horaEntrada, horaSaida,
                horasVariadas, horasSemanais, segunda, terca, quarta, quinta, sexta,sabado,domingo, bolsa, apolice, seguradora);
    
    }
    
    private void preencheDadosSobreEstagio(String inicioEstagio, String fimEstagio, String diasVariados, 
                                     String horaEntrada,String horaSaida, String horasVariadas,String horasSemanais,
                                     String segunda, String terca, String quarta, String quinta, String sexta, String sabado, String domingo,
                                     Double bolsa, String apolice, String seguradora){
        sobreEstagio = new SobreEstagio();
        sobreEstagio.setInicioEstagio(inicioEstagio);
        sobreEstagio.setFimEstagio(fimEstagio);
        sobreEstagio.setHorasSemanais(horasSemanais);
        
        if (diasVariados != null)
            sobreEstagio.setDiasVariados(true);
        else
            sobreEstagio.setDiasVariados(false);
        
        if(horasVariadas != null)
            sobreEstagio.setHorasVariadas(true);
        else{
            sobreEstagio.setHorasVariadas(false);
            sobreEstagio.setHoraEntrada(horaEntrada);
            sobreEstagio.setHoraSaida(horaSaida);
        }
            
        verificaDia(sabado, 0);
        verificaDia(domingo, 1);
        verificaDia(segunda, 2);
        verificaDia(terca, 3);
        verificaDia(quarta, 4);
        verificaDia(quinta, 5);
        verificaDia(sexta, 6);
        
        sobreEstagio.setBolsa(bolsa);
        sobreEstagio.setApolice(apolice);
        sobreEstagio.setSeguradora(seguradora);
    }
    
    private void verificaDia(String dia, int valor){
        if (dia != null){
            sobreEstagio.setDiaSemana(valor);
        }
    }
    
    private void redirecionar(HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();
        session.setAttribute("SOBREESTAGIO", sobreEstagio);
        
        RequestDispatcher rd = request.getRequestDispatcher(destino);
      
        try{
            rd.forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeSobreEstagio(request);
        redirecionar(request, response);
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServSobreEstagio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServSobreEstagio at aaaa " + request.getContextPath()+ sobreEstagio.getHoraEntrada() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
