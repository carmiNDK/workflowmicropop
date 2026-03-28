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
<script src="./js/fecth.js"></script>
<link rel="stylesheet" href="assets/semanticui/semantic.min.css">
<link rel="stylesheet" href="assets/dataTables.semanticui.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/sidebar.css">
<link rel="stylesheet" href="./css/nav.css">
<link rel="stylesheet" href="./css/creditvb.css">
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
<title>KwikLoan : crédit de groupe</title>
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
		<div class="page-header">
			<div class="page-header-left">
				<h2 class="page-header-title">Crédit de groupe</h2>
				<p class="page-header-subtitle text-gray">Suivi des demandes des
					groupes solidaires</p>
			</div>
			<div id="bb" class="page-header-right">
				<c:if test="${sessionScope.ProfilUser eq 'CA'}">
					<button class="ui primary button" id="addLink225">
						<a class="hover:tw-text-white" " href="AjoutDossierGL.php"><i
							class="plus circle icon"></i>Nouvelle demande de groupe</a>
					</button>
					<button class="ui primary button" id="addLink2255">
						<a class="hover:tw-text-white" " href="AjoutDossierGLRecap.php"><i
							class="plus circle icon"></i>Nouvelle demande de groupe ( récap )</a>
					</button>
				</c:if>
			</div>
		</div>

		<div class="page-content">
			<div class="ui green message"
				style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
			<div class="ui red message"
				style="display: ${error != null ? 'block' : 'none'}">${error}</div>
			<div class="ui blue segment canscroll">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Liste des dossiers GL (A traiter)</h2>
				<hr>
				<div class="row" style="background-color: white;">
					<table id="myTable7" class="ui celled table">
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
						<tbody id="testBody">
							<c:forEach
								items="${ListeDossierCreditGLFonctionStatutEtProfilUtilisateur}"
								var="LG">
								<tr>
									<td>${LG.idgroupelisanga}</td>
									<td>${LG.numerogroupecbslisanga}</td>
									<td>${LG.nomgroupelisanga}</td>
									<td>${LG.branchegroupelisanga}</td>
									<td>${LG.promoteurgroupelisanga}</td>
									<td>${LG.nbrcyclegroupelisanga}</td>
									<td class="statut"
										style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${LG.etatgroupgllisanga}</td>
									<td><a
										href="ReturnInformationDossierGL.php?numdoss=${LG.idgroupelisanga}&&cycle=${LG.nbrcyclegroupelisanga}">
											<i class="yellow folder open icon"></i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>


			</div>
			<div id="1" class="ui green segment canscroll">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Vos Dossiers crédits Groupe en état
					cloturer (Terminer)</h2>
				<hr>
				<table id="myTable8" id="loans" class="ui celled table">
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
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody id="testBody">
						<c:forEach items="${ListeDossierCreditGLCAetapeTerminer}"
							var="cooo1">
							<tr>
								<td>${cooo1.idgroupelisanga}</td>
								<td>${cooo1.numerogroupecbslisanga}</td>
								<td>${cooo1.nomgroupelisanga}</td>
								<td>${cooo1.branchegroupelisanga}</td>
								<td>${cooo1.promoteurgroupelisanga}</td>
								<td>${cooo1.nbrcyclegroupelisanga}</td>
								<td class="statut"
									style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${cooo1.etatgroupgllisanga}</td>
								<td><a
									href="ReturnInformationDossierGLTerminer.php?numdoss=${cooo1.idgroupelisanga}&&cycleT=${cooo1.nbrcyclegroupelisanga}"><i
										class="yellow folder open icon"></i></a></td>
								<td><a class="ui mini grey button"
									href="InformationReunion.php?idgrp=${cooo1.idgroupelisanga}&&cyclegrp=${cooo1.nbrcyclegroupelisanga}">ReunionGL</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>


			<div id="2" class="ui red segment canscroll">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Vos Dossiers crédits Groupe en état
					Rejeter</h2>
				<hr>

				<table id="myTable9" id="loans" class="ui celled table">
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
					<tbody id="testBody">
						<c:forEach items="${ListeDossierCreditGLCAetapeRejeter}"
							var="cooo1">
							<tr>
								<td>${cooo1.idgroupelisanga}</td>
								<td>${cooo1.numerogroupecbslisanga}</td>
								<td>${cooo1.nomgroupelisanga}</td>
								<td>${cooo1.branchegroupelisanga}</td>
								<td>${cooo1.promoteurgroupelisanga}</td>
								<td>${cooo1.nbrcyclegroupelisanga}</td>
								<td class="statut"
									style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${cooo1.etatgroupgllisanga}</td>
								<td><a
									href="ReturnInformationDossierGL.php?numdoss=${cooo1.idgroupelisanga}&&cycle=${cooo1.nbrcyclegroupelisanga}"><i
										class="yellow folder open icon"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

			<c:if test="${sessionScope.ProfilUser eq 'BM'}">
				<div id="8" class="ui blue segment canscroll">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Historique Dossier GL / Agence</h2>
					<hr>
					<table id="myTable10" class="ui celled table">
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
						<tbody id="testBody">
							<c:forEach items="${ListeDossierCreditGLPourHistoriqueBM}"
								var="CI44">
								<tr>
									<td>${CI44.idgroupelisanga}</td>
									<td>${CI44.numerogroupecbslisanga}</td>
									<td>${CI44.nomgroupelisanga}</td>
									<td>${CI44.branchegroupelisanga}</td>
									<td>${CI44.promoteurgroupelisanga}</td>
									<td>${CI44.nbrcyclegroupelisanga}</td>
									<td class="statut"
										style="vertical-align: middle; text-align: center; padding: 10px 8px; font-size: 0.85rem; font-weight: 600; border-radius: 999px; border: 1px solid rgba(255, 255, 255, 0.4); color: white; white-space: nowrap; box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.12);">${CI44.etatgroupgllisanga}</td>
									<td id="cellToHide"><a
										href="ReturnInformationDossierGL.php?numdoss=${CI44.idgroupelisanga}&&cycle=${CI44.nbrcyclegroupelisanga}"><i
											class="yellow folder open icon"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
			<c:if test="${sessionScope.ProfilUser eq 'CA'}">
				<div class="ui blue segment canscroll">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Impression Batch Remboursement</h2>
					<hr>

					<div class="card-body">
						<form action="ImprimerBatchRemboursement.php" method="post"
							class="ui form">
							<div class="fields">

								<div class="six wide column field">
									<label>Groupe Lisanga :</label>
									<div class="ui fluid search selection dropdown">
										<input type="hidden" name="GrpCAGL" id="GrpCAGL100"> <i
											class="dropdown icon"></i>
										<div class="default text">${GrpCAGL}</div>
										<div class="menu">
											<c:forEach items="${ListeGrpCAGL}" var="listeGL">
												<div class="item" data-value="${listeGL.nomgroupelisanga}">
													${listeGL.nomgroupelisanga}</div>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="six wide column field">
									<label for="">Nombre Total de Cycle GL :</label> <input
										type="text" style="width: 100%;" value="${nbrTotCycleGL}"
										disabled>
								</div>

								<div class="four wide column field">
									<label for="" style="color: white;">n</label>
									<button type="submit" id="btnSave" class="ui primary button"
										style="margin: 0;">
										<i class="search icon"></i>Recherche
									</button>
								</div>
							</div>
						</form>
					</div>
					<br>
					<div class="card-body">
						<div class="row">
							<div class="row" style="background-color: white;">
								<table id="myTable20100" class="ui celled table">
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
									<tbody id="testBody">
										<c:forEach items="${ListeDossierCreditGLAvecCycle}" var="LG1">
											<tr>
												<td>${LG1.idgroupelisanga}</td>
												<td>${LG1.numerogroupecbslisanga}</td>
												<td>${LG1.nomgroupelisanga}</td>
												<td>${LG1.branchegroupelisanga}</td>
												<td>${LG1.promoteurgroupelisanga}</td>
												<td>${LG1.nbrcyclegroupelisanga}</td>
												<td><c:if test="${sessionScope.ProfilUser eq 'CA'}">
														<a
															href="ReturnBatchGL.php?nomgrp=${LG1.nomgroupelisanga}&&cyclegrp=${LG1.nbrcyclegroupelisanga}"
															target="_blank"><i class="print icon"></i></a>
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
			</c:if>

		</div>

		<c:choose>
			<c:when
				test="${(sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') or (sessionScope.ProfilUser eq 'ODP')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')}">
				<script>
					var addLink225 = document.getElementById('addLink225');
					addLink225.style.display = 'none';
					var addLink225 = document.getElementById('addLink2255');
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
				test="${(sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') or (sessionScope.ProfilUser eq 'ODP')or (sessionScope.ProfilUser eq 'RC')or (sessionScope.ProfilUser eq 'CA')or (sessionScope.ProfilUser eq 'SC')or (sessionScope.ProfilUser eq 'DG')or (sessionScope.ProfilUser eq 'DGA')}">
				<script>
					var useradm = document.getElementById('useradm');
					useradm.style.display = 'none';
				</script>
			</c:when>
		</c:choose>

		<c:if
			test="${(sessionScope.ProfilUser eq 'CI')||(sessionScope.ProfilUser eq 'ODP')|| (sessionScope.ProfilUser eq 'RC')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')|| (sessionScope.ProfilUser eq 'SC')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'SUP')}">
			<script>
				var useradm = document.getElementById('useradm');
				useradm.style.display = 'none';
				document.getElementById('cellToHide').style.display = 'none';

				var v3 = document.getElementById('3');
				v3.style.display = 'none';

				var v4 = document.getElementById('4');
				v4.style.display = 'none';

				var v130 = document.getElementById('8');
				v130.style.display = 'none';
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

		<c:if test="${(sessionScope.ProfilUser eq 'BM')}">
			<script>
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
			$('.ui.dropdown').dropdown();
		</script>

		<script>
			$('#myTable7').DataTable();
			$('#myTable8').DataTable();
			$('#myTable9').DataTable();
			$('#myTable10').DataTable();
			$('#myTable20100').DataTable();
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
      '#myTable10'
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
