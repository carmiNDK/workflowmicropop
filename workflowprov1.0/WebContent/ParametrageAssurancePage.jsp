<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="./images/logo_two.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />
<link rel="stylesheet" href="assets/semanticui/semantic.min.css">
<link rel="stylesheet" href="assets/dataTables.semanticui.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/sidebar.css">
<link rel="stylesheet" href="./css/nav.css">
<link rel="stylesheet" href="./css/params.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script id="tailwind-config">
	tailwind.config = {
		prefix : 'tw-',
		theme : {
			extend : {
				colors : {
					"primary" : "#2b8cee",
					"sidebar-bg" : "#F8F8F8",
					"sidebar-link" : "#4B5563",
					"sidebar-hover" : "#E5E7EB",
					"sidebar-active" : "#2b8cee",
					"sidebar-text" : "#1F2937",
					"background-light" : "#f6f7f8",
					"status-yellow" : "#fbbd08",
					"status-green" : "#21ba45",
					"status-red" : "#db2828",
					"status-blue" : "#2b8cee",
					"status-purple" : "#a333c8",
					"status-teal" : "#00b5ad",
				},
				fontFamily : {
					"display" : [ "Lato", "sans-serif" ],
					"inter" : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					"DEFAULT" : "0.28571429rem",
					"lg" : "0.5rem",
					"xl" : "0.75rem",
					"full" : "9999px"
				},
				boxShadow : {
					'card' : '0 4px 6px -1px rgb(0 0 0 / 0.05), 0 2px 4px -2px rgb(0 0 0 / 0.05)',
				}
			},
		},
	}
</script>
<title>KwikLoan : Paramètrage Agences</title>
</head>

<body>
	<section class="header">
		<nav class="navbar">
			<div class="left">
				<h5 id="toglleSidebar">
					&nbsp;<i class="bars icon"></i>
				</h5>
			</div>
			<div class="right">
				<div class="input">
					<div class="ui dropdown item agent-dropdown">
						<div class="ui minimal compact"
							style="display: flex; align-items: center;">
							<img
								src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face"
								alt="Jean-Luc Mbala" class="agent-avatar">
							<div class="agent-info"
								style="text-align: left; margin-right: 10px;">
								<div style="font-weight: 600; font-size: 1em;">${NomsUserConnecterok}</div>
								<div style="font-size: 0.8em; color: #83a2c6;">${ProfilName}</div>
							</div>
							<i class="dropdown icon" style="color: #83a2c6;"></i>
						</div>
						<div class="menu" style="width: 280px;">
							<!-- En-tête Profil -->
							<!-- Informations Agent -->
							<div class="item" style="cursor: default; padding: 15px;">
								<div class="ui tiny relaxed list">
									<div class="item">
										<i class="id card icon green"></i>
										<div class="content">
											<div class="description">${SocieteLibelle}</div>
										</div>
									</div>
									<div class="item">
										<i class="building icon purple"></i>
										<div class="content">
											<div class="description">${BrancheUserConnecter}</div>
										</div>
									</div>
								</div>
							</div>

							<div class="divider"></div>
							
							<!-- Déconnexion -->
							<a class="item" href="Deconnexion.php"
								style="color: #e74c3c; font-weight: 500;"> <i
								class="power off icon"></i> Se déconnecter
							</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</section>
	<aside class="sidebar">
		<div class="sidebar-header">
			<img src="./images/logo_with_white_bg.jpg" alt="Logo" srcset="">
			<!--<button name="activeSidebar" id="activeSidebar"><i class="angle double left icon"
                style="visibility: visible;"></i></button>-->
		</div>
		<div class="sidebar-menus">
			<!--
        <div class="infos-customer">
            <h5>Microfinance Populaire SA</h5>
            <p>Agence de Gombe</p>
        </div> -->
			<ul class="link-container">
				<li class="link"><a href="HomePage.php"><i
						class="tachometer alternate
                icon"></i>Tableau de
						bord</a></li>
			</ul>
			<h6 class="tw-text-small">Menus</h6>
			<ul class="link-container">
				<li class="link" id="menucreditIL"><a href="CreditILPage.php"><i
						class="user icon" style="visibility: visible;"></i>Crédit
						individuel</a></li>
				<li class="link" id="menucreditGP"><a href="CreditGL.php"><i
						class="users icon" style="visibility: visible;"></i>Crédit de
						groupe</a></li>
				<li class="link" id="rapportwf"><a href="PageReporting.php"><i
						class="chart pie icon" style="visibility: visible;"></i>Rapport</a></li>
				<li class="link" id="useradm"><a href="UserPage.php"><i
						class="user circle icon" style="visibility: visible;"></i>Utilisateurs</a></li>
				<li class="link active" id="para"><a
					href="ParametrageModule.php"><i class="cog icon"
						style="visibility: visible;"></i>Paramètres</a></li>

			</ul>

		</div>
	</aside>

	<div class="content">
		<div class="content-with-nav">
			<div class="content-nav">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item " role="presentation"><a
						href="ParametrageIL.php" class="nav-link" type="button" role="tab"
						aria-selected="true">Paramètres - Crédit IL</a></li>
					<li id="menuFamille" class="nav-item" role="presentation"><a
						href="ParametrageGLPage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Paramètres - Crédit GL</a></li>
					<li id="menuBussness1" class="nav-item" role="presentation"><a
						href="ParametrageBranchePage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Paramètres - Agences</a></li>
					<li id="menuBussness1" class="nav-item" role="presentation"><a
						href="ParametrageAssuranceConfigPage.php" class="nav-link active"
						type="button" role="tab" aria-selected="false">Paramètres -
							Assurances</a></li>
					<li id="menuBussness1" class="nav-item" role="presentation"><a
						href="ParametrageCautionSupPage.php" class="nav-link"
						type="button" role="tab" aria-selected="false">Paramètres -
							Cautions</a></li>
				</ul>
			</div>

		</div>

		<div class="page-content">

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Configuration
					Assurance Crédit</h2>
				<hr>
				<form class="ui form" action="ParametrageAssurancePage.php"
					method="post">
					<input type="hidden" id="IdAssurance" name="IdAssurance"
						value="${IdAssurance}">
					<div class="two fields">
						<div class="field">
							<label>Assurance-AfriSur </label> <input type="number"
								class="form-control" id="AssuranceAfrisur"
								name="AssuranceAfrisur" required="required"
								value="${AssuranceAfrisur}" min="0" step="0.01"></input>
						</div>

						<div class="field">
							<label>Assurance-RawSur</label> <input type="number"
								class="form-control" id="AssuranceRawSur" name="AssuranceRawSur"
								required="required" value="${AssuranceRawSur}" min="0"
								step="0.01"></input>
						</div>
					</div>

					<button type="submit" id="btnSaveDoc" class="ui primary button">Enregistrer</button>
				</form>
			</div>

			<div class="ui green segment">

				<table class="ui celled table" id="tab_AB_Stock">
					<thead>
						<tr>
							<th><label for="id">N°</label></th>
							<th><label for="quantite">AssuranceAfriSur</label></th>
							<th><label for="produit">AssuranceRawSur</label></th>
							<th><label for="produit">Action</label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeAssuranceAll}" var="SPP">
							<tr>
								<td>${SPP.idassurancetaux}</td>
								<td>${SPP.tauxassuranceafrisur}</td>
								<td>${SPP.tauxassurancerawsur}</td>
								<td><a class="ui mini yellow icon button btn-edit"
									href="ReturneInformationAssurance.php?numAss=${SPP.idassurancetaux}"><i
										class="edit icon"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

		</div>
	</div>
	<c:if test="${nbrUserSaveAssurance > 0}">
		<script>
			Swal.fire({
				title : 'Succès !',
				text : 'Le taux assurance est enregistrer avec succés !!!',
				icon : 'success',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>
	<c:if test="${nbrUserUpdateAssrance > 0}">
		<script>
			Swal.fire({
				title : 'Succès !',
				text : 'Le taux assurance est modifier avec succés !!!',
				icon : 'success',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>
	<c:choose>
		<c:when test="${sessionScope.EtatDossierCredit eq 'Creation'}">
			<script>
				var menuFamille = document.getElementById('menuFamille');
				menuFamille.style.display = 'none';

				var menuBussness1 = document.getElementById('menuBussness1');
				menuBussness1.style.display = 'none';

				var menuBussness2 = document.getElementById('menuBussness2');
				menuBussness2.style.display = 'none';

				var menuBussness3 = document.getElementById('menuBussness3');
				menuBussness3.style.display = 'none';

				var menuGarantie = document.getElementById('menuGarantie');
				menuGarantie.style.display = 'none';

				var menuDocument = document.getElementById('menuDocument');
				menuDocument.style.display = 'none';

				var menuResumeProposition = document
						.getElementById('menuResumeProposition');
				menuResumeProposition.style.display = 'none';

				var menuDecisionComite = document
						.getElementById('menuDecisionComite');
				menuDecisionComite.style.display = 'none';

				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>

		<c:when test="${sessionScope.EtatDossierCredit eq 'Assignation'}">
			<script>
				var menuFamille = document.getElementById('menuFamille');
				menuFamille.style.display = 'none';

				var menuBussness1 = document.getElementById('menuBussness1');
				menuBussness1.style.display = 'none';

				var menuBussness2 = document.getElementById('menuBussness2');
				menuBussness2.style.display = 'none';

				var menuBussness3 = document.getElementById('menuBussness3');
				menuBussness3.style.display = 'none';

				var menuGarantie = document.getElementById('menuGarantie');
				menuGarantie.style.display = 'none';

				var menuDocument = document.getElementById('menuDocument');
				menuDocument.style.display = 'none';

				var menuResumeProposition = document
						.getElementById('menuResumeProposition');
				menuResumeProposition.style.display = 'none';

				var menuDecisionComite = document
						.getElementById('menuDecisionComite');
				menuDecisionComite.style.display = 'none';

				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>
		<c:when test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
			<script>
				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>
	</c:choose>

	<c:choose>
		<c:when test="${sessionScope.ProfilUser eq 'ADMIN'}">
			<script>
				var menucreditIL = document.getElementById('menucreditIL');
				menucreditIL.style.display = 'none';
				var menucreditGP = document.getElementById('menucreditGP');
				menucreditGP.style.display = 'none';
			</script>
		</c:when>
		<c:when
			test="${(sessionScope.ProfilUser eq 'CI') or(sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') || (sessionScope.ProfilUser eq 'ODP')|| (sessionScope.ProfilUser eq 'RC')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'SC')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')}">
			<script>
				var useradm = document.getElementById('useradm');
				useradm.style.display = 'none';

				var para = document.getElementById('para');
				para.style.display = 'none';
			</script>
		</c:when>
	</c:choose>


	<c:if test="${sessionScope.ProfilUser != 'CA'}">
		<script>
			var v100 = document.getElementById('100');
			v100.style.display = 'none';

			var v200 = document.getElementById('200');
			v200.style.display = 'none';
		</script>
	</c:if>

	<script src="./js/jquery.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>
</body>

</html>