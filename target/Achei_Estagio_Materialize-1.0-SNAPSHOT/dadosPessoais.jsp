<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Utilitario.Cursos"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

</head>

<body>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="#!">one</a></li>
        <li><a href="#!">two</a></li>
        <li class="divider"></li>
        <li><a href="#!">three</a></li>
    </ul>
    <nav>
        <div class="nav-wrapper orange accent-3">
            <a href="#!" class="brand-logo">Achou Estágio</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.html ">Home</a></li>
                <li><a href="badges.html">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li>
                    <a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right"></i></a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 style="font-size: 40px;"> <b>Requerimento de Estágio Obrigatório</b></h2>
        <div class="row col s12">
            <form class="col s12" action="dadosPessoais" method="POST">
                <div class="row">
                    <h1 style="font-size: 35px;"> <b>Dados Pessoais</b></h1>
                    <div class="input-field col s3">
                        <input id="idAluno" type="text" class="validate" name="txtId" required>
                        <label class="black-text" for="idAluno">ID</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="txtCpf" type="text" class="validate" name="txtCpf" required>
                        
                        <!--<script type="text/javascript">$("#txtCpf").mask("000.000.000-00");</script>-->
                        <label class="black-text" for="cpfAluno">CPF</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="nomeAluno" type="text" name="txtNome" class="validate" required>
                        <label class="black-text" for="nomeAluno">Nome</label>
                    </div>
                </div>

                <div class="row">
                    <div class="input-field col s12">
                        <select name="comboCurso" required>
                            <option value="" disabled selected></option>
                            <%
                                Cursos curso =  new Cursos();
                                String valor = "";
                                for (int i = 0; i < curso.cursos.size() ; i++) {
                                      valor = curso.cursos.get(i);
                            %>
                            <option value="<%=valor%>"><%=valor%></option>
                            <% } %>
                            <!--<option value="" disabled selected></option>
                            <option value="1">Option 1</option>-->
                        </select>
                        <label class="black-text">Curso</label>
                    </div>

                </div>
                <div class="row">
                    <div class="row  col s2">
                        <input id="dataNascimentoAluno" type="text" class="datepicker" name ="dtNascimento" required>
                        <label class="black-text " for="enderecoAluno">Data de Nascimento</label>
                    </div>
                    <div class="row  col s4">
                        <input id="enderecoAluno" type="text" class="validate" name="txtRua" required>
                        <label class="black-text" for="enderecoAluno">Endereço</label>
                    </div>
                    <div class="row col s2">
                        <input id="bairrroAluno" type="text" class="validate" name="txtBairro" required>
                        <label class="black-text" for="bairroAluno">Bairro</label>
                    </div>
                    <div class="row  col s4">
                        <input id="cidadeAluno" type="text" class="validate" name="txtCidade" required>
                        <label class="black-text" for="cidadeAluno">Cidade</label>
                    </div>
                </div>
                <div class="row">
                    <div class="row  col s3">
                        <input id="cepAluno" type="text" class="validate" name="txtCep" required>
                        <label class = "black-text" for="cepAluno">CEP</label>
                    </div>
                    <div class="row  col s4">
                        <input id="telefone1Aluno" type="text" name="txtTelefone1" class="validate" required>
                        <label class="black-text" for="telefone1Aluno">Telefone 1</label>
                    </div>
                    <div class="row  col s4">
                        <input id="telefone2Aluno" type="text" name="txtTelefone2" class="validate" required>
                        <label class="black-text" for="telefoneAluno">Telefone 2</label>
                    </div>
                </div>
                <div class="row">
                    <div class="row input-field col s4">
                        <input id="professorOrientador" type="text" class="validate" name="txtProfessor" required>
                        <label class="black-text" for="professorOrientador">Professor Orientador</label>
                    </div>

                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <select name="comboDisciplina" required>
                            <option value="" disabled selected></option>
                            <%
                                String disciplina = "";
                                for (int j = 0; j < curso.disciplina.size(); j++) {
                                        disciplina = curso.disciplina.get(j);  
                            %>
                        <option value="<%=disciplina%>"><%=disciplina%></option>
                        <%  } %>
                    </select>
                        <label class="black-text">Disciplina</label>
                    </div>
                </div>

                    <!--<a class="waves-effect waves-light btn orange accent-3" href="#"><i class="material-icons left"></i>Avançar >>></a>-->
                    <button class="waves-effect waves-light btn orange accent-3" type="submit" >Avançar</button>

            </form>
        </div>
    </div>
    <footer class="page-footer orange accent-3 ">

        <div class="footer-copyright">
            <div class="container">
                © 2021 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
    </footer>
    <script>
        M.AutoInit();
    </script>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>
    
   
    
    <script>
        $(".dropdown-trigger").dropdown();
    </script>
    <script>
        $(document).ready(function() {
            $('select').formSelect();
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.datepicker').datepicker({format: 'dd/mm/yyyy', parse: String});
             
        });
    </script>
</body>

</html>