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

/**
 *
 * @author carla
 */
@WebServlet(name = "dadosPessoais", urlPatterns = {"/dadosPessoais"})
public class dadosPessoais extends HttpServlet {
    Estagiario estagiario;
    Endereco endereco;
    
    
    private void recebeDadosPessoais(HttpServletRequest request){
        
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nome = request.getParameter("txtNome");
        String curso = request.getParameter("comboCurso");
        String cpf = request.getParameter("txtCpf");
        String nascimento = request.getParameter("dtNascimento");
        String telefone1 = request.getParameter("txtTelefone1");
        String telefone2 = request.getParameter("txtTelefone2");
        String professor = request.getParameter("txtProfessor");
        String disciplina = request.getParameter("comboDisciplina");
        
        String rua = request.getParameter("txtRua");
        String bairro = request.getParameter("txtBairro");
        String cidade = request.getParameter("txtCidade");
        String cep = request.getParameter("txtCep");
        
        preencherDadosPessoais(id, nome, curso, cpf, nascimento, telefone1, telefone2, professor, disciplina, 
                                rua ,bairro, cidade, cep);

        //int semestre;
    }
    
    private void preencherDadosPessoais(int id, String nome, String curso, String cpf, String nascimento,
                                        String telefone1, String telefone2, String professor, String disciplina,
                                        String rua, String bairro, String cidade, String cep){
        estagiario = new Estagiario();
        
        estagiario.setId(id);
        estagiario.setNome(nome);
        estagiario.setCurso(curso);
        estagiario.setCpf(cpf);
        estagiario.setNascimento(nascimento);
        estagiario.setTelefone1(telefone1);
        estagiario.setTelefone2(telefone2);
        estagiario.setProfessor(professor);
        estagiario.setDisciplina(disciplina);
        
        this.endereco = new Endereco();
        this.endereco.setRua(rua);
        this.endereco.setBairro(bairro);
        this.endereco.setCidade(cidade);
        this.endereco.setCep(cep);
        
        estagiario.setEndereco(this.endereco);
    }
    
    private void redirecionar(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rd = request.getRequestDispatcher("unidadeConcedente.jsp");
        
        try {
            rd.forward(request, response);
        } catch(Exception e ){
            e.printStackTrace();
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        recebeDadosPessoais(request);
        
        redirecionar(request, response);

        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dadosPessoais</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dadosPessoais at " + request.getContextPath() + "</h1>");
            out.println("<h1>Servlet dadosPessoais at " + estagiario.getId() + "</h1>");
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
