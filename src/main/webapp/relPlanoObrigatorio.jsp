<%-- 
    Document   : relPlanoObrigatorio
    Created on : 22 de out de 2021, 10:03:35
    Author     : carla
--%>

<%@page import="Model.UnidadeConcedente"%>
<%@page import="Model.Representante"%>
<%@page import="Model.Supervisor"%>
<%@page import="Model.PlanoEstagio"%>
<%@page import="Model.Estagiario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>
     <link rel= "shortcut icon" href= "Imagens/imgLogo.ico " type= "image/x-icon">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/rel.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/fonte.css">
    <style type="text/css">
    @media print {
        header, footer, nav, aside, .button {
           display: none;
        }
     }
    </style>

</head>
<%
    Estagiario estagiario;
    PlanoEstagio planoEstagio;
    Supervisor supervisor;
    Representante representante;
    UnidadeConcedente unidadeConcedente;
    
    HttpSession sessao = request.getSession();
    estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
    planoEstagio = (PlanoEstagio) sessao.getAttribute("PLANOESTAGIO");
    supervisor = (Supervisor) sessao.getAttribute("SUPERVISOR");
    representante = (Representante) sessao.getAttribute("REPRESENTANTE");
    unidadeConcedente = (UnidadeConcedente) sessao.getAttribute("UNIDADECONCEDENTE");
%>   
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
                <li><a href="doc_final.jsp">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right">arrow_drop_down</i></a></li>
              </ul>
        </div>
    </nav>
    <!--navbar--->

    <main>
        <div class="container">
            <div class="row">
                <div class="col s6">
                    <h1 class="titulo">Requerimento Estágio Obrigatório</h1>
                </div>
                <div class="col s6">
                    <img src="Imagens/unisagrado.png" style="max-width: 50%; height: auto;">
                </div>
            </div>
           <div class="row">
                <div class="col">
                    <label class="titulo" for="">NOME ESTAGIÁRIO:</label>
                    <label class="info" for=""><%=estagiario.getNome()%></label>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label class="titulo" for="">PROFESSOR ORIENTADOR:</label>
                    <label class="info" for=""><%=estagiario.getProfessor()%></label>
                </div>
            </div>
                <div class="row">
                    <div class="col">
                        <label class="titulo" for="">SUPERVISOR:</label>
                        <label class="info" for=""><%=supervisor.getNome()%></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label class="titulo" for="">SEMESTRES LETIVO:</label>
                        <label class="info" for=""><%=planoEstagio.getSemestre()%></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label class="titulo" for="">ATIVIDADE DESENVOLVIDAS:</label>
                        <label class="info" for=""><%=planoEstagio.getAtvDesenvolvida()%></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <label class="titulo" for="">ASSINATURAS:</label> <br><br><br><br>
                        <div class="col s4">
                           <%=estagiario.getProfessor()%>
                        </div>
                        <div class="col s4">
                           <%=estagiario.getNome()%>
                        </div>
                        <div class="col s4">
                           <%=representante.getPessoaAutorizada()%>
                        </div>
                    </div>
                </div>
        </div>
                <div class="container button ">
                    <button onclick="window.print()" class="waves-effect waves-light btn orange accent-3" >Imprimir</button><br><br>
                </div>
    </main>


        <footer class="page-footer orange accent-3 center" style="padding-top: 0px;">
            © 2021 Copyright Text
    </footer>
    <script>
        M.AutoInit();
    </script>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js " integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin=" anonymous "></script>

    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>

    <script>
        $(".dropdown-trigger ").dropdown();
    </script>
    <script>
        $(document).ready(function() {
            $('select').formSelect();
        });
    </script>
</body>

</html>