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
						href="DemandeGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="true">Organisation Réunion</a></li>
				</ul>
			</div>

		</div>
		<!-- Modal Remboursement (Fomantic UI) -->
		<div id="exampleModal200" class="ui modal">
			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Remboursement
					Membre / Réunion du Groupe</h2>
				<hr>
				<form class="ui form" action="EnregistrementReunionGprGL.php"
					method="post">

					<!-- Inputs cachés -->
					<input type="hidden" name="idReunion" id="idReunion"> <input
						type="hidden" name="cycleGrp" id="cycleGrp"> <input
						type="hidden" name="dateR" id="dateR">

					<div class="field">
						<label>NomsMembreGroupe :</label> <select
							name="NomsMembreGroupeGL" id="NomsMembreGroupeGL"
							style="width: 100%;" required oninput="chercherClient20()">
							<option selected></option>
							<c:forEach items="${ListeMembreGroupe}" var="ListeM">
								<option>${ListeM.nomscompletclientlisanga}</option>
							</c:forEach>
						</select>
					</div>

					<div class="field">
						<label>MontantRemboursEspéré :</label> <input type="text"
							id="MontantRemboursEspere" name="MontantRemboursEspere" disabled>
					</div>

					<div class="field">
						<label>MontantRemboursReunion :</label> <input type="number"
							id="MontantRemboursReunion" name="MontantRemboursReunion"
							required min="0" step="0.01">
					</div>

					<div class="field">
						<label>MontantEpargneGLEspéré :</label> <input type="text"
							id="MontantEpargneGLEspere" name="MontantEpargneGLEspere"
							disabled>
					</div>

					<div class="field">
						<label>MontantEpargneGLReunion :</label> <input type="number"
							id="MontantEpargneGLReunion" name="MontantEpargneGLReunion"
							required min="0" step="0.01">
					</div>

					<div class="field">
						<label>Délégation :</label> <select name="DelegationValue"
							id="DelegationValue" class="ui dropdown" required>
							<option value=""></option>
							<option>Aucun</option>
							<option>Non</option>
							<option>Oui</option>
						</select>
					</div>

					<button type="submit" id="btnSaveDoc" class="ui primary button">
						Enregistrer</button>

				</form>
			</div>
		</div>

		<div class="ui modal" id="exampleModal100025">

			<div class="scrolling content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
					Remboursement Reunion Groupe</h2>
				<hr>
				<table class="ui celled table" id="detailTable">
					<thead>
						<tr>
							<th>DateRéunion</th>
							<th>CycleGroupe</th>
							<th>MembreGrp</th>
							<th>RemboursEspéré ($)</th>
							<th>RemboursRéunion ($)</th>
							<th>EpargneEspérée ($)</th>
							<th>EpargneRéunion ($)</th>
							<th>Délegation</th>
							<th>StatutRembours</th>
							<th>StatutEpargne</th>
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

			<a href="ReturnInformationReunion.php" class="ui primary button">
				Quitter </a>

		</div>


		<!-- Modal Réservation Réunion (Fomantic UI) -->
		<div id="exampleModal2" class="ui modal">
			<i class="close icon"></i>

			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Reserver une
					réunion du groupe</h2>
				<hr>
				<form class="ui form" action="EnregistrementReunionGL.php"
					method="post">

					<div class="field">
						<label>Date-Reunion :</label> <input type="date"
							id="DateReunionGL" name="DateReunionGL" required>
					</div>

					<div class="field">
						<label>Lieu-Reunion :</label> <input type="text"
							id="LieuReunionGL" name="LieuReunionGL" required>
					</div>

					<div class="field">
						<label>HeureDébut-Reunion :</label> <input type="text"
							id="HeureDReunionGL" name="HeureDReunionGL" required>
					</div>

					<div class="field">
						<label>HeureFin-Reunion :</label> <input type="text"
							id="HeureFReunionGL" name="HeureFReunionGL" required>
					</div>

					<button type="submit" id="btnSaveDoc" class="ui primary button">Enregistrer</button>
				</form>
			</div>
		</div>

		<div class="page-content">

			<div class="ui blue segment canscroll">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information de
					la Reunion Groupe Lisanga</h2>
				<hr>

				<p style="color: red;">${error}</p>

				<div class="field">
					<button id="btnAdd" type="button" class="ui primary button">
						Ajouter</button>

				</div>
				<table class="ui celled table" id="tab_AB_Stock">
					<thead>
						<tr>
							<th><label for="id">N°</label></th>
							<th><label for="quantite">DateReunion</label></th>
							<th><label for="quantite">HeureDébut</label></th>
							<th><label for="produit">HeureFin</label></th>
							<th><label for="produit">LieuReunion</label></th>
							<th><label for="prix_dachat">LibelleGroupe</label></th>
							<th><label for="produit">CycleGroupe</label></th>
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
								<td><a class="ui mini green button openRemb" href="#"
									data-id1="${SPP.idreuniongl}" data-id2="${SPP.cyclegrpreunion}"
									data-id3="${SPP.datereuniongl}">Remboursement</a></td>
								<td><a class="ui mini blue button"
									href="InformationPresenceReunionGL.php?idreunion=${SPP.idreuniongl}"><i
										class="eye icon"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>



			</div>
		</div>
	</div>
	<c:if test="${nbrUserSave20 eq '100'}">
		<script>
			Swal.fire({
				title : 'Succès !',
				text : 'Enregistrer avec succés !!!',
				icon : 'success',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>
	<script>
		var monModal = document.getElementById('exampleModal200');
		monModal.addEventListener('show.bs.modal', function(event) {
			// event.relatedTarget = le <a> qui a déclenché le modal
			var bouton = event.relatedTarget;
			var id = bouton.getAttribute('data-id1'); // récupère data-id="101"
			var id2 = bouton.getAttribute('data-id2'); // récupère data-id="101"

			// Met la valeur dans l’input caché du formulaire
			document.getElementById('idReunion').value = id;
			document.getElementById('cycleGrp').value = id2;
		});
	</script>




	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/navtabs.js"></script>
	<script src="./js/main.js"></script>

	<script>
		$('#exampleModal100025').modal({
			closable : false
		}).modal('show');
		$('#btnAdd').click(function() {
			$('#exampleModal2').modal('show');
		});
		$('.openRemb').click(function() {
			var id = $(this).data('id1');
			var id2 = $(this).data('id2');
			var id3 = $(this).data('id3');

			$('#exampleModal200').modal({
				onShow : function() {
					$('#idReunion').val(id);
					$('#cycleGrp').val(id2);
					$('#dateR').val(id3);
				}
			}).modal('show');

		});
	</script>
</body>

</html>