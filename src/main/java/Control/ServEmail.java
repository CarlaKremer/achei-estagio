/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Model.Email;
import javax.servlet.RequestDispatcher;


/**
 *
 * @author carla
 */
@WebServlet(name = "ServEmail", urlPatterns = {"/ServEmail"})
@MultipartConfig
public class ServEmail extends HttpServlet {
    InputStream inputStream = null;
    InputStream inputStream2 = null;
    Email email;
    boolean enviou;
    private void config(HttpServletRequest request) throws IOException, ServletException{
        Email email = new Email();
        String id = request.getParameter("txtId");
        String nome = request.getParameter("txtNome");
        Part filePart = request.getPart("file"); //atributo name:"" no input
        Part filePart2 = request.getPart("file2");
          if (filePart != null) {
            System.out.println("nome: "+filePart.getName());
            System.out.println("tamanho: "+filePart.getSize());
            System.out.println("conteudo: "+filePart.getContentType());
            
            System.out.println("nome: "+filePart2.getName());
            System.out.println("tamanho: "+filePart2.getSize());
            System.out.println("conteudo: "+filePart2.getContentType());
             
            // obtem inputstream do arquivo
            inputStream = filePart.getInputStream();
            inputStream2 = filePart.getInputStream();
        }
        try{
            email.setArquivo(inputStream);
            email.setArquivo2(inputStream2);
            email.setid(id);
            email.setNome(nome);
            email.setEmailDestinatario("achei.estagi@gmail.com");
            email.setAssunto("Achei Estágio");
            enviou = email.enviarGmail();
            request.setAttribute("ENVIO", enviou);
            
            System.out.println("Se enviou:"+enviou);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    private void redirecionar (HttpServletRequest request, HttpServletResponse response){

        RequestDispatcher rd = request.getRequestDispatcher("doc_final.jsp");
        try{
            rd.forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
        }

    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        config(request);
        redirecionar(request, response);
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServEmail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServEmail at " + request.getContextPath() + "</h1>");
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
