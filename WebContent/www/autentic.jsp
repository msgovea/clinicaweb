<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="sessao.jsp"%>
<!doctype html>
<html lang="en">
  <head>
<meta charset="utf-8">
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

<!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
<!--
    <link rel="canonical" href="http://www.example.com/">
    -->

<link
	href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="material.min.css">
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
		<header class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
        <div class="mdl-layout__header-row">
          <span class="mdl-layout-title">Home</span>
          <div class="mdl-layout-spacer"></div>
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
            <label class="mdl-button mdl-js-button mdl-button--icon" for="search">
              <i class="material-icons">search</i>
            </label>
            <div class="mdl-textfield__expandable-holder">
              <input class="mdl-textfield__input" type="text" id="search">
              <label class="mdl-textfield__label" for="search">Enter your query...</label>
            </div>
          </div>
          <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="hdrbtn">
            <i class="material-icons">more_vert</i>
          </button>
          <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="hdrbtn">
            <li class="mdl-menu__item">About</li>
            <li class="mdl-menu__item">Contact</li>
            <li class="mdl-menu__item">Legal information</li>
          </ul>
        </div>
      </header>
		<div class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
			<header class="demo-drawer-header-login"> 
				<img src="images/user.jpg" class="demo-logo"> 
			</header>
			
			<nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
			
				<a class="mdl-navigation__link" href="">
				<i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">home</i>Login</a> 
				
				<a class="mdl-navigation__link" href="">
				<i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">people</i>Cadastro</a>	
				
				<a class="mdl-navigation__link" href="">
				<i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">local_offer</i>Recuperar Senha</a> 

				
			<div class="mdl-layout-spacer"></div>
			<a class="mdl-navigation__link" href=""><i
				class="mdl-color-text--blue-grey-400 material-icons"
				role="presentation">help_outline</i><span class="visuallyhidden">Help</span>Ajuda</a>
			</nav>
		</div>
		<main class="mdl-layout__content mdl-color--grey-100">
		<div class="mdl-grid demo-content">
			<!--  form login -->
			<div
				class="demo-card-wide demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col">

				<div class="mdl-card__title">
					<h2 class="mdl-card__title-text">Bem vindo !!</h2>
				</div>
				<div class="mdl-card__supporting-text">
					Seja bem vindo ao HearthCare
					<form method="post" action="#">
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
							<input class="mdl-textfield__input" type="text" pattern=".{1,}"
								id="sample4" name="usuario"> <label
								class="mdl-textfield__label" for="sample4">Login...</label> <span
								class="mdl-textfield__error">Input is not a number!</span>
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
				</div>

				<div class="mdl-card__actions mdl-card--border">
					<input
						class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"
						type=submit value="Get Started" />
				</div>
				</form>
				<div class="mdl-card__menu">
					<button
						class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
						<i class="material-icons">share</i>
					</button>
				</div>
			</div>
			<!-- 	form login finish -->
			<!--  barrinha esquerda <div
				class="demo-graphs mdl-shadow--2dp mdl-color--white mdl-cell mdl-cell--8-col">
			</div> -->
			<div class="demo-cards mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
				<div class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
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
			</div>
		</div>
		</main>
	</div>
	<!-- target="_blank" abre em outra pagina-->
	<a href="#" id="view-source"
		class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">View
		Source</a>
	<script src="material.min.js"></script>



















</body>
</html>