/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Endereco;
import Model.Estagiario;
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
@WebServlet(name = "ServDadosNaoObr", urlPatterns = {"/ServDadosNaoObr"})
public class ServDadosNaoObr extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Estagiario estagiario;
    Endereco endereco;
    boolean erroCep=false;
    boolean erroCpf= false;
    String pagina;
    
        private void recebeDadosPessoais(HttpServletRequest request,HttpServletResponse response){
        
        String id = request.getParameter("txtId");
        String nome = request.getParameter("txtNome");
        String curso = request.getParameter("comboCurso");
        String cpf = request.getParameter("txtCpf");
        String nascimento = request.getParameter("dtNascimento");
        String telefone1 = request.getParameter("txtTelefone1");
        String telefone2 = request.getParameter("txtTelefone2");
        String professor = request.getParameter("txtProfessor");
        
        String rua = request.getParameter("txtRua");
        String bairro = request.getParameter("txtBairro");
        String cidade = request.getParameter("txtCidade");
        String cep = request.getParameter("txtCep");
        
        
        preencherDadosPessoais(id, nome, curso, cpf, nascimento, telefone1, telefone2, professor, rua ,bairro, cidade, cep);
    }
        
    private void preencherDadosPessoais(String id, String nome, String curso, String cpf, String nascimento,
                                        String telefone1, String telefone2, String professor,
                                        String rua, String bairro, String cidade, String cep){
        estagiario = new Estagiario();
        
        estagiario.setId(id);
        estagiario.setNome(nome);
        estagiario.setCurso(curso);
        erroCpf = estagiario.setCpf(cpf);
        estagiario.setNascimento(nascimento);
        estagiario.setTelefone1(telefone1);
        estagiario.setTelefone2(telefone2);
        estagiario.setProfessor(professor);
        
        this.endereco = new Endereco();
        this.endereco.setRua(rua);
        this.endereco.setBairro(bairro);
        this.endereco.setCidade(cidade);
        erroCep = this.endereco.setCep(cep);
        
        estagiario.setEndereco(this.endereco);
        
    }
    
    private void redirecionar(String pagina, HttpServletRequest request, HttpServletResponse response){
       HttpSession session = request.getSession();
       session.setAttribute("ESTAGIARIO", estagiario);

       RequestDispatcher rd = request.getRequestDispatcher(pagina);
       try{
            rd.forward(request,response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    

    protected void processRequest( HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        recebeDadosPessoais(request,response);
        if (erroCep == false && erroCpf == false){
             redirecionar("unidadeConcedenteNaoObr.jsp",request, response);
        }else if (erroCep == true || erroCpf == true){
            String erro = "Há dados inválidos";
            request.setAttribute("ERRO", erro);
            request.setAttribute("ID", String.valueOf(estagiario.getId()));
            request.setAttribute("CPF", String.valueOf(estagiario.getCpf()));
            request.setAttribute("NOME", String.valueOf(estagiario.getNome()));
            request.setAttribute("DATA", String.valueOf(estagiario.getNascimento()));
            request.setAttribute("ENDERECO", String.valueOf(estagiario.getEndereco().getRua()));
            request.setAttribute("BAIRRO", String.valueOf(estagiario.getEndereco().getBairro()));
            request.setAttribute("CIDADE", String.valueOf(estagiario.getEndereco().getCidade()));
            request.setAttribute("CEP", String.valueOf(estagiario.getEndereco().getCep()));
            request.setAttribute("TELEFONE1", String.valueOf(estagiario.getTelefone1()));
            request.setAttribute("TELEFONE2", String.valueOf(estagiario.getTelefone2()));
            request.setAttribute("PROFESSOR", String.valueOf(estagiario.getProfessor()));
            request.setAttribute("DISCIPLINA", String.valueOf(estagiario.getDisciplina()));
            redirecionar("/dadosPessoaisNaoObr.jsp", request, response); 
        }
        //redirecionar(request, response);
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServDadosNaoObr</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServDadosNaoObr at " + request.getContextPath() + "</h1>");
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
