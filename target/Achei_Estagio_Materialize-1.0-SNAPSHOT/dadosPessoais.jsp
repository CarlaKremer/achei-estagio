<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Utilitario.Cursos"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>
    <link rel= "shortcut icon" href= "Imagens/imgLogo.ico " type= "image/x-icon">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/fonte.css">
    
</head>

<body>
    <!--navbar--->
    <!-- Dropdown Structure -->
    <ul id= "dropdown1" class="dropdown-content">
        <li><a href="dadosPessoais.jsp">Estágio Obrigatório</a></li>
        <li><a href="dadosPessoaisNaoObr.jsp">Estágio Não-Obrigatório</a></li>
    </ul>
    <nav class="nav-wrapper orange accent-3">
        <div class="nav-wrapper ">
            <img src="Imagens/imgLogo.png " style="height: 60px; " alt=" ">
            <a href="index.html" class="brand-logo ">Achei Estágio</a>

            <ul class="right hide-on-med-and-down">
                <li><a href="#">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right">arrow_drop_down</i></a></li>
              </ul>
        </div>
    </nav>
    <!--navbar--->

    <div class="container">
        <h2 style="font-size: 40px;"> <b>Requerimento de Estágio Obrigatório</b></h2>
        <div class="row col s12">
            
            <form class="col s12" action="dadosPessoais" method="POST">
                <input id="parametro" type="hidden" class="validate" name="parametro" value="">
                <div class="row">
                    <h1 style="font-size: 35px;"> <b>Dados Pessoais</b></h1>
                    <div class="input-field col s3">
                        <input id="idAluno" type="text" class="validate" name="txtId" required>
                        <label class="black-text" for="idAluno">ID</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="txtCpf" maxlength="11" type="text" class="validate" name="txtCpf" required>
                        <label class="black-text" for="cpfAluno">CPF (sem pontuação)</label>
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
                        <select name="comboCurso" id=comboCurso" required>
                            <%
                                Cursos curso =  new Cursos();
                                String valor = "";
                                for (int i = 0; i < curso.cursos.size() ; i++) {
                                      valor = curso.cursos.get(i);
                            %>
                            <option value="<%=valor%>" id="<%=valor%>" ><%=valor%></option>
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
                        <input id="cepAluno" maxlength="8" type="text" class="validate" name="txtCep" required>
                        <label class = "black-text" for="cepAluno">CEP (sem pontuação</label>
                    </div>
                    <div class="row  col s4">
                        <input id="telefone1Aluno" maxlength="15" type="text" name="txtTelefone1" class="validate"   required><!--<!--pattern="\(\d{2}\)\d{4}-\d{4}"-->
                        <label class="black-text" for="telefone1Aluno">Telefone 1</label>
                    </div>
                    <div class="row  col s4">
                        <input id="telefone2Aluno" maxlength="15" type="text" name="txtTelefone2" class="validate" required>
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

                    
    <footer class="page-footer orange accent-3 center" style="padding-top: 0px;">
            © 2021 Copyright Text
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
            $('.datepicker').datepicker({
            format: 'dd/mm/yyyy',
            parse: String,
            // Meses e dias da semana
            monthsFull: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
            monthsShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
            weekdaysFull: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
            weekdaysShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab']});
        });
    </script>
 
    <script>
        function mascaraTel(o,f){
            v_obj=o;
            v_fun=f;
            setTimeout("execmascaraTel()",1);
        }
        function execmascaraTel(){
            v_obj.value=v_fun(v_obj.value);
        }
        function mtel(v){
            v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
            v=v.replace(/^(\d{2})(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
            v=v.replace(/(\d)(\d{4})$/,"$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
            return v;
        }
        function id( el ){
                return document.getElementById( el );
        }
        window.onload = function(){
                id('telefone1Aluno').onkeyup = function(){
                        mascaraTel( this, mtel );
                }
                id('telefone2Aluno').onkeyup = function(){
                        mascaraTel( this, mtel );
                }
        }
    </script>

</body>

</html>