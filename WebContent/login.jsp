<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="bd.ConexaoMySQL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="JavaScript" src="funcoes.js"></script>
<title>Formulário Web</title>
</head>
<body>

	<%
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;

		String nome = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = ConexaoMySQL.getConexaoMySQL();
		//connection = DriverManager.getConnection(connectionURL, User, Pass);

		//String query = "SELECT * FROM acesso WHERE Login = nome";
		statement = connection.createStatement();

		String query = "SELECT * FROM acesso WHERE Login = '" + nome + "'";

		rs = statement.executeQuery(query);
		if (!(nome == null && senha == null)) {
			try {

				rs.next();
				if (nome.equals(rs.getString("Login")) && senha.equals(rs.getString("Senha"))) {
					out.println("Você Logou, parabéns MISERAVI!");
				} else {
					out.println("Você NÃÃÃÃO Logou, QUEM TINSINO MISERAVI !! ? ? ! ");
				}
			} catch (SQLException e) {
				out.print("QUEM TINSINO MISERAVI");
			}
		}

		rs.close();
	%>



	<h1>Acesso Restrito</h1>
	<form method="POST" action="#">
		Usuário: <input type="text" name="usuario"> <br /> Senha: <input
			type="password" name="senha" /> <input type="submit" value="Submit" />
	</form>

	<input type=button onClick="clica();" value="Enviar">
	<div id="texto"></div>
</body>
</html>