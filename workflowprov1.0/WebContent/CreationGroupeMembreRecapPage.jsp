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
<script src="./js/fecth30.js"></script>
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
						role="tab" aria-selected="true">Récap/Groupe</a></li>
				</ul>
			</div>
		</div>

		<div class="page-content">
			<div class="demande-container">
				<form class="ui form" action="RecapGroupeGL.php" method="post"
					enctype="multipart/form-data">
					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
							sur le Groupe Lisanga (récap)</h2>
						<hr>

						<input type="hidden" id="hid_id_client" value="0"> <input
							type="hidden" id="hid_version_client" value="0">

						<!-- NumeroGroupeCBS -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NumeroGroupeCBS :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NumeroGroupeCBS" id="NumeroGroupeCBS"
									required value="${NumeroGroupeCBS}"
									oninput="chercherLibelleGroupeRecap()">
							</div>
						</div>

						<!-- Nom Groupe -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>Nom-Groupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="NomGroupeLisanga" id="NomGroupeLisanga"
									value="${NomGroupeLisanga}" disabled>
							</div>
						</div>

						<!-- Adresse -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>AdresseGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="AdresseGroupe" id="AdresseGroupe"
									value="${AdresseGroupe}" disabled>
							</div>
						</div>

						<!-- Province -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>ProvinceGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="ProvinceGroupe" id="ProvinceGroupe"
									value="${ProvinceGroupe}" disabled>
							</div>
						</div>

						<!-- Jour réunion -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>JourReunionGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="JourReunionGroupe" disabled
									value="${JourReunionGroupe}" id="JourReunionGroupe">
							</div>
						</div>

						<!-- Heure réunion -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>HeureReunionGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="HeureReunionGroupe" disabled
									value="${HeureReunionGroupe}" id="HeureReunionGroupe">
							</div>
						</div>

						<!-- Téléphone -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NumeroTelephoneGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NumeroTelephoneGroupe"
									id="NumeroTelephoneGroupe" disabled
									value="${NumeroTelephoneGroupe}"
									oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
							</div>
						</div>

						<!-- Nbr Homme -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NbrHommeGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NbrHommeGroupe" required
									value="${NbrHommeGroupe}" min="0" step="0.01"
									id="NbrHommeGroupe">
							</div>
						</div>

						<!-- Nbr Femme -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NbrFemmeGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NbrFemmeGroupe" required
									value="${NbrFemmeGroupe}" min="0" step="0.01"
									id="NbrFemmeGroupe">
							</div>
						</div>

						<!-- Cycle -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>CycleGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NbrCycleGroupe" id="NbrCycleGroupe"
									required value="${NbrCycleGroupe}" min="0" step="0.01">
							</div>
						</div>

						<!-- Risque -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>CategorieRisqueGroupe :</label>
							</div>
							<div class="ten wide column">
								<select id="CategorieRisqueGroupe" class="ui dropdown"
									name="CategorieRisqueGroupe" required>
									<option selected>${CategorieRisqueGroupe}</option>
									<option>Bas(A)80-100%</option>
									<option>Normal(B)70-79%</option>
									<option>Gros(C)50-69%</option>
									<option>Maximum(D Inf-50%</option>
								</select>
							</div>
						</div>

						<!-- Branche -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>BrancheGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="BrancheGroupeGL"
									value="${BrancheUserConnecter}" disabled>
							</div>
						</div>

						<!-- Promoteur -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>PromoteurGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="PromoteurGroupe" id="PromoteurGroupe"
									value="${PromoteurGroupe}" disabled>
							</div>
						</div>

						<!-- Superviseur -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>SuperviseurGL :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="SuperviseurGL" id="SuperviseurGL"
									value="${SuperviseurGL}" disabled>
							</div>
						</div>

						<!-- Chef Agence -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NomsChef_Agence :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="NomsChefAgence" id="NomsChefAgence"
									required value="${NomsChefAgence}">
							</div>
						</div>

						<!-- Button -->
						<div class="ui center aligned segment">
							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${sessionScope.etatGroupGL != 'Creation'}">disabled</c:if>>
								Enregistrer-Récap</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<c:if test="${UpdateM eq 'ok'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'les informations modifiées avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>

	<c:if test="${nbrUserSaveokMembre eq '100000'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'Félicitations, ce membre a été ajouté avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>

	<c:if test="${nbrUserSaveKokMembre eq '1000001'}">
		<script>
			Swal
					.fire({
						title : 'Message !',
						text : 'Désolé, ce membre n’a pas été enregistré dans le groupe !!',
						icon : 'error',
						confirmButtonText : 'OK'
					});
		</script>
	</c:if>

	<c:if test="${nbrUserSave > 0}">
		<script>
			Swal
					.fire({
						title : 'Message !',
						text : 'Désoler,le nombre maximal des membres est fixer à 10 !!!',
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
	<script src="./js/navtabs.js"></script>
	<script src="./js/main.js"></script>

	<script>
		$('#btnAdd').click(function() {
			$('#exampleModal').modal('show');
		});
	</script>


	<script>
		function previewPhoto(input) {
			const
			file = input.files[0];
			const
			placeholder = document.querySelector("#photoPreview .placeholder");
			const
			img = document.getElementById("previewImage");

			if (file) {
				const
				reader = new FileReader();

				reader.onload = function(e) {
					img.src = e.target.result;
					img.style.display = "block";
					placeholder.style.display = "none";
				};

				reader.readAsDataURL(file);
			} else {
				img.src = "";
				img.style.display = "none";
				placeholder.style.display = "flex";
			}
		}
	</script>
</body>

</html>