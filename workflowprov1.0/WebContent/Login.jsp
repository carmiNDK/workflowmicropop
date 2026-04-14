<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/images/logo_two.png">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/semanticui/semantic.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login.css">

<title>KwikLoan | Connexion</title>
</head>

<body>
	<div class="container">
		<div class="login-form">
			<img src="${pageContext.request.contextPath}/images/logo_one.png"
				alt="Logo_KwikLoan">
			<hr>
			<h4 style="text-align: center; font-style: italic; margin: 0;">Connectez-vous
				à votre compte (Victoire)</h4>
			<form class="ui form" action="Authentification.php" method="POST"
				name="login-form">
				<c:if test="${not empty error}">
					<div class="ui negative message" style="margin: 0;">
						<div class="header">Erreur:</div>
						<p>${error}</p>
					</div>
				</c:if>
				<div class="field">
					<label for="username">Nom d'utilisateur <span>*</span>
					</label>
					<div class="ui left icon input">
						<input type="text" name="username" id="username"
							placeholder="Saisissez le nom d'utilisateur"> <i
							class="user icon"></i>
					</div>
				</div>
				<div class="field">
					<label for="username">Mot de passe <span>*</span>
					</label>
					<div class="ui left icon input">
						<input type="password" name="password" id="password"
							placeholder="Saisissez le mot de passe"> <i
							class="lock icon"></i>
					</div>

				</div>
				<div class="field">
					<button class="fluid ui primary button" type="submit"
						name="seconnecter" id="seconnecter">
						<i class="sign in icon"></i> Se connecter
					</button>
				</div>
			</form>
		</div>

	</div>

	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/semanticui/semantic.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/login.js"></script>
</body>
</html>