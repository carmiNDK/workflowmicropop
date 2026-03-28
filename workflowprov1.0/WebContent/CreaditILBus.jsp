<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="today" value="${today}" />

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
<link rel="stylesheet" href="./css/creditvb.css">
<style>
.remb-ok {
	background-color: #21ba45 !important; /* vert */
	color: white !important; /* texte blanc */
	font-weight: bold;
}

.remb-late {
	background-color: #db2828 !important; /* rouge */
	color: transparent !important; /* texte invisible */
}
</style>
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
<title>KwikLoan : crédit individuel</title>
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
		<div class="page-header">
			<div class="page-header-left">
				<h2 class="page-header-title">Crédit individuel</h2>
				<p class="page-header-subtitle text-gray">Suivi des demandes
					individuelles</p>
			</div>
			<div id="bb" class="page-header-right">
				<button class="ui primary button" id="addLink225">
					<a class="hover:tw-text-white" href="AjoutDossierCredit.php"><i
						class="plus circle icon"></i>Nouvelle demande individuelle</a>
				</button>
			</div>
		</div>

		<div class="page-content">
			<div class="ui blue segment canscroll">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Liste des dossiers IL (A traiter)</h2>
				<hr>

				<table id="myTable7" class="ui celled table">
					<thead>
						<tr>
							<th scope="col">NumClientWF</th>
							<th scope="col">NumDossierWF</th>
							<th scope="col" style="width: 15%;">Date</th>
							<th scope="col">Montant($)</th>
							<th scope="col">Echéance(mois)</th>
							<th scope="col">Statut</th>
							<th scope="col">Branche</th>
							<th scope="col">Demandeur</th>
							<th scope="col">Initiateur</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody id="testBody">
						<c:forEach
							items="${ListeDossierCreditIndividuelFonctionStatutEtProfilUtilisateur}"
							var="CI">
							<tr>
								<td>${CI.numclientil}</td>
								<td>${CI.numerodossieril}</td>
								<td>${CI.datedossieril}</td>
								<td>${CI.montantdossieril}</td>
								<td>${CI.echeancedossieril}</td>
								<td class="statut"
									style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${CI.statutdossieril}</td>
								<td>${CI.agencedossieril}</td>
								<td>${CI.nomscompletclientdemandeurdossieril}</td>
								<td>${CI.nomscompletinitiateurdemandedossieril}</td>
								<td><a
									href="ReturneInformationDossierCredit.php?numdoss=${CI.numerodossieril}"><i
										class="yellow folder open icon"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div class="row" id="root_div_page">
					<div class="col">
						<nav aria-label="...">
							<ul class="pagination" id="page_root">
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div id="1" class="ui green segment">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Vos Dossiers crédits individuel en
				état cloturé (Terminer)</h2>
			<hr>
			<table id="myTable8" id="loans" class="ui celled table">
				<thead>
					<tr>
						<th scope="col">NumDossierWF</th>
						<th scope="col" style="width: 15%;">Date</th>
						<th scope="col">MontantApprouv($)</th>
						<th scope="col">EchéanceApprouv(mois)</th>
						<th scope="col">Statut</th>
						<th scope="col">Branche</th>
						<th scope="col">Demandeur</th>
						<th scope="col">Initiateur</th>
						<th scope="col"></th>

					</tr>
				</thead>
				<tbody id="testBody">
					<c:forEach
						items="${ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatTerminer}"
						var="cooo1">
						<tr>
							<td>${cooo1.numerodossieril}</td>
							<td>${cooo1.datedossieril}</td>
							<td>${cooo1.montantdossieril}</td>
							<td>${cooo1.echeancedossieril}</td>
							<td class="statut"
								style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${cooo1.statutdossieril}</td>
							<td>${cooo1.agencedossieril}</td>
							<td>${cooo1.nomscompletclientdemandeurdossieril}</td>
							<td>${cooo1.nomscompletinitiateurdemandedossieril}</td>
							<td><a
								href="ReturneInformationDossierCredit.php?numdoss=${cooo1.numerodossieril}"><i
									class="yellow folder open icon"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

		<div id="2" class="ui red segment">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Vos Dossiers crédits individuel en
				état Rejeter</h2>
			<hr>
			<table id="myTable9" id="loans" class="ui celled table">
				<thead>
					<tr>
						<th scope="col">NumDossierWF</th>
						<th scope="col" style="width: 15%;">Date</th>
						<th scope="col">MontantDemande($)</th>
						<th scope="col">EchéanceDemande(mois)</th>
						<th scope="col">Statut</th>
						<th scope="col">Branche</th>
						<th scope="col">Demandeur</th>
						<th scope="col">Initiateur (trice)</th>
						<th scope="col"></th>

					</tr>
				</thead>
				<tbody id="testBody">
					<c:forEach
						items="${ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatRejeter}"
						var="cooo1">
						<tr>
							<td>${cooo1.numerodossieril}</td>
							<td>${cooo1.datedossieril}</td>
							<td>${cooo1.montantdossieril}</td>
							<td>${cooo1.echeancedossieril}</td>
							<td class="statut"
								style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${cooo1.statutdossieril}</td>
							<td>${cooo1.agencedossieril}</td>
							<td>${cooo1.nomscompletclientdemandeurdossieril}</td>
							<td>${cooo1.nomscompletinitiateurdemandedossieril}</td>
							<td><a
								href="ReturneInformationDossierCredit.php?numdoss=${cooo1.numerodossieril}"><i
									class="yellow folder open icon"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="4" class="ui blue segment">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Dossier IL / Pré-comite (Reserver aux
				BM pour dossier <=2000$ et >=5001$)</h2>
			<hr>
			<table id="myTable10" class="ui celled table">
				<thead>
					<tr>
						<th scope="col">NumDossierWF</th>
						<th scope="col" style="width: 15%;">Date</th>
						<th scope="col">Montant($)</th>
						<th scope="col">Echéance(mois)</th>
						<th scope="col">Statut</th>
						<th scope="col">Branche</th>
						<th scope="col">Demandeur</th>
						<th scope="col">Initiateur</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody id="testBody">
					<c:forEach items="${ListeDossierCreditIndividuelEnPrecomite}"
						var="CI0">
						<tr>
							<td>${CI0.numerodossieril}</td>
							<td>${CI0.datedossieril}</td>
							<td>${CI0.montantdossieril}</td>
							<td>${CI0.echeancedossieril}</td>
							<td class="statut"
								style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${CI0.statutdossieril}</td>
							<td>${CI0.agencedossieril}</td>
							<td>${CI0.nomscompletclientdemandeurdossieril}</td>
							<td>${CI0.nomscompletinitiateurdemandedossieril}</td>
							<td><a id="cellToHide"
								href="ReturneInformationDossierCredit.php?numdoss=${CI0.numerodossieril}"><i
									class="yellow folder open icon"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div id="3" class="ui blue segment">
			<h5 class="card-header">Historique Dossier IL / Agence</h5>
			<div class="card-body">

				<div class="row" style="background-color: white;">
					<table id="myTable4" class="ui celled table">
						<thead>
							<tr>
								<th scope="col">NumDossierWF</th>
								<th scope="col" style="width: 15%;">Date</th>
								<th scope="col">Montant($)</th>
								<th scope="col">Echéance(mois)</th>
								<th scope="col">Statut</th>
								<th scope="col">Branche</th>
								<th scope="col">Demandeur</th>
								<th scope="col">Initiateur</th>
								<th scope="col">Actions</th>
							</tr>
						</thead>
						<tbody id="testBody">
							<c:forEach items="${ListeDossierCreditIndividuelAgence}"
								var="CI44">
								<tr>
									<td>${CI44.numerodossieril}</td>
									<td>${CI44.datedossieril}</td>
									<td>${CI44.montantdossieril}</td>
									<td>${CI44.echeancedossieril}</td>
									<td class="statut"
										style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${CI44.statutdossieril}</td>
									<td>${CI44.agencedossieril}</td>
									<td>${CI44.nomscompletclientdemandeurdossieril}</td>
									<td>${CI44.nomscompletinitiateurdemandedossieril}</td>
									<td id="cellToHide"><a
										href="ReturneInformationDossierCredit.php?numdoss=${CI44.numerodossieril}"><i
											class="yellow folder open icon"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<div class="row" id="root_div_page">
						<div class="col">
							<nav aria-label="...">
								<ul class="pagination" id="page_root">
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="ui blue segment">
			<h5 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Liste des dossiers IL / Suivi
				remboursement + par</h5>

			<div class="ui segment" style="background-color: white;">

				<table id="myTable2025" class="ui celled table">
					<thead>
						<tr>
							<th>NumClientCbs</th>
							<th>NumDossierWF</th>
							<th style="width: 15%;">Date-Décaissement</th>
							<th>Mnt-Décaisser($)</th>
							<th>Echéance (mois)</th>
							<th>Branche</th>
							<th>Demandeur</th>
							<th>AC</th>
							<th></th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${ListeDecaisserPourVisualiserEcheance}"
							var="C1994">
							<tr>
								<td>${C1994.numclientglcbs}</td>
								<td>${C1994.numdossiercreok}</td>
								<td>${C1994.datefluxterminerdossieril}</td>
								<td>${C1994.montantapprouvedossieril}</td>
								<td>${C1994.nbrecheanciervalidecc}</td>
								<td>${C1994.libellebranche}</td>
								<td>${C1994.nomsclientsok}</td>
								<td>${C1994.nomac}</td>
								<td><a class="ui yellow label"
									href="ReturneInformationEcheanceDossierCreditIL.php?numcliAD=${C1994.numclientglcbs}&nomcli=${C1994.nomsclientsok}">
										<i class="calendar alternate outline icon"></i> Échéance
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>

	<div class="ui modal scrolling" id="exampleModal1000253"
		style="max-width: 80vw;">
		<i class="close icon"></i>

		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Information Échéance Crédit</h2>
			<hr>

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2 center aligned"
				style="margin-top: 15px;">${nomcli}</h2>
			<hr>

			<div class="ui segment">
				<table class="ui celled table" id="detailTable">
					<thead>
						<tr>
							<th class="center aligned">Date Remboursement</th>
							<th class="center aligned">Montant Capital ($)</th>
							<th class="center aligned">Montant Intérêt ($)</th>
							<th class="center aligned">Capital Remboursé ($)</th>
							<th class="center aligned">Type Crédit</th>
							<th class="center aligned">Remboursement</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeEchCli}" var="item">
							<!-- Calcul de la classe CSS pour cette ligne -->
							<c:set var="rembClass">
								<c:choose>
									<c:when test="${item.remboursement eq 'Oui'}">remb-ok</c:when>
									<c:when test="${item.dateprevuremboursement lt today}">remb-late</c:when>
									<c:otherwise></c:otherwise>
								</c:choose>
							</c:set>

							<tr>
								<td class="center aligned">${item.dateprevuremboursement}</td>
								<td class="center aligned">${item.montantcapitalattendu}</td>
								<td class="center aligned">${item.montantinteret}</td>
								<td class="center aligned">${item.montantarembourse}</td>
								<td class="center aligned">${item.typecredit}</td>
								<td class="center aligned ${rembClass}"><c:choose>
										<c:when test="${item.remboursement eq 'Oui'}">Oui</c:when>
										<c:otherwise>Non</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when
			test="${(sessionScope.ProfilUser eq 'CI') or (sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') or (sessionScope.ProfilUser eq 'ODP')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')}">
			<script>
				var addLink225 = document.getElementById('addLink225');
				addLink225.style.display = 'none';

				var v1 = document.getElementById('1');
				v1.style.display = 'none';

				var v2 = document.getElementById('2');
				v2.style.display = 'none';

				var bb = document.getElementById('bb');
				bb.style.display = 'none';

				var useradm = document.getElementById('useradm');
				useradm.style.display = 'none';
			</script>
		</c:when>
		<c:when test="${sessionScope.ProfilUser eq 'ADMIN'}">
			<script>
				var menucreditIL = document.getElementById('menucreditIL');
				menucreditIL.style.display = 'none';
				var menucreditGP = document.getElementById('menucreditGP');
				menucreditGP.style.display = 'none';
			</script>
		</c:when>
		<c:when
			test="${(sessionScope.ProfilUser eq 'CI') or (sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') or (sessionScope.ProfilUser eq 'ODP')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'CA')or (sessionScope.ProfilUser eq 'SC')or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')}">
			<script>
				var useradm = document.getElementById('useradm');
				useradm.style.display = 'none';
			</script>
		</c:when>
	</c:choose>

	<c:if
		test="${(sessionScope.ProfilUser eq 'ODP')|| (sessionScope.ProfilUser eq 'RC')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')|| (sessionScope.ProfilUser eq 'SC')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'SUP')}">
		<script>
			document.getElementById('cellToHide').style.display = 'none';

			var v3 = document.getElementById('3');
			v3.style.display = 'none';

			var v4 = document.getElementById('4');
			v4.style.display = 'none';
		</script>
	</c:if>

	<c:if test="${(sessionScope.ProfilUser eq 'SC')}">
		<script>
			var v1 = document.getElementById('1');
			v1.style.display = 'none';

			var v2 = document.getElementById('2');
			v2.style.display = 'none';

			var useradm = document.getElementById('useradm');
			useradm.style.display = 'none';
		</script>
	</c:if>

	<c:if test="${(sessionScope.ProfilUser eq 'CI')}">
		<script>
			var v4 = document.getElementById('4');
			v4.style.display = 'none';

			var v3 = document.getElementById('3');
			v3.style.display = 'none';

			var useradm = document.getElementById('useradm');
			useradm.style.display = 'none';
		</script>
	</c:if>




	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>




	<script>
		
		
		$('#myTable7').DataTable({
		    ordering: false
		});
		
		$('#myTable8').DataTable({
		    ordering: false
		});
		
		$('#myTable9').DataTable({
		    ordering: false
		});
	
		$('#myTable10').DataTable({
		    ordering: false
		});
	</script>

	<script>
	
		$('#myTable').DataTable({
		    ordering: false
		});
		
		$('#myTable2').DataTable({
		    ordering: false
		});
	
		$('#myTable3').DataTable({
		    ordering: false
		});
		
		$('#myTable5').DataTable({
		    ordering: false
		});
	
		$('#myTable2025').DataTable({
		    ordering: false
		});
	</script>

	<script>
		$(document).ready(function() {
			$('#exampleModal1000253').modal('show');
		});
	</script>

	<script>
	const statutColors = {
			  "Creation": "#6c757d",      // gris
			  "Assignation": "#0d6efd",   // bleu
			  "Analyse": "#fd7e14",       // orange
			  "Comite": "#6f42c1",        // violet
			  "Evaluation": "#20c997",    // turquoise
			  "Verification": "#8b4513",  // marron
			  "Postage": "#0b5ed7",       // bleu foncé
			  "Terminer": "#198754",      // vert
			  "Rejeter": "#dc3545"        // rouge (rejet)
			};
  function appliquerCouleurStatut() {
    document.querySelectorAll("td.statut").forEach(td => {
      const statut = td.textContent.trim();
      td.style.backgroundColor = statutColors[statut] || "#adb5bd";
    });
  }

  $(document).ready(function () {

    // Mets ici TOUTES tes tables
    const tableIds = [
      '#myTable7',
      '#myTable8',
      '#myTable9',
      '#myTable10',
      '#myTable4'
    ];
    tableIds.forEach(id => {
      if ($(id).length) {

        // IMPORTANT : récupérer l'instance existante
        const dt = $.fn.dataTable.isDataTable(id)
          ? $(id).DataTable()
          : $(id).DataTable();

        // 1️ application au chargement
        appliquerCouleurStatut();

        // 2️ application à chaque redraw
        $(id).on('draw.dt', function () {
          appliquerCouleurStatut();
        });
      }
    });

  });
</script>

</body>
</html>