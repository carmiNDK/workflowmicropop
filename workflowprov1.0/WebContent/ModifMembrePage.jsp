<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script src="./js/fecth2.js"></script>
<script src="./js/fecth3.js"></script>
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
						href="DemandeGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="true">FormationG/Membre</a></li>
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

			<div class="demande-container">
				<form class="ui form" action="CreationGroupeGL.php" method="post"
					enctype="multipart/form-data">

					<div class="ui blue segment">

						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
							sur le Groupe Lisanga</h2>
						<hr>

						<p class="ui green text">${ok}</p>
						<p class="ui red text">${error}</p>

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
									oninput="chercherLibelleGroupe()">
							</div>
						</div>

						<!-- Nom Groupe -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>Nom-Groupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="NomGroupeLisanga" id="NomGroupeLisanga"
									required value="${NomGroupeLisanga}">
							</div>
						</div>

						<!-- Adresse -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>AdresseGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="AdresseGroupe" id="AdresseGroupe"
									required value="${AdresseGroupe}">
							</div>
						</div>

						<!-- Province -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>ProvinceGroupe :</label>
							</div>
							<div class="ten wide column">
								<select id="ProvinceGroupe" class="ui dropdown"
									name="ProvinceGroupe" required>
									<option selected>${ProvinceGroupe}</option>
									<option>Bas-Uele</option>
									<option>Equateur</option>
									<option>Haut-Katanga</option>
									<option>Haut-Lomami</option>
									<option>Haut-Uele</option>
									<option>Ituri</option>
									<option>Kasai</option>
									<option>Kasai-Oriental</option>
									<option>Kinshasa</option>
									<option>Kongo-Central</option>
									<option>Kwango</option>
									<option>Kwilu</option>
									<option>Lomami</option>
									<option>Lualaba</option>
									<option>Lulua</option>
									<option>Mai-Ndombe</option>
									<option>Maniema</option>
									<option>Mongala</option>
									<option>Nord-Kivu</option>
									<option>Nord-Ubangi</option>
									<option>Sankuru</option>
									<option>Sud-Kivu</option>
									<option>Sud-Ubangi</option>
									<option>Tanganyika</option>
									<option>Tshopo</option>
									<option>Tshuapa</option>
								</select>
							</div>
						</div>

						<!-- Jour réunion -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>JourReunionGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="JourReunionGroupe" required
									value="${JourReunionGroupe}">
							</div>
						</div>

						<!-- Heure réunion -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>HeureReunionGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="HeureReunionGroupe" required
									value="${HeureReunionGroupe}">
							</div>
						</div>

						<!-- Téléphone -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NumeroTelephoneGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NumeroTelephoneGroupe" required
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
									value="${NbrHommeGroupe}" min="0" step="0.01">
							</div>
						</div>

						<!-- Nbr Femme -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NbrFemmeGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NbrFemmeGroupe" required
									value="${NbrFemmeGroupe}" min="0" step="0.01">
							</div>
						</div>

						<!-- Cycle -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>CycleGroupe :</label>
							</div>
							<div class="ten wide column">
								<input type="number" name="NbrCycleGroupe" required
									value="${NbrCycleGroupe}" min="0" step="0.01">
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
								<select class="ui dropdown" name="PromoteurGroupe" required>
									<option selected>${PromoteurGroupe}</option>
									<c:forEach items="${ListePromoteur}" var="listepromo">
										<option>${listepromo.libelleuser}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<!-- Superviseur -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>SuperviseurGL :</label>
							</div>
							<div class="ten wide column">
								<select class="ui dropdown" name="SuperviseurGL" required>
									<option selected>${SuperviseurGL}</option>
									<c:forEach items="${ListeSuperviseur}" var="listesup">
										<option>${listesup.libelleuser}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<!-- Chef Agence -->
						<div class="ui grid middle aligned divided">
							<div class="four wide column">
								<label>NomsChef_Agence :</label>
							</div>
							<div class="ten wide column">
								<input type="text" name="NomsChefAgence" required
									value="${NomsChefAgence}">
							</div>
						</div>

						<!-- Button -->
						<div class="ui center aligned segment">
							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${sessionScope.etatGroupGL != 'Creation'}">disabled</c:if>>
								Enregistrer</button>
						</div>

					</div>

				</form>

			</div>

		</div>
		<div class="tab-membres">

			<div class="ui blue segment table-responsive"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<table class="ui celled table" id="tabUniteFamiliale">
					<thead>
						<div class="row">
							<class class="col"> </class>
							<div class="col">
								<button id="btnAdd" type="button" class="ui primary button"
									data-bs-toggle="modal" data-bs-target="#exampleModal"
									data-bs-whatever="@mdo"
									<c:if test="${sessionScope.etatGroupGL != 'Creation'}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
							</div>
						</div>
						<tr>
							<th><label for=""><strong>IDClient</strong></label></th>
							<th><label for=""><strong>NumeroCBS</strong></label></th>
							<th><label for=""><strong>NomsClient</strong></label></th>
							<th><label for=""><strong>SexeClient</strong></label></th>
							<th><label for=""><strong>CategorieClient</strong></label></th>
							<th><label for=""><strong>EtatCivilClient</strong></label></th>
							<th><label for=""><strong>DateNaissance</strong></label></th>
							<th><label for=""><strong>SocieteMembre</strong></label></th>
							<th><label for=""><strong>Fonction/Societe</strong></label></th>
							<th><label for=""><strong>Salaire/Societe</strong></label></th>
							<th><label for=""><strong>Adresse/Societe</strong></label></th>
							<th><label for=""><strong>NomsConjoint(e)</strong></label></th>
							<th><label for=""><strong>TelephoneConjoint</strong></label></th>
							<th><label for=""><strong>Transfert?</strong></label></th>
							<th><label for=""><strong>Grp-Provenance</strong></label></th>
							<th><label for=""><strong>Photos</strong></label></th>
							<th><label for=""><strong></strong></label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeMembreGroupeGL}" var="MembreGroupe">
							<tr>
								<td>${MembreGroupe.idclientmembregl}</td>
								<td>${MembreGroupe.numclientmembrecbs}</td>
								<td>${MembreGroupe.nomscompletclientlisanga}</td>
								<td>${MembreGroupe.sexemembregroupe}</td>
								<td>${MembreGroupe.categoriemembregroupe}</td>
								<td>${MembreGroupe.etatcivilclilisanga}</td>
								<td>${MembreGroupe.datenaissancemembregroupe}</td>
								<td>${MembreGroupe.societemembregl}</td>
								<td>${MembreGroupe.fonctionsocietemembreg}</td>
								<td>${MembreGroupe.salairemembregl}</td>
								<td>${MembreGroupe.adressesocietemembregl}</td>
								<td>${MembreGroupe.nomsconjointmembregl}</td>
								<td>${MembreGroupe.telconjointmembregl}</td>
								<td>${MembreGroupe.transfertgl}</td>
								<td>${MembreGroupe.groupeprovenancegl}</td>
								<td><a class="ui mini teal icon button btn-edit"
									title="Voir la photo du Membre GL" href="javascript:void(0)"
									onclick="openClientModal(${MembreGroupe.idclientmembregl},${MembreGroupe.nomscompletclientlisanga})"><i
										class="image icon"></i></a></td>
								<td><c:if
										test="${(sessionScope.etatGroupGL eq 'Creation') || (sessionScope.etatGroupGL eq 'Analyse')}">
										<a class="ui mini yellow icon button btn-edit"
											title="Modifier"
											href="ReturnInfoPourModificationMembreGL.php?idclient=${MembreGroupe.idclientmembregl}"><i
											class="edit icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>


			</div>
		</div>


		<!-- Modale -->
		<div id="clientModal"
			style="display: none; position: fixed; inset: 0; background: rgba(0, 0, 0, 0.6); z-index: 9999; align-items: center; justify-content: center;">
			<div
				style="background: #fff; width: 80%; max-width: 900px; border-radius: 12px; overflow: hidden; position: relative; box-shadow: 0 20px 50px rgba(0, 0, 0, 0.3); display: flex; align-items: center; justify-content: center;">
				<span onclick="closeClientModal()"
					style="position: absolute; top: 12px; right: 16px; font-size: 26px; cursor: pointer; color: #555;">&times;</span>
				<img id="clientModalImg" src="" alt="Client Photo"
					style="max-width: 100%; max-height: 80vh; border-radius: 50%; object-fit: contain; box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);">
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
				Swal
						.fire({
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

		<div class="ui fullscreen modal" id="exampleModal"
			style="height: 90vh;">
			<div class="text">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="padding-left: 50px; margin-top: 10px;"]>
					<i class="users icon"></i> Modification membre goupe lisanga

				</h2>
				<hr>
			</div>
			<div class="scrolling content" style="max-height: 90vh;">
				<form class="ui form" action="UpdateMembreGroupeGL.php"
					method="post" enctype="multipart/form-data">
					<input type="hidden" id="idmembre" name="idmembre"
						value="${idclientmembregl}">
					<div class="ui grid form-grid">
						<div class="twelve wide column">
							<div class="ui three column stackable grid">
								<!-- Colonne 1 -->
								<div class="column">
									<div class="field">
										<label class="required-field">NumClientCbs :</label> <input
											type="number" id="NumClientMembreCbs"
											name="NumClientMembreCbs" required
											oninput="chercherClient2()" value="${numclientmembrecbs}">
									</div>

									<div class="field">
										<label class="required-field">Nom :</label> <input type="text"
											id="NomMembreGroupe" name="NomMembreGroupe" required
											value="${nomsmembregroupe}">
									</div>

									<div class="field">
										<label class="required-field">PostNom :</label> <input
											type="text" id="PostNomMembreGroupe"
											name="PostNomMembreGroupe" required
											value="${postnommembregroupe}">
									</div>

									<div class="field">
										<label class="required-field">PreNom :</label> <input
											type="text" id="PreNomMembreGroupe" name="PreNomMembreGroupe"
											required value="${prenommembregroupe}">
									</div>

									<div class="field">
										<label class="required-field">DateNaissance :</label> <input
											type="date" name="DateNaissanceMembreGroupe"
											id="DateNaissanceMembreGroupe" required
											value="${datenaissancemembregroupe}">
									</div>

									<div class="field">
										<label class="required-field">Telephone :</label> <input
											type="number" id="TelephoneMembreGroupe"
											name="TelephoneMembreGroupe" required
											oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);"
											value="${telephonemembregroupe}">
									</div>
								</div>

								<!-- Colonne 2 -->
								<div class="column">
									<div class="field">
										<label class="required-field">Sexe :</label> <select
											class="ui dropdown" id="SexeMembreGroupe"
											name="SexeMembreGroupe" required>
											<option selected>${sexemembregroupe}</option>
											<option>Masculin</option>
											<option>Feminin</option>
										</select>
									</div>

									<div class="field">
										<label class="required-field">EtatCivil :</label> <select
											class="ui dropdown" name="EtatCivilMembreGroupe"
											id="EtatCivilMembreGroupe" required>
											<option selected>${etatcivilclilisanga}</option>
											<option>Celibataire</option>
											<option>Marie</option>
											<option>Divorce</option>
											<option>Veuf(ve)</option>
										</select>
									</div>

									<div class="field">
										<label class="required-field">Adresse :</label> <input
											type="text" id="AdresseMembreGroupe"
											name="AdresseMembreGroupe" required
											value="${adressemembregroupe}">
									</div>


									<div class="field">
										<label class="required-field">Noms Conjoint(e) :</label> <input
											type="text" id="ConjointMembreGroupe"
											name="ConjointMembreGroupe" required
											value="${nomsconjointmembregl}">
									</div>

									<div class="field">
										<label class="required-field">Téléphone Conjoint(e) :</label>
										<input type="number" id="TelephoneConjointMembreGroupe"
											name="TelephoneConjointMembreGroupe" required
											oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);"
											value="${telconjointmembregl}">
									</div>
								</div>

								<!-- Colonne 3 -->
								<div class="column">
									<div class="field">
										<label class="required-field">Société Membre :</label> <input
											type="text" id="SocieteMembreGroupe"
											name="SocieteMembreGroupe" required
											value="${societemembregl}">
									</div>

									<div class="field">
										<label class="required-field">Adresse Société Membre :</label>
										<input type="text" id="AdresseSocieteMembreGroupe"
											name="AdresseSocieteMembreGroupe" required
											value="${adressesocietemembregl}">
									</div>

									<div class="field">
										<label class="required-field">Poste/Fonction Société
											Membre :</label> <input type="text" id="FonctionSocieteMembreGroupe"
											name="FonctionSocieteMembreGroupe" required
											value="${fonctionsocietemembreg}">
									</div>

									<div class="field">
										<label class="required-field">Salaire Membre :</label> <input
											type="text" id="SalaireMembreGroupe"
											name="SalaireMembreGroupe" required
											value="${salairemembregl}">
									</div>

									<div class="field">
										<label class="required-field">Catégorie Membre :</label> <select
											class="ui dropdown" id="CategorieMembreGroupe"
											name="CategorieMembreGroupe" required>
											<option selected>${categoriemembregroupe}</option>
											<option>President(e)</option>
											<option>Secretaire</option>
											<option>Tresorier(e)</option>
											<option>Gardien(ne)</option>
											<option>Membre</option>
										</select>
									</div>

									<div class="field">
										<label class="required-field">Transfert Membre :</label> <select
											class="ui dropdown" id="TransfertMembreGroupe"
											name="TransfertMembreGroupe" required>
											<option selected>${transfertgl}</option>
											<option>Non</option>
											<option>Oui</option>
										</select>
									</div>

									<div class="field">
										<label class="required-field">Groupe Transfert Membre
											:</label> <input type="text" id="GroupeTransfertMembre"
											name="GroupeTransfertMembre" required
											value="${groupeprovenancegl}">
									</div>
								</div>
							</div>
						</div>
						<!-- Colonne Photo -->
					</div>
					<div class="actions"
						style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
						<a href="DemandeGL.php" class="ui primary button"> Annuler </a>
						<button type="button"
							onclick="$('.ui.modifier-modal').modal('show');"
							class="ui large primary right labeled icon button">
							<i class="checkmark icon"></i> Modifier le membre
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/navtabs.js"></script>
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
	<script>
		function openClientModal(idclient, nomsCompletCliGL) {
			document.getElementById('clientModalImg').src = 'ReturnPhotosClient3.php?idclient='
					+ idclient + '&nomsCompletCliGL=' + nomsCompletCliGL;
			document.getElementById('clientModal').style.display = 'flex';
		}
		function closeClientModal() {
			document.getElementById('clientModal').style.display = 'none';
			document.getElementById('clientModalImg').src = '';
		}
	</script>
</body>
</html>
