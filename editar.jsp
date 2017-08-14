<%-- 
    Document   : editar
    Created on : 10/08/2017, 19:52:02
    Author     : Cleydson
--%>

<%@page import="Javabeans.Times"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Clandestina Manager - Divirta-se escalando seu time!</title>
        <link rel="stylesheet" type="text/css" href="Estilo/editarr.css">
        <script type="text/javascript" src="JavaScript/editar.js"></script>
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
                <a href=<%= response.encodeURL("home.jsp")%>><img src="imagens/LOGO SEM NOME BRANCA.png"></a>
                <div id="id">
                    <table>
                        <tr>
                            <td style="width: 120px; display: inline;"><%= time.getNomePresidente()%></td>
                        <form action="Sair_Servlet" method="post">
                            <td rowspan="2" style="width: 50px; text-align: left;"><input type="submit" name="btnSair" value="Sair"></td>
                        </form>
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
            <div id="blocoEditar">
                <div id="edit">
                    <p>EDITAR TIME</p>
                </div>
                <div id="edit2">
                    <form id="editT" name = "editar_time" action="Editar_Time_Servlet">
                        <p>NOME DO TIME</p>
                        <p><input maxlength="30" name="nomeTime" type="text" placeholder="Time"></p>
                        <p>NOME DO PRESIDENTE</p>
                        <p><input maxlength="25" name="nomePresidente" type="text" placeholder="Presidente"></p>
                        <button id="btn2" type="button" onclick="validacao()" style="position: absolute; top:80%; left:160px; margin-left: 0;">CONFIRMAR</button>
                        <button id="btn3" type="button" style="position: absolute; top:80%; left: 290px; margin-left: 0;">CANCELAR</button>
                </div>
            </div>
        </article>
        <footer id="rodGeral">
            <ul>
                <li><a href=<%= response.encodeURL("como_jogar_logado.jsp")%>>Como jogar?</a></li>
                <li><a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank">Fan Page</a></li>
            </ul>
            <a href=<%= response.encodeURL("https://www.facebook.com/Copa-Clandestina-2017-536842243144810/")%> target="_blank"><img style=" position:absolute; bottom: 5px; left: 395px; width: 25px; height: 25px;" src="imagens/facebook2.png"></a>
        </footer>
        <%
            } else if (sessao.getAttribute("logado").equals("false")) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>