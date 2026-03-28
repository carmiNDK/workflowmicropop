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
						href="BussnessClientGL.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Informations-Bussness</a></li>
					<li id="InfoFinanceClientGL" class="nav-item" role="presentation"><a
						href="InfoFinanceClientGL.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Informations-Financieres</a></li>
					<li id="MembreQuitte" class="nav-item" role="presentation"><a
						href="MembreQuitte.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Membre/Quitte</a></li>
					<li id="DocumentGL" class="nav-item" role="presentation"><a
						href="DocumentGL.php" class="nav-link " type="button" role="tab"
						aria-selected="false">Document</a></li>
					<li id="EvaluationGL" class="nav-item" role="presentation"><a
						href="EvaluationGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Evaluation</a></li>
					<li id="ComiteGL" class="nav-item" role="presentation"><a
						href="ComiteGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Comite</a></li>
					<li id="FluxGL" class="nav-item" role="presentation"><a
						href="FluxGL.php" class="nav-link active" type="button" role="tab"
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
				Groupe GL</h2>
			<hr>

			<div class="ui green message"
				style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
			<div class="ui red message"
				style="display: ${error != null ? 'block' : 'none'}">${error}</div>


			<div class="ui grid middle aligned divided" style="margin-top: 4px">

				<!-- NumeroCbsGp -->
				<div class="two wide column">
					<label class="form-label-sm" for="NumeroCbsGpComiteValue">NumeroCbsGp
						:</label>
				</div>
				<div class="two wide column">
					<div class="ui input fluid">
						<input type="text" id="NumeroCbsGpComiteValue"
							name="NumeroCbsGpComiteValue" value="${NumeroGroupeCBS}" disabled>
					</div>
				</div>

				<!-- LibelleGp -->
				<div class="two wide column">
					<label class="form-label-sm" for="LibelleGpComiteValue">LibelleGp
						:</label>
				</div>
				<div class="two wide column">
					<div class="ui input fluid">
						<input type="text" id="LibelleGpComiteValue"
							name="LibelleGpComiteValue" value="${NomGroupeLisanga}" disabled>
					</div>
				</div>

				<!-- CycleGp -->
				<div class="two wide column">
					<label class="form-label-sm" for="CycleGpComiteValue">CycleGp
						:</label>
				</div>
				<div class="two wide column">
					<div class="ui input fluid">
						<input type="text" id="CycleGpComiteValue"
							name="CycleGpComiteValue" value="${NbrCycleGroupe}" disabled>
					</div>
				</div>

			</div>

		</div>

		<div class="ui blue segment table-responsive"
			style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information Prét
				Client GL</h2>
			<hr>

			<input type="hidden" id="hid_id_stock_business" value="0"> <input
				type="hidden" id="hid_version_stock_business" value="0">

			<table class="ui celled table" id="tab_AB_Stock">
				<thead>
					<tr>
						<th><label for="produit">NumMembreCbs</label></th>
						<th><label for="quantite">NomsMembre</label></th>
						<th><label for="quantite">PrétAccorder($)</label></th>
						<th><label for="Observation">CautionFinanciere($)</label></th>
						<th><label for="Observation">FraisDossier+TVA($)</label></th>
						<th><label for="Observation">Assurance($)</label></th>
						<th><label for="Observation">SMS-Alerte($)</label></th>
						<th><label for="Observation">Carnet+Livre($)</label></th>
						<th><label for="Observation">TotalFrais($)</label></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeInformationDossierGL}" var="SPP">
						<tr>
							<td>${SPP.numcbsclientgl}</td>
							<td>${SPP.nomsclientmembredosgl}</td>
							<td>${SPP.pretaccordergl}</td>
							<td>${SPP.cautionfinancieregl}</td>
							<td>${SPP.fraisdossiertvagl}</td>
							<td>${SPP.assuranceglgl}</td>
							<td>${SPP.smsglgl}</td>
							<td>${SPP.carnetlivregl}</td>
							<td>${SPP.totalfraisglgl}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<div class="ui blue segment table-responsive"
			style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Flux de travail
				GL</h2>
			<hr>
			<form class="ui form" action="PassageOperationGL.php" method="post">
				<div class="row">

					<table id="flow_tab" class="ui table">
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
								<td>CA</td>
								<td><select name="etapeCreation" id="decisionCreation"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Creation')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Analyse !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')}">
                                                                        disabled
                                                        </c:if>>
										<option>Sélectionner</option>
										<option>PASSER</option>
										<option>REJETER</option>
								</select></td>
							</tr>

							<tr>
								<td>2</td>
								<td>ANALYSER DEMANDE</td>
								<td>CA</td>
								<td><select name="etapeAnalyse" id="decisionAnalyse"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Analyse')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Evaluation !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Creation !!!')}">
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
								<td>EVALUATION DEMANDE</td>
								<td>SUP</td>
								<td><select name="etapeAnalyse" id="decisionAnalyse"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Evaluation')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Comite !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Analyse !!!')}">
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
								<td><select name="etapeComite" id="decisionComite"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Comite')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Verification !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Analyse !!!')}">
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
								<td><select name="etapeVerification" id="decisionVerif"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Verification')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Postage !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Comite !!!')}">
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
								<td><select name="etapePostage" id="decisionPostage"
									style="font-size: 13px;"
									<c:if test="${(sessionScope.etatGroupGL != 'Postage')||(sessionScope.ok eq 'Votre dossier crédit est passer à l etape Final Terminer (cloturer) !!!')||(sessionScope.ok eq 'Votre dossier crédit est Rejetter !!!')||(sessionScope.ok eq 'Votre dossier crédit est Retourner à l etape Verification !!!')}">
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
						<c:if test="${((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Rejeter'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Terminer'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Postage'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Verification'))||((sessionScope.ProfilUser eq 'CA') && (sessionScope.EtatDossierCredit eq 'Comite'))|| (sessionScope.ProfilUser eq 'CI')||(sessionScope.cliquer eq 'oui') || (sessionScope.EtatDossierCredit eq 'Terminer')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.cliquer eq 'oui') || (sessionScope.etatGroupGL eq 'Terminer')|| (sessionScope.etatGroupGL eq 'Rejeter') || ((sessionScope.ProfilUser eq 'BM') && (sessionScope.etatGroupGL eq 'Comite') && ((sessionScope.TotalGeneralPretAccorderACGL<=2000) || (sessionScope.TotalGeneralPretAccorderACGL>5000)))}">
                                                                        disabled
                                                        </c:if>>Valider</button>
				</div>
			</form>
		</div>
		<div class="ui segment">
			<form action="OperationPostageDossierGLCbs.php" method="post">
				<div
					style="display: flex; align-items: flex-end; gap: 15px; justify-content: flex-end;">
					<button type="submit" id="btnPostage" class="ui primary button"
						<c:if test="${(sessionScope.cliquerButtonPostage eq 'oui') ||(sessionScope.etatGroupGL != 'Postage') || (sessionScope.ok eq 'Félicitation,le postage est effectuer avec succés dans le CoreBanking Systéme !!!') || (sessionScope.error eq 'Désoler,le postage non effectuer !!!')}">
                                                                        disabled
                                                        </c:if>>Poster
						Dossier dans CBS</button>
				</div>
			</form>
		</div>
	</div>
	</div>

	<c:choose>
		<c:when test="${nbrComiteSave > 0}">
			<script>
				Swal
						.fire({
							title : 'Succès !',
							text : 'Enregistrement du Comite effectuer avec succés !!!',
							icon : 'success',
							confirmButtonText : 'OK'
						});
			</script>
		</c:when>

		<c:when test="${nbrComiteSave <= 0}">
			<script>
				Swal.fire({
					title : 'error !',
					text : 'Enregistrement du Comite non effectuer!!!',
					icon : 'error',
					confirmButtonText : 'OK'
				});
			</script>
		</c:when>

	</c:choose>

	<c:choose>
		<c:when test="${sessionScope.etatGroupGL eq 'Creation'}">
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

		<c:when test="${sessionScope.etatGroupGL != 'Comite'}">
			<script>
				var lienclik = document.getElementById('lienclik');
				lienclik.style.display = 'none';
			</script>
		</c:when>
	</c:choose>

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