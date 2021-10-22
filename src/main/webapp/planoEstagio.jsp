<%@page import="Model.PlanoEstagio"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/footer.css">

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
                        System.out.println("jsp:"+semestre);
                        System.out.println("jsp:"+erro);
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
            <a class="waves-effect waves-light btn orange accent-3" href="impressaoDocEstagio.html"><i class="material-icons left"></i>Enviar >>></a>
        </div>

    </div>
</main>

    <footer class="page-footer orange accent-3 ">

        <div class="footer-copyright ">
            <div class="container ">
                © 2014 Copyright Text
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