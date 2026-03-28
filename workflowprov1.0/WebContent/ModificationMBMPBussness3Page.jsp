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
						href="Bussness3Page.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Production</a></li>
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

			<div class="ui blue segment canscroll">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">COUTS DE PRODUCTION</h2>
				<hr>
				<p style="color: green;">${ok}</p>
				<p style="color: red;">${error}</p>

				<div class="field" style="display: flex; justify-content: flex-end;">
					<button type="button" id="btnAddCout" class="ui primary button"
						<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Ajouter
						/ Produit</button>
				</div>

				<table class="ui celled table " id="tabMBMP">
					<thead>
						<tr>
							<th scope="col">IdProduction</th>
							<th scope="col">LibelleProduit</th>
							<th scope="col">NbrUniteProduit</th>
							<th scope="col">PrixVenteParUnite($)</th>
							<th scope="col">VenteTotal($)</th>
							<th scope="col">NuméroDossierIL</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeProduitProductionUsineFabrication}"
							var="ListeProd">
							<tr>
								<td>${ListeProd.idproductionproddd}</td>
								<td>${ListeProd.libelleproductionproddd}</td>
								<td>${ListeProd.nbruniteproduitproddd}</td>
								<td>${ListeProd.prixventeparuniteproddd}</td>
								<td>${ListeProd.ventetotalproddd}</td>
								<td>${ListeProd.numerodossierilproddd}</td>
								<c:if test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
									<td><a class="ui mini yellow icon button addMatProd"
										href="#" data-id1="${ListeProd.idproductionproddd}"> <i
											class="plus icon"></i>
									</a></td>
								</c:if>
								<td><a
									href="VisualisationMatiereProduction.php?idProduitProd=${ListeProd.idproductionproddd}&&Qte=${ListeProd.nbruniteproduitproddd}"><i
										class="eye icon"></i></a></td>
								<td><c:if
										test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
										<a class="ui mini yellow icon button btn-edit"
											href="GetInformationProd.php?numProd=${ListeProd.idproductionproddd}"><i
											class="edit icon"></i></a>
									</c:if></td>
								<td><c:if
										test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
										<a class="ui mini red icon button btn-delete" data-id=""
											onclick="$('.ui.modifier-modal').modal('show');"
											data-url="SupInformationProd.php?numProd=${ListeProd.idproductionproddd}"><i
											class="trash icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">MARGE BRUTE MOYENNE PONDEREE (MBMP)</h2>
				<hr>

				<div class="field" style="display: flex; justify-content: flex-end;">
					<button type="button" id="addProduit" class="ui primary button"
						data-bs-toggle="modal" data-bs-target="#exampleModal2b200200"
						<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
						Ajouter Info-MBMP</button>
				</div>

				<table class="ui celled table " id="tabMBMP">
					<thead>
						<tr>
							<th><label for="">ID</label></th>
							<th><label for="">Produit</label></th>
							<th><label for="">Coût par unité($)</label></th>
							<th><label for="">Prix de vente($)</label></th>
							<th><label for="">Marge du produit($)</label></th>
							<th><label for="">Qté. Vendue par mois</label></th>
							<th><label for="">Coût mensuel($)</label></th>
							<th><label for="">Vente mensuelle($)</label></th>
							<th><label for="">Actions</label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeMPMP}" var="MPMP">
							<tr>
								<td>${MPMP.idmbmp}</td>
								<td>${MPMP.libelleproduitmpmp}</td>
								<td>${MPMP.coutparunitempmp}</td>
								<td>${MPMP.prixventempmp}</td>
								<td>${MPMP.margeproduitmpmp}</td>
								<td>${MPMP.qtevendueparmoismpmp}</td>
								<td>${MPMP.coutmensuelmpmp}</td>
								<td>${MPMP.ventemensuelmpmp}</td>
								<td><c:if
										test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
										<a class="ui mini yellow icon button btn-edit"
											href="GetInformationMBMP.php?numMBMP=${MPMP.idmbmp}"><i
											class="edit icon"></i></a>
									</c:if></td>
								<td><c:if
										test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
										<a class="ui mini red icon button btn-delete" data-id=""
											onclick="$('.ui.modifier-modal').modal('show');"
											data-url="SupInformationMBMP.php?numMBMP=${MPMP.idmbmp}"><i
											class="trash icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>

						<tr>
							<td colspan="7">Total Coût mensuel($):</td>
							<td><input type="text" id="tot_cout_mensuel" readonly
								style="width: 100%; font-weight: bold;"
								value="${TGCoutMenseulMPMP}"></td>
							<td></td>

						</tr>

						<tr>
							<td colspan="7">Total Ventes mensuelles($):</td>

							<td><input type="text" id="tot_ventes_mensuelles" readonly
								style="width: 100%; font-weight: bold;"
								value="${TGVenteMensuelMPMP}"></td>
							<td></td>

						</tr>
					</tbody>
				</table>
			</div>


		</div>
	</div>

	<!-- Modal PRODUCTION -->
	<div class="ui modal" id="modalProduction">
		<i class="close icon"></i>

		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">PRODUCTION</h2>
			<hr>
			<form class="ui form" action="InfoBussness3CoutProductionProd.php"
				method="post">
				<div class="field">
					<label>LibelleProduit :</label> <input type="text"
						name="LibelleProduitProductionProd"
						id="LibelleProduitProductionProd" required>
				</div>
				<div class="field">
					<label>NbrUniteProduit/Mois :</label> <input type="number"
						name="NbrUniteProduitProd" id="NbrUniteProduitProd" required
						min="0">
				</div>
				<div class="field">
					<label>PrixVenteParUnité($) :</label> <input type="text"
						name="PrixVenteParUniteProd" id="PrixVenteParUniteProd" required
						min="0">
				</div>
				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<!-- Modal MATIERE POUR LA PRODUCTION -->
	<div class="ui modal" id="exampleModal2b20020011025">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">MATIERE POUR LA PRODUCTION</h2>
			<hr>

			<form class="ui form" action="InfoBussness3MatiereProd.php"
				method="post">
				<input type="hidden" name="IdProduitProductionProd"
					id="IdProduitProductionProd">
				<div class="field">
					<label>LibelleMatiere :</label> <input type="text"
						name="LibelleMatiereProd" id="LibelleMatiereProd" required>
				</div>
				<div class="field">
					<label>PrixAchatMatiere($) :</label> <input type="text"
						name="PrixAchatMaterielProd" id="PrixAchatMaterielProd" required
						min="0">
				</div>
				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<!-- Modal MARGE BRUTE MOYENNE PONDEREE (MBMP) -->


	<!-- Semantic UI Modal -->
	<div class="ui modal" id="modalMBMP">

		<div class="ui header" style="margin-bottom: 10px; font-size: 14px;">MODIFICATION
			/ MARGE BRUTE MOYENNE PONDEREE (MBMP)</div>
		<div class="content">
			<form class="ui form" action="UpdateInfoBussness3MBMP.php"
				method="post">
				<input type="hidden" name="numMBMP" value="${numMBMP}">

				<div class="field" style="margin-top: 10px;">
					<label>LibelleProduit :</label> <input type="text"
						name="LibelleProduitMPMP" required value="${LibelleProduitMPMP}">
				</div>

				<div class="field">
					<label>CoutParUnite ($) :</label> <input type="number"
						name="CoutParUniteMPMP" required value="${CoutParUniteMPMP}"
						min="0" step="0.01">
				</div>

				<div class="field">
					<label>PrixVente ($) :</label> <input type="number"
						name="PrixVenteMPMP" required value="${PrixVenteMPMP}" min="0"
						step="0.01">
				</div>

				<div class="field">
					<label>MargeProduit ($) :</label> <input type="number"
						name="MargeProduitMPMP" required value="${MargeProduitMPMP}"
						min="0" step="0.01">
				</div>

				<div class="field">
					<label>QteVenduParMois :</label> <input type="number"
						name="QteVendueParMoisMPMP" required min="0" step="0.01"
						value="${QteVendueParMoisMPMP}">
				</div>

				<div class="field">
					<label>CoutMensuel ($) :</label> <input type="number"
						name="CoutMensuelMPMP" required value="${CoutMensuelMPMP}" min="0"
						step="0.01">
				</div>

				<div class="field">
					<label>VenteMensuel ($) :</label> <input type="number"
						name="VenteMensuelMPMP" required value="${VenteMensuelMPMP}"
						min="0" step="0.01">
				</div>

				<div class="actions"
					style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
					<a href="Bussness3Page.php" class="ui primary button"> Annuler
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
	<script>
		var monModal = document.getElementById('exampleModal2b20020011025');
		monModal.addEventListener('show.bs.modal', function(event) {
			// event.relatedTarget = le <a> qui a déclenché le modal
			var bouton = event.relatedTarget;
			var id = bouton.getAttribute('data-id1'); // récupère data-id="101"
			// Met la valeur dans l’input caché du formulaire
			document.getElementById('IdProduitProductionProd').value = id;
		});
	</script>

	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>

	<script>
		$(document).ready(function() {
			$('#modalMBMP').modal({
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
				onclick="document.querySelector('#modalMBMP form').submit();">
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