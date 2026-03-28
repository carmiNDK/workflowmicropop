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
<title>KwikLoan : Crédit de groupe</title>
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
				<li class="link active" id="menucreditGP"><a
					href="CreditGL.php"><i class="users icon"
						style="visibility: visible;"></i>Crédit de groupe</a></li>
				<li class="link" id="rapportwf"><a href="PageReporting.php"><i
						class="chart pie icon" style="visibility: visible;"></i>Rapport</a></li>
			</ul>
		</div>
	</aside>

	<div class="content">
		<div class="content-with-nav">
			<div class="content-nav">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item " role="presentation"><a
						href="DemandeGL.php" class="nav-link" type="button" role="tab"
						aria-selected="true">FormationG/Membre</a></li>
					<li id="DemandePretGL" class="nav-item" role="presentation"><a
						href="DemandePretGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Demande-Prét</a></li>
					<li id="BussnessClientGL" class="nav-item" role="presentation"><a
						href="BussnessClientGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Informations-Bussness</a></li>
					<li id="InfoFinanceClientGL" class="nav-item" role="presentation"><a
						href="InfoFinanceClientGL.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Informations-Financieres</a></li>
					<li id="MembreQuitte" class="nav-item" role="presentation"><a
						href="MembreQuitte.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Membre/Quitte</a></li>
					<li id="DocumentGL" class="nav-item" role="presentation"><a
						href="DocumentGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Document</a></li>
					<li id="EvaluationGL" class="nav-item" role="presentation"><a
						href="EvaluationGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Evaluation</a></li>
					<li id="ComiteGL" class="nav-item" role="presentation"><a
						href="ComiteGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Comite</a></li>
					<li id="FluxGL" class="nav-item" role="presentation"><a
						href="FluxGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Flux</a></li>
				</ul>
			</div>

		</div>

		<div class="page-content">

			<div class="demande-container"></div>

		</div>
		<div class="tab-membres">

			<div class="ui blue segment table-responsive"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
					Bussness Client GL</h2>
				<hr>
				<p style="color: red;">${error}</p>
				<div class="ui grid">
					<div class="row">
						<div class="twelve wide column"></div>
						<div class="four wide column"
							style="display: flex; justify-content: flex-end; align-items: flex-end;">
							<!-- Contenu pour la colonne de 4 -->
							<button id="btnAdd" type="button" class="ui button primary"
								data-bs-toggle="modal" data-bs-target="#exampleModal"
								onclick="$('#exampleModal').modal('show')">Ajouter</button>
						</div>
					</div>
				</div>

				<table class="ui celled table" id="tab_AB_Stock">
					<thead>
						<tr>
							<th><label>N°</label></th>
							<th><label>NomsClientMembre</label></th>
							<th><label>Activite</label></th>
							<th><label>AdresseActivite</label></th>
							<th><label>ExperienceBussness</label></th>
							<th><label>RotationHebdo($)</label></th>
							<th><label>CapitalBussness($)</label></th>
							<th><label>BeneficesHebdo($)</label></th>
							<th><label>TelephoneBussness</label></th>
							<th><label>CommentaireBussness</label></th>
							<th><label></label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeInformationBussenessClientGL}" var="SPP">
							<tr>
								<td>${SPP.idbussnessglb}</td>
								<td>${SPP.nomsclientmembredosgl}</td>
								<td>${SPP.activitebussnessglb}</td>
								<td>${SPP.adressebussnessglb}</td>
								<td>${SPP.experiencebussnessglb}</td>
								<td>${SPP.rotationhebdoglb}</td>
								<td>${SPP.capitalbussnessglb}</td>
								<td>${SPP.beneficeshebdoglb}</td>
								<td>${SPP.numtelephoneglb}</td>
								<td>${SPP.commentairebussnessglb}</td>
								<td><c:if
										test="${(sessionScope.etatGroupGL eq 'Creation') || (sessionScope.etatGroupGL eq 'Analyse')}">
										<a class="ui teal button"
											href="GetInformationBussnessClientGL.php?numbussnessgl=${SPP.idbussnessglb}"><i
											class="edit icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="ui modal" id="exampleModal">

			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Modification Bussness Client GL</h2>
				<hr>
				<form class="ui form" action="UpdateBussnessClientGL.php"
					method="post">
					<input type="hidden" value="${idBussnessClientGL}"
						name="idBussnessClientGL">
					<div class="fields">

						<div class="eight wide column field">
							<label>NomsMembreGroupe :</label> <select
								name="NomsMembreGroupeGL" id="NomsMembreGroupeGL"
								class="ui dropdown" required>
								<option selected>${NomsMembreGroupeGL}</option>
								<c:forEach items="${ListeMembreGroupe}" var="ListeM">
									<option>${ListeM.nomscompletclientlisanga}</option>
								</c:forEach>
							</select>
						</div>
						<div class="eight wide column field ">
							<label>Activité :</label> <input type="text" id="ActiviteCliGL"
								name="ActiviteCliGL" required value="${ActiviteCliGL}">
						</div>
					</div>

					<div class="fields">
						<div class="eight wide column field">
							<label>AdresseActivite :</label> <input type="text"
								id="AdresseActiviteCliGL" name="AdresseActiviteCliGL" required
								value="${AdresseActiviteCliGL}">
						</div>

						<div class="eight wide column field">
							<label>ExperienceBussness :</label> <input type="text"
								id="ExperienceBussnessCliGL" name="ExperienceBussnessCliGL"
								required value="${ExperienceBussnessCliGL}">
						</div>

					</div>

					<div class="fields">

						<div class="eight wide column field">
							<label>RotationHebdo :</label> <input type="number"
								id="RotationHebdoCliGL" name="RotationHebdoCliGL" required
								value="${RotationHebdoCliGL}" min="0" step="0.01">
						</div>

						<div class="eight wide column field">
							<label>CapitalBussness ($) :</label> <input type="number"
								id="CapitalBussnessCliGL" name="CapitalBussnessCliGL" required
								value="${CapitalBussnessCliGL}" min="0" step="0.01">
						</div>

					</div>
					<div class="fields">

						<div class="eight wide column field">
							<label>BeneficesBussness ($) :</label> <input type="number"
								id="BeneficesBussnessCliGL" name="BeneficesBussnessCliGL"
								required value="${BeneficesBussnessCliGL}" min="0" step="0.01">
						</div>

						<div class="eight wide column field">
							<label>TelephoneBussness :</label> <input type="number"
								id="TelephoneBussnessCliGL" name="TelephoneBussnessCliGL"
								required
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);"
								value="${TelephoneBussnessCliGL}">
						</div>
					</div>


					<div class="field">
						<label>Commentaire :</label>
						<textarea name="commentaireBussnessCliGL"
							id="commentaireBussnessCliGL" rows="5" required>${commentaireBussnessCliGL}</textarea>
					</div>


					<div class="actions"
						style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
						<a href="BussnessClientGL.php" class="ui primary button">
							Annuler </a>
						<button type="button"
							onclick="$('.ui.modifier-modal').modal('show');"
							class="ui large primary right labeled icon button">
							<i class="checkmark icon"></i> Modifier
						</button>
					</div>
				</form>
			</div>
		</div>

		<c:choose>
			<c:when test="${sessionScope.EtatDossierCredit eq 'Creation'}">
				<script>
					var menuFamille = document.getElementById('menuFamille');
					menuFamille.style.display = 'none';

					var menuBussness1 = document
							.getElementById('menuBussness1');
					menuBussness1.style.display = 'none';

					var menuBussness2 = document
							.getElementById('menuBussness2');
					menuBussness2.style.display = 'none';

					var menuBussness3 = document
							.getElementById('menuBussness3');
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

					var EvaluationGL = document.getElementById('EvaluationGL');
					EvaluationGL.style.display = 'none';
				</script>
			</c:when>

			<c:when test="${sessionScope.EtatDossierCredit eq 'Assignation'}">
				<script>
					var menuFamille = document.getElementById('menuFamille');
					menuFamille.style.display = 'none';

					var menuBussness1 = document
							.getElementById('menuBussness1');
					menuBussness1.style.display = 'none';

					var menuBussness2 = document
							.getElementById('menuBussness2');
					menuBussness2.style.display = 'none';

					var menuBussness3 = document
							.getElementById('menuBussness3');
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


		<script src="./js/jquery.js"></script>
		<script src="assets/dataTables.js"></script>
		<script src="assets/dataTables.semanticui.min.js"></script>
		<script src="assets/semanticui/semantic.min.js"></script>
		<script src="./js/main.js"></script>

		<script>
			$(document).ready(function() {
				$('#exampleModal').modal({
					closable : false,
					allowMultiple : true
				// IMPORTANT
				// Empêche la fermeture du modal
				}).modal('show'); // Affiche le modal
			});
		</script>


		<div class="ui small modal modifier-modal">
			<div class="header">
				<i class="edit icon"></i> Confirmation de Modification
			</div>

			<div class="content">
				<p>
					Voulez-vous vraiment modifier ?<br> Cette action est
					irréversible.
				</p>
			</div>

			<div class="actions">
				<div class="ui black deny button">Annuler</div>

				<button type="button" class="ui green approve button"
					onclick="document.querySelector('#exampleModal form').submit();">
					<i class="check icon"></i> Oui, modifier
				</button>
			</div>
		</div>


		<script>
			$(document).ready(function() {
				$('.ui.modal').modal({
					allowMultiple : true
				});

			});
		</script>
</body>

</html>