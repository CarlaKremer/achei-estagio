<%@page import="Model.PlanoEstagio"%>
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
                <li><a href="doc_final.jsp">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right">arrow_drop_down</i></a></li>
              </ul>
        </div>
    </nav>
    <!--navbar--->

    <main>
    <div class="container">
        <h2 style="font-size: 40px;"> <b>Plano de Estágio Obrigatório</b></h2>
        <div class="row">
            <%
                String erro ="";
                erro = (String) request.getAttribute("ERRO");
                String semestre = "1";
                
                if (erro != null){
                    semestre = (String) request.getAttribute("SEMESTRE");
            %>
            <div>
                <div class="row" id="alert_box">
                    <div class="col s12 m12">
                      <div class="card red lighten-1 ">
                        <div class="row">
                          <div class="col s12 m10">
                            <div class="card-content white-text ">
                                <p class><%=erro%></p>

                          </div>
                        </div>
                      </div>
                     </div>
                    </div>
                </div>
            </div>
            <%}%>
            <form action="ServPlanoEstagio">
            <div class="input-field col s12">
                <select name="optSemestre">
                    <%
                        for (int i = 1; i < 11; i++) {
                            if (Integer.parseInt(semestre) == i){%>
                            <option value="<%=i%>" selected="" ><%=i%>º Semestre</option>
                        <%}else{%>
                        <option value="<%=i%>" ><%=i%>º Semestre</option>
                    <%
                            }
                        }
                    %>
                </select>
                <label class="black-text">Semestre Letivo</label>
            </div>
            <div class="row">
                <div class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea name="txtAtvDesenvolvida" id="atvDesenvolvida" class="materialize-textarea"></textarea>
                            <label class="black-text " for="atvDesenvolvida ">Atividades a serem desenvolvidas (detalhar):</label>
                        </div>
                    </div>
                    <button class="waves-effect waves-light btn orange accent-3" type="submit" >Enviar</button>
                </div>
                </form>
            </div>
        </div>

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