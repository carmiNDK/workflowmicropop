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
						href="DocumentPage.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Documents</a></li>
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
						href="FluxPage.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Flux</a></li>
				</ul>
			</div>

		</div>

		<div class="page-content">
			<div class="demande-container"></div>
		</div>
		<div class="ui red message"
			style="display: ${error != null ? 'block' : 'none'}">${error}</div>
		<div class="tab-membres">
			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Documents du
					business</h2>
				<hr>
				<div class="field"
					style="display: flex; justify-content: flex-end; align-items: flex-end;">
					<!-- Contenu pour la colonne de 4 -->
					<button id="btnAdd" type="button" class="ui primary button"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						data-bs-whatever="@mdo"
						<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.ProfilUser eq 'CI')||((sessionScope.ProfilUser !='RC') && (sessionScope.EtatDossierCredit eq 'Comite'))||(sessionScope.EtatDossierCredit eq 'Assignation') || (sessionScope.EtatDossierCredit eq 'Postage') || (sessionScope.EtatDossierCredit eq 'Terminer')|| (sessionScope.EtatDossierCredit eq 'Rejeter')}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
				</div>

				<table id="docs_tab" class="ui celled table">
					<thead>
						<tr>
							<th scope="col"><span class="fs-6"><b>#</b></span></th>
							<th scope="col"><span class="fs-6"><b>Date
										Enregistrement</b></span></th>
							<th scope="col"><span class="fs-6"><b>Description</b></span></th>
							<th scope="col"><span class="fs-6"><b>Fichier</b></span></th>
							<th scope="col"><span class="fs-6"><b>Actions</b></span></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeCompleteInformationsDocument}"
							var="fichdoc">
							<tr>
								<td>${fichdoc.idfichierdoc}</td>
								<td>${fichdoc.dateenrfichierdoc}</td>
								<td>${fichdoc.descriptionfichierdoc}</td>
								<td>${fichdoc.fichierdoc}</td>
								<td><a
									href="VisualisationDocument.php?numdocument=${fichdoc.idfichierdoc}"
									target="_blank"><i class="eye icon"></i></a></td>

								<td><c:if
										test="${(sessionScope.EtatDossierCredit eq 'Verification') || (sessionScope.EtatDossierCredit eq 'Analyse')}">
										<a class="ui mini red icon button btn-delete" data-id=""
											onclick="$('.ui.modifier-modal').modal('show');"
											data-url="SupprimerDocumentILok.php?numdocumentID=${fichdoc.idfichierdoc}"><i
											class="trash icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Contrats</h2>
				<hr>
				<table id="contrats_tab" class="ui celled table"
					<c:if
					test="${(sessionScope.EtatDossierCredit eq 'Rejeter') ||(sessionScope.EtatDossierCredit eq 'Terminer') ||(sessionScope.EtatDossierCredit eq 'Creation') ||(sessionScope.EtatDossierCredit eq 'Assignation') || (sessionScope.EtatDossierCredit eq 'Comite') || (sessionScope.EtatDossierCredit eq 'Postage') || (sessionScope.EtatDossierCredit eq 'Analyse')}">
                                                                        style="display: none;"
                                                        </c:if>>
					<thead>
						<tr>
							<th scope="col"><span class="fs-6"><b>#</b></span></th>
							<th scope="col"><span class="fs-6"><b>Description</b></span></th>
							<th scope="col"><span class="fs-6"><b></b></span></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Contrat Individuel</td>
							<td><a class="ui mini blue circular icon button"
								href="ReturnContratPretIL.php?numdoss=${NumDossierCreditD}"
								target="_blank"><i class="download icon"></i></a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Contrat Gage</td>
							<td><a class="ui mini blue circular icon button"
								href="ReturnContratGageIL.php?numdoss=${NumDossierCreditD}"
								target="_blank"><i class="download icon"></i></a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Contrat Cautionnement</td>
							<td><a class="ui mini blue circular icon button"
								href="ReturnContratCautionnementIL.php?numdoss=${NumDossierCreditD}"
								target="_blank"><i class="download icon"></i></a></td>
						</tr>

						<tr>
							<td>4</td>
							<td>Fiche Evaluation Garantie</td>
							<td><a class="ui mini blue circular icon button"
								href="ReturnRapportEvaGarantiePretIL.php?numdoss=${NumDossierCreditD}"
								target="_blank"><i class="download icon"></i></a></td>
						</tr>

						<tr>
							<td>5</td>
							<td>Lettre d'Offre</td>
							<td><a class="ui mini blue circular icon button"
								href="ReturnLettreOffrePretIL.php?numdoss=${NumDossierCreditD}"
								target="_blank"><i class="download icon"></i></a></td>
						</tr>

					</tbody>
				</table>



			</div>

		</div>
	</div>

	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModal">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Ajouter document
			</h2>
			<hr>
			<form class="ui form" action="EnregistrementDocument.php"
				method="post" enctype="multipart/form-data">

				<div class="field">
					<label>Description :</label>
					<textarea name="txtdesc" id="description" required></textarea>
				</div>

				<div class="field">
					<label>Choisir le fichier :</label> <input type="file"
						name="txtFile" id="fileSelector" required>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<c:if
		test="${(sessionScope.EtatDossierCredit eq 'Creation') || (empty sessionScope.EtatDossierCredit)}">
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
		</script>
	</c:if>

	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		// Ouvrir le modal Fomantic UI
		$('#btnAdd').click(function() {
			$('#exampleModal').modal('show');
		});
	</script>

	<div class="ui tiny modal delete-modal">
		<div class="header">
			<i class="trash icon"></i> Confirmation de Suppression
		</div>

		<div class="content">
			<p>
				Voulez-vous vraiment supprimer ?<br> Cette action est
				irréversible.
			</p>
		</div>

		<div class="actions">
			<div class="ui black deny button">Annuler</div>

			<a id="confirmDelete" class="ui red approve button"> <i
				class="check icon"></i> Oui, supprimer
			</a>
		</div>
	</div>

	<script>
		$(document).ready(function() {

			// Autorise plusieurs modals superposés
			$('.ui.modal').modal({
				allowMultiple : true
			});

			// Quand on clique sur une icône delete
			$('.btn-delete').click(function(e) {
				e.preventDefault(); // empêcher navigation immédiate

				const
				url = $(this).data('url'); // récupérer l'URL du document

				// Injecter le lien dans le bouton "Oui, supprimer"
				$('#confirmDelete').attr('href', url);

				// Afficher la modal de confirmation
				$('.delete-modal').modal('show');
			});

		});
	</script>

</body>
</html>