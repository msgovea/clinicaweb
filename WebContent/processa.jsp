<%@page import="bd.Teste"%>
<%@page import="bd.ConexaoMySQL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
	//Alterar aqui com seus dados
	String User = "bdci27";
	String BaseDados = "bdci27";
	String Pass = "xg45d41";

	//Deixar como está
	String Host = "ESPARTA";
	String connectionURL = "jdbc:mysql://" + Host + "/" + BaseDados;
	Connection connection = null;
	Statement statement = null;
	ResultSet rs = null;
%>
<html>
<body>

	<%
		String nome = request.getParameter("usuario");
		String senha = request.getParameter("senha");

		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = ConexaoMySQL.getConexaoMySQL();
		out.print(Teste.paraString());
		//connection = DriverManager.getConnection(connectionURL, User, Pass);

		//String query = "SELECT * FROM acesso WHERE Login = nome";
		statement = connection.createStatement();

		String query = "SELECT * FROM acesso WHERE Login = '" + nome + "'";

		rs = statement.executeQuery(query);
		try {

			rs.next();
			if (nome.equals(rs.getString("Login"))
					&& senha.equals(rs.getString("Senha"))) {
				out.println("Você Logou, parabéns MISERAVI!");
			} else {
				out.println("Você NÃÃÃÃO Logou, QUEM TINSINO MISERAVI !! ? ? ! ");
			}
		} catch (SQLException e) {
			out.print("QUEM TINSINO MISERAVI");
		}

		//PreparedStatement st = connection.prepareStatement(query);

		//rs = st.executeQuery();

		//out.println("<table border='1'>");

		/*while (rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getString("Login") + "</td>");
			out.println("<td>" + rs.getString("Senha") + "</td>");
			out.println("</tr>");
		}*/

		//out.println("</table>");

		rs.close();
	%>

</body>
</html>

<!-- Fim JSP--->