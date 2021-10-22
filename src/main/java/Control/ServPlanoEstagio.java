/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.PlanoEstagio;
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
@WebServlet(name = "ServPlanoEstagio", urlPatterns = {"/ServPlanoEstagio"})
public class ServPlanoEstagio extends HttpServlet {
    PlanoEstagio planoEstagio;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    
    private void recebePlanoEstagio(HttpServletRequest request,HttpServletResponse response){
        int semestre = Integer.parseInt(request.getParameter("optSemestre"));
        String atvDesenvolvida = request.getParameter("txtAtvDesenvolvida");
        
        //validar 
        
        if (validar(atvDesenvolvida)){
            preencherPlanoEstagio(semestre, atvDesenvolvida);
            redirecionar("impressaoDocEstagio.html", request, response); //avança
        }else{
            String erro = "Campo Atividade deve ser preenchido!";
            request.setAttribute("ERRO", erro);
            request.setAttribute("SEMESTRE", String.valueOf(semestre));
            redirecionar("/planoEstagio.jsp", request, response); 
        }
        
    }
    
    private boolean validar (String atvDesenvolvida){
        return !atvDesenvolvida.isEmpty();
    }
    
    private void preencherPlanoEstagio(int semestre, String atvDesenvolvida){
        planoEstagio= new PlanoEstagio();

        planoEstagio.setSemestre(semestre);
        planoEstagio.setAtvDesenvolvida(atvDesenvolvida);
    }
    
    /*private void obterDadosSessao(HttpServletRequest request){
        HttpSession session = request.getSession();
    }*/
        private void redirecionar (String pagina, HttpServletRequest request, HttpServletResponse response){
            HttpSession session = request.getSession();
            session.setAttribute("PLANOESTAGIO", planoEstagio);
            
            RequestDispatcher rd = request.getRequestDispatcher(pagina);
            try{
                rd.forward(request,response);
            }catch(Exception e){
                e.printStackTrace();
                System.out.println("deu erro bobona");
            }
            
        }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebePlanoEstagio(request, response);
        
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServPlanoEstagio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServPlanoEstagio at " + request.getContextPath() + "</h1>");
            out.println("<h1>Servlet ServPlanoEstagio at " + planoEstagio.getAtvDesenvolvida()+ planoEstagio.getSemestre() + "</h1>");
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
