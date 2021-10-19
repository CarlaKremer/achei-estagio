<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Achei Estágio</title>
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
            <a href="#!" class="brand-logo">Achou Estágio</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="index.html ">Home</a></li>
                <li><a href="badges.html">Documentação Final</a></li>
                <!-- Dropdown Trigger -->
                <li>
                    <a class="dropdown-trigger" href="#!" data-target="dropdown1">Requerimentos<i class="material-icons right"></i></a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">

        <form action="ServUnidadeConcedente" method="POST">
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
                    <label class="black-text" for="cidadeAluno">Cidade</label>
                </div>
            </div>
            <div class="row">
                <div class="row col s3">
                    <input id="cepEmpresa" type="text" class="validate" name="txtCep" required>
                    <label class="black-text" for="enderecoAluno">CEP</label>
                </div>
                <div class="row col s4">
                    <input id="telefone1Empresa" type="text" class="validate" name="txtTelefoneUnidade1" required>
                    <label class="black-text" for="bairroAluno">Telefone 1</label>
                </div>
                <div class="row  col s4">
                    <input id="telefone2Empresa" type="text" class="validate" name="txtTelefoneUnidade2" required>
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
                    <label class="black-text" for="emailSupervisor]">E-mail</label>
                </div>
            </form>
            </div>
            <!--<a class="waves-effect waves-light btn orange accent-3" href="sobreEstagio.html"><i class="material-icons left"></i>Avançar >>></a>-->
            <button class="waves-effect waves-light btn orange accent-3" type="submit" >Avançar</button>
        </div>




    </div>
    <footer class="page-footer orange accent-3 ">

        <div class="footer-copyright">
            <div class="container">
                © 2014 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
        </div>
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
</body>

</html>