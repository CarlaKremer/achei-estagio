<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Est�gio</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
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
            <a href="#!" class="brand-logo">Achou Est�gio</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.html ">Home</a></li>
                <li><a href="badges.html">Documenta��o Final</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right"></i></a></li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <div class="row col s12">
            <form action="ServSobreEstagio" method="POST">
            <div class="row col s12">
                <h3 style="font-size: 30px;"><b>Sobre o Est�gio</b></h3>
            </div>
            <div class="row col s12">
                <div class="row col s6">
                    <input id="inicioEstagio" type="text" class="datepicker" name="dtInicioEstagio" required>
                    <label class="black-text " for="inicioEstagio">In�cio</label>
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
                  <input type="checkbox" class="filled-in" id="Domingo" name="cbDomingo" />
                  <span class="black-text">Domingo</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Segunda" name="cbSegunda" />
                  <span class="black-text">Segunda-feira</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Terca" name="cbTerca"/>
                  <span class="black-text">Ter�a-feira</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Quarta" name="cbQuarta"/>
                  <span class="black-text">Quarta-feira</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Quarta" name="cbQuinta"/>
                  <span class="black-text">Quinta-feira</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Sexta" name="cbSexta"/>
                  <span class="black-text">Sexta-feira</span>
                </label>
                </p>
                <p>
                    <label>
                  <input type="checkbox" class="filled-in" id="Sabado" name="cbSabado" />
                  <span class="black-text">S�bado</span>
                </label>
                </p>
            </div>
            <div class="row">
                <div class="row col s4">
                    <input id="horaEntrada" type="text" class="timepicker" name="dtHoraEntrada required >
                    <label class="black-text " for="horaEntrada">Hora de Entrada</label>
                </div>
                <div class="row col s4">
                    <input id="horaSaida" type="text" class="timepicker" name="dtHoraSaida" required>
                    <label class="black-text " for="horaSaida">Hora de Sa�da</label>
                </div>
            </div>
            <div class="row col s12">
                <p>
                  <label>
                  <input type="checkbox" class="filled-in" id="horasVariadas" name="cbHorasVariadas"/>
                  <span class="black-text">Hor�rios Variados</span>
                </label>
                </p>
                <p class="range-field">
                    <input type="range" id="test5" min="0" max="30" id="horasSemanais" name="hrHorasSemanais" required/>
                </p>

            </div>
                <button class="waves-effect waves-light btn orange accent-3" type="submit" >Avan�ar</button>
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
    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>
    <script>
        $(".dropdown-trigger").dropdown();
    </script>
</body>

</html>