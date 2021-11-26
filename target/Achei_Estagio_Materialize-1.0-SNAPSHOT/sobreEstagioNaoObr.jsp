<%@page import="Model.Estagiario"%>
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

    <div class="container">
        <div class="row col s12">
            <form action="ServSobreEstagioNaoObr" method="POST">
            <div class="row col s12">
                <h3 style="font-size: 30px;"><b>Sobre o Estágio</b></h3>
            </div>
            <div class="row col s12">
                <div class="row col s6">
                    <input id="inicioEstagio" type="text" class="datepicker" name="dtInicioEstagio" required>
                    <label class="black-text " for="inicioEstagio">Início</label>
                </div>
                <div class="row col s6">
                    <input id="fimEstagio" type="text" class="datepicker" name="dtFimEstagio" required>
                    <label class="black-text " for="fimEstagio">Fim</label>
                </div>
            </div>
            <div class="row col s12">
                <h3 style="font-size: 30px;"><b>Dias da Semana</b></h3>
                <p>
                   <label>
                        <input value="1" type="checkbox" class="filled-in" id="Domingo" name="cbDomingo" />
                        <span class="black-text">Domingo</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="2" type="checkbox" class="filled-in" id="Segunda" name="cbSegunda" />
                        <span class="black-text">Segunda-feira</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="3" type="checkbox" class="filled-in" id="Terca" name="cbTerca"/>
                        <span class="black-text">Terça-feira</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="4" type="checkbox" class="filled-in" id="Quarta" name="cbQuarta"/>
                        <span class="black-text">Quarta-feira</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="5" type="checkbox" class="filled-in" id="Quarta" name="cbQuinta"/>
                        <span class="black-text">Quinta-feira</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="6" type="checkbox" class="filled-in" id="Sexta" name="cbSexta"/>
                        <span class="black-text">Sexta-feira</span>
                    </label>
                </p>
                <p>
                    <label>
                        <input value="0" type="checkbox" class="filled-in" id="Sabado" name="cbSabado" />
                        <span class="black-text">Sábado</span>
                    </label>
                </p>
                <p>
                    <p class="black-text">ou</p>
                    <label>
                        <input value="9" type="checkbox" class="filled-in" id="diasVariados" name="cbDiasVariados" />
                        <span class="black-text">Dias Variados</span>
                    </label>
                </p>
            </div>
            <div class="col s12">
            <div class="row">
                <h3 style="font-size: 30px;"><b>Horário</b></h3>
                <div class="row col s4">
                    <input id="horaEntrada" type="text" class="timepicker" name="dtHoraEntrada" >
                    <label class="black-text " for="horaEntrada">Hora de Entrada</label>
                </div>
                <div class="row col s4">
                    <input id="horaSaida" type="text" class="timepicker" name="dtHoraSaida">
                    <label class="black-text " for="horaSaida">Hora de Saída</label>
                </div>
            </div>
                <p class="black-text">ou</p>
                <p>
                  <label>
                  <input value="10" type="checkbox" class="filled-in" id="horasVariadas" name="cbHorasVariadas"/>
                  <span class="black-text">Horários Variados</span>
                </label>
                </p>
            </div>
            <div class="row col s12">
                 <h3 style="font-size: 30px;"><b>Carga horária semanal</b></h3>
                <p class="range-field">
                    <label class="black-text" for="cargaHoraria">Arraste até o número referente a carga horária</label>
                    <input type="range" id="test5" min="0" max="30" id="horasSemanais" name="hrHorasSemanais" required/>
                </p>
            </div>
                
            
            <div class="row col s12">
                <h3 style="font-size: 30px;"><b>Bolsa Auxílio</b></h3>
                <div class="input-field col s4">
                    <input id="bolsa" type="text" class="validate" name="txtBolsa" required>
                    <label class="black-text" for="bolsa">Valor Bolsa Auxílio</label>
                </div>
                <div class="input-field col s4">
                    <input id="apolice" type="text" class="validate" name="txtApolice" required>
                    <label class="black-text" for="apolice">Apólice de Seguro</label>
                </div>
                <div class="input-field col s4">
                    <input id="seguradora" type="text" class="validate" name="txtSeguradora" required>
                    <label class="black-text" for="seguradora">Seguradora/Corretora</label>
                </div>
            </div>
            
                <button class="waves-effect waves-light btn orange accent-3" type="submit" >Avançar</button>
           </form>
       
        </div>
    </div>
    </div>

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
    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>
    <script>
        $(".dropdown-trigger").dropdown();
    </script>
</body>

</html>