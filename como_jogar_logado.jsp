<%-- 
    Document   : como_jogar_logado
    Created on : 10/08/2017, 20:30:44
    Author     : Cleydson
--%>

<%@page import="Javabeans.Times"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Clandestina Manager - Divirta-se escalando seu time!</title>
        <link rel="stylesheet" type="text/css" href="Estilo/como_jogar_logado.css">
    </head>
    <body>
        <%
            HttpSession sessao = request.getSession(false);

            if (sessao.getAttribute("logado") == null) {
                sessao.setAttribute("logado", "false");
            }

            if (sessao.getAttribute("logado").equals("true")) {
                Times time = new Times();
                time = (Times) sessao.getAttribute("Time");

        %>
        <div id="back">
            <img src="imagens/estadio8.jpg">
            <div id="back1">
            </div>
        </div>
        <header class="cabHome">
            <div id="cab1">
                <a href="home.html"><img src="imagens/LOGO SEM NOME BRANCA.png"></a>

                <div id="id">
                    <table>
                        <tr>
                            <td style="width: 120px; display: inline;"><%= time.getNomePresidente()%></td>
                            <td rowspan="2" style="width: 50px; text-align: left;"><input type="button" name="btnSair" value="Sair"></td>
                        </tr>
                        <tr>
                            <td style="width: 120px; display: inline;"><%= time.getNome()%></td>

                    </table>
                </div> 
            </div>
            <nav id="cab2">
                <ul>
                    <li><a href=<%= response.encodeURL("home.jsp")%>>Página Inicial</a></li>
                    <li><a href="#">Escalação</a></li>
                    <li><a href="ranking.html">Ranking</a></li>
                </ul>
            </nav>
        </header>
        <article>
            <h1>COMO JOGAR?</h1>
            <div id="comoJog">

                <p>Antes de tudo, você precisa realizar um cadastro em nosso sistema.<br>
                    Se você já possuir cadastro, é muito simples. Basta criar seu time com nome e escudo personalizados, e fazer sua escalação de acordo com o seu patrimônio e com os jogadores que você deseja ter em seu time. Você irá pontuar de acordo com a soma dos pontos que seus jogadores obtiverem em cada rodada, o que te fará subir (ou descer) no ranking dos times.</p>
            </div>
        </article>
        <footer id="rodGeral">
            <ul>
                <li><a href=<%= response.encodeURL("como_jogar_logado.jsp")%>>Como jogar?</a></li>
                <li><a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank">Fan Page</a></li>
            </ul>
            <a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank"><img style=" position:absolute; bottom: 5px; left: 395px; width: 25px; height: 25px;" src="imagens/facebook2.png"></a>
        </footer>

        <%} else if (sessao.getAttribute("logado").equals("false")) {
            response.sendRedirect("index.jsp");
         }%>

    </body>
</html>