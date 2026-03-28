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
<script src="./js/fecth4.js"></script>
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

<script>

/* Fix espacement titres Semantic UI */
.ui.segment > .ui.dividing.header {
  margin-top: 0.8rem !important;
  margin-bottom: 1.2rem !important;
  padding-top: 0.5rem;
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
				<li class="link" id="menucreditGP"><a href="CreditGL.php"><i
						class="users icon" style="visibility: visible;"></i>Crédit de
						groupe</a></li>
				<li class="link active" id="rapportwf"><a
					href="PageReporting.php"><i class="chart pie icon"
						style="visibility: visible;"></i>Rapport</a></li>
			</ul>
		</div>
	</aside>

	<div class="content">
		<div class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Informations sur le Groupe Lisanga</h2>
			<hr>

			<div class="ui form">
				<div class="three fields">
					<div class="field">
						<label>Numero Groupe CBS</label> <input type="number"
							value="${NumeroGroupeCBS}" disabled>
					</div>

					<div class="field">
						<label>Nom du Groupe</label> <input type="text"
							value="${NomGroupeLisanga}" disabled>
					</div>

					<div class="field">
						<label>Cycle Groupe</label> <input type="number"
							value="${NbrCycleGroupe}" disabled>
					</div>
				</div>

				<div class="three fields">
					<div class="field">
						<label>Branche</label> <input type="text"
							value="${BrancheUserConnecter}" disabled>
					</div>

					<div class="field">
						<label>Promoteur</label> <select class="ui dropdown" disabled>
							<option>${PromoteurGroupe}</option>
							<c:forEach items="${ListePromoteur}" var="p">
								<option>${p.libelleuser}</option>
							</c:forEach>
						</select>
					</div>

					<div class="field">
						<label>Superviseur</label> <select class="ui dropdown" disabled>
							<option>${SuperviseurGL}</option>
							<c:forEach items="${ListeSuperviseur}" var="s">
								<option>${s.libelleuser}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="field">
					<label>Chef d’Agence</label> <input type="text"
						value="${NomsChefAgence}" disabled>
				</div>
			</div>
		</div>

		<div class="ui blue segment canscroll">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Membres du Groupe Lisanga</h2>
			<hr>

			<table class="ui celled striped compact table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Numero CBS</th>
						<th>Noms</th>
						<th>Sexe</th>
						<th>Catégorie</th>
						<th>Etat civil</th>
						<th>Date naissance</th>
						<th>Adresse</th>
						<th>Société</th>
						<th>Fonction</th>
						<th>Salaire</th>
						<th>Photos</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeMembreGroupeGL}" var="m">
						<tr>
							<td>${m.idclientmembregl}</td>
							<td>${m.numclientmembrecbs}</td>
							<td>${m.nomscompletclientlisanga}</td>
							<td>${m.sexemembregroupe}</td>
							<td>${m.categoriemembregroupe}</td>
							<td>${m.etatcivilclilisanga}</td>
							<td>${m.datenaissancemembregroupe}</td>
							<td>${m.adressemembregroupe}</td>
							<td>${m.societemembregl}</td>
							<td>${m.fonctionsocietemembreg}</td>
							<td>${m.salairemembregl}</td>
							<td><a class="ui tiny blue button" target="_blank"
								href="ReturnPhotosClient3.php?idclient=${m.idclientmembregl}&nomsCompletCliGL=${m.nomscompletclientlisanga}">
									<i class="image icon"></i> Voir
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="ui blue segment canscroll">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Informations sur la Demande de Prêt
				GL</h2>
			<hr>

			<table class="ui celled compact table">
				<thead>
					<tr>
						<th>N°</th>
						<th>Date</th>
						<th>Membre</th>
						<th>Etat</th>
						<th>Cycle</th>
						<th>Dépôt</th>
						<th>Caution</th>
						<th>Total Épargne</th>
						<th>Prêt Sollicité</th>
						<th>Prêt Accordé</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeInformationDossierGL}" var="d">
						<tr>
							<td>${d.numdossierglgl}</td>
							<td>${d.datedossierglgl}</td>
							<td>${d.nomsclientmembredosgl}</td>
							<td>${d.etatdossierglgl}</td>
							<td>${d.cycleglgl}</td>
							<td>${d.depotavuegl}</td>
							<td>${d.cautionfinancieregl}</td>
							<td>${d.totalepargnegl}</td>
							<td>${d.pretsollicitegl}</td>
							<td>${d.pretaccordergl}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Statistiques Globales du Groupe (TG)</h2>
			<hr>
			<div class="ui form">
				<div class="four fields">
					<div class="field">
						<label>Total Dépôt à Vue</label> <input type="number"
							value="${TotalGeneralDepotAvueGL}" disabled>
					</div>
					<div class="field">
						<label>Total Épargne</label> <input type="number"
							value="${TotalGeneralEpargneGL}" disabled>
					</div>
					<div class="field">
						<label>Total Caution Financière</label> <input type="number"
							value="${TotalGeneralCautionFinanciereGL}" disabled>
					</div>
					<div class="field">
						<label>Total Dernier Prêt</label> <input type="number"
							value="${TotalGeneralDernierPretGL}" disabled>
					</div>
				</div>

				<div class="four fields">
					<div class="field">
						<label>Total Prêt Sollicité</label> <input type="number"
							value="${TotalGeneralPretSolliciteGL}" disabled>
					</div>
					<div class="field">
						<label>Total Prêt Accordé</label> <input type="number"
							value="${TotalGeneralPretAccorderACGL}" disabled>
					</div>
					<div class="field">
						<label>Total Frais</label> <input type="number"
							value="${TotalGeneralFraisGL}" disabled>
					</div>
					<div class="field">
						<label>Total Assurance</label> <input type="number"
							value="${TotalGeneralAssuranceGL}" disabled>
					</div>
				</div>
			</div>
		</div>

		<section class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Information Business Client GL</h2>
			<hr>
			<input type="hidden" id="stock_business_id" value="0"> <input
				type="hidden" id="stock_business_version" value="0">

			<table class="ui celled striped selectable table"
				id="table-business-gl">
				<thead>
					<tr>
						<th>N°</th>
						<th>Nom Client</th>
						<th>Activité</th>
						<th>Adresse</th>
						<th>Expérience</th>
						<th>Rotation Hebdo ($)</th>
						<th>Capital ($)</th>
						<th>Bénéfices Hebdo ($)</th>
						<th>Téléphone</th>
						<th>Commentaire</th>
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
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>

		<section class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Information Financière Client GL</h2>
			<hr>

			<table class="ui celled striped selectable table"
				id="table-finance-gl">
				<thead>
					<tr>
						<th>N°</th>
						<th>Nom Client</th>
						<th>Total à payer ($)</th>
						<th>Montant prêt ($)</th>
						<th>Épargne brute ($)</th>
						<th>Épargne ($)</th>
						<th>Remboursement ($)</th>
						<th>Total remboursé ($)</th>
						<th>Commentaire</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeInformationFinancireClientGL}" var="SPP">
						<tr>
							<td>${SPP.idinfofinanciereglglgl}</td>
							<td>${SPP.nomsclientmembredosgl}</td>
							<td>${SPP.totalapayerglglgl}</td>
							<td>${SPP.montantpretglglgl}</td>
							<td>${SPP.epargnebruteglglgl}</td>
							<td>${SPP.epargneglglgl}</td>
							<td>${SPP.remboursementglglgl}</td>
							<td>${SPP.totalremboursementglglgl}</td>
							<td>${SPP.commentaireinfofinancireglglgl}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>

		<section class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Information Client GL / Quitte</h2>
			<hr>

			<table class="ui celled striped selectable table"
				id="table-quitte-gl">
				<thead>
					<tr>
						<th>N°</th>
						<th>Numéro Membre</th>
						<th>Nom Client</th>
						<th>Date Quitte</th>
						<th>Cycle Crédit</th>
						<th>Raison Sociale</th>
						<th>Montant Épargne</th>
						<th>Statut</th>
						<th>Commentaire</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListetListeInformationClientQuitteGroupeCycle}"
						var="SPPQ">
						<tr>
							<td>${SPPQ.idquitte}</td>
							<td>${SPPQ.numclientquitte}</td>
							<td>${SPPQ.nomsclientglquite}</td>
							<td>${SPPQ.datequitte}</td>
							<td>${SPPQ.cyclequitte}</td>
							<td>${SPPQ.raisonsocialquitte}</td>
							<td>${SPPQ.montantepargnemquitte}</td>
							<td>
								<div class="ui label">${SPPQ.statutquitte}</div>
							</td>
							<td>${SPPQ.commquitte}</td>
							<td><a class="ui mini primary button"
								href="ReturnPhotosClient3.php?idclient=${SPPQ.numclientquitte}&nomsCompletCliGL=${SPPQ.nomsclientglquite}"
								target="_blank" rel="noopener"> Photos </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
















		<div class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Avis du Superviseur</h2>
			<hr>

			<div class="ui form">
				<div class="two fields">
					<div class="field">
						<label>Nom du Superviseur</label> <input type="text"
							value="${NomsSuperviseurGLEva}" disabled>
					</div>
					<div class="field">
						<label>Décision</label> <input type="text"
							value="${AppreciationEvaluationGL}" disabled>
					</div>
				</div>

				<div class="field">
					<label>Commentaire</label>
					<textarea disabled>${commentaireEvaluationGL}</textarea>
				</div>
			</div>
		</div>

		<div class="ui blue segment canscroll">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Avis du Département Risque</h2>
			<hr>

			<div class="ui form">
				<div class="two fields">
					<div class="field">
						<label>Responsable Risque</label> <input type="text"
							value="${NomsResponsableRisqueGL}" disabled>
					</div>
					<div class="field">
						<label>Avis</label> <input type="text"
							value="${AppreciationRisqueGL}" disabled>
					</div>
				</div>

				<div class="field">
					<label>Commentaire</label>
					<textarea disabled>${commentaireRisqueGL}</textarea>
				</div>
			</div>
		</div>


		<div class="ui blue segment canscroll">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Décision du Comité</h2>
			<hr>

			<div class="ui form">
				<div class="three fields">
					<div class="field">
						<label>Date Comité</label> <input type="date"
							value="${DateComiteGLCom}" disabled>
					</div>
					<div class="field">
						<label>Décision</label> <input type="text"
							value="${DecisionComiteGLCom}" disabled>
					</div>
					<div class="field">
						<label>Membre Décideur</label> <input type="text"
							value="${DecideurComiteGLCom}" disabled>
					</div>
				</div>

				<div class="field">
					<label>Commentaire</label>
					<textarea disabled>${CommentaireComiteGLCom}</textarea>
				</div>
			</div>
		</div>


		<div class="ui blue segment canscroll">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Documents PV Comité</h2>
			<hr>

			<table class="ui celled striped table">
				<thead>
					<tr>
						<th>#</th>
						<th>Date</th>
						<th>Description</th>
						<th>Fichier</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeCompleteInformationsDocumentPVComitegl}"
						var="d">
						<tr>
							<td>${d.idfichierdoc}</td>
							<td>${d.dateenrfichierdoc}</td>
							<td>${d.descriptionfichierdoc}</td>
							<td>${d.fichierdoc}</td>
							<td><a class="ui blue tiny button" target="_blank"
								href="VisualisationDocumentPVGL.php?numdocumentpv=${d.idfichierdoc}">
									<i class="eye icon"></i> Voir
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="ui blue segment canscroll">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Documents Business GL</h2>
			<hr>

			<table class="ui celled striped table">
				<thead>
					<tr>
						<th>#</th>
						<th>Date</th>
						<th>Description</th>
						<th>Fichier</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeCompleteInformationsDocumentGL}" var="d">
						<tr>
							<td>${d.idfichierdoc}</td>
							<td>${d.dateenrfichierdoc}</td>
							<td>${d.descriptionfichierdoc}</td>
							<td>${d.fichierdoc}</td>
							<td><a class="ui green tiny button" target="_blank"
								href="VisualisationDocumentGL.php?numdocument=${d.idfichierdoc}">
									<i class="eye icon"></i> Voir
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div class="ui blue segment canscroll" data-tab="business-reunion">
			<section class="ui segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Information de la Réunion – Groupe
					Lisanga</h2>
				<hr>

				<input type="hidden" id="reunion_stock_id" value="0"> <input
					type="hidden" id="reunion_stock_version" value="0">

				<table class="ui celled striped selectable table"
					id="table-reunion-gl">
					<thead>
						<tr>
							<th>N°</th>
							<th>Date Réunion</th>
							<th>Heure Début</th>
							<th>Heure Fin</th>
							<th>Lieu</th>
							<th>Libellé Groupe</th>
							<th>Cycle Groupe</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeInfoReunionGL}" var="SPP">
							<tr>
								<td>${SPP.idreuniongl}</td>
								<td>${SPP.datereuniongl}</td>
								<td>${SPP.heuredebutreuniongl}</td>
								<td>${SPP.heurefinreuniongl}</td>
								<td>${SPP.lieureuniongl}</td>
								<td>${SPP.libellegrpforreuniongl}</td>
								<td>${SPP.cyclegrpreunion}</td>
								<td><a class="ui mini blue button"
									href="InformationPresenceReunionGL2.php?idreunion=${SPP.idreuniongl}">
										Visualiser </a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
		</div>

		<div class="ui blue segment canscroll"
			data-tab="business-categorisation">
			<section class="ui segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Catégorisation des Membres du Groupe</h2>
				<hr>

				<input type="hidden" id="categorie_stock_id" value="0"> <input
					type="hidden" id="categorie_stock_version" value="0">

				<table class="ui celled striped selectable table"
					id="table-categorisation-gl">
					<thead>
						<tr>
							<th>Membre du Groupe</th>
							<th>Remboursements Manqués</th>
							<th>Épargnes Manquées</th>
							<th>Absences Réunion</th>
							<th>Cycle</th>
							<th>Catégorisation</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListCategorisation}" var="SPP1">
							<tr>
								<td>${SPP1.nomcli}</td>
								<td>${SPP1.rm}</td>
								<td>${SPP1.em}</td>
								<td>${SPP1.abs}</td>
								<td>${SPP1.cycleok}</td>
								<td>
									<div class="ui small label">${SPP1.cat}</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
		</div>
	</div>


	<div class="ui fullscreen modal" id="exampleModal100025" tabindex="-1"
		aria-hidden="true">

		<div class="content">
			<div class="ui fluid card">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Information Presence Reunion Groupe</h2>
				<hr>

				<div class="content">
					<div class="ui grid">
						<div class="sixteen wide column">

							<table class="ui celled table" id="detailTable">
								<thead>
									<tr>
										<th><label for="id">DateReunion</label></th>
										<th><label for="produit">CycleGroupe</label></th>
										<th><label for="quantite">MembreGrp</label></th>
										<th><label for="quantite">RemboursEspére($)</label></th>
										<th><label for="produit">RemboursReunion($)</label></th>
										<th><label for="produit">EpargneEspére($)</label></th>
										<th><label for="prix_dachat">EpargneReunione($)</label></th>
										<th><label for="produit">Délegation</label></th>
										<th><label for="produit">StatutRembours</label></th>
										<th><label for="produit">StatutEpargne</label></th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${data}" var="item">
										<tr>
											<td>${item.datereunionpresencegl}</td>
											<td>${item.cyclegprreuniongl}</td>
											<td>${item.nomsmgl}</td>
											<td>${item.montantremboursesperegl}</td>
											<td>${item.montantremboursreuniongl}</td>
											<td>${item.montantepargneesperegl}</td>
											<td>${item.montantepargnereuniongl}</td>
											<td>${item.delegationreuniongl}</td>
											<td>${item.statutremboursementgl}</td>
											<td>${item.statutepargnegl}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="actions">
			<div class="ui cancel button">Fermer</div>
		</div>

	</div>

	<c:if test="${nbrUserSave > 0}">
		<script>
			Swal
					.fire({
						title : 'Message !',
						text : 'Désoler,le nombre maximal des membres est fixer à 5 !!!',
						icon : 'error',
						confirmButtonText : 'OK'
					});
		</script>
	</c:if>
	<c:if test="${nbrUserSave2 > 0}">
		<script>
			Swal
					.fire({
						title : 'Message !',
						text : 'Désoler,les mineurs ne sont pas autoriser à integrer le groupe !!!',
						icon : 'error',
						confirmButtonText : 'OK'
					});
		</script>
	</c:if>
	<c:choose>
		<c:when
			test="${(sessionScope.etatGroupGL eq 'Creation')|| (sessionScope.ajouter eq 'oui')}">
			<script>
				var BussnessClientGL = document
						.getElementById('BussnessClientGL');
				BussnessClientGL.style.display = 'none';

				var InfoFinanceClientGL = document
						.getElementById('InfoFinanceClientGL');
				InfoFinanceClientGL.style.display = 'none';

				var MembreQuitte = document.getElementById('MembreQuitte');
				MembreQuitte.style.display = 'none';

				var DocumentGL = document.getElementById('DocumentGL');
				DocumentGL.style.display = 'none';

				var ComiteGL = document.getElementById('ComiteGL');
				ComiteGL.style.display = 'none';

				var EvaluationGL = document.getElementById('EvaluationGL');
				EvaluationGL.style.display = 'none';
			</script>
		</c:when>
	</c:choose>
	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
  $('#exampleModal100025')
    .modal('show');
</script>

</body>
</html>