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
<title>KwikLoan : Changement Mot de Passe</title>
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

							<!-- Actions Rapides -->

							<a class="item" href="ChangerMotDePasse.php"> <i
								class="key icon"></i> Changer mot de passe
							</a>

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
				<li class="link active"><a href="HomePage.php"><i
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
				<li class="link" id="para"><a href="ParametrageModule.php"><i
						class="cog icon" style="visibility: visible;"></i>Paramètres</a></li>
			</ul>
		</div>
	</aside>

	<div class="content">
		<div class="page-header">
			<div class="page-header-left">
				<h2 class="page-header-title">Tableau de bord</h2>
			</div>
		</div>

		<div class="page-content" id="VueEnsembleCredit">
			<h2
				class="tw-text-gray-900 tw-text-lg tw-font-bold tw-leading-tight tw-text-inter"
				style="margin-bottom: 20px;">Vue d'ensemble des demandes de
				crédit</h2>
			<div
				class="tw-grid tw-grid-cols-1 sm:tw-grid-cols-2 lg:tw-grid-cols-3 tw-gap-6"
				id="numberdiv">
				<div
					class="tw-flex tw-items-start tw-p-4 tw-bg-white tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-yellow-100 tw-text-status-yellow tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">manage_search</span>
					</div>
					<div class="tw-flex-1">
						<div class="tw-text-sm tw-font-medium tw-text-gray-500">En
							Analyse</div>
						<div class="tw-flex tw-items-baseline tw-justify-between tw-mt-1">

							<div
								class="tw-text-4xl tw-font-extrabold tw-text-gray-900 tw-font-inter tw">${nbrDossiersAnalyse}</div>
							<div class="tw-text-lg tw-font-semibold tw-text-gray-700">
								<p>$</p>${volumeDossiersAnalyse}</div>
						</div>
						<div class="tw-flex tw-justify-between">
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								nombre</p>
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								volume</p>
						</div>
					</div>
				</div>

				<div
					class="tw-flex tw-items-start tw-p-4 tw-bg-white tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-purple-100 tw-text-status-purple tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">groups</span>
					</div>
					<div class="tw-flex-1">
						<div class="tw-text-sm tw-font-medium tw-text-gray-500">Au
							Comité</div>
						<div class="tw-flex tw-items-baseline tw-justify-between tw-mt-1">

							<div
								class="tw-text-4xl tw-font-extrabold tw-text-gray-900 tw-font-inter tw">${nbrDossiersComite}</div>

							<div class="tw-text-lg tw-font-semibold tw-text-gray-700">
								<p>$</p>${volumeDossiersComite}</div>
						</div>
						<div class="tw-flex tw-justify-between">
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								nombre</p>
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								volume</p>
						</div>
					</div>
				</div>
				<div
					class="tw-flex tw-items-start tw-p-4 tw-bg-white tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-teal-100 tw-text-status-teal tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">assignment_ind</span>
					</div>
					<div class="tw-flex-1">
						<div class="tw-text-sm tw-font-medium tw-text-gray-500">Approuver</div>
						<div class="tw-flex tw-items-baseline tw-justify-between tw-mt-1">

							<div
								class="tw-text-4xl tw-font-extrabold tw-text-gray-900 tw-font-inter tw">${nbrDossiersValider}</div>

							<div class="tw-text-lg tw-font-semibold tw-text-gray-700">
								<p>$</p>${volumeDossiersValider}</div>
						</div>
						<div class="tw-flex tw-justify-between">
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								nombre</p>
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								volume</p>
						</div>
					</div>
				</div>

				<div
					class="tw-flex tw-items-start tw-p-4 tw-bg-white tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-p-3 tw-rounded-full tw-bg-green-100 tw-text-status-green tw-mr-4">
						<span class="material-symbols-outlined !tw-text-2xl">check_circle</span>
					</div>
					<div class="tw-flex-1">
						<div class="tw-text-sm tw-font-medium tw-text-gray-500">Décaisser</div>
						<div class="tw-flex tw-items-baseline tw-justify-between tw-mt-1">
							<div
								class="tw-text-4xl tw-font-extrabold tw-text-gray-900 tw-font-inter tw">${nbrDossiersTerminer}</div>
							<div class="tw-text-lg tw-font-semibold tw-text-gray-700">
								<p>$</p>${volumeDossiersTerminet}</div>
						</div>
						<div class="tw-flex tw-justify-between">
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								nombre</p>
							<p class="tw-text-sm tw-font-normal tw-text-gray-500 tw-mt-1 ">En
								volume</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="graphic-container" id="StatGraphic">
			<div
				class="tw-mt-10 tw-grid tw-grid-cols-1 lg:tw-grid-cols-5 tw-gap-6">
				<div
					class="lg:tw-col-span-3 tw-bg-sidebar-bg tw-p-6 tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-flex tw-flex-col sm:tw-flex-row sm:tw-items-center sm:tw-justify-between tw-gap-2 tw-mb-6">
						<div>
							<h2
								class="tw-text-gray-900 tw-text-lg font-bold tw-leading-tight tw-text-inter">Performance
								des Dossiers</h2>
							<p class="tw-text-gray-500 tw-text-sm">Volume total et nombre
								par statut</p>
						</div>
					</div>
					<div class="tw-h-96">
						<canvas id="barChart"></canvas>
					</div>
				</div>
				<div
					class="lg:tw-col-span-2 tw-bg-sidebar-bg tw-p-6 tw-rounded-xl tw-border tw-border-gray-200 tw-shadow-card">
					<div
						class="tw-flex tw-flex-col sm:tw-flex-row sm:tw-items-center sm:tw-justify-between tw-gap-2 tw-mb-6">
						<div>
							<h2
								class="tw-text-gray-900 tw-text-lg tw-font-bold tw-leading-tight tw-text-inter">Répartition
								des Dossiers</h2>
							<p class="tw-text-gray-500 tw-text-sm">Par nombre total</p>
						</div>
					</div>
					<div class="tw-h-96 tw-flex tw-items-center tw-justify-center">
						<canvas id="doughnutChart"></canvas>
					</div>
				</div>
			</div>
		</div>

		<div class="ui modal  form-modal" id="exampleModal2025">

			<div class="content">
				<form class="ui form" action="ModificationMotPasseUtilisateurs.php"
					method="post">
					<div class="ui red message"
						style="display: ${error != null ? 'block' : 'none'}">${error}</div>
					<input type="hidden" name="IdUser" value="${IdUser}">
					<div class="form-section">
						<div class="section-title">
							<i class="user icon"></i>Changement Mot de Passe
						</div>
						<div class="three fields">
							<div class="field">
								<label>Mot de passe Actuel *</label> <input type="password"
									placeholder="Mot de passe" class="form-control"
									id="Actuelmotpassutilisateur" name="Actuelmotpassutilisateur"
									required="required">
							</div>
							<div class="field">
								<label>Nouveau Mot de passe *</label> <input type="password"
									placeholder="Mot de passe" class="form-control"
									id="Nouveaumotpassutilisateur" name="Nouveaumotpassutilisateur"
									required="required">

								<!-- LÉGENDE -->
								<div class="ui tiny grey message" style="margin-top: 8px;">
									<strong>Règles du mot de passe :</strong>
									<ul style="margin-top: 5px;">
										<li>Minimum <strong>14 caractères</strong></li>
										<li>Doit contenir au moins <strong>une lettre</strong> et
											<strong>un chiffre</strong></li>
										<li>Les caractères suivants sont <strong>interdits</strong>
											: <code>' ? - " _ : ; , . &lt; &gt; /</code>
										</li>
									</ul>
								</div>

							</div>
							<div class="field">
								<label>Confirmer Nouveau Mot de passe *</label> <input
									type="password" placeholder="Mot de passe" class="form-control"
									id="CNmotpassutilisateur" name="CNmotpassutilisateur"
									required="required">
							</div>
						</div>
					</div>
					<div id="passwordFeedback" class="ui tiny message" style="display:"block"; margin-top: 8px;">
						<ul id="passwordRules"
							style="list-style: none; padding-left: 0; margin: 0;">
							<li id="rule-length">❌ Minimum 15 caractères</li>
							<li id="rule-letter">❌ Au moins une lettre</li>
							<li id="rule-digit">❌ Au moins un chiffre</li>
							<li id="rule-forbidden">❌ Aucun caractère interdit</li>
						</ul>
					</div>
					<div class="actions"
						style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
						<a href="HomePage.php" class="ui primary button"> Annuler </a>
						<button type="button"
							onclick="$('.ui.modifier-modal').modal('show');"
							class="ui large primary right labeled icon button">
							<i class="checkmark icon"></i> Modifier
						</button>
					</div>
				</form>
			</div>
		</div>

		<!--
		<div class="ui blue segment" id="ANA0">
			<div class="card">
				<h5 class="card-header">Statistiques des dossiers IL traités
					(Toutes les branches)</h5>
				<div class="card-body">

					<div class="row" style="background-color: white;">
						<table id="loans" class="ui celled table">
							<thead>
								<tr>
									<th scope="col">Libelle_Agence</th>
									<th scope="col">Nombre_Dossier_IL_Traite (Etape Termine)</th>
								</tr>
							</thead>
							<tbody id="testBody" class="table-striped" style="color: gray;">
								<c:forEach items="${StatistiqueDossierILEtapeTermine}" var="ppo">
									<tr>
										<td>${ppo.libellebranchestat}</td>
										<td>${ppo.nbrdossierterminebranche}</td>
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
			<br>
		</div>
		-->

		<div class="ui blue segment" id="ANA1">
			<div class="card">
				<h5 class="card-header">Statistiques des dossiers IL traités
					(Toutes les branches) en Volume ($) / nombre / Durée Moyenne de
					Traitement (Etape Termine)</h5>
				<div class="card-body">

					<div class="row" style="background-color: white;">
						<table id="loans" class="ui celled table">
							<thead>
								<tr>
									<th scope="col">Libelle_Agence</th>
									<th scope="col">Nombre_Dossier_IL_Traite</th>
									<th scope="col">Volume_Dossier_IL_Traite($)</th>
									<th scope="col">DuréeMoyenneTraitement_Dossier_IL(En jour)</th>
								</tr>
							</thead>
							<tbody id="testBody" class="table-striped" style="color: gray;">
								<c:forEach
									items="${StatistiqueDossierILEtapeTermineVolumeNbrDureeTriatement}"
									var="ppo12">
									<tr>
										<td>${ppo12.agencedossieril}</td>
										<td>${ppo12.nombre}</td>
										<td>${ppo12.volume}</td>
										<td>${ppo12.nbrjourmoyentraitement}</td>
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

			<br>
		</div>

		<div class="ui blue segment" id="ANA2">
			<div class="card">
				<h5 class="card-header">Statistiques des dossiers GL traités
					(Toutes les branches)</h5>
				<div class="card-body">

					<div class="row" style="background-color: white;">
						<table id="loans" class="ui celled table">
							<thead>
								<tr>
									<th scope="col">Libelle_Agence</th>
									<th scope="col">Nombre_Dossier_GL_Traite (Etape Termine)</th>
									<th scope="col">Volume($)</th>
								</tr>
							</thead>
							<tbody id="testBody" class="table-striped" style="color: gray;">
								<c:forEach items="${StatistiqueDossierGLEtapeTermine}"
									var="ppogl">
									<tr>
										<td>${ppogl.libellebranchestat}</td>
										<td>${ppogl.nbrdossierterminebranche}</td>
										<td>${ppogl.volume}</td>
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
			<br>

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

	<c:if test="${(sessionScope.ProfilUser eq 'CA')}">
		<script>
		    var ANA1 = document.getElementById('ANA1');
			ANA1.style.display = 'none';
			var ANA2 = document.getElementById('ANA2');
			ANA2.style.display = 'none';
		</script>
	</c:if>

	<c:if
		test="${(sessionScope.ProfilUser eq 'SC') or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'ODP') or (sessionScope.ProfilUser eq 'ADMIN')}">
		<script>
			
			var VueEnsembleCredit = document.getElementById('VueEnsembleCredit');
			VueEnsembleCredit.style.display = 'none';VueEnsembleCredit
			
			var StatGraphic = document.getElementById('StatGraphic');
			StatGraphic.style.display = 'none';VueEnsembleCredit
			
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

	<script>
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.tw-number').forEach(el => {
    const target = parseInt(el.dataset.value, 10);
    let current = 0;

    if (isNaN(target) || target === 0) {
      el.textContent = target || 0;
      return;
    }

    const duration = 1200; // durée totale en ms (1200 = plus lent)
    const stepTime = Math.max(Math.floor(duration / target), 20);

    const interval = setInterval(() => {
      current++;
      el.textContent = current;

      if (current >= target) {
        el.textContent = target;
        clearInterval(interval);
      }
    }, stepTime);
  });
});
</script>


	<script>
		$(document).ready(function() {
			$('#exampleModal2025').modal({
				closable : false,
				allowMultiple : true
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
				onclick="document.querySelector('#exampleModal2025 form').submit();">
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

	<script>
document.addEventListener("DOMContentLoaded", function () {

	const passwordInput = document.getElementById("Nouveaumotpassutilisateur");
	const feedback = document.getElementById("passwordFeedback");

	passwordInput.addEventListener("input", function () {
		const pwd = passwordInput.value;

		let messages = [];
		let isValid = true;

		// Longueur
		if (pwd.length < 14) {
			isValid = false;
			messages.push("❌ Minimum 14 caractères");
		} else {
			messages.push("✅ Longueur OK");
		}

		// Lettre
		if (!/[A-Za-z]/.test(pwd)) {
			isValid = false;
			messages.push("❌ Au moins une lettre");
		} else {
			messages.push("✅ Lettre détectée");
		}

		// Chiffre
		if (!/[0-9]/.test(pwd)) {
			isValid = false;
			messages.push("❌ Au moins un chiffre");
		} else {
			messages.push("✅ Chiffre détecté");
		}

		// Caractères interdits
		if (/['\?\-"_:;,.<>\/]/.test(pwd)) {
			isValid = false;
			messages.push("❌ Contient un caractère interdit");
		} else {
			messages.push("✅ Aucun caractère interdit");
		}

		// Affichage
		feedback.style.display = "block";
		feedback.className = isValid
			? "ui tiny positive message"
			: "ui tiny negative message";

		feedback.innerHTML = messages.join("<br>");
	});
});
</script>

</body>
</html>