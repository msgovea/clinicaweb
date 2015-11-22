
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import ="conexao.Conexao"%>
<%@page import ="logicalView.Usuario"%>
<%@page import ="model.UsuarioDAO"%>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet"type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet"type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Usuario usr = new Usuario(); %>
        <% UsuarioDAO usrDAO = new UsuarioDAO(); %>

        <div class="container">
            <div class="row">

            </div>
            <div class="row c1">
                <div class="col-md-offset-4 col-md-4">
                    <div class="well">
                        <form method="POST">
                            <div class="form-group">
                                <label for="login">
                                    Login
                                </label>
                                <input class="form-control" id="login" name="login" type="text" placeholder="Login">
                            </div>
                            <div class="form-group">
                                <label for="senha">
                                    Password
                                </label>
                                <input class="form-control" id="senha" name="senha" type="password" placeholder="Senha"> 
                            </div>
                            <button type="submit" class="btn btn-primary">Logar</button>
                            <button type="button" class="btn btn-default">Cadastrar</button>
                        </form>
                        <%
                            String login = request.getParameter("login");
                            String password = request.getParameter("senha");

                            if (login != null && password != null){
                                session.setAttribute("login", login);
                                session.setAttribute("senha", password);
                                if (!usrDAO.validaLoginAcesso(login)) {
                                    out.println("<br><center><p class=\"erro\">Usuário inválido!</p>");
                                } else if (!usrDAO.validaSenhaAcesso(login, password)) {
                                    out.println("<br><center><p class=\"erro\">Senha invalida!</p>");
                                } else {
                                	usr.setLogin(login);
                                	usr.setSenha(password);
                                    response.sendRedirect("sessao.jsp");
                                }
                                
                            }
                        %>
                    </div>
                </div>
                <div class="row"></div>
            </div>

        </div>
    </body>
</html>
