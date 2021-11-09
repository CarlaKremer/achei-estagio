<%-- 
    Document   : doc_final
    Created on : 9 de nov de 2021, 10:40:15
    Author     : carla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                <li><a href="#">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right">arrow_drop_down</i></a></li>
              </ul>
        </div>
    </nav>
    <!--navbar--->
    <main>
        <div class="container">
            <h2 style="font-size: 40px;"><b>Documentação Final Estágio</b> </h2>
 
            <form action="">
                <div class="file-field input-field" >
                    <p style="font-size: 20px;">Ficha de frequência</p>
                    <div class="btn orange accent-3">
                        <span>File</span>
                        <input type="file">
                    </div>
                    <div class="file-path-wrapper ">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
                <div class="file-field input-field">
                    <p style="font-size: 20px;">Declaração</p>
                    <div class="btn orange accent-3">
                        <span>File</span>
                        <input type="file">
                    </div>
                    <div class="file-path-wrapper ">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
                <br><button class="waves-effect waves-light btn orange accent-3 right" type="submit" >Enviar</button>
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
