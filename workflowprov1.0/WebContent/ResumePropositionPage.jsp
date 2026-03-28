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
						aria-selected="false">Analyse 2</a></li>x
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
						href="ResumePropositionPage.php" class="nav-link active"
						type="button" role="tab" aria-selected="false">Résumé et
							proposition</a></li>
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
			<div class="ui green message"
				style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
			<div class="ui red message"
				style="display: ${error != null ? 'block' : 'none'}">${error}</div>
			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Cash Flow</h2>
				<hr>
				<form action="CalculIndicateur.php" method="post" class="ui form">
					<table class="ui table">
						<tr>
							<td>Chiffre d'affaires/Ventes ($)</td>
							<td><input type="number" id="chiffre_affaire"
								style="width: 100%;" disabled value="${ChiffreAffairesVentes}"></td>
							<td><select class="ui mini dropdown" name="CAA" id="CAA"
								style="width: 100%;" required="required">
									<option selected>${LibelleCAARechercher}</option>
									<option>Vente3DernierJours</option>
									<option>Vente3DernierMois</option>
									<option>VenteTotMinMax</option>
									<option>Production</option>
							</select></td>
							<td><button type="submit" id="btnSave"
									class="ui primary button"
									<c:if test="${(sessionScope.EtatDossierCredit eq 'Verification') || (sessionScope.EtatDossierCredit eq 'Postage') }">
                                                                        disabled
                                                        </c:if>>Rechercher</button></td>
						</tr>

						<tr>
							<td>Cout d'achat des marchandises vendues ($)</td>
							<td><input type="number" id="cout_marchandise_vendue"
								style="width: 100%;" value="${CoutMarchandiseVendue}" disabled></td>

							<td></td>
							<td></td>
						</tr>

						<tr>
							<td><b>PROFIT BRUT</b> ($)</td>
							<td><input type="number" id="profit_brut"
								style="width: 100%;" disabled value="${ProfitBruteRP}">
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>Dépenses opérationnelles ($)</td>
							<td><input type="number" id="depenses_operationnelles"
								style="width: 100%;" disabled value="${DepenseOperationnelleRP}">
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td><b>PROFIT NET</b> ($)</td>
							<td><input type="number" id="profit_net"
								style="width: 100%;" disabled value="${ProfilNetRP}">
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td>Autres revenus/(net) ($)</td>
							<td><input type="number" id="autres_revenus_net"
								style="width: 100%;" disabled value="${TotalAutreRevenuNet}">
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>Total des dépenses privées/Famille ($)</td>
							<td><input type="number" id="total_depenses_privees"
								style="width: 100%;" disabled value="${TotalDepensePrive}">
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td><b>CAPACITE DE PAIEMENT BRUTE ($)</b></td>
							<td><input type="number" id="capacite_paiement"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${capacitepaieRP}">
							<td></td>
							<td></td>
						</tr>

						<tr>
							<td><b>CAPACITE DE PAIEMENT NET ($) [Cycle =1]</b></td>
							<td><input type="number" id="capacitepaieRPCycle1"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${capacitepaieRPCycle1}">
							<td></td>
							<td><span> <= Mensualité (cycle) </span></td>
						</tr>

						<tr>
							<td><b>CAPACITE DE PAIEMENT NET ($) [Cycle =2]</b></td>
							<td><input type="number" id="capacitepaieRPCycle2"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${capacitepaieRPCycle2}">
							<td></td>
							<td><span> <= Mensualité (cycle)</span></td>
						</tr>

						<tr>
							<td><b>CAPACITE DE PAIEMENT NET ($) [Cycle >=3]</b></td>
							<td><input type="number" id="capacitepaieRPCycle3"
								style="width: 100%; color: rgb(151, 12, 231);" disabled
								value="${capacitepaieRPCycle3}">
							<td></td>
							<td><span> <= Mensualité (cycle)</span></td>
						</tr>

					</table>

				</form>

				<form class="ui form" action="Commentaire.php" method="post">

					<div class="field" style="margin-top: 16px;">
						<label for="commentaire_business">Commentaires sur le
							business</label>
						<textarea name="commentaire_business" id="commentaire_business"
							cols="30" rows="10" style="width: 100%;" required>${commentaire_businessSESSION}</textarea>
					</div>


					<hr style="margin-top: 15px;"]>
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Bilan</h2>
					<hr>

					<div class="ui grid">
						<div class="nine wide column">

							<table class="ui table">
								<tr>
									<td><b>A. ACTIFS CIRCULANTS ($)</b></td>
									<td><input type="number" id="actif_circulant"
										style="width: 100%;" disabled value="${TOTactifCirculantRP}"></td>
								</tr>
								<tr>
									<td>Caisse (Bussness et à la maison) ($)</td>
									<td><input type="number" id="cash_main"
										style="width: 100%;" disabled value="${CashAlaMaisonRP}"></td>
								</tr>

								<tr>
									<td>Banque (CA, SA, FDA) ($)</td>
									<td><input type="number" id="cash_banque"
										style="width: 100%;" value="${CashEnBanqueRP}" disabled></td>
								</tr>

								<tr>
									<td>Créances & pré-payements ($)</td>
									<td><input type="number" id="total_creance"
										style="width: 100%;" value="${CreanceRP}" disabled></td>
								</tr>

								<tr>
									<td>Stock ($)</td>
									<td><input type="number" id="total_stock"
										style="width: 100%;" value="${StockRP}" disabled></td>
								</tr>

								<tr>
									<td><b>B. ACTIFS IMMOBILISES ($)</b></td>
									<td><input type="number" id="total_actif_immobilise"
										style="width: 100%;" value="${TotalActifImmobilier}" disabled></td>
								</tr>

								<tr>
									<td>Meubles ($)</td>
									<td><input type="number" id="total_meuble"
										style="width: 100%;" value="${MeubleRP}" disabled></td>
								</tr>

								<tr>
									<td>Équipement & outils ($)</td>
									<td><input type="number" id="total_equipement"
										style="width: 100%;" value="${EquipementOutils}" disabled></td>
								</tr>

								<tr>
									<td>Véhicules ($)</td>
									<td><input type="number" id="total_vehicules"
										style="width: 100%;" value="${VehiculeRP}" disabled></td>
								</tr>

								<tr>
									<td>Local commercial ($)</td>
									<td><input type="number" id="total_local_comm"
										style="width: 100%;" value="${LocalCommercialRP}" disabled></td>
								</tr>
								<tr>
									<td>Autres (Garantie) ($)</td>
									<td><input type="number" id="garantie_locative"
										style="width: 100%;" value="${AutresRP}" disabled></td>
								</tr>

								<tr>
									<td><strong>C. TOTAL ACTIFS (A + B)($)</strong></td>
									<td><input type="number" id="total_actif"
										style="width: 100%;" value="${TotalActifRP}" disabled></td>
								</tr>

								<tr>
									<td><strong>D. TOTAL PASSIFS ($)</strong></td>
									<td><input type="number" id="total_passif"
										style="width: 100%;" value="${TotalPassif}" disabled></td>
								</tr>

								<tr>
									<td><strong>Court-terme (≤3 mois)($))</strong></td>
									<td><input type="number" id="dette_court_terme"
										style="width: 100%;" value="${CourtTermeRP}" disabled></td>
								</tr>
								<tr>
									<td><strong>Long-terme (>3 mois) ($)</strong></td>
									<td><input type="number" id="dette_long_terme"
										style="width: 100%;" value="${LongTermeRP}" disabled></td>
								</tr>

								<tr>
									<td><strong>CAPITAL PROPRE (C – D) ($)</strong></td>
									<td><input type="number" id="capital_propre"
										style="width: 100%;" value="${CapitalPropreRP}" disabled></td>
								</tr>
							</table>

						</div>

						<div class="seven wide column">
							<div class="field" style="margin-top: 16px;">
								<label for="commentaire_business">Commentaires sur les
									actifs du client</label>
								<textarea name="commentaire_actif_business"
									id="commentaire_actif_business" cols="30" rows="10"
									style="width: 100%;" required>${commentaire_actif_businessSESSION}</textarea>
							</div>
						</div>


					</div>


					<hr style="margin-top: 15px;"]>
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2">3.3 Principaux
						risques (“Qu’est-ce qui pourrait compromettre le remboursement du
						prêt?”)</h2>
					<hr>

					<table class="ui table">
						<tr>
							<td><i>Risque 1</i></td>
							<td><input type="text" id="risk1" style="width: 100%;"
								value="${LibelR1}" disabled></td>
							<td><input type="text" id="mitigation1" style="width: 100%;"
								value="${MitR1}" disabled></td>
						</tr>

						<tr>
							<td><i>Risque 2</i></td>
							<td><input type="text" id="risk2" style="width: 100%;"
								value="${LibelR2}" disabled></td>
							<td><input type="text" id="mitigation2" style="width: 100%;"
								value="${MitR2}" disabled></td>
						</tr>

						<tr>
							<td><i>Risque 2</i></td>
							<td><input type="text" id="risk3" style="width: 100%;"
								disabled value="${LibelR3}"></td>
							<td><input type="text" id="mitigation3" style="width: 100%;"
								value="${MitR3}" disabled></td>
						</tr>

					</table>


					<hr style="margin-top: 15px;"]>
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2">RATIOS</h2>
					<hr>

					<table class="ui table">
						<tr>
							<td>1. DSR (%)</td>
							<td>Acompte Mensuel/Capacité de paiement</td>
							<td><input type="number" id="dsr_ratio"
								style="width: 100%; color: rgb(151, 12, 231);" value="${DSR}"
								disabled></td>
							<td><span> <= 40% </span></td>
						</tr>

						<tr>
							<td>2. Ratio de Garantie (%)</td>
							<td>∑ des valeurs des biens mis en gage/Pret Workflow
								(Principal)</td>
							<td><input type="number" id="garantie_ratio"
								style="width: 100%; color: rgb(151, 12, 231);"
								value="${RatioGarantie}" disabled></td>
							<td><span> >= 100% </span></td>
						</tr>

						<tr>
							<td>3. Ratio de liquidité</td>
							<td>Actif circulant/Dettes à court terme</td>
							<td><input type="number" id="liquidite_ratio"
								style="width: 100%; color: rgb(151, 12, 231);"
								value="${RatioLiquite}" disabled></td>
							<td><span> >= 1</span></td>
						</tr>

						<tr>
							<td>4. Levier financier</td>
							<td>Pret Workflow/Actif circulant</td>
							<td><input type="number" id="levier_financier"
								style="width: 100%; color: rgb(151, 12, 231);"
								value="${LevierFinancier}" disabled></td>
							<td><span> <= 1</span></td>
						</tr>

						<tr>
							<td>5. Ratio d'endettement (%)</td>
							<td>Dettes(y compris le pret Workflow)/Capital propre</td>
							<td><input type="number" id="endettement_ratio"
								style="width: 100%; color: rgb(151, 12, 231);"
								value="${RatioEndettement}" disabled></td>
							<td><span><= 0.5</span></td>
						</tr>

						<tr>
							<td>6. Ratio rotation de stock</td>
							<td>CMV/Actif circulant</td>
							<td><input type="number" id="rotationstock_ratio"
								style="width: 100%; color: rgb(151, 12, 231);"
								value="${RotationStock}" disabled></td>
							<td><span> >= 1</span></td>
						</tr>

					</table>
					<div class="field">
						<label for=""> Commentaire sur les ratios </label> <br>
						<textarea name="commentaire_ratios" id="commentaire_ratios"
							cols="30" rows="10" style="width: 100%;" required>${commentaire_ratiosSESSION}</textarea>

					</div>

					<button style="margin-left: 450px; margin-top: 5px;" type="submit"
						id="btnSave" class="ui primary button"
						<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
				</form>

			</div>

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Cash Flow
					(Basse Saison de Vente)</h2>
				<hr>

				<table class="ui table">
					<tr>
						<td>Chiffre d'affaires/Ventes ($)</td>
						<td><input type="number" id="chiffre_affaire"
							style="width: 100%;" disabled
							value="${ChiffreAffairesVentesBaisseSaison}"></td>
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>Cout d'achat des marchandises vendues ($)</td>
						<td><input type="number" id="cout_marchandise_vendue"
							style="width: 100%;" value="${CoutMarchandiseVendueBaisseSaison}"
							disabled></td>

						<td></td>
						<td></td>
					</tr>

					<tr>
						<td><b>PROFIT BRUT</b> ($)</td>
						<td><input type="number" id="profit_brut"
							style="width: 100%;" disabled value="${ProfitBruteRPBaisseVente}">
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>Dépenses opérationnelles ($)</td>
						<td><input type="number" id="depenses_operationnelles"
							style="width: 100%;" disabled value="${DepenseOperationnelleRP}">
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td><b>PROFIT NET</b> ($)</td>
						<td><input type="number" id="profit_net" style="width: 100%;"
							disabled value="${ProfilNetRPBaisseSaison}">
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td>Autres revenus/(net) ($)</td>
						<td><input type="number" id="autres_revenus_net"
							style="width: 100%;" disabled value="${TotalAutreRevenuNet}">
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>Total des dépenses privées/Famille ($)</td>
						<td><input type="number" id="total_depenses_privees"
							style="width: 100%;" disabled value="${TotalDepensePrive}">
						<td></td>
						<td></td>
					</tr>

					<tr>
						<td><b>CAPACITE DE PAIEMENT ($)</b></td>
						<td><input type="number" id="capacite_paiement"
							style="width: 100%; color: rgb(151, 12, 231);" disabled
							value="${capacitepaieRPBaisseSaison}">
						<td></td>
						<td></td>
					</tr>

				</table>

			</div>

			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">PROPOSITION
					(Reserver uniquement à l'analyste de crédit)</h2>
				<hr>
				<form class="ui form" action="Proposition.php" method="post">
					<input type="hidden" id="hid_id_resume" value="0"> <input
						type="hidden" id="hid_version_resume" value="0">

					<div class="three fields">
						<div class="field">
							<label>Montant ($):</label> <input type="number" id="MontantProp"
								name="MontantProp" min="0" step="0.01" required
								value="${MontantProposition}">
						</div>

						<div class="field">
							<label>Échéance (mois) :</label> <input type="number"
								id="echeanceProp" name="echeanceProp" min="0" step="0.01"
								required value="${EcheanceProposition}">
						</div>

						<div class="field">
							<label>Mensualité (Remboursement en $) :</label> <input
								type="text" id="MensualiteProp" name="MensualiteProp" readonly
								value="${MensualiteProp}">
						</div>
					</div>

					<div class="field">
						<label>Produit Crédit :</label> <select
							name="ProduitFinancierValueProp" id="ProduitFinancierValueProp"
							class="ui dropdown" required>
							<option selected>${ProduitCreditProposition}</option>
							<option>Crédit d'Urgence</option>
						</select>
					</div>

					<div class="field">
						<label>Commentaire sur votre proposition</label>
						<textarea name="commentaire_Proposition"
							id="commentaire_Proposition" rows="10" required>${commentaire_Proposition}</textarea>
					</div>

					<div class="col">
						<button style="margin-left: 470px; margin-top: 20px;"
							type="submit" id="btnSave" class="ui primary button"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
					</div>
				</form>

			</div>

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
			$('#ProduitFinancierValueProp').dropdown();
		});
	</script>

	<script>
		document.getElementById('MontantProp').addEventListener(
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
						$('#ProduitFinancierValueProp').dropdown('clear')
								.dropdown('change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								}, produitAuto ]).dropdown('set selected',
										produitAuto.value);
					} else {
						// si montant hors plage → seulement urgence
						$('#ProduitFinancierValueProp').dropdown('clear')
								.dropdown('change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								} ]);
					}
				});
	</script>
</body>
</html>