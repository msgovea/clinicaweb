<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
		function clica() {
			document.getElementById("texto").innerHTML = "Voce clicou no botao!";
		}
	</script>
<title>Formulário Web</title>
</head>
<body>
	<h1>Acesso Restrito</h1>
	<form method="POST" action="processa.jsp">
		Usuário: <input type="text" name="usuario"> <br /> Senha: <input
			type="password" name="senha" /> <input type="submit" value="Submit" />
	</form>

	<input type=button onClick="clica();" value="Enviar">
	<div id="texto"></div>
</body>
</html>