/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Endereco;
import Model.Representante;
import Model.Supervisor;
import Model.UnidadeConcedente;
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
@WebServlet(name = "ServUnidadeConcedente", urlPatterns = {"/ServUnidadeConcedente"})
public class ServUnidadeConcedente extends HttpServlet {
    UnidadeConcedente unidadeConcedente ;
    Endereco endereco;
    Representante representante;
    Supervisor supervisor;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private void recebeDados(HttpServletRequest request){
        String razaoSocial= request.getParameter("txtRazaoSocial");
        String cnpj = request.getParameter("txtCnpj");
        String telefone1 = request.getParameter("txtTelefoneUnidade1");
        String telefone2 = request.getParameter("txtTelefoneUnidade2");
        String cidade = request.getParameter("txtCidade");
        String bairro = request.getParameter("txtBairro");
        String rua = request.getParameter("txtRua");
        String cep = request.getParameter("txtCep");
        
        recebeDadosUnidade(razaoSocial, cnpj, telefone1, telefone2, cidade, bairro, rua, cep);
        
        String pessoaAutorizada = request.getParameter("txtPessoaAutorizada");
        String cargoRepresentante = request.getParameter("txtCargoRepresentante");
        String rg = request.getParameter("txtRgRepresentante");
        String cpf = request.getParameter("txtCpfRepresentante");
        
        recebeDadosRepresentante(pessoaAutorizada, cargoRepresentante, rg, cpf);
        
        String nome = request.getParameter("txtNomeSupervisor"); 
        String cargoSupervisor = request.getParameter("txtCargoSupervisor"); 
        String email = request.getParameter("txtEmailSupervisor");
        
        recebeDadosSupervisor(nome, cargoSupervisor, email);
    }
    
    private void recebeDadosUnidade(String razaoSocial, String cnpj, String telefone1, String telefone2,String cidade,
                                     String bairro,String rua, String cep){
        unidadeConcedente  = new UnidadeConcedente ();
        
        unidadeConcedente.setRazaoSocial(razaoSocial);
        unidadeConcedente.setCnpj(cnpj);
        unidadeConcedente.setTelefone1(telefone1);
        unidadeConcedente.setTelefone2(telefone2);
        
        endereco = new Endereco();
        this.endereco.setCidade(cidade);
        this.endereco.setBairro(bairro);
        this.endereco.setRua(rua);
        this.endereco.setCep(cep);
        unidadeConcedente.setEndereco(this.endereco);
    }
    
    private void recebeDadosRepresentante(String pessoaAutorizada, String cargo,String rg, String cpf ){
        representante = new Representante();
        representante.setPessoaAutorizada(pessoaAutorizada);
        representante.setCargo(cargo);
        representante.setRg(rg);
        representante.setCpf(cpf);
    }
    
    private void recebeDadosSupervisor(String nome, String cargo, String email){
        supervisor = new Supervisor();
        supervisor.setNome(nome);
        supervisor.setCargo(cargo);
        supervisor.setEmail(email);
    }
    
    private void redirecionar(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rd = request.getRequestDispatcher("sobreEstagio.jsp");
        
       // HttpSession session = request.getSession();
        //session.setAttibute("");
        
        try{
            rd.forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeDados(request);
        redirecionar(request, response);
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServUnidadeConcedente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServUnidadeConcedente at " + request.getContextPath() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + unidadeConcedente.getCnpj() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + unidadeConcedente.getRazaoSocial() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + unidadeConcedente.getTelefone1() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + unidadeConcedente.getTelefone2() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + endereco.getBairro() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + endereco.getCep() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + endereco.getCidade() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + endereco.getRua() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + representante.getPessoaAutorizada() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + representante.getCpf() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + representante.getCargo() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + representante.getRg() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + supervisor.getCargo() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + supervisor.getEmail() + "</h1>");
            //out.println("<h1>Servlet ServUnidadeConcedente at " + supervisor.getNome() + "</h1>");
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
