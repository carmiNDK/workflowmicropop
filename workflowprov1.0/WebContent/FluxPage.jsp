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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet" href="assets/semanticui/semantic.min.css">
<link rel="stylesheet" href="assets/dataTables.semanticui.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/sidebar.css">
<link rel="stylesheet" href="./css/nav.css">
<link rel="stylesheet" href="./css/params.css">
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
<title>KwikLoan : Crédit individuel</title>
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
				<li class="link active" id="menucreditIL"><a
					href="CreditILPage.php"><i class="user icon"
						style="visibility: visible;"></i>Crédit individuel</a></li>
				<li class="link" id="menucreditGP"><a href="CreditGL.php"><i
						class="users icon" style="visibility: visible;"></i>Crédit de
						groupe</a></li>
				<li class="link" id="rapportwf"><a href="PageReporting.php"><i
						class="chart pie icon" style="visibility: visible;"></i>Rapport</a></li>
			</ul>
		</div>

	</aside>

	<div class="content">
		<div class="content-with-nav">
			<div class="content-nav">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation"><a
						href="DemandePage.php" class="nav-link" type="button" role="tab"
						aria-selected="true">Demande</a></li>
					<li id="menuFamille" class="nav-item" role="presentation"><a
						href="FamillePage.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Famille</a></li>
					<li id="menuBussness1" class="nav-item" role="presentation"><a
						href="Bussness1Page.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Analyse 1</a></li>
					<li id="menuBussness2" class="nav-item" role="presentation"><a
						href="Bussness2Page.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Analyse 2</a></li>
					<li id="menuBussness3" class="nav-item" role="presentation"><a
						href="Bussness3Page.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Production</a></li>
					<li id="menuGarantie" class="nav-item" role="presentation"><a
						href="GarantiePage.php" class="nav-link" type="button" role="tab"
						aria-controls="garantie" aria-selected="false">Garantie</a></li>
					<li id="menuDocument" class="nav-item" role="presentation"><a
						href="DocumentPage.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Documents</a></li>
					<li id="menuResumeProposition" class="nav-item" role="presentation"><a
						href="ResumePropositionPage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Résumé et proposition</a></li>
					<li id="menuHistorique" class="nav-item" role="presentation"><a
						href="ResumeHistoriqueILPage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Historique</a></li>
					<li id="menuDecisionComite" class="nav-item" role="presentation"><a
						href="DecisionComitePage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Décision</a></li>
					<li id="menuFlux" class="nav-item" role="presentation"><a
						href="FluxPage.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Flux</a></li>
				</ul>
			</div>

		</div>

		<div class="page-content">

			<div class="demande-container"></div>

		</div>
		<div class="tab-membres">
			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Flux de travail IL (statut juridique
					: ${statutJuridiqueok})</h2>
				<hr>
				<form action="PassageOperation.php" method="post" class="ui form">
					<div class="row">
						<div class="ui green message"
							style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
						<div class="ui red message"
							style="display: ${error != null ? 'block' : 'none'}">${error}</div>
						<table id="flow_tab" class="ui celled table">
							<thead>
								<tr>
									<th scope="col"><span class="fs-6"><b>#</b></span></th>
									<th scope="col"><span class="fs-6"><b>Etape</b></span></th>
									<th scope="col"><span class="fs-6"><b>Role</b></span></th>
									<th scope="col"><span class="fs-6"><b>Decision</b></span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>CREATION DEMANDE</td>
									<td>CA,SC</td>
									<td><select class="ui dropdown" name="etapeCreation"
										id="decisionCreation" style="font-size: 13px;"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Creation')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Assignation !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
									</select></td>
								</tr>
								<tr>
									<td>2</td>
									<td>ASSIGNATION DEMANDE</td>
									<td>BM</td>
									<td><select class="ui dropdown" name="etapeAssignation"
										style="font-size: 13px;" id="decisionAssignation"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Assignation')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Analyse !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Creation !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
											<option>RETOURNER</option>
									</select></td>
								</tr>
								<tr>
									<td>3</td>
									<td>ANALYSER DEMANDE</td>
									<td>CA</td>
									<td><select class="ui dropdown" name="etapeAnalyse"
										id="decisionAnalyse" style="font-size: 13px;"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Comite !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Assignation !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
											<option>RETOURNER</option>
									</select></td>
								</tr>
								<tr>
									<td>4</td>
									<td>COMITE DE CREDIT</td>
									<td>DG,DGA,BM,RC,SUP</td>
									<td><select class="ui dropdown" name="etapeComite"
										id="decisionComite" style="font-size: 13px;"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Comite')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Verification !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Analyse !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
											<option>RETOURNER</option>
									</select></td>
								</tr>
								<tr>
									<td>5</td>
									<td>VERIFICATION DOCUMENTS</td>
									<td>ODP</td>
									<td><select class="ui dropdown" name="etapeVerification"
										id="decisionVerif" style="font-size: 13px;"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Verification')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Postage !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Comite !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
											<option>RETOURNER</option>
									</select></td>
								</tr>
								<tr>
									<td>6</td>
									<td>POSTAGE</td>
									<td>ODP</td>
									<td><select class="ui dropdown" name="etapePostage"
										id="decisionPostage" style="font-size: 13px;"
										<c:if test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Postage')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Final Terminer (cloturer) !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Verification !!!')}">
                                                                        disabled
                                                        </c:if>>
											<option>Sélectionner</option>
											<option>PASSER</option>
											<option>REJETER</option>
											<option>RETOURNER</option>
									</select></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div
						style="display: flex; align-items: flex-end; gap: 15px; justify-content: flex-end;">
						<button type="submit" id="btnSaving" class="ui green button"
							<c:if test="${((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Assignation'))||(sessionScope.Parcouror eq 'oui')||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Rejeter'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Terminer'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Postage'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Verification'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Comite'))|| (sessionScope.ProfilUser eq 'CI')||(sessionScope.cliquer eq 'oui') || (sessionScope.EtatDossierCredit eq 'Terminer')|| (sessionScope.EtatDossierCredit eq 'Rejeter') || ((sessionScope.ProfilUser eq 'BM') && (sessionScope.EtatDossierCredit eq 'Comite') && ((sessionScope.MontantProposition<=2000) || (sessionScope.MontantProposition>5000)))}">
                                                                        disabled
                                                        </c:if>>Valider</button>
					</div>
				</form>

				<form action="OperationPostageDossierCbs.php" method="post"
					class="ui form" style="margin-top: 20px">
					<div
						style="display: flex; align-items: flex-end; gap: 15px; justify-content: flex-end;">
						<input type="number" id="heure_visite_business" value="${NumCbs}"
							name="idcli" min="0" style="width: 35%;"
							placeholder="Inserer le numéro client dans CBS"
							<c:if test="${(sessionScope.EtatDossierCredit != 'Postage')|| (sessionScope.ok eq 'Félicitation,le postage est effectuer avec succés dans le CoreBanking Systéme !!!') || (sessionScope.error eq 'Désoler,le postage non effectuer !!!')}">
                                                                        disabled
                                                        </c:if>>
						<input type="number" id="TauxCautionModifValue1"
							value="${TauxCautionModifValue}" disabled
							name="TauxCautionModifValue1" min="0" style="width: 35%;"
							placeholder="Inserer le taux caution supplementaire appouver !!!"
							<c:if test="${(sessionScope.EtatDossierCredit != 'Postage')|| (sessionScope.ok eq 'Félicitation,le postage est effectuer avec succés dans le CoreBanking Systéme !!!') || (sessionScope.error eq 'Désoler,le postage non effectuer !!!')}">
                                                                        disabled
                                                        </c:if>>
						<button type="submit" id="btnPostage" class="ui teal button"
							<c:if test="${(sessionScope.EtatDossierCredit != 'Postage') || (sessionScope.ok eq 'Félicitation,le postage est effectuer avec succés dans le CoreBanking Systéme !!!') || (sessionScope.error eq 'Désoler,le postage non effectuer !!!')}">
                                                                        disabled
                                                        </c:if>>Poster
							Dossier dans CBS</button>
					</div>
				</form>

			</div>


		</div>
	</div>



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

				var menuHistorique = document.getElementById('menuHistorique');
				menuHistorique.style.display = 'none';

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

	<c:if
		test="${((sessionScope.EtatDossierCredit eq 'Creation')&& (sessionScope.ProfilUser eq 'BM'))|| ((sessionScope.EtatDossierCredit eq 'Analyse')&& (sessionScope.ProfilUser eq 'BM'))|| ((sessionScope.EtatDossierCredit eq 'Verification')&& (sessionScope.ProfilUser eq 'BM'))|| ((sessionScope.EtatDossierCredit eq 'Postage')&& (sessionScope.ProfilUser eq 'BM')) || ((sessionScope.EtatDossierCredit eq 'Terminer')&& (sessionScope.ProfilUser eq 'BM'))}">
		<script>
			var btnSaving = document.getElementById('btnSaving');
			btnSaving.style.display = 'none';
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