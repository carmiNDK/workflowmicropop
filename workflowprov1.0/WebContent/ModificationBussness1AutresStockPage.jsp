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
						href="Bussness1Page.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Analyse 1</a></li>
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
						href="DocumentPage.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Documents</a></li>
					<li id="menuResumeProposition" class="nav-item" role="presentation"><a
						href="ResumePropositionPage.php" class="nav-link" type="button"
						role="tab" aria-selected="false">Résumé et proposition</a></li>
					<li id="menuResumeProposition" class="nav-item" role="presentation"><a
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

			<div class="demande-container">
				<form action="InformationBussness1.php" method="post"
					class="ui form">

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Business</h2>
						<hr>
						<input type="hidden" id="hid_id_analyse_business" value="0">
						<input type="hidden" id="hid_version_analyse_business" value="0">


						<p class="ui green text">${ok}</p>
						<p class="ui red text">${error}</p>


						<!-- Ligne 1 -->
						<div class="ui grid">
							<div class="four wide column">
								<label class="text" class="ui ">Activité depuis:</label>
							</div>
							<div class="four wide column">
								<div class="ui input fluid ">
									<input type="number" id="annee_activite_depuis"
										name="ActiviteDepuis" value="${ActiviteDepuis}" required>
								</div>
							</div>


							<div class="four wide column">
								<label class="text" class="ui ">Lieu depuis (année):</label>
							</div>
							<div class="four wide column">
								<div class="ui input fluid ">
									<input type="number" id="annee_business_depuis"
										name="LieuDepuis" value="${LieuDepuis}" required min="0">
								</div>
							</div>
						</div>


						<!-- Ligne 2 -->
						<div class="ui grid">
							<div class="four wide column">
								<label class="text" class="ui ">Nbr de points de vente:</label>
							</div>
							<div class="four wide column">
								<div class="ui input fluid ">
									<input type="number" id="point_vente" name="NbrPointVente"
										value="${NbrPointVente}" required min="0">
								</div>
							</div>


							<div class="four wide column">
								<label class="text" class="ui ">Propriété des locaux:</label>
							</div>
							<div class="four wide column">
								<div class="ui selection dropdown fluid ">
									<input type="hidden" name="ProprieteLocaux"
										value="${ProprieteLocaux}"> <i class="dropdown icon"></i>
									<div class="default text">${ProprieteLocaux}</div>
									<div class="menu">
										<div class="item" data-value="proprietaire">Propriétaire</div>
										<div class="item" data-value="locataire">Locataire</div>
										<div class="item" data-value="famille">Famille</div>
										<div class="item" data-value="autre">Autre</div>
									</div>
								</div>
							</div>
						</div>


						<!-- Ligne 3 -->
						<div class="ui grid">
							<div class="four wide column">
								<label class="text" class="ui ">Nom du bailleur:</label>
							</div>
							<div class="twelve wide column">
								<div class="ui input fluid ">
									<input type="text" id="nom_bailleur_business"
										name="NomBailleur" value="${NomBailleur}" required>
								</div>
							</div>
						</div>


						<!-- Ligne 4 -->
						<div class="ui grid">
							<div class="four wide column">
								<label class="text" class="ui ">Date et heure de la
									visite:</label>
							</div>


							<div class="six wide column">
								<div class="ui input fluid ">
									<input type="date" name="DateVisite" id="date_comite_credit"
										value="${DateVisite}" required>
								</div>
							</div>


							<div class="six wide column">
								<div class="ui input fluid ">
									<input type="text" id="heure_visite_business"
										name="HeureVisite" placeholder="Heure"
										value="${HeureVisiteB1}" required>
								</div>
							</div>
						</div>

					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Evaluation
							Stock des Produits</h2>
						<hr>

						<div class="field"
							style="display: flex; justify-content: flex-end;">
							<button id="btnAdd" type="button" class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
								Ajouter</button>
						</div>
						<input type="hidden" id="hid_id_stock_business" value="0">
						<input type="hidden" id="hid_version_stock_business" value="0">

						<table class="ui celled table" id="tab_AB_Stock">
							<thead>
								<tr>
									<th><label for="id">N°</label></th>
									<th><label for="quantite">Quantité</label></th>
									<th><label for="produit">Produits</label></th>
									<th><label for="prix_dachat">Prix d'achat ($)</label></th>
									<th><label for="prix_devente">Prix de vente ($)</label></th>
									<th><label for="marge_produit">Marge</label></th>
									<th><label for="valeur_stock">Valeur du stock ($)</label></th>
									<th><label for="Observation">Observation</label></th>
									<th><label for="Observation">Actions</label></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ListeStockPrincipal}" var="SPP">
									<tr>
										<td>${SPP.idstockprincipal}</td>
										<td>${SPP.qteproduitstockprincipal}</td>
										<td>${SPP.libelleproduitstockprincipal}</td>
										<td>${SPP.prixachatstockprincipal}</td>
										<td>${SPP.prixventestockprincipal}</td>
										<td>${SPP.margestockprincipaux}</td>
										<td>${SPP.valeurstockprincipal}</td>
										<td>${SPP.observationstockprincipal}</td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini yellow icon button btn-edit"
													href="GetInformationEvaluationStock.php?numESP=${SPP.idstockprincipal}"><i
													class="edit icon"></i></a>
											</c:if></td>

										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini red icon button btn-delete" data-id=""
													data-url="SupInformationEvaluationStock.php?numESP=${SPP.idstockprincipal}"><i
													class="trash icon"></i></a>
											</c:if></td>

									</tr>
								</c:forEach>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><label for="total_stock">Total ($)</label></td>
									<td><input type="text" id="total_stock"
										style="width: 100%; color: rgb(151, 12, 231);"
										value="${totValeurStock}" disabled></td>
									<td></td>
									<td></td>
									<td></td>

								</tr>
							</tbody>
						</table>
					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Autres Stocks</h2>
						<hr>

						<div class="field"
							style="display: flex; justify-content: flex-end;">
							<button id="btnAdd2" type="button" class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
								Ajouter</button>
						</div>
						<input type="hidden" id="hid_id_autres_stock_business" value="0">
						<input type="hidden" id="hid_version_autres_stock_business"
							value="0">

						<table class="ui celled table" id="tab_AB_Autres_Stock">
							<thead>
								<tr>
									<th><label for="id">N°</label></th>
									<th><label for="quantite">Quantité</label></th>
									<th><label for="produit">Produits</label></th>
									<th><label for="prix_dachat">Prix d'achat ($)</label></th>
									<th><label for="prix_devente">Prix de vente ($)</label></th>
									<th><label for="marge_produit">Marge</label></th>
									<th><label for="valeur_stock">Valeur du stock ($)</label></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ListeStockPrincipalAS}" var="SPPA">
									<tr>
										<td>${SPPA.idstockprincipal}</td>
										<td>${SPPA.qteproduitstockprincipal}</td>
										<td>${SPPA.libelleproduitstockprincipal}</td>
										<td>${SPPA.prixachatstockprincipal}</td>
										<td>${SPPA.prixventestockprincipal}</td>
										<td>${SPPA.margestockprincipaux}</td>
										<td>${SPPA.valeurstockprincipal}</td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini yellow icon button btn-edit"
													href="GetInformationAutresStock.php?numAS=${SPPA.idstockprincipal}"><i
													class="edit icon"></i></a>
											</c:if></td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini red icon button btn-delete" data-id=""
													href="SupInformationAutresStock.php?numAS=${SPPA.idstockprincipal}"><i
													class="trash icon"></i></a>
											</c:if></td>
									</tr>
								</c:forEach>

								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><label for="total_stock">Total ($)</label></td>
									<td><input type="text" id="total_stock"
										style="width: 100%; color: rgb(151, 12, 231);"
										value="${totValeurStockAS}" disabled></td>


								</tr>
							</tbody>
						</table>


					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Gestion des
							Ventes et Chiffre d'affaires</h2>
						<hr>
						<div class="field"
							style="display: flex; justify-content: flex-end;">
							<button id="btnAdd5" type="button" class="ui primary button"
								data-bs-toggle="modal" data-bs-target="#exampleModal"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
								Ajouter</button>
						</div>

						<div class="fields">

							<div class="six column field">

								<label>Existe-t-il un registre (Cahier) de vente?</label> <select
									class="ui dropdown" name="propriete_business"
									id="propriete_business" disabled>
									<option selected>${RegistreVenteVariable}</option>
									<option value="">Oui</option>
									<option value="proprietaire">Non</option>
								</select>

							</div>

						</div>
						<hr style="margin-bottom: 20px;">
						<div class="fields">
							<div class="six column field">
								<h6 style="font-weight: bold;">Ventes journalières min.
									&max.</h6>
							</div>
						</div>

						<div class="fields">
							<div class="eight wide field">
								<label for="jours_ouverture_business"><i>Nombre des
										jours ouvrables par mois (jours):</i></label>
							</div>
							<div class="eight wide field">
								<input type="number" id="jours_ouverture_business"
									value="${NbrJourOuvrableParMoisVariable}" disabled>
							</div>

						</div>
						<table class="ui very compact table">
							<thead>
								<tr>
									<th class="collapsing"></th>
									<th class="collapsing">Lundi</th>
									<th class="collapsing">Mardi</th>
									<th class="collapsing">Mercredi</th>
									<th class="collapsing">Jeudi</th>
									<th class="collapsing">Vendredi</th>
									<th class="collapsing">Samedi</th>
									<th class="collapsing">Dimanche</th>
									<th class="collapsing">Total ($)
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="collapsing"></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown" name="vente_lundi_qualitatif"
										id="vente_lundi_qualitatif" disabled>
											<option selected>${CategorieVjLundiVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown" name="vente_mardi_qualitatif"
										id="vente_mardi_qualitatif" disabled
										style="font-size: 14px !important;">
											<option selected>${CategorieVjMardiVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown"
										name="vente_mercredi_qualitatif"
										id="vente_mercredi_qualitatif" disabled
										style="font-size: 12px !important;">
											<option selected>${CategorieVjMercrediVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown" name="vente_jeudi_qualitatif"
										id="vente_jeudi_qualitatif" disabled>
											<option selected>${CategorieVjJeudiVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown"
										name="vente_vendredi_qualitatif"
										id="vente_vendredi_qualitatif" disabled>
											<option selected>${CategorieVjVendrediVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown" name="vente_samedi_qualitatif"
										id="vente_samedi_qualitatif" disabled>
											<option selected>${CategorieVjSamediVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing"><select
										class="ui mini fluid dropdown"
										name="vente_dimanche_qualitatif"
										id="vente_dimanche_qualitatif" disabled>
											<option selected>${CategorieVjDimancheVariable}</option>
											<option value="N">Normal</option>
											<option value="M">Mauvais</option>
											<option value="B">Bien</option>
									</select></td>
									<td class="collapsing">&nbsp;<input type="text"
										id="vente_semaine" style="color: rgb(151, 12, 231);"
										value="${VenteMensuelMinMaxVariable}" disabled>&nbsp;&nbsp;
									</td>
								</tr>

								<tr>
									<td class="collapsing">Montant</td>
									<td class="collapsing"><input type="number"
										id="vente_lundi" style="width: 100%;"
										value="${MontantVjLundiVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_mardi" style="width: 100%;"
										value="${MontantVjMardiVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_mercredi" style="width: 100%;"
										value="${MontantVjMercrediVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_jeudi" style="width: 100%;"
										value="${MontantVjJeudiVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_vendredi" style="width: 100%;"
										value="${MontantVjVendrediVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_samedi" style="width: 100%;"
										value="${MontantVjSamediVariable}" disabled></td>
									<td class="collapsing"><input type="number"
										id="vente_dimanche" style="width: 100%;"
										value="${MontantVjDimancheVariable}" disabled></td>
									<td class="collapsing"><input type="text"
										id="vente_semaine" style="color: rgb(151, 12, 231);"
										value="${TotalSemaineVariable}" disabled></td>
								</tr>



							</tbody>
						</table>

						<hr style="margin-bottom: 20px;">
						<div class="fields">
							<div class="six column field">
								<h6 style="font-weight: bold;">Evolution Vente de 3
									derniers mois / année encours</h6>
							</div>
						</div>
						<div class="ten wide column">
							<table class="ui very compact table" style="with: 500px;">
								<tbody>
									<tr>
										<td class="collapsing">Mois de l'année encours</td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_premier_jour" disabled>
												<option selected>${dernierJour1Variable}</option>
												<option>Janvier</option>
												<option>Fevrier</option>
												<option>Mars</option>
												<option>Avril</option>
												<option>Mai</option>
												<option>Juin</option>
												<option>Juillet</option>
												<option>Aout</option>
												<option>Septembre</option>
												<option>Octobre</option>
												<option>Novembre</option>
												<option>Decembre</option>
										</select></td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_deuxieme_jour"
											disabled>
												<option selected>${dernierJour2Variable}</option>
												<option>Janvier</option>
												<option>Fevrier</option>
												<option>Mars</option>
												<option>Avril</option>
												<option>Mai</option>
												<option>Juin</option>
												<option>Juillet</option>
												<option>Aout</option>
												<option>Septembre</option>
												<option>Octobre</option>
												<option>Novembre</option>
												<option>Decembre</option>
										</select></td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_troisieme_jour"
											disabled>
												<option selected>${dernierJour3Variable}</option>
												<option>Janvier</option>
												<option>Fevrier</option>
												<option>Mars</option>
												<option>Avril</option>
												<option>Mai</option>
												<option>Juin</option>
												<option>Juillet</option>
												<option>Aout</option>
												<option>Septembre</option>
												<option>Octobre</option>
												<option>Novembre</option>
												<option>Decembre</option>
										</select></td>
										<td class="collapsing"><i>Mois Actuel (mois visite)</i></td>

									</tr>

									<tr>
										<td class="collapsing">Vente :</td>
										<td class="collapsing"><input type="number"
											id="vente_premier_jour" value="${VenteDernierJour1Variable}"
											disabled></td>
										<td><input type="number" id="vente_deuxieme_jour"
											value="${VenteDernierJour2Variable}" disabled></td>
										<td class="collapsing"><input type="number"
											id="vente_troisieme_jour"
											value="${VenteDernierJour3Variable}" disabled></td>
										<td class="collapsing"><input type="number"
											id="vente_projetee_aujourdhui"
											value="${VenteJourTOdaysVariable}" disabled></td>

									</tr>

									<tr>
										<td class="collapsing">Ventes mensuelles ($) :</td>
										<td class="collapsing"></td>
										<td></td>

										<td colspan="2" class="collapsing"><input type="text"
											id="ventes_trois_jours"
											style="width: 100%; color: rgb(151, 12, 231);"
											value="${VenteMensuelTroisDernierJoursVariable}" disabled></td>
									</tr>

								</tbody>
							</table>

						</div>

						<hr style="margin-bottom: 20px;">
						<div class="fields">
							<div class="six column field">
								<h6 style="font-weight: bold;">Evolution Vente de 3
									derniers Jours de la semaine</h6>
							</div>
						</div>
						<div class="ten wide column">
							<table class="ui very compact table">
								<tbody>
									<tr>
										<td class="collapsing">Jour de la semaine :</td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_premier_jour1"
											style="width: 100%;" disabled>
												<option selected>${dernierJ1Variable}</option>
												<option>Lundi</option>
												<option>Mardi</option>
												<option>Mercredi</option>
												<option>Jeudi</option>
												<option>Vendredi</option>
												<option>Samedi</option>
												<option>Dimanche</option>
										</select></td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_deuxieme_jour2"
											style="width: 100%;" disabled>
												<option selected>${dernierJ2Variable}</option>
												<option>Lundi</option>
												<option>Mardi</option>
												<option>Mercredi</option>
												<option>Jeudi</option>
												<option>Vendredi</option>
												<option>Samedi</option>
												<option>Dimanche</option>
										</select></td>
										<td class="collapsing"><select
											class="ui mini fluid dropdown" id="nom_troisieme_jour3"
											style="width: 100%;" disabled>
												<option selected>${dernierJ3Variable}</option>
												<option>Lundi</option>
												<option>Mardi</option>
												<option>Mercredi</option>
												<option>Jeudi</option>
												<option>Vendredi</option>
												<option>Samedi</option>
												<option>Dimanche</option>
										</select></td>
										<td class="collapsing"><i>Aujourd'hui</i></td>

									</tr>

									<tr>
										<td class="collapsing">Vente :</td>
										<td class="collapsing"><input type="number"
											id="vente_premier_jour1" style="width: 100%;"
											value="${VenteDernierJ1Variable}" disabled></td>
										<td><input type="number" id="vente_deuxieme_jour2"
											style="width: 100%;" value="${VenteDernierJ2Variable}"
											disabled></td>
										<td class="collapsing"><input type="number"
											id="vente_troisieme_jour3" style="width: 100%;"
											value="${VenteDernierJ3Variable}" disabled></td>
										<td class="collapsing"><input type="number"
											id="vente_projetee_aujourdhui4" style="width: 100%;"
											value="${VenteJourTOdaysVariable4}" disabled></td>

									</tr>

									<tr>
										<td class="collapsing">Ventes Hebdomadaire ($) :</td>
										<td class="collapsing"></td>
										<td></td>

										<td colspan="2" class="collapsing"><input type="number"
											id="ventes_trois_jours4"
											style="width: 100%; color: rgb(151, 12, 231);"
											value="${VenteMensuelTroisDernierJoursVariable4}" disabled></td>
									</tr>

								</tbody>
							</table>

						</div>

						<hr style="margin-bottom: 20px;">

						<div class="fields">

							<div class="eight column field">
								<label for=""> Commentaire</label> <br>
								<textarea name="commentaireVA" id="commentaireVA" cols="70"
									rows="10" style="width: 100%;" disabled>${commentaireVA}</textarea>

							</div>

						</div>



					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Achats des
							Produits principaux</h2>
						<hr>

						<div class="field"
							style="display: flex; justify-content: flex-end;">
							<button id="btnAdd3" type="button" class="ui primary button"
								data-bs-toggle="modal" data-bs-target="#exampleModal2"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
								Ajouter</button>
						</div>

						<table class="ui celled table " id="tabAchatsProduitsPrincipaux">
							<thead>
								<tr>
									<th><label for="produit_principal">ID</label></th>
									<th><label for="produit_principal">Produits
											principaux</label></th>
									<th><label for="frequence">Fréquences (mois)</label></th>
									<th><label for="quantite_achat">Qté. par achat</label></th>
									<th><label for="quantite_achat">Prix_Achat ($)</label></th>
									<th><label for="quantite_achat">Prix_Vente ($)</label></th>
									<th><label for="achat_mensuel">Achats mensuels ($)</label></th>
									<th><label for="vente_mensuelle">Ventes mensuelles
											($)</label></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ListeAchatProduitPincipaux}" var="APPPS">
									<tr>
										<td>${APPPS.idapp}</td>
										<td>${APPPS.libelleproduitprincipauxachat}</td>
										<td>${APPPS.frequenceproduitprincipauxachat}</td>
										<td>${APPPS.qteproduitprincipauxachat}</td>
										<td>${APPPS.papp}</td>
										<td>${APPPS.pvpp}</td>
										<td>${APPPS.achatmensuelproduitprincipaux}</td>
										<td>${APPPS.ventemensuelproduitprincipaux}</td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a ui mini yellow icon button btn-edit
													href="GetInformationAchatPP.php?IdAchatPP=${APPPS.idapp}"><i
													class="edit icon"></i></a>
											</c:if></td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini red icon button btn-delete" data-id=""
													href="SupInformationAchatPP.php?IdAchatPP=${APPPS.idapp}"><i
													class="trash icon"></i></a>
											</c:if></td>
									</tr>
								</c:forEach>

								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td colspan="2">Total mensuel ($)</td>
									<td><input type="text" id="achat_mensuel_total"
										style="width: 100%; color: rgb(151, 12, 231);"
										value="${totalAchatMensuelVariable}" disabled></td>
									<td><input type="text" id="vente_mensuelle_totale"
										style="width: 100%; color: rgb(151, 12, 231);"
										value="${TotalVenteMensuelVariable}" disabled></td>
								</tr>
							</tbody>
						</table>


					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Actifs &
							dettes</h2>
						<hr>

						<div class="ui very compact form">
							<div class="fields">
								<div class="four wide field">
									<label>Cash business</label> <input type="number"
										name="CashBusiness" id="cash_main" value="${CashBusiness}"
										required>
								</div>
								<div class="four wide field">
									<label>Cash à la maison</label> <input type="number"
										name="CashMaison" id="cash_maison" value="${CashMaison}"
										required>
								</div>
								<div class="four wide field">
									<label>Cash en banque</label> <input type="number"
										name="CashBanque" id="cash_banque" value="${CashBanque}"
										required>
								</div>
								<div class="four wide field">
									<label>Créances</label> <input type="number" name="Creances"
										id="creance_business" value="${Creances}" required>
								</div>
							</div>

							<div class="fields">
								<div class="four wide field">
									<label>Dettes à court terme</label> <input type="number"
										name="DetteCourTerme" id="dette_court_business"
										value="${DetteCourTerme}" required>
								</div>
								<div class="four wide field">
									<label>Dette à long terme</label> <input type="number"
										name="DetteLongTerme" id="dette_long_business"
										value="${DetteLongTerme}" required>
								</div>
								<div class="four wide field">
									<label>Meubles</label> <input type="number" name="Meubles"
										id="meubles" value="${Meubles}" required>
								</div>
								<div class="four wide field">
									<label>Équipements et outils</label> <input type="number"
										name="Equipementoutils" id="equipements_et_outils"
										value="${Equipementoutils}" required>
								</div>
							</div>

							<div class="fields">
								<div class="four wide field">
									<label>Véhicules</label> <input type="number" name="Vehicule"
										id="vehicules" value="${Vehicule}" required>
								</div>
								<div class="four wide field">
									<label>Local commercial</label> <input type="number"
										name="LocalCommercial" id="local_commercial"
										value="${LocalCommercial}" required>
								</div>
								<div class="four wide field">
									<label>Autres</label> <input type="number" name="Autres"
										id="autres" value="${Autres}" required>
								</div>
								<div class="four wide field"></div>
							</div>
						</div>



					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Riques
							principaux</h2>
						<hr>
						<div class="ui grid">
							<div class="two wide column">
								<strong>N°</strong>
							</div>
							<div class="five wide column">
								<strong>Risque</strong>
							</div>
							<div class="five wide column">
								<strong>Mitigation</strong>
							</div>
						</div>


						<div class="ui grid">
							<div class="two wide column">1</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="risque_business_1" name="LibelleRisque1"
										value="${LibelleRisque1}" required>
								</div>
							</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="mitigation_risque_1" name="Mitigation1"
										value="${Mitigation1}" required>
								</div>
							</div>
						</div>


						<div class="ui grid">
							<div class="two wide column">2</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="risque_business_2" name="LibelleRisque2"
										value="${LibelleRisque2}" required>
								</div>
							</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="mitigation_risque_2" name="Mitigation2"
										value="${Mitigation2}" required>
								</div>
							</div>
						</div>


						<div class="ui grid">
							<div class="two wide column">3</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="risque_business_3" name="LibelleRisque3"
										value="${LibelleRisque3}" required>
								</div>
							</div>
							<div class="five wide column">
								<div class="ui input fluid">
									<input type="text" id="mitigation_risque_3" name="Mitigation3"
										value="${Mitigation3}" required>
								</div>
							</div>
						</div>
					</div>
					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Analyse
							Baisse Saison de Vente</h2>
						<hr>

						<input type="hidden" id="hid_id_resume" value="0"> <input
							type="hidden" id="hid_version_resume" value="0">


						<div class="ui form">
							<div class="fields">
								<div class="eight wide field">
									<label>Vente Baisse Saison ($)</label> <input type="text"
										name="VenteBaisseSaison" id="VenteBaisseSaison"
										value="${VenteBaisseSaison}" required>
								</div>
							</div>


							<div class="fields">
								<div class="eight wide field">
									<label>Période Début</label> <select
										name="PeriodeDebutSaisonBasse" id="PeriodeDebutSaisonBasse"
										class="ui dropdown" required>
										<option selected>${PeriodeDebutSaisonBasse}</option>
										<option>Janvier</option>
										<option>Fevrier</option>
										<option>Mars</option>
										<option>Avril</option>
										<option>Mai</option>
										<option>Juin</option>
										<option>Juillet</option>
										<option>Aout</option>
										<option>Septembre</option>
										<option>Octobre</option>
										<option>Novembre</option>
										<option>Decembre</option>
									</select>
								</div>
							</div>


							<div class="fields">
								<div class="eight wide field">
									<label>Période Fin</label> <select name="PeriodeFinSaisonBasse"
										id="PeriodeFinSaisonBasse" class="ui dropdown" required>
										<option selected>${PeriodeFinSaisonBasse}</option>
										<option>Janvier</option>
										<option>Fevrier</option>
										<option>Mars</option>
										<option>Avril</option>
										<option>Mai</option>
										<option>Juin</option>
										<option>Juillet</option>
										<option>Aout</option>
										<option>Septembre</option>
										<option>Octobre</option>
										<option>Novembre</option>
										<option>Decembre</option>
									</select>
								</div>
							</div>


							<div class="field">
								<label>Commentaire</label>
								<textarea name="commentaireAV" id="commentaireAV" rows="5"
									required>${commentaireAV}</textarea>
							</div>


							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">disabled</c:if>>
								Enregistrer</button>
						</div>

					</div>
				</form>



			</div>

		</div>
		<div class="tab-membres"></div>
	</div>


	<!-- Bouton pour ouvrir le modal -->
	<button class="ui primary button" id="openModalStock">Evaluation
		Stock des Produits</button>

	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModal">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Evaluation Stock
				des Produits</h2>
			<hr>
			<form class="ui form" action="InfoBussness1StockPrincipal.php"
				method="post">

				<div class="field">
					<label>Quantité :</label> <input type="number"
						name="QteProduitSpB1" min="0" required>
				</div>

				<div class="field">
					<label>Produits :</label> <input type="text"
						name="LibelleProduitB1" required>
				</div>

				<div class="field">
					<label>Prix d'achat :</label> <input type="text" name="PrixAchatB1"
						required>
				</div>

				<div class="field">
					<label>Prix de vente :</label> <input type="text"
						name="PrixVenteb1" required>
				</div>

				<div class="field">
					<label>Observation :</label> <select name="ObservationSPB1"
						class="ui dropdown" required>
						<option value="">Sélectionnez</option>
						<option value="Simple">Simple</option>
						<option value="Principal">Principal</option>
					</select>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<!-- Modal Semantic UI -->
	<div class="ui modal" id="exampleModal1">

		<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
			style="margin-left: 300px; margin-top: 10px">Modification /
			Autres stocks des Produits</h2>
		<div class="content">
			<form class="ui form" action="UpdateInfoBussness1AutreStock.php"
				method="post">

				<input type="hidden" name="numAS" value="${numAS}">

				<div class="field">
					<label>Quantité</label> <input type="number" id="quantite2"
						name="QteProduitAS" required min="0" step="0.01"
						value="${QteProduitAS}">
				</div>

				<div class="field">
					<label>Produits</label> <input type="text" id="produit2"
						name="LibelleProduitAS" required value="${LibelleProduitAS}">
				</div>

				<div class="field">
					<label>Prix d'achat</label> <input type="number" id="prix_achat2"
						name="PrixAchatAS" required value="${PrixAchatAS}" min="0"
						step="0.01">
				</div>

				<div class="field">
					<label>Prix de vente</label> <input type="number" id="prix_vente2"
						name="PrixVenteAS" required value="${PrixVenteAS}" min="0"
						step="0.01">
				</div>

				<div class="actions"
					style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
					<a href="Bussness1Page.php" class="ui primary button"> Annuler
					</a>
					<button type="button"
						onclick="$('.ui.modifier-modal').modal('show');"
						class="ui large primary right labeled icon button">
						<i class="checkmark icon"></i> Modifier
					</button>
				</div>

			</form>
		</div>
	</div>

	<!-- Modal Gestion des ventes -->
	<div class="ui modal" id="exampleModal1000"
		style="height: 90vh; width: 85vw;">
		<i class="close icon"></i>
		<div class="scrolling content"
			style="max-height: calc(100vh - 5rem); overflow-y: auto; padding: 2rem !important;">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Gestion des
				Ventes et Chiffre d'affaires</h2>
			<hr>

			<form class="ui form" action="InfoBussness1AchatVente.php"
				method="post">
				<input type="hidden" value="${numChaffV}" name="numChaffV">
				<div class="fields">

					<div class="six column field">

						<label>Existe-t-il un registre (Cahier) de vente?</label> <select
							class="ui dropdown" name="RegistreVente" id="RegistreVente"
							style="width: 100%;" required>
							<option selected>${RegistreVenteVariable}</option>
							<option>Oui</option>
							<option>Non</option>
						</select>
					</div>

				</div>
				<hr style="margin-bottom: 10px;">
				<div class="fields">
					<div class="six column field">
						<h6 style="font-weight: bold;">Ventes journalières min. &max.</h6>
					</div>
				</div>

				<div class="fields">
					<div class="eight wide field">
						<label for="NbrJourOuvrableParMois"><i>Nombre des
								jours ouvrables par mois (jours):</i></label>
					</div>
					<div class="eight wide field">
						<input type="number" id="NbrJourOuvrableParMois"
							name="NbrJourOuvrableParMois" required min="0" step="0.01"
							value="${NbrJourOuvrableParMoisVariable}">
					</div>

				</div>

				<table class="ui very compact table">
					<thead>
						<tr>
							<th class="collapsing"></th>
							<th class="collapsing">Lundi</th>
							<th class="collapsing">Mardi</th>
							<th class="collapsing">Mercredi</th>
							<th class="collapsing">Jeudi</th>
							<th class="collapsing">Vendredi</th>
							<th class="collapsing">Samedi</th>
							<th class="collapsing">Dimanche</th>
							<th class="collapsing">Total ($)
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="collapsing"></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjLundi"
								id="CategorieVjLundi" required>
									<option selected>${CategorieVjLundiVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjMardi"
								id="CategorieVjMardi" required
								style="font-size: 14px !important;">
									<option selected>${CategorieVjMardiVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjMercredi"
								id="CategorieVjMercredi" required
								style="font-size: 12px !important;">
									<option selected>${CategorieVjMercrediVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjJeudi"
								id="CategorieVjJeudi" required>
									<option selected>${CategorieVjJeudiVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjVendredi"
								id="CategorieVjVendredi" required>
									<option selected>${CategorieVjVendrediVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjSamedi"
								id="CategorieVjSamedi" required>
									<option selected>${CategorieVjSamediVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing"><select
								class="ui mini fluid dropdown" name="CategorieVjDimanche"
								id="CategorieVjDimanche" required>
									<option selected>${CategorieVjDimancheVariable}</option>
									<option value="N">Normal</option>
									<option value="M">Mauvais</option>
									<option value="B">Bien</option>
							</select></td>
							<td class="collapsing">&nbsp;<input type="text"
								id="vente_semaine"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${VenteMensuelMinMaxVariable}"> &nbsp;&nbsp;
							</td>
						</tr>

						<tr>
							<td class="collapsing">Montant</td>
							<td class="collapsing"><input type="number" id="vente_lundi"
								style="width: 100%;" name="MontantVjLundi" required
								value="${MontantVjLundiVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number" id="vente_mardi"
								style="width: 100%;" name="MontantVjMardi" required
								value="${MontantVjMardiVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number"
								id="vente_mercredi" style="width: 100%;"
								name="MontantVjMercredi" required
								value="${MontantVjMercrediVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number" id="vente_jeudi"
								style="width: 100%;" name="MontantVjJeudi" required
								value="${MontantVjJeudiVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number"
								id="vente_vendredi" style="width: 100%;"
								name="MontantVjVendredi" required
								value="${MontantVjVendrediVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number"
								id="vente_samedi" style="width: 100%;" name="MontantVjSamedi"
								required value="${MontantVjSamediVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="number"
								id="vente_dimanche" style="width: 100%;"
								name="MontantVjDimanche" required
								value="${MontantVjDimancheVariable}" min="0" step="0.01"></td>
							<td class="collapsing"><input type="text"
								id="vente_mensuelle_minmax"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${TotalSemaineVariable}"></td>
						</tr>
					</tbody>
				</table>


				<hr style="margin-bottom: 10px;">
				<div class="fields">
					<div class="six column field">
						<h6 style="font-weight: bold;">Evolution Vente de 3 derniers
							mois / année encours</h6>
					</div>
				</div>

				<div class="ten wide column">
					<table class="ui very compact table" style="with: 500px;">
						<tbody>
							<tr>
								<td class="collapsing">Mois de l'année encours</td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" d="dernierJour1"
									name="dernierJour1" required>
										<option value="">--choix--</option>
										<option selected>${dernierJour1Variable}</option>
										<option>Janvier</option>
										<option>Fevrier</option>
										<option>Mars</option>
										<option>Avril</option>
										<option>Mai</option>
										<option>Juin</option>
										<option>Juillet</option>
										<option>Aout</option>
										<option>Septembre</option>
										<option>Octobre</option>
										<option>Novembre</option>
										<option>Decembre</option>
								</select></td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" id="dernierJour2"
									name="dernierJour2" required>
										<option value="">--choix--</option>
										<option selected>${dernierJour2Variable}</option>
										<option>Janvier</option>
										<option>Fevrier</option>
										<option>Mars</option>
										<option>Avril</option>
										<option>Mai</option>
										<option>Juin</option>
										<option>Juillet</option>
										<option>Aout</option>
										<option>Septembre</option>
										<option>Octobre</option>
										<option>Novembre</option>
										<option>Decembre</option>
								</select></td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" id="dernierJour3"
									style="width: 100%;" name="dernierJour3" required>
										<option selected>${dernierJour3Variable}</option>
										<option>Janvier</option>
										<option>Fevrier</option>
										<option>Mars</option>
										<option>Avril</option>
										<option>Mai</option>
										<option>Juin</option>
										<option>Juillet</option>
										<option>Aout</option>
										<option>Septembre</option>
										<option>Octobre</option>
										<option>Novembre</option>
										<option>Decembre</option>
								</select></td>
								<td class="collapsing"><i>Mois Actuel (mois visite)</i></td>

							</tr>

							<tr>
								<td class="collapsing">Vente :</td>
								<td class="collapsing"><input type="number"
									id="VenteDernierJour1" style="width: 100%;"
									name="VenteDernierJour1" required
									value="${VenteDernierJour1Variable}" min="0" step="0.01"></td>
								<td><input type="number" id="VenteDernierJour2"
									style="width: 100%;" name="VenteDernierJour2" required
									value="${VenteDernierJour2Variable}" min="0" step="0.01"></td>
								<td class="collapsing"><input type="number"
									id="VenteDernierJour3" style="width: 100%;"
									name="VenteDernierJour3" required
									value="${VenteDernierJour3Variable}" min="0" step="0.01"></td>
								<td class="collapsing"><input type="number"
									id="VenteJourTOdays" style="width: 100%;"
									name="VenteJourTOdays" required
									value="${VenteJourTOdaysVariable}" min="0" step="0.01"></td>

							</tr>

							<tr>
								<td class="collapsing">Ventes mensuelles ($) :</td>
								<td class="collapsing"></td>
								<td></td>

								<td colspan="2" class="collapsing"><input type="number"
									id="ventes_trois_jours"
									style="width: 100%; color: rgb(151, 12, 231);" disabled
									value="${VenteMensuelTroisDernierJoursVariable}"></td>
							</tr>

						</tbody>
					</table>

				</div>

				<hr style="margin-bottom: 20px;">
				<div class="fields">
					<div class="six column field">
						<h6 style="font-weight: bold;">Evolution Vente de 3 derniers
							Jours de la semaine</h6>
					</div>
				</div>

				<div class="ten wide column">
					<table class="ui very compact table">
						<tbody>
							<tr>
								<td class="collapsing">Jour de la semaine :</td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" id="dernierJ1"
									style="width: 100%;" name="dernierJ1" required>
										<option value="">--choix--</option>
										<option selected>${dernierJ1Variable}</option>
										<option>Lundi</option>
										<option>Mardi</option>
										<option>Mercredi</option>
										<option>Jeudi</option>
										<option>Vendredi</option>
										<option>Samedi</option>
										<option>Dimanche</option>
								</select></td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" id="dernierJ2"
									style="width: 100%;" name="dernierJ2">
										<option value="">--choix--</option>
										<option selected>${dernierJ2Variable}</option>
										<option>Lundi</option>
										<option>Mardi</option>
										<option>Mercredi</option>
										<option>Jeudi</option>
										<option>Vendredi</option>
										<option>Samedi</option>
										<option>Dimanche</option>
								</select></td>
								<td class="collapsing"><select
									class="ui mini fluid dropdown" id="dernierJ3"
									style="width: 100%;" name="dernierJ3" required>
										<option value="">--choix--</option>
										<option selected>${dernierJ3Variable}</option>
										<option>Lundi</option>
										<option>Mardi</option>
										<option>Mercredi</option>
										<option>Jeudi</option>
										<option>Vendredi</option>
										<option>Samedi</option>
										<option>Dimanche</option>
								</select></td>
								<td class="collapsing"><i>Aujourd'hui</i></td>

							</tr>

							<tr>
								<td class="collapsing">Vente :</td>
								<td class="collapsing"><input type="number"
									id="VenteDernierJ11" style="width: 100%;"
									name="VenteDernierJ11" required
									value="${VenteDernierJ1Variable}" min="0" step="0.01"></td>
								<td><input type="number" id="VenteDernierJ22"
									style="width: 100%;" name="VenteDernierJ22" required
									value="${VenteDernierJ2Variable}" min="0" step="0.01"></td>
								<td class="collapsing"><input type="number"
									id="VenteDernierJ33" style="width: 100%;"
									name="VenteDernierJ33" required
									value="${VenteDernierJ3Variable}" min="0" step="0.01"></td>
								<td class="collapsing"><input type="number"
									id="VenteJourTOdays4" style="width: 100%;"
									name="VenteJourTOdays4" required
									value="${VenteJourTOdaysVariable4}" min="0" step="0.01"></td>

							</tr>

							<tr>
								<td class="collapsing">Ventes Hebdomadaire ($) :</td>
								<td class="collapsing"></td>
								<td></td>

								<td colspan="2" class="collapsing"><input type="number"
									id="ventes_trois_jours4"
									style="width: 100%; color: rgb(151, 12, 231);" disabled
									value="${VenteMensuelTroisDernierJoursVariable4}"></td>
							</tr>

						</tbody>
					</table>
				</div>

				<hr style="margin-bottom: 10px;">

				<div class="fields">

					<div class="eight column field">
						<label for=""> Commentaire</label> <br>
						<textarea name="commentaireVA" id="commentaireVA" cols="600"
							rows="6" style="width: 100%;" required>${commentaireVA}</textarea>

					</div>

				</div>

				<button type="submit" id="btnSaveDoc" class="ui primary button">Enregistrer</button>
			</form>
		</div>

	</div>


	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModal2">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Achat produits
				principaux</h2>
			<hr>
			<form class="ui form" action="InfoBussness1AchatProdPrincipaux.php"
				method="post">

				<div class="field">
					<label>Produits principaux :</label> <select
						name="LibelleProduitPrincipaux" id="LibelleProduitPrincipaux"
						class="ui dropdown" required>
						<option value="" selected></option>
						<c:forEach items="${ListeProduitPrincipauxStock}" var="apppp">
							<option>${apppp.libelleproduitprincipauxpp}</option>
						</c:forEach>
					</select>
				</div>

				<div class="field">
					<label>Fréquence d'achat (mois) :</label> <input type="number"
						name="FrequenceMensuelle" id="freq" min="0" required>
				</div>

				<div class="field">
					<label>Quantité par achat :</label> <input type="number"
						name="QteParAchatA" id="qte" min="0" required>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<!-- Script pour ouvrir le modal -->
	<script>
		$('#openModalAchatProd').click(function() {
			$('#exampleModal2').modal('show');
		});
	</script>



	<c:if test="${UpdateSP eq 'ook'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'la modification effectuée avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>

	<c:choose>
		<c:when test="${sessionScope.EtatDossierCredit eq 'Creation'}">
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

				var menuDocument = document.getElementById('menuDocument');
				menuDocument.style.display = 'none';

				var menuResumeProposition = document
						.getElementById('menuResumeProposition');
				menuResumeProposition.style.display = 'none';

				var menuDecisionComite = document
						.getElementById('menuDecisionComite');
				menuDecisionComite.style.display = 'none';

				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>

		<c:when test="${sessionScope.EtatDossierCredit eq 'Assignation'}">
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

				var menuDocument = document.getElementById('menuDocument');
				menuDocument.style.display = 'none';

				var menuResumeProposition = document
						.getElementById('menuResumeProposition');
				menuResumeProposition.style.display = 'none';

				var menuDecisionComite = document
						.getElementById('menuDecisionComite');
				menuDecisionComite.style.display = 'none';

				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>
		<c:when test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
			<script>
				var AssigbationCarte = document
						.getElementById('AssigbationCarte');
				AssigbationCarte.style.display = 'none';
			</script>
		</c:when>
	</c:choose>

	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>

	<script>
		$(document).ready(function() {
			$('#exampleModal1').modal({
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
				onclick="document.querySelector('#exampleModal1 form').submit();">
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

</body>
</html>