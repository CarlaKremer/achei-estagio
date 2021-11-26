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
    Representante representante;
    SobreEstagio sobreEstagio;
    Supervisor supervisor;
    UnidadeConcedente unidadeConcedente;
    
    HttpSession sessao = request.getSession();
    estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
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
    <link rel= "shortcut icon" href= "Imagens/imgLogo.ico " type= "image/x-icon">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/rel.css">
    <link rel="stylesheet" href="css/fonte.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
    @media print {
        header, footer, nav, aside, .button {
           display: none;
        }
     }
    </style>
    

</head>

<body>
    <!--navbar--->
    <!-- Dropdown Structure -->
    <ul id= "dropdown1" class="dropdown-content">
        <li><a href="dadosPessoais.jsp">Estágio Obrigatório</a></li>
        <li><a href="dadosPessoaisNaoObr.jsp">Estágio Não-Obrigatório</a></li>
    </ul>
    <nav class="nav-wrapper orange accent-3" >
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
            <div class="row center">
                <div class="col s4">
                 <h1 class="tipo">Requerimento Estágio</h1>
                </div>
                <div class="col s6">
                    <img src="Imagens/unisagrado.png" style="max-width: 50%; height: auto;">
                </div>
            </div>
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
                    <%  String x ="";
                        if(estagiario.getDisciplina()!= null){x = "CIDADE";}
                        else{x= "CIDADE/ESTADO";}
                    %>
                    <label class="titulo" for="NOME"><%=x%></label>
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
                    <%if(estagiario.getDisciplina()!= null){%>
                    <label class="titulo" for="NOME">NOME DA DISCIPLINA:</label>
                    <label class="info" for=""><%=estagiario.getDisciplina()%></label>
                    <%}%>
                </div>
            </div>
           
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
                    <label class="titulo" for="NOME">PERÍODO DO ESTÁGIO: </label>
                    <label class="info"><%out.print("De " + sobreEstagio.getInicioEstagio() + " até " + sobreEstagio.getFimEstagio());%> </label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">DIAS DA SEMANA:</label>
                    <label class="info" for="">
                    <%
                        String [] diasSemana = {"Sábado","Domingo","Segunda-Feira","Terca-Feira","Quarta-Feira", "Quinta-Feira","Sexta-Feira"};
                        
                        if (sobreEstagio.isDiasVariados())
                            out.print("Dias Variados");
                        else{
                            for (int i = 0; i < sobreEstagio.getDiasSemana().length; i++) {
                                    if(sobreEstagio.getDiasSemana()[i]){
                                        out.print(diasSemana[i] + " | ");
                                    }
                                }
                        }
                    %>
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">HORÁRIO: </label>
                    <label class="info">
                        <%
                            if(sobreEstagio.isHorasVariadas())
                                out.print("Horários Variados");
                            else
                                out.print("De "+ sobreEstagio.getHoraEntrada() + " até " + sobreEstagio.getHoraSaida());
                        %>
                    </label>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label class="titulo" for="NOME">CARGA HORÁRIA SEMANAL:</label>
                    <label class="info" for=""><%=sobreEstagio.getHorasSemanais()%> H </label>
                </div>
            </div>
                <%
                    if(sobreEstagio.getApolice()!= null){
                %>
                <div class="row">
                    <div class="col s4">
                        <label class="titulo" for="NOME">BOLSA</label>
                        <label class="info" for=""><%=sobreEstagio.getBolsa()%></label>
                    </div>
                    <div class="col s4">
                        <label class="titulo" for="NOME">APÓLICE DE SEGURO</label>
                        <label class="info" for=""><%=sobreEstagio.getApolice()%></label>
                    </div>
                    <div class="col s4">
                        <label class="titulo" for="NOME">SEGURADORA/CORRETORA</label>
                        <label class="info" for=""><%=sobreEstagio.getSeguradora()%></label>
                    </div>
                </div>
                <%}%>
        </div>
                <div class="container button ">
                    <button onclick="window.print()" class="waves-effect waves-light btn orange accent-3" >Imprimir</button><br><br>
                </div>
                
    </main>


        <footer class="page-footer orange accent-3 center notprint" style="padding-top: 0px;">
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
