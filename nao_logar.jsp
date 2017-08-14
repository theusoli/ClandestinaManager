<%-- 
    Document   : nao_logar
    Created on : 10/08/2017, 20:34:16
    Author     : Cleydson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Clandestina Manager - Divirta-se escalando seu time!</title>
	<link href="Estilo/nao_logar.css" rel="stylesheet">
	<meta charset="utf-8">
        <script type="text/javascript" src="JavaScript/index.js"></script>
</head>
<body>
<div id="back">
<img src="imagens/estadio8.jpg">
<div id="back1">
</div>
</div>
<header class="cabHome">
	<div id="cab1">
	<a href="index.html"><img src="imagens/LOGO SEM NOME BRANCA.png"></a>
	</div>
</header>
<div id="blocoLogin">
    <div id="headerBlock">
	<span>Login ou Senha Incorreta</span>
	</div>
	<form id="login" name= "login" method="post" action="Login_Servlet">
	<div id="loginIn">
	<input id="inputLogin" placeholder="Login" maxlength="15" type="text" name="nome">
	</div>
	<div id="senhaIn">
	<input id="inputSenha" placeholder="Senha" maxlength="25" type="password" name="senha">
	</div>
	<div id="botaoDiv">
            <button id="botaoEntrar" name="btnLogin" type="button" onclick="validacao()">Entrar</button>
	</div>
	</form>
</div>
<footer id="rodGeral">
		<ul>
	    <li><a href=<%= response.encodeURL("como_jogar_nao_logado.html")%>>Como jogar?</a></li>
	    <li><a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank">Fan Page</a></li>
	   </ul>
	   <a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank"><img style=" position:absolute; bottom: 5px; left: 395px; width: 25px; height: 25px;" src="imagens/facebook2.png"></a>
	</footer>

</body>
</html>