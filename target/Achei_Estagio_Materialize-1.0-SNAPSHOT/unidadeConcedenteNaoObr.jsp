<%@page import="Model.Estagiario"%>
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
    <div class="container">

        <form action="ServUnidadeConcedenteNaoObr" method="POST">
        <div class="row col s12">
            <h2 style="font-size: 40px;"><b>Unidade Concedente</b> </h2>
            <div class="row">
                <div class="row col s6">
                    <input id="nomeEmpresa" type="text" class="validate" name="txtRazaoSocial" required>
                    <label class="black-text" for="nomeEmpresa">Razão Social</label>
                </div>
                <div class="row col s6">
                    <input id="cnpjEmpresa" type="text" class="validate" name="txtCnpj" required>
                    <label class="black-text" for="cnpj">CNPJ</label>
                </div>
            </div>
            <div class="row">
                <div class="row col s5">
                    <input id="ederecoEmpresa" type="text" class="validate" name="txtRua" required>
                    <label class="black-text" for="enderecoAluno">Endereço</label>
                </div>
                <div class="row col s3">
                    <input id="bairrroEmpresa" type="text" class="validate" name="txtBairro" required>
                    <label class="black-text" for="bairroAluno">Bairro</label>
                </div>
                <div class="row col s4">
                    <input id="cidadeEmpresa" type="text" class="validate" name="txtCidade" required>
                    <label class="black-text" for="cidadeAluno">Cidade/Estado</label>
                </div>
            </div>
            <div class="row">
                <div class="row col s3">
                    <input id="cepEmpresa" type="text" class="validate" name="txtCep" required>
                    <label class="black-text" for="enderecoAluno">CEP</label>
                </div>
                <div class="row col s4">
                    <input id="telefone1Empresa" maxlength="15" type="text" class="validate" name="txtTelefoneUnidade1" required>
                    <label class="black-text" for="bairroAluno">Telefone 1</label>
                </div>
                <div class="row  col s4">
                    <input id="telefone2Empresa" maxlength="15" type="text" class="validate" name="txtTelefoneUnidade2" required>
                    <label class="black-text" for="cidadeAluno">Telefone 2</label>
                </div>
            </div>
            <div class="row">
                <h3 style="font-size: 30px;"><b>Representante Legal</b></h3>
                <input id="nomeRepresentante" type="text" class="validate" name="txtPessoaAutorizada" required>
                <label class="black-text" for="nomeRepresentante">Pessoa autorizada para assinatura do TCE</label>
            </div>
            <div class="row">
                <div class="row col s4">
                    <input id="cargoRepresentante" type="text" class="validate" name="txtCargoRepresentante" required>
                    <label class="black-text" for="cargoRepresentante">Cargo</label>
                </div>
                <div class="row col s4">
                    <input id="rgRepresentante" type="text" class="validate" name="txtRgRepresentante" required>
                    <label class="black-text" for="rgRepresentante">RG</label>
                </div>
                <div class="row  col s4">
                    <input id="cpfRepresentante" type="text" class="validate" name="txtCpfRepresentante" required>
                    <label class="black-text" for="cpfRepresentante">CPF</label>
                </div>
            </div>
            <div class="row">
                <h3 style="font-size: 30px;"><b>Supervisor</b></h3>
                <input id="nomeSupervisor" type="text" class="validate" name="txtNomeSupervisor" required>
                <label class="black-text" for="nomeSupervisor">Nome</label>
            </div>
            <div class="row">
                <div class="row col s4">
                    <input id="cargoSupervisor" type="text" class="validate" name="txtCargoSupervisor" required>
                    <label class="black-text" for="cargoSupervisor">Cargo</label>
                </div>
                <div class="row col s4">
                    <input id="emailSupervisor" type="email" class="validate" name="txtEmailSupervisor" required>
                    <label class="black-text" for="emailSupervisor">E-mail</label>
                </div>
            </form>
            </div>
            <button class="waves-effect waves-light btn orange accent-3" type="submit" >Avançar</button>
        </div>




    </div>
    <footer class="page-footer orange accent-3 center" style="padding-top: 0px;">
            © 2021 Copyright Text
    </footer>
    <script>
        M.AutoInit();
    </script>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <!-- Compiled and minified JavaScript -->
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js "></script>

    <script>
        $(".dropdown-trigger").dropdown();
    </script>
    <script>
        function mascaraTel(o,f){
            v_obj=o;
            v_fun=f;
            setTimeout("execmascaraTel()",1);
        }
        function execmascaraTel(){
            v_obj.value=v_fun(v_obj.value);
        }
        function mtel(v){
            v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
            v=v.replace(/^(\d{2})(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
            v=v.replace(/(\d)(\d{4})$/,"$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
            return v;
        }
        function id( el ){
                return document.getElementById( el );
        }
        window.onload = function(){
                id('telefone1Empresa').onkeyup = function(){
                        mascaraTel( this, mtel );
                }
                id('telefone2Empresa').onkeyup = function(){
                        mascaraTel( this, mtel );
                }
        }
    </script>
</body>

</html>