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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet" href="assets/semanticui/semantic.min.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/sidebar.css">
<link rel="stylesheet" href="./css/nav.css">
<link rel="stylesheet" href="./css/home.css">
<script
	src="https://cdn.jsdelivr.net/npm/xlsx@0.18.5/dist/xlsx.full.min.js"></script>
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


<title>KwikLoan : Rapport</title>
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
				<li class="link" id="useradm"><a href="UserPage.php"><i
						class="user circle icon" style="visibility: visible;"></i>Utilisateurs</a></li>
				<li class="link" id="para"><a href="ParametrageModule.php"><i
						class="cog icon" style="visibility: visible;"></i>Paramètres</a></li>

			</ul>

		</div>
	</aside>

	<div class="content">
		<div class="page-header">
			<div class="page-header-left">
				<h2 class="page-header-title">Rapports</h2>

			</div>
		</div>

		<div class="page-content" id="Par">
			<h2
				class="tw-text-gray-900 tw-text-lg tw-font-bold tw-leading-tight tw-text-inter"
				style="margin-bottom: 20px;">Aperçu de la santé de votre
				portefeuille</h2>

			<div
				class="tw-grid tw-grid-cols-1 sm:tw-grid-cols-2 lg:tw-grid-cols-3 tw-gap-6"
				id="numberdiv">
				<div
					class="tw-bg-white  tw-p-4 tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card tw-flex tw-items-center">
					<div
						class="tw-p-3 tw-rounded-full bg-blue-100 tw-text-primary tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">account_balance_wallet</span>
					</div>
					<div>
						<p class="tw-text-sm tw-text-gray-500 tw-font-medium">Portefeuille
							total</p>
						<p class="tw-text-2xl tw-font-bold tw-text-gray-900 twtext-inter">$
							${PortefeuilleAC}</p>
					</div>
				</div>
				<div
					class="tw-bg-white  tw-p-4 tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card tw-flex tw-items-center">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-red-100 tw-text-status-red mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">warning</span>
					</div>
					<div>
						<p class="tw-text-sm tw-text-gray-500 tw-font-medium"
							style="padding-left: 12px;">Portefeuille à Risque (PAR)</p>
						<p class="tw-text-2xl tw-font-bold tw-text-gray-900 tw-text-inter"
							style="padding-left: 12px;">$
							${EncourTotalPortefeuilleArisque}</p>
					</div>
				</div>
				<div
					class="tw-bg-white  tw-p-4 tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card tw-flex tw-items-center">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-red-100 tw-text-status-red tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">trending_down</span>
					</div>
					<div>
						<p class="tw-text-sm tw-text-gray-500 tw-font-medium">% PAR</p>
						<p class="tw-text-2xl tw-font-bold tw-text-gray-900 tw-text-inter">${ParEnPourcentage}%</p>
					</div>
				</div>

			</div>
		</div>

		<div class="ui blue segment">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Rapport des
				dossiers credit IL par état / Branche</h2>
			<hr />
			<form action="InformationDossierParBranche.php" method="post"
				class="ui form" style="margin-top: 30px;">

				<div class="ui grid">
					<div class="row">
						<div class="five wide column">
							<div class="field">
								<label for="">Branche :</label> <select class="ui dropdown"
									name="BrancheV" id="BrancheV" required="required">
									<option selected>${BrancheV}</option>
									<c:forEach items="${ListeAgenceVV}" var="listeB1">
										<option>${listeB1.libellebranche}</option>
									</c:forEach>
								</select>
							</div>

						</div>

						<div class="five wide column">
							<div class="field">
								<label for="">Etat du dossier :</label> <select
									class="ui dropdown" name="EtatDossierV" id="EtatDossierV"
									required="required">
									<option selected>${EtatDossierV}</option>
									<option>Creation</option>
									<option>Assignation</option>
									<option>Analyse</option>
									<option>Comite</option>
									<option>Verification</option>
									<option>Postage</option>
									<option>Terminer</option>
									<option>Rejeter</option>
								</select>
							</div>

						</div>

						<div class="three wide column">
							<div class="field">
								<label for="">Nombre de dossier :</label> <input type="text"
									style="width: 100%;" value="${nbrdossierParEtat}" disabled>
							</div>

						</div>

						<div class="three wide column">
							<div class="field">
								<label style="color: white">jj</label>
								<button type="submit" id="btnSave" class="ui primary button">
									<i class="search icon"></i>
								</button>
								<button type="button" id="btnPrint" class="ui green button">
									<i class="print icon"></i>
								</button>
							</div>

						</div>

					</div>

				</div>

			</form>

			<div class="canscroll" style="margin-top: 25px; min-height: 150px;">
				<table id="myTable20" class="ui celled table">
					<thead>
						<tr>
							<th scope="col">NumClientWF</th>
							<th scope="col">NumDossierWF</th>
							<th scope="col">DateDemande</th>
							<th scope="col">MontantDemande($)</th>
							<th scope="col">MontantApprouver($)</th>
							<th scope="col">NbrEchéanceDemander(mois)</th>
							<th scope="col">NbrEchéanceApprouver(mois)</th>
							<th scope="col">Statut</th>
							<th scope="col">Branche</th>
							<th scope="col">Demandeur</th>
							<th scope="col">Initiateur</th>
							<th scope="col">AnalysteCredit</th>
							<th scope="col">DateFluxCreation</th>
							<th scope="col">DateFluxAssignation</th>
							<th scope="col">DateFluxAnalyse</th>
							<th scope="col">DateFluxComite</th>
							<th scope="col">DateFluxVerif</th>
							<th scope="col">DateFluxPostage</th>
							<th scope="col">DateFluxTerminer</th>
							<th scope="col"></th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody id="testBody" class="table-striped">
						<c:forEach items="${ListeDossierCreditIndividuelReporting}"
							var="rr">
							<tr>
								<td>${rr.numclientil}</td>
								<td>${rr.numerodossieril}</td>
								<td>${rr.datedossieril}</td>
								<td>${rr.montantdossieril}</td>
								<td>${rr.montantapprouvedossieril}</td>
								<td>${rr.echeancedossieril}</td>
								<td>${rr.echeanceapprouverdossieril}</td>
								<td>${rr.statutdossieril}</td>
								<td>${rr.agencedossieril}</td>
								<td>${rr.nomscompletclientdemandeurdossieril}</td>
								<td>${rr.nomscompletinitiateurdemandedossieril}</td>
								<td>${rr.nomscompletanalystedossieril}</td>
								<td>${rr.datefluxcreationdossieril}</td>
								<td>${rr.datefluxassignationdossieril}</td>
								<td>${rr.datefluxanalysedossieril}</td>
								<td>${rr.datefluxcomitedossieril}</td>
								<td>${rr.datefluxverificationdossieril}</td>
								<td>${rr.datefluxpostagedossieril}</td>
								<td>${rr.datefluxterminerdossieril}</td>
								<td><a class="ui mini teal icon button btn-edit"
									title="Voir la photo"
									href="ReturnPhotosClient2.php?idclient=${rr.numclientil}"
									target="_blank"><i class="image icon"></i></a></td>
								<td><c:if
										test="${(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'SUP')}">
										<a
											href="ReturneInformationDossierCredit2.php?numdoss=${rr.numerodossieril}"><i
											class="yellow folder open icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>

		<div class="ui blue segment">
			<div class="card">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Rapport des
					dossiers credit GL par état / Branche</h2>
				<hr />
				<div class="card-body" style="margin-top: 15px;">
					<form action="InformationDossierGLParBranche.php" method="post">
						<div class="ui grid">
							<div class="row middle aligned">

								<!-- Branche -->
								<div class="four wide column">
									<div class="field">
										<label>Branche :</label> <select class="ui fluid dropdown"
											name="BrancheVGL" id="BrancheVGL" required="required">
											<option selected>${BrancheVGL}</option>
											<c:forEach items="${ListeAgenceVV}" var="listeB1">
												<option>${listeB1.libellebranche}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- Etat dossier -->
								<div class="four wide column">
									<div class="field">
										<label>EtatDossier :</label> <select class="ui fluid dropdown"
											name="EtatDossierVGL" id="EtatDossierVGL" required="required">
											<option selected>${EtatDossierVGL}</option>
											<option>Creation</option>
											<option>Analyse</option>
											<option>Evaluation</option>
											<option>Comite</option>
											<option>Verification</option>
											<option>Postage</option>
											<option>Terminer</option>
											<option>Rejeter</option>
										</select>
									</div>
								</div>

								<!-- Nombre de groupe -->
								<div class="four wide column">
									<div class="field">
										<label>Nombre de Groupe :</label> <input type="text"
											value="${nbrdossierParEtatGL}" disabled>
									</div>
								</div>

								<!-- Boutons -->
								<div class="four wide column">
									<div class="field">
										<label style="visibility: hidden;">Actions</label>
										<button type="submit" id="btnSave" class="ui primary button">
											<i class="search icon"></i>
										</button>
										<button type="button" id="btnPrint2" class="ui green button">
											<i class="print icon"></i>
										</button>
									</div>
								</div>

							</div>
						</div>
					</form>
				</div>
				<br>
				<div class="card-body canscroll">
					<div class="row"">
						<div class="row"
							style="background-color: white; min-height: 150px;">
							<table id="myTable201" class="ui celled table">
								<thead>
									<tr>
										<th scope="col">ID</th>
										<th scope="col">NumGroupCbs</th>
										<th scope="col">NomGroupe</th>
										<th scope="col">Branche</th>
										<th scope="col">Promoteur</th>
										<th scope="col">Cycle</th>
										<th scope="col">StatutDossierGL</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody id="testBody" class="table-striped">
									<c:forEach items="${ListeDossierCreditGLRechercheParBranche}"
										var="LG1">
										<tr>
											<td>${LG1.idgroupelisanga}</td>
											<td>${LG1.numerogroupecbslisanga}</td>
											<td>${LG1.nomgroupelisanga}</td>
											<td>${LG1.branchegroupelisanga}</td>
											<td>${LG1.promoteurgroupelisanga}</td>
											<td>${LG1.nbrcyclegroupelisanga}</td>
											<td>${LG1.etatgroupgllisanga}</td>
											<td><c:if test="${sessionScope.ProfilUser eq 'CA'}">
													<a
														href="ReturnInformationDossierGL.php?numdoss=${LG1.idgroupelisanga}&cycle=${LG1.nbrcyclegroupelisanga}"><i
														class="yellow folder open icon"></i></a>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br>
						</div>
					</div>
					<br>
				</div>
			</div>
			<br>
		</div>

		<div class="ui blue segment">
			<div class="card">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Rapport
					Géneralisé des dossiers credit IL par Agent et Etat / en Nombre,
					Volume ($) et DuréeMoyenneTraitement</h2>
				<hr />
				<div class="card-body" style="margin-top: 15px;">
					<form action="InformationComptableDossierIL.php" method="post"
						class="ui form">
						<div class="ui grid">
							<div class="row">

								<div class="six wide column">
									<div class="field">
										<label for="">Branche :</label> <select name="BrancheV25"
											id="BrancheV25" class="ui dropdown" required="required">
											<option selected>${BrancheV25}</option>
											<c:forEach items="${ListeAgenceVV}" var="listeB1">
												<option>${listeB1.libellebranche}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="six wide column">
									<div class="field">
										<label for="">EtatDossier :</label> <select
											name="EtatDossierV25" id="EtatDossierV25" class="ui dropdown"
											required="required">
											<option selected>${EtatDossierV25}</option>
											<option>Analyse</option>
											<option>Comite</option>
											<option>Terminer</option>
										</select>
									</div>

								</div>

								<div class="four wide column">
									<div class="field">
										<label style="color: white">hhh</label>
										<button type="submit" id="btnSave" class="ui primary button">
											<i class="search icon"></i>
										</button>
										<button type="button" id="btnPrint3" class="ui green button">
											<i class="print icon"></i>
										</button>
									</div>

								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="card-body">
					<div class="canscroll" style="min-height: 150px;">
						<div class="row" style="background-color: white; margin-top: 15px">
							<table id="myTable2025" class="ui celled table">
								<thead>
									<tr>
										<th scope="col">Agent-Crédit</th>
										<th scope="col">Etat-Dossier</th>
										<th scope="col">NombreDossier</th>
										<th scope="col">Volume($)</th>
										<th scope="col">DuréeMoyenneTraitement(en Jour)</th>
									</tr>
								</thead>
								<tbody id="testBody" class="table-striped">
									<c:forEach items="${ListeDossierCreditIndividuelNbrVolume}"
										var="rr1">
										<tr>
											<td>${rr1.nomscompletanalystedossieril}</td>
											<td>${rr1.statutdossieril}</td>
											<td>${rr1.nombre}</td>
											<td>${rr1.volume}</td>
											<td>${rr1.nbrjourmoyentraitement}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br>
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>

		<div class="ui blue segment">
			<div class="card">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Rapport
					Géneralisé des dossiers credit GL par Agent et Etat / en Nombre et
					Volume ($)</h2>
				<hr />
				<div class="card-body" style="margin-top: 15px;">
					<form action="InformationComptableDossierGL.php" method="post"
						class="ui form">
						<div class="ui grid">
							<div class="row">
								<div class="six wide column">
									<div class="field">
										<label for="">Branche :</label> <select name="BrancheVGPss"
											id="BrancheVGPss" class="ui dropdown" required="required">
											<option selected>${BrancheVGPss}</option>
											<c:forEach items="${ListeAgenceVV}" var="listeB1">
												<option>${listeB1.libellebranche}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="six wide column">
									<div class="field">
										<label for="">EtatDossier :</label> <select
											name="EtatDossierGLPs" id="EtatDossierGLPs"
											class="ui dropdown" required="required">
											<option selected>${EtatDossierGLPs}</option>
											<option>Analyse</option>
											<option>Comite</option>
											<option>Terminer</option>
										</select>
									</div>

								</div>

								<div class="four wide column">
									<div class="field">
										<label style="color: white">hhh</label>
										<button type="submit" id="btnSave" class="ui primary button">
											<i class="search icon"></i>
										</button>
										<button type="button" id="btnPrint44" class="ui green button">
											<i class="print icon"></i>
										</button>
									</div>

								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="card-body">
					<div class="canscroll" style="min-height: 150px;">
						<div class="row" style="background-color: white; margin-top: 15px">
							<table id="myTable2025buss" class="ui celled table">
								<thead>
									<tr>
										<th scope="col">Agent-Crédit</th>
										<th scope="col">Etat-Dossier</th>
										<th scope="col">NombreDossier</th>
										<th scope="col">Volume($)</th>
									</tr>
								</thead>
								<tbody id="testBody" class="table-striped">
									<c:forEach
										items="${ListeDossierCreditGLParAgenceENNbrEtVolume}"
										var="rrgl">
										<tr>
											<td>${rrgl.nomsuser}</td>
											<td>${rrgl.statutdossieril}</td>
											<td>${rrgl.nombre}</td>
											<td>${rrgl.volume}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br>
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>

		<div class="ui blue segment">
			<div class="card">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Recherche
					Historique / Groupe Lisanga</h2>
				<hr />
				<div class="card-body">
					<form action="HistoriqueGL.php" method="post" class="ui form">
						<div class="ui grid">
							<div class="row">

								<div class="six wide column">
									<div class="field">
										<label for="">Groupe Lisanga :</label> <select name="GrpCAGL2"
											id="GrpCAGL2" class="ui dropdown" required="required">
											<option selected>${GrpCAGL2}</option>
											<c:forEach items="${ListeGrpCAGL2}" var="listeGL2">
												<option>${listeGL2.nomgroupelisanga}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="six wide column">
									<div class="field">
										<label for="">Nombre Total de Cycle GL :</label> <input
											type="text" value="${nbrTotCycleGL2}" disabled>
									</div>
								</div>


								<div class="four wide column">
									<div class="field">
										<label style="color: white">hhh</label>
										<button type="submit" id="btnSave" class="ui primary button">
											<i class="search icon"></i>
										</button>
									</div>

								</div>
							</div>

						</div>

					</form>
				</div>
				<br>
				<div class="card-body">
					<div class="row" style="min-height: 150px;">
						<div class="row" style="background-color: white;">
							<table id="myTable2011" class="ui celled table">
								<thead>
									<tr>
										<th scope="col">IDGrpGL</th>
										<th scope="col">NumGroupCbs</th>
										<th scope="col">NomGroupe</th>
										<th scope="col">Branche</th>
										<th scope="col">Promoteur</th>
										<th scope="col">Cycle</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody id="testBody" class="table-striped">
									<c:forEach items="${ListeDossierCreditGLAvecCycle2}" var="LG1">
										<tr>
											<td>${LG1.idgroupelisanga}</td>
											<td>${LG1.numerogroupecbslisanga}</td>
											<td>${LG1.nomgroupelisanga}</td>
											<td>${LG1.branchegroupelisanga}</td>
											<td>${LG1.promoteurgroupelisanga}</td>
											<td>${LG1.nbrcyclegroupelisanga}</td>
											<td><c:if
													test="${(sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'CI')|| (sessionScope.ProfilUser eq 'SUP')|| (sessionScope.ProfilUser eq 'BM')|| (sessionScope.ProfilUser eq 'DGA')|| (sessionScope.ProfilUser eq 'DG')}">
													<a title="Visualiser"
														href="ReturnInformationDossierGLHistorique.php?numgrp=${LG1.idgroupelisanga}&&cyclegrpl=${LG1.nbrcyclegroupelisanga}"><i
														class="eye icon"></i></a>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br>
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>
		<script>
document.addEventListener('DOMContentLoaded', function () {

    let barChart;
    let doughnutChart;

    // ---------------------------------------------------------
    // 1️⃣ — INITIALISATION INSTANTANÉE DES DEUX GRAPHIQUES (VIDES)
    // ---------------------------------------------------------
    function initCharts() {

        // --- BAR CHART ---
        const barCtx = document.getElementById('barChart').getContext('2d');
        barChart = new Chart(barCtx, {
            type: 'bar',
            data: {
                labels: [],  
                datasets: [
                    {
                        label: 'Nombre de dossiers',
                        data: [],
                        backgroundColor: '#93c5fd',
                        borderColor: '#2563eb',
                        borderWidth: 1,
                        borderRadius: 4,
                        yAxisID: 'y',
                    },
                    {
                        label: 'Volume des dossiers ($)',
                        data: [],
                        backgroundColor: '#dbeafe',
                        borderColor: '#60a5fa',
                        borderWidth: 1,
                        borderRadius: 4,
                        yAxisID: 'y1',
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                animation: false,   // 🔥 Accélération
            }
        });

        // --- DOUGHNUT CHART ---
        const doughnutCtx = document.getElementById('doughnutChart').getContext('2d');
        doughnutChart = new Chart(doughnutCtx, {
            type: 'doughnut',
            data: {
                labels: [],
                datasets: [{
                    label: 'Nombre de Dossiers',
                    data: [],
                    backgroundColor: ['#fde68a','#fcd34d','#e9d5ff','#99f6e4'],
                    borderColor: ['#fbbd08','#fbbd08','#a333c8','#00b5ad'],
                    hoverOffset: 12,
                    borderWidth: 1.5,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                animation: false,  // 🔥 Accélération
            }
        });
    }

    // Affichage immédiat du graphique vide
    initCharts();


    // ---------------------------------------------------------
    // 2️⃣ — CHARGEMENT DES DONNÉES RÉELLES VIA TON SERVLET
    // ---------------------------------------------------------
    fetch("GetStatPerfomanceACGraphique.php")
        .then(response => response.json())
        .then(data => {

            // Extraction des données du servlet
            const labels = data.map(item => item.statutdossieril);
            const nombreData = data.map(item => item.nombre);
            const volumeData = data.map(item => item.volume);

            // ---------------------------------------------------------
            // 3️⃣ — MISE À JOUR DU BAR CHART AVEC LES DONNÉES RÉELLES
            // ---------------------------------------------------------
            barChart.data.labels = labels;
            barChart.data.datasets[0].data = nombreData;
            barChart.data.datasets[1].data = volumeData;
            barChart.update();

            // ---------------------------------------------------------
            // 4️⃣ — MISE À JOUR DU DOUGHNUT CHART
            // ---------------------------------------------------------
            doughnutChart.data.labels = labels;
            doughnutChart.data.datasets[0].data = nombreData;
            doughnutChart.update();
        })
        .catch(error => console.error("Erreur chargement :", error));

});
</script>
		<c:choose>
			<c:when test="${sessionScope.ProfilUser eq 'ADMIN'}">
				<script>
				var menucreditIL = document.getElementById('menucreditIL');
				menucreditIL.style.display = 'none';
				var menucreditGP = document.getElementById('menucreditGP');
				menucreditGP.style.display = 'none';
				var Par = document.getElementById('Par');
				Par.style.display = 'none';
				var VueEnsembleCredit = document.getElementById('VueEnsembleCredit');
				VueEnsembleCredit.style.display = 'none';VueEnsembleCredit
				var StatGraphic = document.getElementById('StatGraphic');
				StatGraphic.style.display = 'none';VueEnsembleCredit
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

		<c:if
			test="${(sessionScope.ProfilUser eq 'SC') or (sessionScope.ProfilUser eq 'CI')or (sessionScope.ProfilUser eq 'ADMIN')or (sessionScope.ProfilUser eq 'ODP')or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'SUP')or (sessionScope.ProfilUser eq 'BM')}">
			<script>
			var Par = document.getElementById('Par');
			Par.style.display = 'none';
			
		</script>
		</c:if>

		<script src="./js/jquery.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
		<script src="assets/semanticui/semantic.min.js"></script>
		<script src="./js/main.js"></script>
		<script type="text/javascript">
		$('.tw-number').counterUp({
			delay : 10,
			time : 1000
		});
	</script>

		<script src="assets/dataTables.js"></script>
		<script src="assets/dataTables.semanticui.min.js"></script>

		<script>
		$('#myTable20').DataTable();
		$('#myTable201').DataTable();
		$('#myTable2025').DataTable();
		$('#myTable2025buss').DataTable();
	</script>

		<script>
document.getElementById("btnPrint").addEventListener("click", function () {

    // Récupérer l'instance DataTable
    var table = $('#myTable20').DataTable();

    // Récupérer toutes les données (toutes les pages)
    var data = table.rows({ search: 'applied' }).data().toArray();

    // Récupérer les en-têtes
    var headers = [];
    $('#myTable20 thead th').each(function () {
        headers.push($(this).text().trim());
    });

    // Construire les données Excel
    var excelData = [];
    excelData.push(headers);

    data.forEach(function (row) {
        excelData.push(row);
    });

    // Créer le fichier Excel
    var workbook = XLSX.utils.book_new();
    var worksheet = XLSX.utils.aoa_to_sheet(excelData);

    XLSX.utils.book_append_sheet(workbook, worksheet, "Rapport Dossiers Crédit IL");
    XLSX.writeFile(workbook, "rapport_dossiers_credit_IL.xlsx");
});
</script>

		<script>
document.getElementById("btnPrint2").addEventListener("click", function () {

    // Récupérer l'instance DataTable
    var table = $('#myTable201').DataTable();

    // Récupérer toutes les lignes (toutes les pages + filtres appliqués)
    var data = table.rows({ search: 'applied' }).data().toArray();

    // Récupérer les en-têtes
    var headers = [];
    $('#myTable201 thead th').each(function () {
        headers.push($(this).text().trim());
    });

    // Construire les données Excel
    var excelData = [];
    excelData.push(headers);

    data.forEach(function (row) {
        excelData.push(row);
    });

    // Créer le fichier Excel
    var workbook = XLSX.utils.book_new();
    var worksheet = XLSX.utils.aoa_to_sheet(excelData);

    XLSX.utils.book_append_sheet(workbook, worksheet, "Rapport Dossiers Crédit GL");
    XLSX.writeFile(workbook, "rapport_dossiers_credit_GL.xlsx");
});
</script>

		<script>
$(document).ready(function () {

    // Initialiser toutes les DataTables
    $('#myTable2025').DataTable();
    $('#myTable2025buss').DataTable();

    $('#btnPrint3').click(function () {
        var table = $('#myTable2025').DataTable();
        var data = table.rows({ search: 'applied' }).data().toArray();

        var headers = [];
        $('#myTable2025 thead th').each(function () {
            headers.push($(this).text().trim());
        });

        var excelData = [headers];
        data.forEach(function (row) {
            excelData.push(row);
        });

        var workbook = XLSX.utils.book_new();
        var worksheet = XLSX.utils.aoa_to_sheet(excelData);
        XLSX.utils.book_append_sheet(workbook, worksheet, "Rapport IL Par CA STAT");
        XLSX.writeFile(workbook, "rapport_Generalise_dossiers_credit_IL_CAStat.xlsx");
    });

    $('#btnPrint44').click(function () {
        var table = $('#myTable2025buss').DataTable();
        var data = table.rows({ search: 'applied' }).data().toArray();

        var headers = [];
        $('#myTable2025buss thead th').each(function () {
            headers.push($(this).text().trim());
        });

        var excelData = [headers];
        data.forEach(function (row) {
            excelData.push(row);
        });

        var workbook = XLSX.utils.book_new();
        var worksheet = XLSX.utils.aoa_to_sheet(excelData);
        XLSX.utils.book_append_sheet(workbook, worksheet, "Rapport GL Par CA STAT");
        XLSX.writeFile(workbook, "rapport_Generale_dossiers_credit_GL_CAStat.xlsx");
    });

});
</script>
</body>
</html>