<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Clandestina Manager - Divirta-se escalando seu time!</title>
        <link rel="stylesheet" type="text/css" href="Estilo/cadastroo.css">
        <script type="text/javascript" src="JavaScript/cadastro.js"></script>
    </head>
    <body>
        <div id="back">
        <img src="imagens/estadio8.jpg">
         <div id="back1">
        </div>
        </div>
        <header>
            <div id="cab1">
                <a href=<%= response.encodeURL("index.jsp")%>><img src="imagens/LOGO SEM NOME BRANCA.png"></a>
            </div>
            <nav id="cab2">
                <ul>
                    <li><a href=<%= response.encodeURL("index.jsp")%>>Página Inicial</a></li>
                </ul>
            </nav>
        </header>
        <article>
            <div id="blocoCad">
                <div id="cad">
                    <p>CADASTRO</p>
                </div>
                <div id="cad2">
                    <form id="cadU" name = "cadastro_usuario" action="Cadastro_Servlet" method="post">
                        <p><INPUT name="nomeU" type="text" placeholder=" Digite seu nome"></p>
                        <p><INPUT name="email" type="text" placeholder="Informe seu e-mail"></p>
                        <p><input name="login" type="text" placeholder="Login"></p>
                        <p><INPUT name="senha" type="password" placeholder="Senha"></p>
                        <p><INPUT name="Rsenha" type="password" placeholder="Repita sua senha"></p>
                        <p><INPUT name="nomeT" type="text" placeholder="Nome do Time"></p>
                        <label style="padding-left: 85px;">Time do coração:</label>
                        <select name="select">
                            <option value="skin red">Skin Red</option>
                            <option value="champinhos">Champinhos</option>
                            <option value="elite">Elite</option>
                            <option value="embrasados">Embrasados</option>
                            <option value="manchester city">Manchester City</option>
                            <option value="real omega">Real Ômega</option>
                            <option value="pizza hut">Pizza Hut</option>
                            <option value="sem panela">Sem Panela</option>
                            <option value="tois fc">Tois FC</option>
                            <option value="amaucho">Amaúcho</option>
                        </select>
                        <button type="button" style="position: absolute; top:90%; left: 85px; margin-left: 0;" onclick="validacao()">CONFIRMAR</button>
                        <button type="button" style="position: absolute; top:90%; left: 185px; margin-left: 0;">CANCELAR</button>
                </div>
            </div>
        </article>  
        <footer id="rodGeral">
            <ul>
                <li><a href=<%= response.encodeURL("como_jogar_nao_logado.html")%>>Como jogar?</a></li>
                <li><a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank">Fan Page</a></li>
            </ul>
            <a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank"><img style=" position:absolute; bottom: 5px; left: 395px; width: 25px; height: 25px;" src="imagens/facebook2.png"></a>
        </footer>
    </body>
</html>
