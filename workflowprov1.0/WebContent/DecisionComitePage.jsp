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
						href="Bussness1Page.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Analyse 1</a></li>
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
						href="DecisionComitePage.php" class="nav-link active"
						type="button" role="tab" aria-selected="false">Décision</a></li>
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

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">DECISION DE
					PRET</h2>
				<hr>

				<div class="ui green message"
					style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
				<div class="ui red message"
					style="display: ${error != null ? 'block' : 'none'}">${error}</div>

				<div class="ui form">
					<div class="four fields">
						<div class="field">
							<label>Nom de l'agent de crédit:</label> <input type="text"
								readonly value="${NomsAgentCreditDec}">
						</div>
						<div class="field">
							<label>Produit crédit :</label> <input type="text" readonly
								value="${ProduitFinancierValue}">
						</div>
						<div class="field">
							<label>Numéro Client CBS:</label> <input type="text" readonly
								value="${NumCliCbsDec}">
						</div>
						<div class="field">
							<label>Nombre de cycle :</label> <input type="text" readonly
								value="${NbrCycleDec}">
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label>Date de la demande :</label> <input type="text" readonly
								value="${DateDemandeDec}">
						</div>
						<div class="field">
							<label>Date de la visite de l'activité :</label> <input
								type="text" readonly value="${DateVisiteActiviteDec}">
						</div>
					</div>
				</div>
			</div>

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">DEMANDEUR</h2>
				<hr>
				<div class="ui form">
					<div class="two fields">
						<div class="field">
							<label for="nom_client">Nom complet du client:</label> <input
								type="text" name="nom_client" id="nom_client" readonly
								value="${NomsCompletClientDemandeurDec}">
						</div>
						<div class="field">
							<label for="birthday_client">Date de naissance:</label> <input
								type="date" name="birthday_client" id="birthday_client" readonly
								value="${DateNaissanceClientDemandeurDec}">
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label for="nom_conjoint">Nom complet du conjoint:</label> <input
								type="text" name="nom_conjoint" id="nom_conjoint" readonly
								value="${NomsConjoinClientDemandeurDec}">
						</div>
						<div class="field">
							<label for="telephone_conjoint">Téléphone Conjoint:</label> <input
								type="text" name="telephone_conjoint" id="telephone_conjoint"
								readonly value="${TelephoneConjoinClientDemandeurDec}">
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label for="adresse_residence">Adresse de la résidence:</label> <input
								type="text" name="adresse_residence" id="adresse_residence"
								readonly value="${AdresseDomicileClientDemandeurDec}">
						</div>
						<div class="field">
							<label for="etat_civil_client">État-civil :</label> <input
								type="text" name="etat_civil_client" id="etat_civil_client"
								readonly value="${EtatCivilClientDemandeurDec}">
						</div>
					</div>
				</div>
			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">ACTIVITE</h2>
				<hr>
				<div class="ui form">
					<div class="two fields">
						<div class="field">
							<label for="activite_comm">Activité :</label> <input type="text"
								name="activite_comm" id="activite_comm" readonly
								value="${ACtiviteClientDValueDec}">
						</div>
						<div class="field">
							<label for="duree_experience_date">Activité depuis :</label> <input
								type="number" name="duree_experience_date"
								id="duree_experience_date" readonly
								value="${ACtiviteClientDDepuisValueDec}">
						</div>
					</div>

					<div class="three fields">
						<div class="field">
							<label for="propriete_local">Propriété des locaux :</label> <input
								type="text" name="propriete_local" id="propriete_local" readonly
								value="${ProprieteLocauxClientDValueDec}">
						</div>
						<div class="field">
							<label for="duree_activite_date">Location depuis :</label> <input
								type="number" name="duree_activite_date"
								id="duree_activite_date" readonly
								value="${DureeBussnessAdresseCliDemandeurValueDec}">
						</div>

						<div class="field">
							<label for="adresse_business">Adresse de l'activité :</label> <input
								type="text" name="adresse_business" id="adresse_business"
								readonly value="${AdresseBusinessCliDemandeurValueDec}">
						</div>
					</div>
				</div>
			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">GARANT</h2>
				<hr>
				<div class="ui form">
					<div class="three fields">
						<div class="field">
							<label for="nom_garant">Nom complet :</label> <input type="text"
								name="nom_garant" id="nom_garant" readonly
								value="${NomsCompletGDec}">
						</div>
						<div class="field">
							<label for="telephone_garant">Téléphone (garant) :</label> <input
								type="text" name="telephone_garant" id="telephone_garant"
								readonly value="${TelephoneGDec}">
						</div>
						<div class="field">
							<label for="sexe_garant">Sexe :</label> <input type="text"
								name="sexe_garant" id="sexe_garant" readonly
								value="${SexeGValueDec}">
						</div>
					</div>

					<div class="three fields">

						<div class="field">
							<label for="relation_demandeur">Relation avec le
								demandeur :</label> <input type="text" name="relation_demandeur"
								id="relation_demandeur" readonly
								value="${RelationAvecClientGDec}">
						</div>

						<div class="field">
							<label for="activite_commerciale">Activité :</label> <input
								type="text" name="activite_commerciale"
								id="activite_commerciale" readonly value="${ActiviteGDec}">
						</div>
						<div class="field">
							<label for="revenue_garant">Revenu net :</label> <input
								type="number" name="revenue_garant" id="revenue_garant" readonly
								value="${RevenuGDec}">
						</div>
					</div>

					<div class="field">
						<label for="adresse_domicile">Adresse du domicile :</label> <input
							type="text" name="adresse_domicile" id="adresse_domicile"
							readonly value="${AdresseGDec}">
					</div>
				</div>

			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">DEMANDE</h2>
				<hr>

				<div class="ui form">
					<div class="three fields">
						<div class="field">
							<label for="montant_demande">Montant ($) :</label>
							<div class="ui right labeled input">
								<input type="number" name="montant_demande" id="montant_demande"
									readonly value="${MontantDemandeValueDec}">
								<div class="ui basic label">$</div>
							</div>
						</div>

						<div class="field">
							<label for="echeance_demande">Échéance :</label>
							<div class="ui right labeled input">
								<input type="number" name="echeance_demande"
									id="echeance_demande" readonly
									value="${DureePretDemandeValueDec}">
								<div class="ui basic label">mois</div>
							</div>
						</div>

						<div class="field">
							<label for="remboursement_facile">Capacité Remboursement
								($) :</label>
							<div class="ui right labeled input">
								<input type="number" name="remboursement_facile"
									id="remboursement_facile" readonly
									value="${CapacitePayementMensuelValueDec}">
								<div class="ui basic label">$</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">AVIS DU
					DEPARTEMENT RISQUE</h2>
				<hr>

				<form action="PropositionRisque.php" method="post" class="ui form">

					<input type="hidden" id="hid_id_resume" value="0"> <input
						type="hidden" id="hid_version_resume" value="0">
					<div class="fields">
						<div class="eight wide column field">
							<label for="NomsResponsableRisque">Noms Responsable
								Risque :</label> <input type="text" name="NomsResponsableRisque"
								id="NomsResponsableRisque" required="required"
								value="${NomsResponsableRisque}" disabled>
						</div>
						<div class="eight wide column field">
							<label for="AppreciationRisque">Avis du Responsable
								Risque :</label> <select name="AppreciationRisque"
								id="AppreciationRisque" class="ui dropdown" required>
								<option selected>${AppreciationRisque}</option>
								<option>Passable</option>
								<option>Non-Passable</option>
							</select>
						</div>
					</div>

					<div class="field">
						<label for="commentaireRisque">Commentaire sur l'avis du
							risque</label>
						<textarea name="commentaireRisque" id="commentaireRisque"
							rows="10" required>${commentaireRisque}</textarea>
					</div>

					<div class="field" style="text-align: center; margin-top: 20px;">
						<button type="submit" id="btnSave" class="ui primary button"
							<c:if test="${(sessionScope.ProfilUser eq 'CI') ||(sessionScope.ProfilUser != 'RC') && (sessionScope.EtatDossierCredit != 'Comite')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'BM')|| (sessionScope.ProfilUser eq 'SUP'|| (sessionScope.ProfilUser eq 'SC'))}">
                disabled
            </c:if>>
							Enregistrer</button>
					</div>
				</form>


			</div>


			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">AVIS DU
					DEPARTEMENT CONFORMITE</h2>
				<hr>

				<form action="PropositionConformite.php" method="post"
					class="ui form">

					<input type="hidden" id="hid_id_resume" value="0"> <input
						type="hidden" id="hid_version_resume" value="0">
					<div class="fields">
						<div class="eight wide column field">
							<label for="NomsResponsableRisque">Noms Responsable
								Conformite :</label> <input type="text" name="NomsResponsableConformite"
								id="NomsResponsableConformite" style="width: 100%;" required
								value="${NomsResponsableConformite}" disabled>
						</div>
						<div class="eight wide column field">
							<label for="AppreciationRisque">Avis du Responsable
								Conformite :</label> <select name="AppreciationConformite"
								id="AppreciationConformite" class="ui dropdown" required>
								<option selected>${AppreciationConformite}</option>
								<option>Passable</option>
								<option>Non-Passable</option>
							</select>
						</div>
					</div>

					<div class="field">
						<label for="commentaireRisque"> Commentaire sur l'avis du
							Conformite</label>
						<textarea name="commentaireConformite" id="commentaireConformite"
							rows="10" required>${commentaireConformite}</textarea>
					</div>

					<div class="field" style="display: flex; justify-content: center;">
						<button type="submit" id="btnSave" class="ui primary button"
							<c:if test="${(sessionScope.ProfilUser eq 'CI') ||(sessionScope.ProfilUser != 'RC') && (sessionScope.EtatDossierCredit != 'Comite')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'BM')|| (sessionScope.ProfilUser eq 'SUP'|| (sessionScope.ProfilUser eq 'SC'))}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
					</div>
				</form>


			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">PRE-COMITE
					(Reserver aux BM pour crédit <=2000$ ou >5000$ )</h2>
				<hr>

				<form action="PropositionBmPrecomite.php" method="post"
					class="ui form">

					<input type="hidden" id="hid_id_resume" value="0"> <input
						type="hidden" id="hid_version_resume" value="0">
					<div class="fields">
						<div class="eight wide column field">
							<label for="NomsResponsableRisque">Noms Responsable
								Agence (BM) : :</label> <input type="text" name="NomsResponsableBM"
								id="NomsResponsableBM" style="width: 100%;" required
								value="${NomsResponsableBM}" disabled>
						</div>
						<div class="eight wide column field">
							<label for="AppreciationRisque">Avis du Responsable
								Agence (BM) :</label> <select name="AppreciationBMPrecomite"
								id="AppreciationBMPrecomite" class="ui dropdown" required>
								<option selected>${AppreciationBMPrecomite}</option>
								<option>Passable</option>
								<option>Non-Passable</option>
							</select>
						</div>
					</div>

					<div class="field">
						<label for="commentaireBMPrecomite"> Commentaire sur
							l'avis du BM</label>
						<textarea name="commentaireBMPrecomite"
							id="commentaireBMPrecomite" rows="10" required>${commentaireBMPrecomite}</textarea>
					</div>

					<div class="field" style="display: flex; justify-content: center;">
						<button type="submit" id="btnSave" class="ui primary button"
							<c:if test="${(sessionScope.ProfilUser eq 'CI') ||(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'ODP')||(sessionScope.ProfilUser eq 'DGA')||(sessionScope.ProfilUser eq 'DG')||(sessionScope.ProfilUser eq 'RC')||(sessionScope.ProfilUser eq 'SUP')||((sessionScope.ProfilUser eq 'BM')&&((sessionScope.MontantProposition>2000) && (sessionScope.MontantProposition<=5000)))}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
					</div>
				</form>

			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">DECISION COMITE</h2>
				<hr>
				<form action="GetInformationFinanciereDossierCreditComite.php"
					method="post" id="formDecision" class="ui form">
					<!--<h4 class="ui dividing header">Décision du Comité de Crédit</h4>-->

					<div class="three fields">
						<div class="field">
							<label for="montant_approuve">Montant Approuvé ($) :</label>
							<div class="ui right labeled input">
								<input type="number" name="MontantCreditValider"
									id="montant_approuve" value="${MontantCreditValider}" required
									min="0" step="0.01">
								<div class="ui basic label">$</div>
							</div>
						</div>

						<div class="field">
							<label for="ProduitFinancierValueDecisionok">Produit
								Crédit :</label> <select name="ProduitFinancierValueDecisionok"
								id="ProduitFinancierValueDecisionok" class="ui dropdown"
								required>
								<option selected>${ProduitFinancierValueDecisionok}</option>
								<option>Crédit d'Urgence</option>
							</select>
						</div>

						<div class="field">
							<label for="echeance_approuve">Échéance :</label>
							<div class="ui right labeled input">
								<input type="number" name="NbrEcheancierValide"
									id="echeance_approuve" value="${NbrEcheancierValide}" required
									min="0" step="0.01">
								<div class="ui basic label">mois</div>
							</div>
						</div>
					</div>

					<div class="three fields">
						<div class="field">
							<label>Frais dossier ($) :</label>
							<div class="ui right labeled input">
								<input type="text" name="FraisDossier" id="frais_dossier"
									readonly value="${fraisDossier}">
								<div class="ui basic label">$</div>
							</div>
						</div>

						<div class="field">
							<label for="taux_interet">Taux d'intérêt (%) :</label>
							<div class="ui right labeled input">
								<input type="number" name="TauxInteret" id="taux_interet"
									readonly value="${TauxInteret}">
								<div class="ui basic label">%</div>
							</div>
						</div>

						<div class="field">
							<label>Frais Caution ($) :</label>
							<div class="ui right labeled input">
								<input type="text" name="Caution" id="caution" readonly
									value="${cautionF}">
								<div class="ui basic label">$</div>
							</div>
						</div>
					</div>

					<div class="three fields">
						<div class="field">
							<label for="ButPret">But du prêt :</label> <select name="ButPret"
								id="ButPret" class="ui dropdown" required>
								<option selected>${ButPret}</option>
								<option>Besoin de fonds roulement</option>
								<option>Investissement</option>
								<option>Autres</option>
							</select>
						</div>

						<div class="field">
							<label>Frais Assurance ($) :</label>
							<div class="ui right labeled input">
								<input type="number" id="assurance" readonly name="assurance"
									value="${assusance}">
								<div class="ui basic label">$</div>
							</div>
						</div>

						<div class="field">
							<label>Frais SMS ($) :</label>
							<div class="ui right labeled input">
								<input type="text" id="frais_sms" readonly name="FraisSms"
									value="${FraisSMS}">
								<div class="ui basic label">$</div>
							</div>
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label for="date_comite_credit">Date Comité :</label> <input
								type="date" name="DateComiteCredit" id="date_comite_credit"
								value="${DateComiteCredit}" required>
						</div>

						<div class="field">
							<label for="montant_approuve">Nombre des membres du CC :</label>
							<input type="number" name="NbrMembreComite"
								id="nbr_membre_comite" value="${NbrMembreComite}" required
								min="0" step="0.01">
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label for="nom_membre1_comite">Membre décideur :</label> <input
								type="text" name="MembreParticipe" id="nom_membre1_comite"
								value="${MembreParticipe}" readonly>
						</div>

						<div class="field">
							<label for="TauxCautionModifValue">Taux Caution Modifié :</label>
							<div class="ui right labeled input">
								<input type="number" name="TauxCautionModifValue"
									id="TauxCautionModifValue" value="${TauxCautionModifValue}"
									readonly min="0">
								<div class="ui basic label">%</div>
							</div>
						</div>
					</div>

					<div class="field" style="text-align: center; margin-top: 20px;">
						<button type="submit" id="btnSave" class="ui primary button"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'CI') ||(sessionScope.EtatDossierCredit != 'Comite')|| (sessionScope.ProfilUser eq 'RC') || ((sessionScope.ProfilUser eq 'BM') && (sessionScope.EtatDossierCredit eq 'Comite') && ((sessionScope.MontantProposition<=2000) || (sessionScope.MontantProposition>5000)))}">
                disabled
            </c:if>>
							<i class="calculator icon"></i> Charger Information Financière
						</button>
					</div>
				</form>

				<br>

				<form action="DecisionComite.php" method="post" class="ui form">
					<div class="ui segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Décision
							Finale</h2>
						<hr>

						<div class="two fields">
							<div class="field">
								<label for="decision_pret">Approbation :</label> <select
									name="DecisionComite" id="decision_pret" class="ui dropdown"
									required>
									<option selected>${DecisionComite}</option>
									<option>Passer Sans Condition</option>
									<option>Avec Condition</option>
									<option>Pret Ajourne</option>
									<option>Pret rejeter</option>
								</select>
							</div>
						</div>

						<div class="field">
							<label for="commentaire_comite">Commentaires sur la
								décision du comité</label>
							<textarea name="commentaire_comite" id="commentaire_comite"
								rows="8" required>${commentaire_comite}</textarea>
						</div>

						<div class="field" style="text-align: center;">
							<button type="submit" id="btnSaveDecision"
								class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit != 'Comite')|| (sessionScope.ProfilUser eq 'RC')|| ((sessionScope.ProfilUser eq 'BM') && (sessionScope.EtatDossierCredit eq 'Comite') && ((sessionScope.MontantProposition<=2000) || (sessionScope.MontantProposition>5000)))}">
                    disabled
                </c:if>>
								<i class="save icon"></i> Enregistrer
							</button>
						</div>
					</div>
				</form>

			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Document PV
					Comite</h2>
				<hr>
				<div class="field"
					style="display: flex; justify-content: flex-end; align-items: flex-end;">
					<!-- Contenu pour la colonne de 4 -->
					<button id="btnAdd" type="button" class="ui primary button"
						data-bs-toggle="modal" data-bs-target="#exampleModal"
						data-bs-whatever="@mdo"
						<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit eq 'Assignation') || (sessionScope.EtatDossierCredit eq 'Verification') || (sessionScope.EtatDossierCredit eq 'Postage') || (sessionScope.EtatDossierCredit eq 'Analyse')|| (sessionScope.EtatDossierCredit eq 'Terminer') || (sessionScope.EtatDossierCredit eq 'Rejeter')|| (sessionScope.ProfilUser eq 'RC')}">
                                                                        disabled
                                                        </c:if>>Ajouter
						PV</button>
				</div>
				<table id="docs_tab" class="ui celled table">
					<thead>
						<tr>
							<th scope="col"><span class="fs-6"><b>#</b></span></th>
							<th scope="col"><span class="fs-6"><b>Date
										Enregistrement</b></span></th>
							<th scope="col"><span class="fs-6"><b>Description</b></span></th>
							<th scope="col"><span class="fs-6"><b>Fichier</b></span></th>
							<th scope="col"><span class="fs-6"><b></b></span></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeCompleteInformationsDocumentPVComite}"
							var="fichdocpv">
							<tr>
								<td>${fichdocpv.idfichierdoc}</td>
								<td>${fichdocpv.dateenrfichierdoc}</td>
								<td>${fichdocpv.descriptionfichierdoc}</td>
								<td>${fichdocpv.fichierdoc}</td>
								<td><a
									href="VisualisationDocumentPV.php?numdocumentpv=${fichdocpv.idfichierdoc}"
									target="_blank"><i class="eye icon"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModal">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Ajouter Document Pv Comite</h2>
			<hr>
			<form class="ui form" action="EnregistrementDocumentPVComite.php"
				method="post" enctype="multipart/form-data">

				<div class="field">
					<label>Description :</label>
					<textarea name="txtdescPV" id="txtdescPV" required></textarea>
				</div>

				<div class="field">
					<label>Choisir le fichier :</label> <input type="file"
						name="txtFilePV" id="txtFilePV" required>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>


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
		// Ouvrir le modal Fomantic UI
		$('#btnAdd').click(function() {
			$('#exampleModal').modal('show');

		});
	</script>

	<script>
		$(document).ready(function() {
			$('#ProduitFinancierValueDecisionok').dropdown();
		});
	</script>

	<script>
		document.getElementById('montant_approuve').addEventListener(
				'input',
				function() {

					const
					montant = parseFloat(this.value);
					let
					produitAuto = null;

					if (montant >= 501 && montant <= 1000) {
						produitAuto = {
							name : 'Credit LISUNGI 1 (501 - 1000)',
							value : 'Credit LISUNGI 1 (501 - 1000)'
						};
					} else if (montant >= 1001 && montant <= 5000) {
						produitAuto = {
							name : 'Credit LISUNGI 2 (1001 - 5000)',
							value : 'Credit LISUNGI 2 (1001 - 5000)'
						};
					} else if (montant >= 5001 && montant <= 10000) {
						produitAuto = {
							name : 'Credit MOSALA (5001 - 10000)',
							value : 'Credit MOSALA (5001 - 10000)'
						};
					} else if (montant >= 10001 && montant <= 14999) {
						produitAuto = {
							name : 'Credit MOSALA 1 (10001 - 14999)',
							value : 'Credit MOSALA 1 (10001 - 14999)'
						};
					} else if (montant >= 15000 && montant <= 30000) {
						produitAuto = {
							name : 'Credit MOSALA 2 (15000 - 30000)',
							value : 'Credit MOSALA 2 (15000 - 30000)'
						};
					} else if (montant >= 30001 && montant <= 100000) {
						produitAuto = {
							name : 'Credit MOSALA 3 (30001 - 100000)',
							value : 'Credit MOSALA 3 (30001 - 100000)'
						};
					}

					if (produitAuto) {
						$('#ProduitFinancierValueDecisionok').dropdown('clear')
								.dropdown('change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								}, produitAuto ]).dropdown('set selected',
										produitAuto.value);
					} else {
						// si montant hors plage → seulement urgence
						$('#ProduitFinancierValueDecisionok').dropdown('clear')
								.dropdown('change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								} ]);
					}
				});
	</script>
</body>
</html>