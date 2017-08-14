<%-- 
    Document   : homee
    Created on : 14/08/2017, 08:42:47
    Author     : Cleydson
--%>

<%@page import="Javabeans.Times"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Clandestina Manager - Divirta-se escalando seu time!</title>
        <link rel="stylesheet" type="text/css" href="Estilo/home.css">
    </head>
    <body>
        <%
            HttpSession sessao = request.getSession(false);

            if (sessao.getAttribute("logado") == null) {
                sessao.setAttribute("logado", "false");
            }

            if (sessao.getAttribute("logado").equals("true")) {
                Times time = new Times();
                String image = "";
                time = (Times) sessao.getAttribute("Time");
                switch (time.getTimeCoracao()) {
                    case "skin red":
                        image = "imagens/times/skin-red-logo.png";
                        break;
                    case "campinhos":
                        image = "imagens/times/campinhos.png";
                        break;
                    case "elite":
                        image = "imagens/times/elite.png";
                        break;
                    case "embrasados":
                        image = "imagens/times/embrasados.png";
                        break;
                    case "manchester city":
                        image = "imagens/times/manchestercity.png";
                        break;
                    case "real omega":
                        image = "imagens/times/omega.png";
                        break;
                    case "pizza hut":
                        image = "imagens/times/pizzahut.png";
                        break;
                    case "sem panela":
                        image = "imagens/times/sempanela.png";
                        break;
                    case "tois fc":
                        image = "imagens/times/time-tois.png";
                        break;
                    case "amaucho":
                        image = "imagens/times/amaucho1.png";
                        break;
                }

        %>
        <div id="back">
            <img src="imagens/estadio8.jpg">
            <div id="back1">
            </div>
        </div>
        <header class="cabHome">
            <div id="cab1">

                <a href="home.jsp"><img src="imagens/LOGO SEM NOME BRANCA.png"></a>

                <div id="id">
                    <table>
                        <tr>
                            <td style="width: 120px; display: inline"><%= time.getNomePresidente()%></td>
                        <form method="post" action="Sair_Servlet">
                            <td rowspan="2" style="width: 50px; text-align: left;"><input id="btnSair" type="submit" name="btnSair" value="Sair"></td>
                        </form>
                        </tr>
                        <tr>
                            <td style="width: 120px; display: inline"><%= time.getNome()%></td>

                    </table>
                </div> 
            </div>
            <nav id="cab2">
                <ul>
                    <li><a href="home.jsp">Página Inicial</a></li>
                    <li><a href="escalacao.html">Escalação</a></li>
                    <li><a href="ranking.html">Ranking</a>
                </ul>
            </nav>
        </header>
        <div id="blocoTime">
            <h1 id="seuTim">SEU TIME</h1>
            <div id="parte1">
                <div id="infoTime"><h3><%= time.getNome()%></h3>
                </div>
                <a href="editar.jsp"><img id="gear" src="imagens/gear1.png" title="Editar Time"></a>
                <img id="escuUsua" src=<%=image%>>
                <div id="dadosTime">
                    <table>
                        <tr>
                            <td>ÚLTIMA PONTUAÇÃO</td>
                            <td style="text-align: left;">PATRIMÔNIO</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 900;"><%
                                if (time.getPontuacao() == 0) {
                                    out.println("--");
                                } else {
                                    out.println(time.getPontuacao());
                                }
                                %></td> 
                            <td style="font-weight: 900; text-align: left; padding-left: 27px;">C$ <%= time.getPatrimonio()%></td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>

        <div id="blocoMercRod">
            <div id="blocoMerc">
                <h1>MERCADO ABERTO</h1>
            </div>
            <div id="infoRod">
                <h1>RODADA 1</h1>
                <h4>Seu time está desfalcado para a rodada</h4>
                <img src="imagens/deslike.png">
                <a id="escalar" href="escalacao.html"><button>ESCALE SEU TIME</button></a>
            </div>
        </div>
        <footer id="rodGeral">
            <ul>
                <li><a href="como_jogar_logado.jsp">Como jogar?</a></li>
                <li><a href="https://www.facebook.com/Copa-Clandestina-2017-536842243144810/" target="_blank">Fan Page</a></li>
            </ul>
            <a href="https://www.facebook.com/Copa-Clandestina-2017-536842243144810/" target="_blank"><img style=" position:absolute; bottom: 5px; left: 395px; width: 25px; height: 25px;" src="imagens/facebook2.png"></a>
        </footer>
        <%
            } else if (sessao.getAttribute("logado").equals("false")) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>