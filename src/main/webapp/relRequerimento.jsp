<%-- 
    Document   : relObrigatorio
    Created on : 20 de out de 2021, 14:13:41
    Author     : carla
--%>

<%@page import="Model.UnidadeConcedente"%>
<%@page import="Model.Supervisor"%>
<%@page import="Model.SobreEstagio"%>
<%@page import="Model.Representante"%>
<%@page import="Model.Representante"%>
<%@page import="Model.PlanoEstagio"%>
<%@page import="Model.Estagiario"%>
<%@page import="Model.Estagiario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Estagiario estagiario;
    PlanoEstagio planoEstagio;
    Representante representante;
    SobreEstagio sobreEstagio;
    Supervisor supervisor;
    UnidadeConcedente unidadeConcedente;
    
    HttpSession sessao = request.getSession();
    estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
    planoEstagio = (PlanoEstagio) sessao.getAttribute("PLANOESTAGIO");
    representante = (Representante) sessao.getAttribute("REPRESENTANTE");
    sobreEstagio = (SobreEstagio) sessao.getAttribute("SOBREESTAGIO");
    supervisor = (Supervisor) sessao.getAttribute("SUPERVISOR");
    unidadeConcedente = (UnidadeConcedente) sessao.getAttribute("UNIDADECONCEDENTE");
%>
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
        <h1 class="titulo">Requerimento Estágio Obrigatório</h1>
        <div class="container">
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">NOME:</label>
                    <label class="info" for=""><%=estagiario.getNome()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">ENDEREÇO:</label>
                    <label class="info" for=""><%=estagiario.getEndereco().getRua()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col m4">
                    <label class="titulo" for="NOME">BAIRRO:</label>
                    <label class="info" for=""><%=estagiario.getEndereco().getBairro()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">CIDADE:</label>
                    <label class="info" for=""><%=estagiario.getEndereco().getCidade()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">CEP:</label>
                    <label class="info" for=""><%=estagiario.getEndereco().getCep()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">TELEFONE:</label>
                    <label class="info" for=""><%=estagiario.getTelefone1()%></label>
                </div>
            </div>
                
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">TELEFONE:</label>
                    <label class="info" for=""><%=estagiario.getTelefone2()%></label>
                </div>
            </div>    

            <div class="row">
                <div class="col m6">
                    <label class="titulo" for="NOME">CURSO:</label>
                    <label class="info" for=""><%=estagiario.getCurso()%></label>
                </div>
                <div class="col m6">
                    <label class="titulo" for="NOME">ID:</label>
                    <label class="info" for=""><%=estagiario.getId()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col m6">
                    <label class="titulo" for="NOME">CPF:</label>
                    <label class="info" for=""><%=estagiario.getCpf()%></label>
                </div>
                <div class="col m6">
                    <label class="titulo" for="NOME">DATA DE NASCIMENTO:</label>
                    <label class="info" for=""><%=estagiario.getNascimento()%></label>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">PROFESSOR ORIENTADOR DO ESTÁGIO (UNISAGRADO):</label>
                    <label class="info" for=""><%=estagiario.getProfessor()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">NOME DA DISCIPLINA:</label>
                    <label class="info" for=""><%=estagiario.getDisciplina()%></label>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">RAZÃO SOCIAL DA UNIDADE CONCEDENTE:</label>
                    <label class="info" for=""><%=unidadeConcedente.getRazaoSocial()%></label>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">ENDEREÇO:</label>
                    <label class="info" for=""><%=unidadeConcedente.getEndereco().getRua()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col m4">
                    <label class="titulo" for="NOME">BAIRRO:</label>
                    <label class="info" for=""><%=unidadeConcedente.getEndereco().getBairro()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">CIDADE:</label>
                    <label class="info" for=""><%=unidadeConcedente.getEndereco().getCidade()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">CEP:</label>
                    <label class="info" for=""><%=unidadeConcedente.getEndereco().getCep()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col m4">
                    <label class="titulo" for="NOME">TELEFONE 1:</label>
                    <label class="info" for=""><%=unidadeConcedente.getTelefone1()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">TELEFONE 2 :</label>
                    <label class="info" for=""><%=unidadeConcedente.getTelefone2()%></label>
                </div>
                <div class="col m4">
                    <label class="titulo" for="NOME">CNPJ:</label>
                    <label class="info" for=""><%=unidadeConcedente.getCnpj()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">NOME DO REPRESENTANTE LEGAL:</label>
                    <label class="info" for=""><%=representante.getPessoaAutorizada()%></label>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">CARGO/FUNÇÂO:</label>
                    <label class="info" for=""><%=representante.getCargo()%></label>
                </div>
            </div>
                
            <div class="row">
                <div class="col m6">
                    <label class="titulo" for="NOME">RG:</label>
                    <label class="info" for=""><%=representante.getRg()%></label>
                </div>
                <div class="col m6">
                    <label class="titulo" for="NOME">CPF:</label>
                    <label class="info" for=""><%=representante.getCpf()%></label>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">NOME DO SUPERVISOR DA UNIDADE CONCEDENTE:</label>
                    <label class="info" for=""><%=supervisor.getNome()%></label>
                </div>
            </div>
                
            <div class="row">
                <div class="col m6">
                    <label class="titulo" for="NOME">CARGO/FUNÇÃO:</label>
                    <label class="info" for=""><%=supervisor.getCargo()%></label>
                </div>
                <div class="col m6">
                    <label class="titulo" for="NOME">E-MAIL:</label>
                    <label class="info" for=""><%=supervisor.getEmail()%></label>
                </div>
            </div>
                

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">PERÍODO DO ESTÁGIO: de </label>
                    <label class="info" for=""><%=sobreEstagio.getInicioEstagio()%> até </label>
                    <label class="info" for=""> <%=sobreEstagio.getFimEstagio()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">DIAS DA SEMANA:</label>
                    <label class="info" for="">Label</label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">HORÁRIO: </label>
                    <label class="info" for=""> <%=sobreEstagio.getHoraEntrada()%></label>
                    <label class="info" for="">até <%=sobreEstagio.getHoraSaida()%></label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">CARGA HORÁRIA SEMANAL:</label>
                    <label class="info" for=""><%=sobreEstagio.getHorasSemanais()%> H </label>
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
