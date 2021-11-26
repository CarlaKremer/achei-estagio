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
        
        <h2 style="font-size: 40px;"><b>Unidade Concedente</b> </h2>
        <%
                String erro ="";
                erro = (String) request.getAttribute("ERRO");
                String razaoSocial = "" , cnpj= "", telefone1= "", telefone2= "", endereco = "",bairro= "", cidade = "", cep = "",
                        pessoaAutorizada= "", cargoRepresentante="", rg="", cpf="",
                        nomeSupervisor="", cargoSupervisor="", email="";
                if (erro != null){
                razaoSocial = (String) request.getAttribute("RAZAOSOCIAL");
                cnpj = (String) request.getAttribute("CNPJ");
                telefone1 = (String) request.getAttribute("TELEFONE1");
                telefone2 = (String) request.getAttribute("TELEFONE2");
                endereco = (String) request.getAttribute("ENDERECO");
                bairro = (String) request.getAttribute("BAIRRO");
                cidade = (String) request.getAttribute("CIDADE");
                cep = (String) request.getAttribute("CEP");
                pessoaAutorizada = (String) request.getAttribute("PESSOAAUTORIZADA");
                cargoRepresentante = (String) request.getAttribute("CARGOREPRESENTANTE");
                rg = (String) request.getAttribute("RG");
                cpf = (String) request.getAttribute("CPF");
                nomeSupervisor = (String) request.getAttribute("NOMESUPERVISOR");
                cargoSupervisor = (String) request.getAttribute("CARGOSUPERVISOR");
                email = (String) request.getAttribute("EMAIL");
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
        <form action="ServUnidadeConcedente" method="POST">
        <div class="row col s12">
            <div class="row">
                <div class="row col s6">
                    <input value="<%if(razaoSocial != ""){%><%=razaoSocial%><%}%>" id="nomeEmpresa" type="text" class="validate" name="txtRazaoSocial" required>
                    <label class="black-text" for="nomeEmpresa">Razão Social</label>
                </div>
                <div class="row col s6">
                    <input value="<%if(cnpj != ""){%><%=cnpj%><%}%>" id="cnpjEmpresa" type="text" class="validate" name="txtCnpj" required>
                    <label class="black-text" for="cnpj">CNPJ</label>
                </div>
            </div>
            <div class="row">
                <div class="row col s5">
                    <input value="<%if(endereco != ""){%><%=endereco%><%}%>" id="ederecoEmpresa" type="text" class="validate" name="txtRua" required>
                    <label class="black-text" for="enderecoAluno">Endereço</label>
                </div>
                <div class="row col s3">
                    <input value="<%if(bairro != ""){%><%=bairro%><%}%>" id="bairrroEmpresa" type="text" class="validate" name="txtBairro" required>
                    <label class="black-text" for="bairroAluno">Bairro</label>
                </div>
                <div class="row col s4">
                    <input value="<%if(cidade != ""){%><%=cidade%><%}%>" id="cidadeEmpresa" type="text" class="validate" name="txtCidade" required>
                    <label class="black-text" for="cidadeAluno">Cidade</label>
                </div>
            </div>
            <div class="row">
                <div class="row col s3">
                    <input value="<%if(cep != "" && cep !=  "null"){%><%=cep%><%}%>" id="cepEmpresa" type="text" class="validate" name="txtCep" required>
                    <label class="black-text" for="enderecoAluno">CEP</label>
                </div>
                <div class="row col s4">
                    <input value="<%if(telefone1 != ""){%><%=telefone1%><%}%>" id="telefone1Empresa" maxlength="15" type="text" class="validate" name="txtTelefoneUnidade1" required>
                    <label class="black-text" for="bairroAluno">Telefone 1</label>
                </div>
                <div class="row  col s4">
                    <input value="<%if(telefone2 != ""){%><%=telefone2%><%}%>" id="telefone2Empresa" maxlength="15" type="text" class="validate" name="txtTelefoneUnidade2" required>
                    <label class="black-text" for="cidadeAluno">Telefone 2</label>
                </div>
            </div>
            <div class="row">
                <h3 style="font-size: 30px;"><b>Representante Legal</b></h3>
                <input value="<%if(pessoaAutorizada != ""){%><%=pessoaAutorizada%><%}%>" id="nomeRepresentante" type="text" class="validate" name="txtPessoaAutorizada" required>
                <label class="black-text" for="nomeRepresentante">Pessoa autorizada para assinatura do TCE</label>
            </div>
            <div class="row">
                <div class="row col s4">
                    <input value="<%if(cargoRepresentante != ""){%><%=cargoRepresentante%><%}%>" id="cargoRepresentante" type="text" class="validate" name="txtCargoRepresentante" required>
                    <label class="black-text" for="cargoRepresentante">Cargo</label>
                </div>
                <div class="row col s4">
                    <input value="<%if(rg != "" && rg !=  "null"){%><%=rg%><%}%>" id="rgRepresentante" type="text" class="validate" name="txtRgRepresentante" required>
                    <label class="black-text" for="rgRepresentante">RG </label>
                </div>
                <div class="row  col s4">
                    <input value="<%if(cpf != "" &&  cpf != "null"){%><%=cpf%><%}%>" id="cpfRepresentante" maxlength="11" type="text" class="validate" name="txtCpfRepresentante" required>
                    <label class="black-text" for="cpfRepresentante">CPF (Sem pontuação)</label>
                </div>
            </div>
            <div class="row">
                <h3 style="font-size: 30px;"><b>Supervisor</b></h3>
                <input value="<%if(nomeSupervisor != ""){%><%=nomeSupervisor%><%}%>" id="nomeSupervisor" type="text" class="validate" name="txtNomeSupervisor" required>
                <label class="black-text" for="nomeSupervisor">Nome</label>
            </div>
            <div class="row">
                <div class="row col s4">
                    <input value="<%if(cargoSupervisor != ""){%><%=cargoSupervisor%><%}%>" id="cargoSupervisor" type="text" class="validate" name="txtCargoSupervisor" required>
                    <label class="black-text" for="cargoSupervisor">Cargo</label>
                </div>
                <div class="row col s4">
                    <input value="<%if(email != ""){%><%=email%><%}%>" id="emailSupervisor" id="emailSupervisor" type="email" class="validate" name="txtEmailSupervisor" required>
                    <label class="black-text" for="emailSupervisor]">E-mail</label>
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
    <script> <!--máscara cnpj--> 
          document.getElementById('cnpjEmpresa').addEventListener('input', function (e) {
          var x = e.target.value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,3})(\d{0,3})(\d{0,4})(\d{0,2})/);
          e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + '/' + x[4] + (x[5] ? '-' + x[5] : '');
    });         
    </script>
    <script><!--Máscara rg-->
        document.getElementById('rgRepresentante').addEventListener('input', function (e){
         var x = e.target.value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,3})(\d{0,3})(\d{0,1})/);
         e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + '-' + x[4] ;
        });
    </script>
    <script><!--Máscara cep-->
        document.getElementById('cepEmpresa').addEventListener('input', function (e){
         var x = e.target.value.replace(/\D/g, '').match(/(\d{0,5})(\d{0,3})/);
         e.target.value = !x[2] ? x[1] : x[1] + '-' + x[2] ;
        });
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