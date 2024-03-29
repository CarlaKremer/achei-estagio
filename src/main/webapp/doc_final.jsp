<%-- 
    Document   : doc_final
    Created on : 9 de nov de 2021, 10:40:15
    Author     : carla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Email"%>
<!DOCTYPE html>
<html lang="pt-br">
<%
   String enviou;
   enviou = String.valueOf(request.getAttribute("ENVIO"));
   String retornoUsuarioErro ="Não foi possível enviar os arquivos, tente novamente." ;
   String retornoUsuarioSucesso = "Arquivos enviados com sucesso! Você já pode sair desta página.";
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>
    <link rel= "shortcut icon" href= "Imagens/imgLogo.ico " type= "image/x-icon">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="css/footer.css">
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
                <li><a href="doc_final.jsp">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right">arrow_drop_down</i></a></li>
              </ul>
        </div>
    </nav>
    <!--navbar--->
    <main>
        <div class="container">
            <h2 style="font-size: 40px;"><b>Documentação Final Estágio</b> </h2>
            
            <%if (enviou == "true"){%>
            <div>
                <div class="row" id="alert_box">
                    <div class="col s12 m12">
                      <div class="card green lighten-1 ">
                        <div class="row">
                          <div class="col s12 m10">
                            <div class="card-content white-text ">
                                <p class><%=retornoUsuarioSucesso%></p>
                          </div>
                        </div>
                      </div>
                     </div>
                    </div>
                </div>
            </div>
            <%}else if(enviou == "false"){%>
             <div>
                <div class="row" id="alert_box">
                    <div class="col s12 m12">
                      <div class="card red lighten-1 ">
                        <div class="row">
                          <div class="col s12 m10">
                            <div class="card-content white-text ">
                                <p class><%=retornoUsuarioErro%></p>
                          </div>
                        </div>
                      </div>
                     </div>
                    </div>
                </div>
            </div>
            <%}%>
            
            <form action="ServEmail" method="POST" enctype="multipart/form-data">
                <div class="row">
                    <div class="input-field col s3">
                        <input id="id" type="text" class="validate" name="txtId" required
                        <label class="black-text" for="txtId" >ID</label>
                    </div>
                    <div class="input-field col s9">
                        <input id="nome" type="text" class="validate" name="txtNome" required>
                        <label class="black-text" for="txtNome" >Nome</label>
                    </div>
                </div>
                <div class="file-field input-field" >
                    <p style="font-size: 20px;">Ficha de frequência</p>
                    <p style="font-size: 12px;">Anexe um arquivo em pdf</p>
                    <div class="btn orange accent-3">
                        <span>Arquivo</span>
                        <input  name="file" type="file" required>
                    </div>
                    <div class="file-path-wrapper ">
                        <input class="file-path validate"  type="text">
                    </div>
                </div>
                <div class="file-field input-field" >
                    <p style="font-size: 20px;">Declaração</p>
                    <p style="font-size: 12px;">Anexe um arquivo em pdf</p>
                    <div class="btn orange accent-3">
                        <span>Arquivo</span>
                        <input  name="file2" type="file" required>
                    </div>
                    <div class="file-path-wrapper ">
                        <input class="file-path validate"  type="text">
                    </div>
                </div>
                <br><button class="waves-effect waves-light btn orange accent-3 right" >Enviar</button><br><br>
            </form>
        </div>
    </main>
    
    
    <footer class="page-footer orange accent-3 center" style="padding-top: 0px;">
            © 2021 Copyright Text
    </footer>
    <script>
        M.AutoInit();
    </script>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
    <script>
        $(document).ready(function(){
          $('.timepicker').timepicker();
          $('.datepicker').datepicker();
        });
    </script>
    <script>
        $(document).ready(function() {
            $('select').formSelect();
        });
    </script>
     
    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>
    <script>
        $(".dropdown-trigger").dropdown();
    </script>
</body>

</html>
