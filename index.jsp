<%-- 
    Document   : index
    Created on : 08/08/2017, 14:56:13
    Author     : Cleydson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Clandestina Manager - Divirta-se escalando seu time!</title>
	<link href="Estilo/indexx.css" rel="stylesheet">
	<meta charset="utf-8">
	<script type="text/javascript" src="JavaScript/index.js"></script>
</head>
<body>
<div id="back">
<img src="imagens/estadio8.jpg">
<div id="back1">
</div>
</div>
	<div id="cab1">
	<div id="logo">
	<a href=<%= response.encodeURL("index.jsp")%>><img src="imagens/LOGO SEM NOME BRANCA.png"></a>
	</div>
	<div id="formLogin">
	<form id="form" name= "login" method="post" action="Login_Servlet">
		<div id="loginIn">        
			LOGIN: <input maxlength="15"  type="text" name="nome">
		</div>
		<div id="senhaIn">
            <span>SENHA:</span> <input maxlength="25"  type="password" name="senha">
		</div>
		<div id="entrarIn">
            <input id="btnEntrar" type="button" value="Entrar" onclick="validacao()">
		</div>	
		<div id="noLogin">
            <a href=<%= response.encodeURL("cadastro.jsp")%>>NÃO TEM LOGIN? CADASTRE-SE</a>
		</div>
        </form>
	</div>
	</div>
	

<div id="div2">
<table>
  <tr>
    <th style="border-bottom: solid black 2px;" colspan="4">JOGADORES EM DESTAQUE
    </th>
  </tr>
  <tr>
   <td style=" border-right: solid black 2px; border-bottom: solid black 2px; background-image: url(imagens/marcos.jpg); background-size: 100%;" colspan="2" class="jog"></td>
   <td style=" border-bottom: solid black 2px; background-image: url(imagens/thiago.jpg); background-size: 100%" colspan="2" class="jog"></td>
  </tr>
  <tr>
   <td style=" border-right: solid black 2px; border-bottom: solid black 2px; background-image: url(imagens/skin-red-logo.png); background-size: 100%;" class="time"></td>
   <td style=" border-right: solid black 2px; border-bottom: solid black 2px;" class="jog2">MARCOS</td>
   <td style=" border-bottom: solid black 2px; border-right: solid black 2px; background-image: url(imagens/skin-red-logo.png); background-size: 100%;" class="time"></td>
   <td style=" border-bottom: solid black 2px;" class="jog2">THIAGO</td>
  </tr>
  <tr>
   <td style=" border-right: solid black 2px; border-bottom: solid black 2px; background-image: url(imagens/gustavo.jpg); background-size: 100%;" colspan="2" class="jog"></td>
   <td style=" border-bottom: solid black 2px; background-image: url(imagens/nailson.jpg); background-size: 100%;" colspan="2" class="jog"></td>
  </tr>
  <tr>
   <td style=" border-right: solid black 2px; background-image: url(imagens/skin-red-logo.png); background-size: 100%;" class="time"></td>
   <td style=" border-right: solid black 2px;" class="jog2">GUSTAVO</td>
   <td style=" border-right: solid black 2px; background-image: url(imagens/pizzahut.png); background-size: 100%;" class="time"></td>
   <td class="jog2">NAILSON</td>
 </table>
 <a href=<%= response.encodeURL("cadastro.jsp")%>><button>FAÇA SEU CADASTRO AQUI</button></a>
</div>

<div id="div4">

<table>
    <tr>
     <th colspan="4">COPA CLANDESTINA 2017</th>
	<tr>
		<td style="height: 20px; padding-left: 6px;" colspan="2">CLASSIFICAÇÃO</td>
		<td style="height: 20px;">P</td>
		<td style="height: 20px;">J</td>
	</tr>
	<tr>
	    <td class="col">1º</td>
		<td>Skin Red</td>
		<td>20</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">2º</td>
		<td>Amaúcho FC</td>
		<td>18</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">3º</td>
		<td>Pizza HUT</td>
		<td>15</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">3º</td>
		<td>Sem Panela</td>
		<td>15</td>
		<td>8</td>
	</tr>

	<tr>
	    <td class="col">3º</td>
		<td>UNITED 04</td>
		<td>15</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">6º</td>
		<td>Boka Jr</td>
		<td>12</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">7º</td>
	    <td>Elite</td>
	    <td>10</td>
	    <td>8</td>
	</tr>
	<tr>
	    <td class="col">7º</td>
		<td>Champinhos FC</td>
		<td>10</td>
		<td>8</td>
	</tr>
	<tr>
	    <td class="col">9º</td>
	    <td>Real Ômega FC</td>
	    <td>6</td>
	    <td>8</td>
	</tr>
	<tr>
	    <td class="col" style="border-bottom: solid #38761d 2px;">10º</td>
		<td style="border-bottom: solid #38761d 2px;">Embrasados</td>
		<td style="border-bottom: solid #38761d 2px;">1</td>
		<td style="border-bottom: solid #38761d 2px;">8</td>
	</tr>
</table>



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