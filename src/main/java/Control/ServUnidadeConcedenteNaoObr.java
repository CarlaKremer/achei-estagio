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
@WebServlet(name = "ServUnidadeConcedenteNaoObr", urlPatterns = {"/ServUnidadeConcedenteNaoObr"})
public class ServUnidadeConcedenteNaoObr extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    UnidadeConcedente unidadeConcedente ;
    Endereco endereco;
    Representante representante;
    Supervisor supervisor;
    boolean erroCep=false;
    boolean erroCpf= false;
    boolean erroRg = false;
    String pagina;
    
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
        erroCep = this.endereco.setCep(cep);
        unidadeConcedente.setEndereco(this.endereco);
    }
    
    private void recebeDadosRepresentante(String pessoaAutorizada, String cargo,String rg, String cpf ){
        representante = new Representante();
        representante.setPessoaAutorizada(pessoaAutorizada);
        representante.setCargo(cargo);
        erroRg = representante.setRg(rg);
        erroCpf = representante.setCpf(cpf);
        
    }
    
    private void recebeDadosSupervisor(String nome, String cargo, String email){
        supervisor = new Supervisor();
        supervisor.setNome(nome);
        supervisor.setCargo(cargo);
        supervisor.setEmail(email);
    }
    
    private void redirecionar(String pagina, HttpServletRequest request, HttpServletResponse response){
        HttpSession session = request.getSession();
        session.setAttribute("UNIDADECONCEDENTE", unidadeConcedente);
        session.setAttribute("REPRESENTANTE", representante);
        session.setAttribute("SUPERVISOR",supervisor);
        
        RequestDispatcher rd = request.getRequestDispatcher(pagina);
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
        if(erroCpf == false && erroCep == false && erroRg == false){
            redirecionar("sobreEstagioNaoObr.jsp", request, response);
        }
        else{
            String erro = "Há dados inválidos!";
            request.setAttribute("ERRO", erro);
            request.setAttribute("RAZAOSOCIAL", String.valueOf(unidadeConcedente.getRazaoSocial()));
            request.setAttribute("CNPJ", String.valueOf(unidadeConcedente.getCnpj()));
            request.setAttribute("TELEFONE1", String.valueOf(unidadeConcedente.getTelefone1()));
            request.setAttribute("TELEFONE2", String.valueOf(unidadeConcedente.getTelefone2()));
            request.setAttribute("ENDERECO", String.valueOf(unidadeConcedente.getEndereco().getRua()));
            request.setAttribute("BAIRRO", String.valueOf(unidadeConcedente.getEndereco().getBairro()));
            request.setAttribute("CIDADE", String.valueOf(unidadeConcedente.getEndereco().getCidade()));
            request.setAttribute("CEP", String.valueOf(unidadeConcedente.getEndereco().getCep()));
            request.setAttribute("PESSOAAUTORIZADA", String.valueOf(representante.getPessoaAutorizada()));
            request.setAttribute("CARGOREPRESENTANTE", String.valueOf(representante.getCargo()));
            request.setAttribute("RG", String.valueOf(representante.getRg()));
            request.setAttribute("CPF", String.valueOf(representante.getCpf()));
            request.setAttribute("NOMESUPERVISOR", String.valueOf(supervisor.getNome()));
            request.setAttribute("CARGOSUPERVISOR", String.valueOf(supervisor.getCargo()));
            request.setAttribute("EMAIL", String.valueOf(supervisor.getEmail()));
            redirecionar("unidadeConcedenteNaoObr.jsp", request, response);
        }
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServUnidadeConcedenteNaoObr</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServUnidadeConcedenteNaoObr at " + request.getContextPath() + "</h1>");
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
