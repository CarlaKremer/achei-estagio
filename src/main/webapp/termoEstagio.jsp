<%-- 
    Document   : termoEstagio
    Created on : 29 de out de 2021, 18:12:43
    Author     : carla
--%>

<%@page import="Model.Supervisor"%>
<%@page import="Model.SobreEstagio"%>
<%@page import="Model.Representante"%>
<%@page import="Model.UnidadeConcedente"%>
<%@page import="Model.Estagiario"%>
<%@page import="Model.PlanoEstagio"%>
<%@page import="Model.Estagiario"%>
<%@page import="Model.Estagiario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%
    Estagiario estagiario;
    Representante representante;
    Supervisor supervisor;
    UnidadeConcedente unidadeConcedente;
    SobreEstagio sobreEstagio;
    
    HttpSession sessao = request.getSession();
    estagiario = (Estagiario) sessao.getAttribute("ESTAGIARIO");
    representante = (Representante) sessao.getAttribute("REPRESENTANTE");
    supervisor = (Supervisor) sessao.getAttribute("SUPERVISOR");
    unidadeConcedente = (UnidadeConcedente) sessao.getAttribute("UNIDADECONCEDENTE");
    sobreEstagio = (SobreEstagio) sessao.getAttribute("SOBREESTAGIO");
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
    <style type="text/css">
    @media print {
        header, footer, nav, aside, .button {
           display: none;
        }
     }
    </style>
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
    <div class="container ">


        <div class="row col s12 ">
            <h2 style="font-size: 40px; "><b>Termo de Compromisso de Estágio Obrigatório</b> </h2>
            <h3 style="font-size: 15px; ">Pelo presente instrumento particular e na melhor forma de direito, as partes a seguir nomeadas:</h3>
            <h3 style="font-size: 15px; "><b>Instituição de Ensino: IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO – UNISAGRADO,</b> associação civil de assistência social, cultural e educacional, declarada de utilidade pública e de fins não lucrativos,inscrita no<b> CNPJ: 61.015.087/0008-31,</b>com
                sede na <b>Rua Irmã Arminda, 10-50, Jd. Brasil, Bauru/SP, CEP: 17011-160,</b> fone: (14) 2107-7000, site: www.unisagrado.edu.br, neste ato representado por Flavia Dias Gomes, assistente administrativo.</h3>


            <table>
                <thead>
                    <tr>
                        <th><h5>Concedente do Estágio</h5></th>
                    </tr>
                </thead>
        
                <tbody>
                    <tr>
                        <td><b>Razão Social:</b></td>
                        <td><%=unidadeConcedente.getRazaoSocial()%></td>
                        <td><b></b></td>
                        <td></td>
                    </tr>
                    <tr>
                        
                        <td><b>Endereço</b></td>
                        <td><%=unidadeConcedente.getEndereco().getRua()%></td>
                        <td><b>Bairro</b></td>
                        <td><%=unidadeConcedente.getEndereco().getBairro()%></td>
                    </tr>
                    <tr>
                        <td><b>CEP:</b></td>
                        <td><%=unidadeConcedente.getEndereco().getCep()%></td>
                        <td><b>Fone:</b></td>
                        <td><%=unidadeConcedente.getTelefone1()%></td>
                    </tr>
                    <tr>
                        <td><b>CNPJ:</b></td>
                        <td><%=unidadeConcedente.getCnpj()%></td>
                        <td><b>Cidade/UF:</b></td>
                        <td><%=unidadeConcedente.getEndereco().getCidade()%></td>
                    </tr>
                    <tr>
                        <td><b>Representada por:</b></td>
                        <td><%=representante.getPessoaAutorizada()%></td>
                        <td><b>Cargo:</b></td>
                        <td><%=representante.getCargo()%></td>
                    </tr>
                    <tr>
                        <td><b>Responsável pelo estagiário na empresa <br> (Supervisor Local):</b></td>
                        <td><%=supervisor.getNome()%></td>
                        <td><b>Cargo:</b></td>
                        <td><%=supervisor.getCargo()%></td>
                    </tr>
                    <tr>
                        <td><b>E-mail:</b></td>
                        <td><%=supervisor.getEmail()%></td>
                    </tr>
                </tbody>
            </table>
            <br><br>
            <table>
                <thead>
                    <th>
                        <h5>Estagiário</h5>
                    </th>
                </thead>
                
                <tbody>
                    <tr>
                        <td><b>Nome:</b></td>
                        <td><%=estagiario.getNome()%></td>
                    </tr>
                    <tr>
                        <td><b>Endereço:</b></td>
                        <td><%=estagiario.getEndereco().getRua()%></td>
                        <td><b>Cidade/UF:</b></td>
                        <td><%=estagiario.getEndereco().getCidade()%></td>
                    </tr>
                    <tr>
                        <td><b>Fone:</b></td>
                        <td><%=estagiario.getTelefone1()%></td>
                    </tr>
                    <tr>
                        <td><b>Curso:</b></td>
                        <td><%=estagiario.getCurso()%></td>
                    </tr>
                    <tr>
                        <%if(estagiario.getDisciplina()!= null){%>
                        <td><b>Estágio:</b></td>
                        <td><%=estagiario.getDisciplina()%></td>
                        <%}%>
                    </tr>
                    
                </tbody>

            </table>
                    <p>Celebram entre si este TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, convencionando as cláusulas e condições seguintes:</p>
                    <p><b>CLÁUSULA 1ª –</b>Este instrumento tem por objetivo formalizar as condições básicas para a realização de estágio de estudante, com interveniência e assinatura da INSTITUIÇÃO DE ENSINO e particularizar a relação jurídica especial
                        existente entre o(a) ESTUDANTE e a CONCEDENTE, caracterizando a não vinculação empregatícia, nos termos da legislação vigente.</p>
                    <p><b>CLÁUSULA 2ª –</b>O referido <b>estágio obrigatório</b> é de interesse curricular e pedagogicamente útil, entendido o estágio como uma atividade de aprendizagem social, profissional e cultural, compatíveis com o contexto básico da
                        profissão, ao qual seu curso se refere e integra o Processo de Ensino Aprendizagem, nos termos da Lei 11.788/08 e da Lei nº. 9.394/96 (Diretrizes e Bases da Educação Nacional) e sua regulamentação.</p>
                    <p><b>CLÁUSULA 3ª –</b>Ficam compromissadas entre as partes as seguintes condições para a realização do Estágio: a) As atividades de estágio a serem cumpridas pelo(a) estagiário(a) serão desenvolvidas pelo período de:<%=sobreEstagio.getInicioEstagio()%> até <%=sobreEstagio.getFimEstagio()%>
                        , podendo ser prorrogada dentro do semestre, nos termos da Cláusula 10ª do presente termo. b) Dias da semana: <%
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
                    %>. Horário:<%
                            if(sobreEstagio.isHorasVariadas())
                                out.print("Horários Variados");
                            else
                                out.print("De "+ sobreEstagio.getHoraEntrada() + " até " + sobreEstagio.getHoraSaida());
                        %>, totalizando <%=sobreEstagio.getHorasSemanais()%> semanais, de forma compatível com o horário escolar do(a) estagiário(a).
                        c) Fica sob o encargo da INSTITUIÇÃO DE ENSINO, nos termos do art. 9º., IV e parágrafo único da Lei 11.788/08, a efetivação de contrato de seguro para acidentes pessoais ao(a) estagiário(a), conforme Apólice de Seguro nº: 2000683-
                        Seguradora/Corretora: Delcossa Acidentes Pessoais. d) Atividades do estágio: em anexo.</p>
                    <p><b>CLÁUSULA 4ª –</b> Durante a realização do presente
                        <b>estágio obrigatório </b>não haverá qualquer tipo de contraprestação pecuniária concedida pela UNIDADE CONCEDENTE ao supracitado ESTAGIÁRIO(A), nos moldes do art. 12 da Lei 11.788/08.</p>
                    <p><b>CLÁUSULA 5ª –</b>Na vigência do presente Termo, o(a) ESTAGIÁRIO(A) está incluído(a) na cobertura do Seguro contra Acidentes Pessoais, nos termos da alínea “c” da Cláusula 3ª do presente pacto.</p>
                    <p><b>CLÁUSULA 6ª –</b>Cabe à INSTITUIÇÃO DE ENSINO, nos termos do artigo 7º da Lei 11.788/08:
                        <p>a) Avaliar as instalações da parte concedente do estágio e sua adequação à formação cultural e profissional do educando; </p>
                        <p>b) Indicar professor(a) orientador(a), da área a ser desenvolvida no estágio, como responsável pelo acompanhamento e avaliação das atividades do(a) ESTAGIÁRIO(A); </p>
                        <p>c) Acompanhar, orientar e avaliar o estágio, visando à complementação do ensino e da aprendizagem; </p>
                        <p>d) Elaborar normas complementares e instrumentos de avaliação dos estágios de seus educandos; </p>
                        <p>e) Exigir do educando a apresentação periódica, em prazo não superior a seis (06) meses, de relatório das atividades; </p>
                    </p>
                    <p><b>CLÁUSULA 7ª –</b> Cabe à CONCEDENTE:</p>
                    <p>a) Proporcionar ao(a) ESTAGIÁRIO(A) atividades de aprendizagem social, profissional e cultural, compatível com o Curso;</p>
                    <p>b) Proporcionar à instituição de ensino, sempre que solicitado, subsídios que possibilitem o acompanhamento, a supervisão e avaliação do estágio;</p>
                    <p>) Enviar relatório de atividades à instituição de ensino com vista obrigatória ao(a) ESTAGIÁRIO(A), com periodicidade mínima de 6 (seis) meses, bem como na conclusão do estágio, ou, se for o caso, na rescisão antecipada do presente
                        Termo de Compromisso de Estágio;</p>
                    <p>d) Indicar funcionário de seu quadro de pessoal, com formação ou experiência profissional na área de conhecimento desenvolvida no curso do estagiário, para orientar e supervisionar o estudante;</p>
                    <p>e) Solicitar ao(a) ESTAGIÁRIO(A), a qualquer tempo, documentos comprobatórios da regularidade da situação escolar, uma vez que o abandono, a desistência, a transferência do curso ou o trancamento da matrícula constituem motivos de
                        imediata rescisão.</p>
                    <p><b>CLÁUSULA 8ª – </b>Cabe ao(a) ESTAGIÁRIO(A):</p>
                    <p>a) Cumprir, com todo empenho e interesse, toda programação estabelecida para seu estágio;</p>
                    <p>b) Observar e obedecer às normas internas da CONCEDENTE;</p>
                    <p>c) Apresentar documentos comprobatórios da regularidade da sua situação escolar, sempre que solicitado pelas partes;</p>
                    <p>d) Manter rigorosamente atualizado seus dados cadastrais e escolares, junto à INSTITUIÇÃO DE ENSINO e CONCEDENTE;</p>
                    <p>e) Informar de imediato, qualquer alteração na sua situação escolar, tais como o abandono, a desistência, a transferência do curso ou o trancamento da matrícula à CONCEDENTE do estágio;</p>
                    <p>f) Encaminhar, obrigatoriamente, à INSTITUIÇÃO DE ENSINO e à CONCEDENTE, uma via do presente instrumento, devidamente assinado pelas partes;</p>
                    <p>g) Preencher, obrigatoriamente, o Relatório de Acompanhamento do Estágio, referente às suas atividades, entregando-o à CONCEDENTE e à INSTITUIÇÃO DE ENSINO até o prazo final para a inserção das notas no Diário de Classe Online</p>
                    <p>h) Se compromete o(a) aluno(a)-estagiário(a) a comparecer no respectivo local de estágio sob suas próprias expensas;</p>
                    <p>i) Responder civil e/ou criminalmente pelos danos por ele(a) causado nas dependências da CONCEDENTE.</p>
                    <p> <b>CLÁUSULA 9ª –</b>Os Supervisores da INSTITUIÇÃO DE ENSINO e da CONCEDENTE possuem a atribuição de organizar, supervisionar, acompanhar, aprovar e viabilizar a realização do objeto do presente convênio, de forma que, em campo, os
                        estágios e o aprimoramento do(a) aluno(a) alcancem o melhor desempenho possível.</p>

                    <p><b>CLÁUSULA 10ª –</b> O presente instrumento terá duração de, no máximo, um (01) semestre letivo, não podendo ser prorrogado pela natureza do estágio.</p>
                    <p><b>Parágrafo Primeiro -</b>O estudante poderá cumprir jornada de, no máximo, seis (06) horas diárias e trinta (30) semanais.</p>
                    <p><b>Parágrafo Segundo –</b>O não cumprimento de quaisquer cláusulas presentes no TERMO DE COMPROMISSO DE ESTÁGIO constitui motivos de imediata rescisão.</p>
                    <p><b>CLÁUSULA 11ª –</b>Havendo necessidade de rescisão contratual por qualquer das partes, deverá o(a) interessado(a) comunicar a intenção de fazê-lo previamente, por escrito, com pelo menos 10 (dez) dias de antecedência.</p>
                    <p><b>CLÁUSULA 12ª –</b>Os beneficiários de tal pacto não possuirão qualquer privilégio além dos previstos para os demais estudantes da INSTITUIÇÃO DE ENSINO.</p>
                    <p><b>CLÁUSULA 13ª – </b>Não será concedido gratuidade ou desconto por parte da INSTITUIÇÃO DE ENSINO em taxas acadêmicas e de biblioteca.
                    </p>
                    <p><b>CLÁUSULA 14ª –</b>Só poderão participar do presente termo de compromisso de estágio o(a) estudante que esteja em situação regular perante à INSTITUIÇÃO DE ENSINO.</p>
                    <p><b>CLÁUSULA 15ª –</b>A eventual tolerância da INSTITUIÇÃO DE ENSINO não implicará novação, perdão, renúncia, alteração ou modificação do presente pacto, sendo o evento ou omissão considerados, para os fins de direito, como mera liberalidade
                        da INSTITUIÇÃO DE ENSINO, não implicando, na renúncia ou desistência de exigir o cumprimento das disposições aqui contidas ou do direito de requerer a total execução de cada uma das obrigações contidas neste contrato.</p>
                    <p><b>CLÁUSULA 16ª –</b> Fica eleito o Foro da Comarca de Bauru/SP, para dirimir qualquer questão resultante deste pacto.</p>
                    <p>E, por estarem de inteiro e comum acordo com as condições estabelecidas neste TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, as partes o assinam em três (03) vias de igual teor.</p>

                    <p>Bauru,______ de _________ de ________.</p>

                </div>
                    
                <div class="row center ">
                    <div class="col s6">
                        <p><b>IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO - UNISAGRADO</b></p>
                        <p>FLÁVIA DIAS GOMES</p>
                        <p>ASSISTENTE ADMINISTRATIVO</p><br><br>
                        <p><b><%=estagiario.getNome()%></b></p>
                    </div>

                    <div class="col s6">
                        <p><b><%=unidadeConcedente.getRazaoSocial()%></b></p>
                    <p><%=representante.getPessoaAutorizada()%></p>
                    <p><%=representante.getCargo()%></p>
                    </div>
            </div>
            <div class="row center ">
                 <div class="col s6">
                         <p>_____________________________________________________________________</p>
                        <p><b>1ª Testemunha</b></p>
                        <p>CPF/MF:__________________________________________________</p>
                    </div>
                <div class="col s6">
                     <p>_____________________________________________________________________</p>
                        <p><b>2ª Testemunha</b></p>
                        <p>CPF/MF:__________________________________________________</p>
                    </div>
            </div>
        <div class="container button ">
            <button onclick="window.print()" class="waves-effect waves-light btn orange accent-3" >Imprimir</button><br><br>
        </div>
        </div>
    </div>
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
</body>

</html>
