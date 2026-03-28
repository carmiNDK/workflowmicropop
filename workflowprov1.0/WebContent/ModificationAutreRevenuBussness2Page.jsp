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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
						href="Bussness1Page.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Analyse 1</a></li>
					<li id="menuBussness2" class="nav-item" role="presentation"><a
						href="Bussness2Page.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Analyse 2</a></li>
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

			<div class="demande-container"></div>

		</div>
		<div class="tab-membres">
			<form class="ui very compact form" action="InfoBussness2.php"
				method="post">
				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Saisonnalité des ventes</h2>
					<hr>
					<input type="hidden" id="hid_id_saisonnalite_vente_business"
						value="0"> <input type="hidden"
						id="hid_version_saisonnalite_vente_business" value="0">
					<p style="color: green;">${ok}</p>
					<p style="color: red;">${error}</p>
					<table class="ui very compact celled table">
						<tr>

							<td class="collapsing">Mois</td>
							<td class="collapsing">Jan</td>
							<td class="collapsing">Fev.</td>
							<td class="collapsing">Mars</td>
							<td class="collapsing">Avr.</td>
							<td class="collapsing">Mai</td>
							<td class="collapsing">Jun.</td>
							<td class="collapsing">Juil.</td>
							<td class="collapsing">Août.</td>
							<td class="collapsing">Sept.</td>
							<td class="collapsing">Oct.</td>
							<td class="collapsing">Nov.</td>
							<td class="collapsing">Déc</td>

						</tr>

						<tr>

							<td class="collapsing">Montant</td>
							<td class="collapsing"><input type="number"
								value="${MontantJanvierSV}" id="vente_janvier_saison"
								style="font-size: 10px;" name="MontantJanvierSV" required></td>
							<td class="collapsing"><input type="number"
								value="${MontantFevrierSV}" id="vente_fevrier_saison"
								style="width: 100%; font-size: 10px;" name="MontantFevrierSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantMarsSV}" id="vente_mars_saison"
								style="width: 100%; font-size: 10px;" name="MontantMarsSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantAvrilSV}" id="vente_avril_saison"
								style="width: 100%; font-size: 10px;" name="MontantAvrilSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantMaiSV}" id="vente_mai_saison"
								style="width: 100%; font-size: 10px;" name="MontantMaiSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantJuinSV}" id="vente_juin_saison"
								style="width: 100%; font-size: 10px;" name="MontantJuinSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantJuilletSV}" id="vente_juillet_saison"
								style="width: 100%; font-size: 10px;" name="MontantJuilletSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantAoutSV}" id="vente_aout_saison"
								style="width: 100%; font-size: 10px;" name="MontantAoutSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantSeptembreSV}" id="vente_septembre_saison"
								style="width: 100%; font-size: 10px;" name="MontantSeptembreSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantOctobreSV}" id="vente_octobre_saison"
								style="width: 100%; font-size: 10px;" name="MontantOctobreSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantNovembreSV}" id="vente_novembre_saison"
								style="width: 100%; font-size: 10px;" name="MontantNovembreSV"
								required></td>
							<td class="collapsing"><input type="number"
								value="${MontantDecembreSV}" id="vente_decembre_saison"
								style="width: 100%; font-size: 10px;" name="MontantDecembreSV"
								required></td>

						</tr>

					</table>
				</div>

				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Ventes mensuelles moyennes</h2>
					<hr>

					<div class="field"
						style="display: flex; justify-content: flex-end;">
						<button type="button" id="addVenteMensuelleMoyenne"
							class="ui primary button"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
					</div>
					<table class="ui celled table" id="tab_AB_Stock">
						<thead>
							<tr>
								<th><label for="prix_devente">ID</label></th>
								<th><label for="prix_devente">Libelle-Mois</label></th>
								<th><label for="marge_produit">AppreciationVente</label></th>
								<th><label for="valeur_stock">montant_vente ($)</label></th>
								<th><label for="valeur_stock">Actions</label></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ListeVenteMensuelMoyen1}" var="Vb">
								<tr>
									<td>${Vb.idventemensuelmoyen}</td>
									<td>${Vb.libellemois}</td>
									<td>${Vb.appreciation}</td>
									<td>${Vb.montantventemensuelmoyen}</td>
									<td><c:if
											test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
											<a class="ui mini yellow icon button btn-edit"
												href="GetInformationVenteMensuelleMoyen.php?IdVMM=${Vb.idventemensuelmoyen}"><i
												class="edit icon"></i></a>
										</c:if> <c:if test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
											<a class="ui mini red icon button btn-delete" data-id=""
												onclick="$('.ui.modifier-modal').modal('show');"
												data-url="SupInformationVenteMensuelleMoyen.php?IdVMM=${Vb.idventemensuelmoyen}"><i
												class="trash icon"></i></a>
										</c:if></td>
								</tr>
							</c:forEach>

							<tr>
								<td colspan="3">TotalVente</td>

								<td><input type="text" name="tot_moyenne" id="tot_moyenne"
									value="${MontantTotalVenteMoyenneMensuel}" disabled></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3">MoyenneVente</td>

								<td><input type="number" name="tot_moyenne1"
									id="tot_moyenne1" value="${MontantTotalVenteMoyenneMensuelM}"
									disabled></td>
								<td></td>
							</tr>
						</tbody>
					</table>

				</div>

				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Marges</h2>
					<hr>
					<input type="hidden" id="hid_id_marge_business" value="0">
					<input type="hidden" id="hid_version_marge_business" value="0">

					<div class="ui form">

						<div class="fields">
							<div class="eight wide field">
								<label for="marge_moyenne_ponderee">Marge brute moyenne
									pondérée (%)</label>
							</div>
							<div class="eight wide field">
								<input type="number" id="marge_moyenne_ponderee"
									value="${margeBruteMoyennePonderer}" disabled
									style="color: rgb(151, 12, 231);">
							</div>
						</div>

						<div class="fields">
							<div class="eight wide field">
								<label for="marge_moy_pond_px">Marge (Produits
									principaux) (%)</label>
							</div>
							<div class="eight wide field">
								<input type="number" id="marge_moy_pond_px"
									value="${margeBruteMoyenneProduitPrincipaux}" disabled
									style="color: rgb(151, 12, 231);">
							</div>
						</div>

						<div class="fields">
							<div class="eight wide field">
								<label for="marge_moy_produits">Marge brute moyenne
									(tous les produits) (%)</label>
							</div>
							<div class="eight wide field">
								<input type="number" id="marge_moy_produits"
									value="${margeBruteMoyenneTousProduit}" disabled
									style="color: rgb(151, 12, 231);">
							</div>
						</div>

					</div>



				</div>

				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Dépenses Opérationnelles</h2>
					<hr>
					<div class="field"
						style="display: flex; justify-content: flex-end;">
						<button type="button" id="addDepenses" class="ui primary button"
							data-bs-toggle="modal" data-bs-target="#exampleModal2b20"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
					</div>

					<input type="hidden" id="hid_id_depense_operationnelle_business"
						name="hid_id_depense_operationnelle_business" value="0"> <input
						type="hidden" id="hid_version_depense_operationnelle_business"
						name="hid_version_depense_operationnelle_business" value="0">

					<div class="ui segment" style="padding: 10px;">
						<div class="ui form">

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label><strong>Description</strong></label>
								</div>
								<div class="field">
									<label><strong>Montant</strong></label>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="transport_journalier_business">Transport
										journalier au lieu de l'activité ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="transport_journalier_business"
										name="transport_journalier_business"
										value="${TransportJournalierLieuActiviteV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="transport_marchandise_business">Transport /
										coût voyage achats ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="transport_marchandise_business"
										name="transport_marchandise_business"
										value="${TransportCoutVoyageAchatV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="loyer_business">Loyer ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text" id="loyer_business"
										name="loyer_business" value="${LoyerDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="communications_business">Communication ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="communications_business" name="communications_business"
										value="${communicationDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="salaire_agents_business">Salaires ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="salaire_agents_business" name="salaire_agents_business"
										value="${salaireDOpV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="services_business">Services (électricité,
										eau…) ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text" id="services_business"
										name="services_business" value="${servicesDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="taxes_business">Taxes / licence / marché
										($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text" id="taxes_business"
										name="taxes_business" value="${taxesDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="autres_depenses_business">Autres ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="autres_depenses_business" name="autres_depenses_business"
										value="${autresDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="grande_depense_business">Grandes dépenses
										(6 derniers mois) ($)</label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="grande_depense_business" name="grande_depense_business"
										value="${depenseInvestsixmoisdernierDOPV}" disabled>
								</div>
							</div>

							<div class="two fields mini" style="margin-bottom: 4px;">
								<div class="field">
									<label for="total_depenses_business"><strong>Total
											($)</strong></label>
								</div>
								<div class="field">
									<input class="mini input" type="text"
										id="total_depenses_business" name="total_depenses_business"
										value="${totaldop}" disabled style="color: rgb(151, 12, 231);">
								</div>
							</div>

						</div>
					</div>

					<div class="ui segment" style="padding: 10px;">
						<div class="ui form">
							<div class="field" style="margin-bottom: 4px;">
								<label for="commentaire_depense_operationnelle">Commentaires
									sur les dépenses</label>
								<textarea class="mini" id="commentaire_depense_operationnelle"
									name="commentaire_depense_operationnelle" rows="4" disabled>${commentaireDoPV}</textarea>
							</div>
						</div>

					</div>

				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Autres revenus</h2>
					<hr>

					<div class="field"
						style="display: flex; justify-content: flex-end;">
						<button type="button" id="addAutreRevenu"
							class="ui primary button" data-bs-toggle="modal"
							data-bs-target="#exampleModal2b200"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
					</div>

					<table class="ui celled table" id="tab_autre_source">
						<thead>
							<tr>
								<th><label for="mois"><strong>ID</strong></label></th>
								<th><label for="mois"><strong>Description
											de l'activité</strong></label></th>
								<th><label for="etat_vente"><strong>Année
											depuis</strong></label></th>
								<th><label for="montant_vente"><strong>Revenu
											Mensuel ($)</strong></label></th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ListeAutreRevenuB2}" var="vk">
								<tr>
									<td>${vk.idautresrevenub2}</td>
									<td>${vk.descriptionactiviteb2}</td>
									<td>${vk.anneedepuisb2}</td>
									<td>${vk.revenumensuelb2}</td>
									<td><c:if
											test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
											<a class="ui mini yellow icon button btn-edit"
												href="GetInformationAutreRevenuBussness2.php?IdAutreRB2=${vk.idautresrevenub2}"><i
												class="edit icon"></i></a>
										</c:if></td>
									<td><c:if
											test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
											<a class="ui mini red icon button btn-delete" data-id=""
												href="SupInformationAutreRevenuBussness2.php?IdAutreRB2=${vk.idautresrevenub2}"><i
												class="trash icon"></i></a>
										</c:if></td>

								</tr>
							</c:forEach>
							<tr>
								<td colspan="3">Total</td>

								<td><input type="text" name="tot_autre_revenu"
									id="tot_autre_revenu" value="${TotalRevenuAutre}" disabled></td>
								<td></td>
								<td></td>
							</tr>

						</tbody>
					</table>
				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Analyse SWOT</h2>
					<hr>
					<input type="hidden" id="hid_id_analyse_business" value="0">
					<input type="hidden" id="hid_version_analyse_business" value="0">

					<p style="color: green;">${ok}</p>
					<p style="color: red;">${error}</p>

					<div class="ui grid">

						<!-- FORCE -->
						<div class="two wide column">
							<label for="Force">La Force :</label>
						</div>
						<div class="six wide column">
							<div class="ui form">
								<div class="field">
									<textarea name="Force" id="Force" rows="5" required>${Force}</textarea>
								</div>
							</div>
						</div>

						<!-- OPPORTUNITÉ -->
						<div class="two wide column">
							<label for="Opportunite">L'opportunité :</label>
						</div>
						<div class="six wide column">
							<div class="ui form">
								<div class="field">
									<textarea name="Opportunite" id="Opportunite" rows="5" required>${Opportunite}</textarea>
								</div>
							</div>
						</div>

					</div>

					<div class="ui grid">

						<!-- FAIBLESSE -->
						<div class="two wide column">
							<label for="Faiblesse">La faiblesse :</label>
						</div>
						<div class="six wide column">
							<div class="ui form">
								<div class="field">
									<textarea name="Faiblesse" id="Faiblesse" rows="5" required>${Faiblesse}</textarea>
								</div>
							</div>
						</div>

						<!-- MENACE -->
						<div class="two wide column">
							<label for="Menace">Les menaces :</label>
						</div>
						<div class="six wide column">
							<div class="ui form">
								<div class="field">
									<textarea name="Menace" id="Menace" rows="5" required>${Menace}</textarea>
								</div>
							</div>
						</div>

					</div>



				</div>


				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Références du business</h2>
					<hr>
					<table class="ui celled table">

						<thead>
							<tr>
								<th>#</th>
								<th>Nom</th>
								<th>Téléphone</th>
								<th>Relation</th>
							</tr>

						</thead>

						<tbody>
							<tr>

								<td>1</td>
								<td><input type="text" id="ref_nom1" style="width: 100%;"
									name="NomsReferenceB21" value="${NomsReferenceB21}" required></td>
								<td><input type="text" id="ref_phone1" style="width: 100%;"
									name="TypeRelationB21" value="${TypeRelationB21}" required></td>
								<td><input type="text" id="ref_relation1"
									style="width: 100%;" name="TelephoneB21"
									value="${TelephoneB21}" required></td>

							</tr>
							<tr>

								<td>2</td>
								<td><input type="text" id="ref_nom2" style="width: 100%;"
									name="NomsReferenceB22" value="${NomsReferenceB22}" required></td>
								<td><input type="text" id="ref_phone2" style="width: 100%;"
									name="TypeRelationB22" value="${TypeRelationB22}" required></td>
								<td><input type="text" id="ref_relation2"
									style="width: 100%;" name="TelephoneB22"
									value="${TelephoneB22}" required></td>

							</tr>

						</tbody>



					</table>

					<div class="row">
						<div class="col">
							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
						</div>
					</div>
				</div>


			</form>


		</div>


		<!-- Modal Fomantic UI -->
		<div class="ui modal" id="exampleModal2b2">
			<i class="close icon"></i>
			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Ventes mensuelles moyennes</h2>
				<hr>
				<form class="ui form" action="InfoBussness2VenteMensuel.php"
					method="post">

					<div class="field">
						<label>Libelle Mois :</label> <input type="text"
							name="LibelleMois" id="produit_princ" required>
					</div>

					<div class="field">
						<label>Appréciation Vente :</label> <select name="Appreciation"
							id="propriete_business" class="ui dropdown" required>
							<option>Bon</option>
							<option>Moyen</option>
							<option>Mauvais</option>
						</select>
					</div>

					<div class="field">
						<label>Montant Vendu :</label> <input type="text" name="MontantVM"
							id="qte" required>
					</div>

					<button type="submit" class="ui primary button">Enregistrer</button>
				</form>
			</div>
		</div>

		<!-- Modal Fomantic UI -->
		<div class="ui modal" id="exampleModal2b20">
			<i class="close icon"></i>
			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Dépenses Opérationnelles</h2>
				<hr>
				<form class="ui form"
					action="InfoBussness2DepenseOperationnelle.php" method="post">
					<input type="hidden" name="IdDepenseOP" value="${IdDepenseOP}">

					<div class="fields">

						<div class="eight wide column field">
							<label>Transport journalier au lieu de l'activité ($) :</label> <input
								type="number" name="TransportJournalierLieuActivite"
								id="TransportJournalierLieuActivite" required min="0"
								value="${TransportJournalierLieuActiviteV}">
						</div>

						<div class="eight wide column field">
							<label>Transport / coût de voyage d'achats ($) (fret,
								douane, autres) :</label> <input type="number"
								name="TransportCoutVoyageAchat" id="TransportCoutVoyageAchat"
								required min="0" value="${TransportCoutVoyageAchatV}">
						</div>

					</div>

					<div class="fields">

						<div class="six wide column field">
							<label>Loyer ($) :</label> <input type="number" name="LoyerDOP"
								id="LoyerDOP" required min="0" value="${LoyerDOPV}">
						</div>

						<div class="six wide column field">
							<label>Communication ($) :</label> <input type="number"
								name="communicationDOP" id="communicationDOP" required min="0"
								value="${communicationDOPV}">
						</div>

						<div class="four field">
							<label>Salaires ($) :</label> <input type="number"
								name="salaireDOp" id="salaireDOp" required min="0"
								value="${salaireDOpV}">
						</div>

					</div>

					<div class="fields">

						<div class="six wide column field">
							<label>Services (Factures électricité, eau, etc.) ($) :</label> <input
								type="number" name="servicesDOP" id="servicesDOP" required
								min="0" value="${servicesDOPV}">
						</div>

						<div class="six wide column  field">
							<label>Taxes / ticket du marché / Frais de licence ($) :</label>
							<input type="number" name="taxesDOP" id="taxesDOP" required
								min="0" value="${taxesDOPV}">
						</div>

						<div class="four wide column field">
							<label>Autres ($) :</label> <input type="number" name="autresDOP"
								id="autresDOP" required min="0" value="${autresDOPV}">
						</div>


					</div>

					<div class="fields">

						<div class="eight wide column field">
							<label>Grandes dépenses d'investissement 6 derniers mois
								($) :</label> <input type="number" name="depenseInvestsixmoisdernierDOP"
								id="depenseInvestsixmoisdernierDOP" required min="0"
								value="${depenseInvestsixmoisdernierDOPV}">
						</div>

						<div class="eight wide column field">
							<label>Commentaires sur les dépenses :</label>
							<textarea name="commentairedepenseoperationnelle"
								id="commentairedepenseoperationnelle" rows="6" required>${commentaireDoPV}</textarea>
						</div>

					</div>

					<button type="submit" class="ui primary button">Enregistrer</button>
				</form>
			</div>
		</div>
		<!-- Modal Fomantic UI -->
		<div class="ui modal" id="exampleModal2b200">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-left: 300px; margin-top: 10px">Modification /
				Autres revenus</h2>
			<div class="content">
				<form class="ui form" action="UpdateInfoBussness2AutresRevenu.php"
					method="post">

					<input type="hidden" name="IdAchatPP" value="${IdAchatPP}">

					<div class="field">
						<label>Description Activité :</label> <input type="text"
							id="DescriptionActivite" name="DescriptionActivite" required
							value="${DescriptionActivite}">
					</div>

					<div class="field">
						<label>Année Depuis :</label> <input type="number"
							id="AnneeDepuis" name="AnneeDepuis" required min="0" step="0.01"
							value="${AnneeDepuis}">
					</div>

					<div class="field">
						<label>Revenu Mensuel :</label> <input type="number"
							id="RevenuMensuel" name="RevenuMensuel" required
							value="${RevenuMensuel}" min="0" step="0.01">
					</div>

					<div class="actions"
						style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
						<a href="Bussness2Page.php" class="ui primary button"> Annuler
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

					var menuBussness1 = document
							.getElementById('menuBussness1');
					menuBussness1.style.display = 'none';

					var menuBussness2 = document
							.getElementById('menuBussness2');
					menuBussness2.style.display = 'none';

					var menuBussness3 = document
							.getElementById('menuBussness3');
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

					var menuBussness1 = document
							.getElementById('menuBussness1');
					menuBussness1.style.display = 'none';

					var menuBussness2 = document
							.getElementById('menuBussness2');
					menuBussness2.style.display = 'none';

					var menuBussness3 = document
							.getElementById('menuBussness3');
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
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
		<script src="assets/dataTables.js"></script>
		<script src="assets/dataTables.semanticui.min.js"></script>
		<script src="assets/semanticui/semantic.min.js"></script>
		<script src="./js/main.js"></script>


		<script>
			$(document).ready(function() {
				$('#exampleModal2b200').modal({
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
					onclick="document.querySelector('#exampleModal2b200 form').submit();">
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