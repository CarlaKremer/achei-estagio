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


@WebServlet(name = "ServSobreEstagio", urlPatterns = {"/ServSobreEstagio"})
public class ServSobreEstagio extends HttpServlet {
    SobreEstagio sobreEstagio;
    String destino = "/planoEstagio.jsp";
    private void recebeSobreEstagio(HttpServletRequest request){
        String nomeRepresentante = request.getParameter("txtNomeRepresentante");
        String inicioEstagio = request.getParameter("dtInicioEstagio");
        String fimEstagio = request.getParameter("dtFimEstagio");
        boolean domingo = Boolean.parseBoolean(request.getParameter("cbDomingo"));
        boolean segunda = Boolean.parseBoolean(request.getParameter("cbSegunda"));
        boolean terca = Boolean.parseBoolean(request.getParameter("cbTerca"));
        boolean quarta = Boolean.parseBoolean(request.getParameter("cbQuarta"));
        boolean quinta = Boolean.parseBoolean(request.getParameter("cbQuinta"));
        boolean sexta = Boolean.parseBoolean(request.getParameter("cbSexta"));
        boolean sabado = Boolean.parseBoolean(request.getParameter("cbSabado"));
        String horaEntrada = request.getParameter("hrHoraEntrada");
        String horaSaida = request.getParameter("txtHoraSaida");
        boolean horasVariadas = Boolean.parseBoolean(request.getParameter("cbHorasVariadas"));
        String horasSemanais = request.getParameter("hrHorasSemanais");
        
        preencheDadosSobreEstagio(nomeRepresentante, inicioEstagio, fimEstagio, domingo, segunda, terca, quarta, quinta, sexta, sabado, horaEntrada, horaSaida, horasVariadas, horasSemanais);
    
    }
    
    private void preencheDadosSobreEstagio(String nomeRepresentante, String inicioEstagio, String fimEstagio, boolean domingo,
                                            boolean segunda,boolean terca, boolean quarta, boolean quinta, boolean sexta, boolean sabado,
                                            String horaEntrada,String horaSaida,boolean horasVariadas,String horasSemanais){
        sobreEstagio = new SobreEstagio();
        
        sobreEstagio.setNomeRepresentante(nomeRepresentante);
        sobreEstagio.setInicioEstagio(inicioEstagio);
        sobreEstagio.setFimEstagio(fimEstagio);
        sobreEstagio.setDomingo(domingo);
        sobreEstagio.setSegunda(segunda);
        sobreEstagio.setTerca(terca);
        sobreEstagio.setQuarta(quarta);
        sobreEstagio.setQuinta(quinta);
        sobreEstagio.setSexta(sexta);
        sobreEstagio.setSabado(sabado);
        sobreEstagio.setHoraEntrada(horaEntrada);
        sobreEstagio.setHoraEntrada(horaEntrada);
        sobreEstagio.setHoraSaida(horaSaida);
        sobreEstagio.setHorasVariadas(horasVariadas);
        sobreEstagio.setHorasSemanais(horasSemanais);
        
        
    }
    
    private void redirecionar(HttpServletRequest request, HttpServletResponse response){
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
