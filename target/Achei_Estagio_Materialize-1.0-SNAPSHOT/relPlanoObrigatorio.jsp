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

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/rel.css">

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
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="#!">one</a></li>
        <li><a href="#!">two</a></li>
        <li class="divider"></li>
        <li><a href="#!">three</a></li>
    </ul>
    <nav>
        <div class="nav-wrapper orange accent-3">
            <a href="#!" class="brand-logo">Achei Estágio</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.html ">Home</a></li>
                <li><a href="badges.html">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right"></i></a></li>
            </ul>
        </div>
    </nav>

    <main>
        <div class="container">
            <div class="row">
                <h1 class="titulo">Requerimento Estágio Obrigatório</h1>
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
                        <label class="titulo" for="">ASSINATURAS:</label>
                    </div>
                </div>
        </div>
    </main>


    <footer class="page-footer orange accent-3 ">

        <div class="footer-copyright ">
            <div class="container ">
                � 2014 Copyright Text
                <a class="grey-text text-lighten-4 right " href="#! ">More Links</a>
            </div>
        </div>
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