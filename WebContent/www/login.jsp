<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="bd.ConexaoMySQL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function clicke() {
	document.getElementById("Titulo").innerHTML = "Voce clicou no botao!";
	alert("oi");
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="A front-end template that helps you build fast, modern mobile web apps.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Material Design Lite</title>

<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<link rel="icon" sizes="192x192" href="images/android-desktop.png">

<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="Material Design Lite">
<link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

<!-- Tile icon for Win8 (144x144 + tile color) -->
<meta name="msapplication-TileImage"
	content="images/touch/ms-touch-icon-144x144-precomposed.png">
<meta name="msapplication-TileColor" content="#3372DF">

<link rel="shortcut icon" href="images/favicon.png">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="material.min.css">
<link rel="stylesheet" href="styles.css">
<style>
#view-source {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}
</style>
</head>
<body>

	<script>clicke()</script>
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




	<div
		class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
		<header
			class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
		<div class="mdl-layout__header-row">
			<span class="mdl-layout-title" id="titulo">Home</span>
			<div class="mdl-layout-spacer"></div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
				<label class="mdl-button mdl-js-button mdl-button--icon"
					for="search"> <i class="material-icons">search</i>
				</label>
				<div class="mdl-textfield__expandable-holder">
					<input class="mdl-textfield__input" type="text" id="search">
					<label class="mdl-textfield__label" for="search">Enter your
						query...</label>
				</div>
			</div>
			<button
				class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon"
				id="hdrbtn">
				<i class="material-icons">more_vert</i>
			</button>
			<ul
				class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right"
				for="hdrbtn">
				<li class="mdl-menu__item">About</li>
				<li class="mdl-menu__item">Contact</li>
				<li class="mdl-menu__item">Legal information</li>
			</ul>
		</div>
		</header>
		<div
			class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
			<header class="demo-drawer-header"> <img
				src="images/user.jpg" class="demo-avatar">
			<div class="demo-avatar-dropdown">
				<span>gôvea@example.com</span>
				<div class="mdl-layout-spacer"></div>
				<button id="accbtn"
					class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
					<i class="material-icons" role="presentation">arrow_drop_down</i> <span
						class="visuallyhidden">Accounts</span>
				</button>
				<ul
					class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
					for="accbtn">
					<li class="mdl-menu__item">hello@example.com</li>
					<li class="mdl-menu__item">info@example.com</li>
					<li class="mdl-menu__item"><i class="material-icons">add</i>Add
						another account...</li>
				</ul>
			</div>
			</header>
			<nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
			<a class="mdl-navigation__link" href=""><i
				class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">home</i>Home</a> <a class="mdl-navigation__link"
				href=""><i class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">inbox</i>Inbox</a> <a class="mdl-navigation__link"
				href=""><i class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">forum</i>Forums</a> <a class="mdl-navigation__link"
				href=""><i class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">flag</i>Updates</a> <a class="mdl-navigation__link"
				href=""><i class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">local_offer</i>Promos</a> <a
				class="mdl-navigation__link" href=""><i
				class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">shopping_cart</i>Purchases</a> <a
				class="mdl-navigation__link" href=""><i
				class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">people</i>Social</a>
			<div class="mdl-layout-spacer"></div>
			<a class="mdl-navigation__link" href=""><i
				class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">help_outline</i><span class="visuallyhidden">Help</span></a>
			</nav>
		</div>
		<main class="mdl-layout__content mdl-color--grey-100">
		<div class="mdl-grid demo-content">
			<!--  conteudo 0 inicio -->
			<style>
.demo-card-wide.mdl-card {
	width: 912px;
}

.demo-card-wide>.mdl-card__title {
	color: #fff;
	height: 176px;
	background: url('http://www.getmdl.io/assets/demos/welcome_card.jpg')
		center/cover;
}

.demo-card-wide>.mdl-card__menu {
	color: #fff;
}
</style>

			<div
				class="demo-card-wide demo-charts mdl-color--white  mdl-shadow--2dp mdl-cell mdl-cell--12-col">

				<div class="mdl-card__title">
					<h2 class="mdl-card__title-text">Bem vindo !!</h2>
				</div>
				<div class="mdl-card__supporting-text">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris
					sagittis pellentesque lacus eleifend lacinia...
					<form method="post" action="#">
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
							<input class="mdl-textfield__input" type="text"
								pattern=".{1,}" id="sample4" name="usuario">
							<label class="mdl-textfield__label" for="sample4">Login...</label>
							<span class="mdl-textfield__error">Input is not a number!</span>
						</div>
						<br>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
							<input class="mdl-textfield__input" type="password"
								pattern=".{6,}" id="sample4" name="senha">
							<!--  pattern de -numero a +numero -?[0-9]*(\.[0-9]+)? -->
							<label class="mdl-textfield__label" for="sample4">Senha...</label>
							<span class="mdl-textfield__error">Seis ou mais digitos!</span>
						</div>
						<input class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="click()" type=submit value="Submit" />
					</form>
					
				</div>
				
				<div class="mdl-card__actions mdl-card--border">
					<a
						class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
						Get Started </a>
				</div>
				<div class="mdl-card__menu">
					<button
						class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
						<i class="material-icons">share</i>
					</button>
				</div>
			</div>
			<!--  conteudo 0 fim -->
			<div
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
				<!-- conteudo 1 inicio -->
				<div class="demo-card-wide mdl-card mdl-shadow--2dp">

					<div class="mdl-card__title">
						<h2 class="mdl-card__title-text">Welcome</h2>
					</div>
					<div class="mdl-card__supporting-text">Lorem ipsum dolor sit
						amet, consectetur adipiscing elit. Mauris sagittis pellentesque
						lacus eleifend lacinia...</div>
					<div class="mdl-card__actions mdl-card--border">
						<a
							class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
							Get Started </a>
					</div>
					<div class="mdl-card__menu">
						<button
							class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
							<i class="material-icons">share</i>
						</button>
					</div>
				</div>
				<!-- conteudo 1 fim -->
			</div>
			<div
				class="demo-graphs mdl-shadow--2dp mdl-color--white mdl-cell mdl-cell--8-col">
				oiii
				<svg fill="currentColor" viewBox="0 0 500 250" class="demo-graph">
				<use xlink:href="#chart"></svg>
				<svg fill="currentColor" viewBox="0 0 500 250" class="demo-graph">
				<use xlink:href="#chart"></svg>
			</div>
			<div
				class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
				<div
					class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
					<div class="mdl-card__title mdl-card--expand mdl-color--teal-300">
						<h2 class="mdl-card__title-text">Updates</h2>
					</div>
					<div class="mdl-card__supporting-text mdl-color-text--grey-600">
						Non dolore elit adipisicing ea reprehenderit consectetur culpa.</div>
					<div class="mdl-card__actions mdl-card--border">
						<a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Read
							More</a>
					</div>
				</div>
				<div class="demo-separator mdl-cell--1-col"></div>
				<div
					class="demo-options mdl-card mdl-color--deep-purple-500 mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--12-col-desktop">
					<div class="mdl-card__supporting-text mdl-color-text--blue-grey-50">
						<h3>View options</h3>
						<ul>
							<li><label for="chkbox1"
								class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
									<input type="checkbox" id="chkbox1" class="mdl-checkbox__input">
									<span class="mdl-checkbox__label">Click per object</span>
							</label></li>
							<li><label for="chkbox2"
								class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
									<input type="checkbox" id="chkbox2" class="mdl-checkbox__input">
									<span class="mdl-checkbox__label">Views per object</span>
							</label></li>
							<li><label for="chkbox3"
								class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
									<input type="checkbox" id="chkbox3" class="mdl-checkbox__input">
									<span class="mdl-checkbox__label">Objects selected</span>
							</label></li>
							<li><label for="chkbox4"
								class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
									<input type="checkbox" id="chkbox4" class="mdl-checkbox__input">
									<span class="mdl-checkbox__label">Objects viewed</span>
							</label></li>
						</ul>
					</div>
					<div class="mdl-card__actions mdl-card--border">
						<a href="#"
							class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--blue-grey-50">Change
							location</a>
						<div class="mdl-layout-spacer"></div>
						<i class="material-icons">location_on</i>
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<!-- target="_blank" abre em outra pagina-->
	<a href="#" id="view-source"
		class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">View
		Source</a>
	<script src="material.min.js"></script>




<script>click() </script>














</body>
</html>