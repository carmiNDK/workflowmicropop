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
<title>KwikLoan : Demande de prêt GL</title>
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
						href="DemandeGL.php" class="nav-link" type="button" role="tab"
						aria-selected="true">FormationG/Membre</a></li>
					<li id="DemandePretGL" class="nav-item" role="presentation"><a
						href="DemandePretGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Demande-Prét</a></li>
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
		<div class="ui modal" id="exampleModal">
			<i class="close icon"></i>
			<div class="text">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="padding-left: 50px; margin-top: 10px;"]>
					<i class="users icon"></i> Information Sur Demande Prêt GL
				</h2>
				<hr>

			</div>
			<hr>
			<div class="content">
				<form class="ui form" action="CreationDossierGroupeGL.php"
					method="post">
					<div class="field">
						<label>NomsMembreGroupe :</label> <select class="ui dropdown"
							name="NomsMembreGroupeGL" id="NomsMembreGroupeGL" required>
							<option value="">Sélectionner un membre</option>
							<c:forEach items="${ListeMembreGroupe}" var="ListeM">
								<option>${ListeM.nomscompletclientlisanga}</option>
							</c:forEach>
						</select>
					</div>

					<div class="field">
						<label>DateDemande ($) :</label> <input type="date"
							id="DateDemandeCliGL" name="DateDemandeCliGL" disabled>
					</div>

					<div class="two fields">
						<div class="field">
							<label>TotalEpargne ($) :</label> <input type="number"
								id="TotalEpargneCliGL" name="TotalEpargneCliGL" required min="0"
								step="0.01">
						</div>

						<div class="field">
							<label>DernierPrêt ($) :</label> <input type="number"
								id="DernierPretCliGL" name="DernierPretCliGL" required min="0"
								step="0.01">
						</div>
					</div>

					<div class="two fields">
						<div class="field">
							<label>PrêtSolliciter ($) :</label> <input type="number"
								id="PretSolliciterCliGL" name="PretSolliciterCliGL" required
								min="0" step="0.01">
						</div>

						<div class="field">
							<label>PrêtProposerAC ($) :</label> <input type="number"
								id="PretAccoderACCliGL" name="PretAccoderACCliGL" required
								min="0" step="0.01">
						</div>
					</div>

					<div class="field">
						<label>FraisAssurance ($) :</label> <input type="number"
							id="FraisAssuanceCliGL" name="FraisAssuanceCliGL" required
							min="0" step="0.01">
					</div>

					<div class="actions">
						<div class="ui black deny button">Annuler</div>
						<button type="submit" class="ui primary right labeled icon button">
							<i class="checkmark icon"></i> Enregistrer
						</button>
					</div>
				</form>
			</div>
		</div>


		<div class="page-content">
			<div class="ui blue segment canscroll"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Informations
					Sur La Demande de Prét GL</h2>
				<hr>
				<p style="color: red;">${error}</p>
				<div class="ui grid">
					<div class="row">
						<div class="twelve wide column">
							<!-- Contenu pour la colonne de 12 -->
							<p></p>
						</div>
						<div class="field"
							style="display: flex; justify-content: flex-end; align-items: flex-end;">
							<!-- Contenu pour la colonne de 4 -->
							<button id="btnAdd" type="button" class="ui primary button"
								<c:if test="${sessionScope.etatGroupGL != 'Creation'}">
                                                                        disabled
                                        </c:if>>
								Ajouter</button>


						</div>
					</div>
				</div>

				<table class="ui celled table" id="tab_AB_Stock">
					<thead>
						<tr>
							<th><label for="id">N°</label></th>
							<th><label for="quantite">DateDemande</label></th>
							<th><label for="quantite">NomsClientMembre</label></th>
							<th><label for="produit">EtatDossierGL</label></th>
							<th><label for="produit">CycleDossierGL</label></th>
							<th><label for="produit">DépotAvue($)</label></th>
							<th><label for="prix_dachat">CautionFinanciere($)</label></th>
							<th><label for="prix_devente">TotalEpargne($)</label></th>
							<th><label for="marge_produit">DernierPrét($)</label></th>
							<th><label for="valeur_stock">PrétSollicite($)</label></th>
							<th><label for="Observation">PrétProposerAC($)</label></th>
							<th><label for="Observation">FraisDossier+TVA($)</label></th>
							<th><label for="Observation">Assurance($)</label></th>
							<th><label for="Observation">SMS-Alerte($)</label></th>
							<th><label for="Observation">Carnet+Livre($)</label></th>
							<th><label for="Observation">TotalFrais($)</label></th>
							<th><label for="Observation">CategorieMembre</label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ListeInformationDossierGL}" var="SPP">
							<tr>
								<td>${SPP.numdossierglgl}</td>
								<td>${SPP.datedossierglgl}</td>
								<td>${SPP.nomsclientmembredosgl}</td>
								<td>${SPP.etatdossierglgl}</td>
								<td>${SPP.cycleglgl}</td>
								<td>${SPP.depotavuegl}</td>
								<td>${SPP.cautionfinancieregl}</td>
								<td>${SPP.totalepargnegl}</td>
								<td>${SPP.dernierpretgl}</td>
								<td>${SPP.pretsollicitegl}</td>
								<td>${SPP.pretaccordergl}</td>
								<td>${SPP.fraisdossiertvagl}</td>
								<td>${SPP.assuranceglgl}</td>
								<td>${SPP.smsglgl}</td>
								<td>${SPP.carnetlivregl}</td>
								<td>${SPP.totalfraisglgl}</td>
								<td>${SPP.categotisationm}</td>
								<td><c:if
										test="${(sessionScope.etatGroupGL eq 'Creation') || (sessionScope.etatGroupGL eq 'Analyse')}">
										<a class="ui mini yellow icon button btn-edit"
											href="ReturnInfoPourModificationDemandeGL.php?idDemande=${SPP.numdossierglgl}">
											<i class="edit icon"></i>
										</a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="ui blue segment">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Statistiques
					(TG)</h2>
				<hr>
				<div class="ui grid">

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralDepotAvueGL">TotalG-DépotAvue:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralDepotAvueGL"
									name="TotalGeneralDepotAvueGL"
									value="${TotalGeneralDepotAvueGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralEpargneGL">TotalG-Epargne:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralEpargneGL"
									name="TotalGeneralEpargneGL" value="${TotalGeneralEpargneGL}"
									disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralCautionFinanciereGL">TotalG-CautionFinanciere:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralCautionFinanciereGL"
									name="TotalGeneralCautionFinanciereGL"
									value="${TotalGeneralCautionFinanciereGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralDernierPretGL">TotalG-DernierPrét:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralDernierPretGL"
									name="TotalGeneralDernierPretGL"
									value="${TotalGeneralDernierPretGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralPretSolliciteGL">TotalG-PrétSollicite:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralPretSolliciteGL"
									name="TotalGeneralPretSolliciteGL"
									value="${TotalGeneralPretSolliciteGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralPretAccorderACGL">TotalG-PrétProposerAC:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralPretAccorderACGL"
									name="TotalGeneralPretAccorderACGL"
									value="${TotalGeneralPretAccorderACGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralFraisDossierTVAGL">TotalG-FraisDossier+TVA:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralFraisDossierTVAGL"
									name="TotalGeneralFraisDossierTVAGL"
									value="${TotalGeneralFraisDossierTVAGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralAssuranceGL">TotalG-Assurance:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralAssuranceGL"
									name="TotalGeneralAssuranceGL"
									value="${TotalGeneralAssuranceGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralSmsAlerteGL">TotalG-SmsAlerte:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralSmsAlerteGL"
									name="TotalGeneralSmsAlerteGL"
									value="${TotalGeneralSmsAlerteGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralCarnetLivreGL">TotalG-CarnetLivre:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralCarnetLivreGL"
									name="TotalGeneralCarnetLivreGL"
									value="${TotalGeneralCarnetLivreGL}" disabled>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="four wide column">
							<label for="TotalGeneralFraisGL">TotalG-Frais:</label>
						</div>
						<div class="six wide column">
							<div class="ui input fluid">
								<input type="number" id="TotalGeneralFraisGL"
									name="TotalGeneralFraisGL" value="${TotalGeneralFraisGL}"
									disabled>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<c:if test="${carmi eq '1994'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'Le dossier est modifier avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>

	<c:choose>
		<c:when test="${sessionScope.etatGroupGL eq 'Creation'}">
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
	<script src="./js/main.js"></script>
	<script>
		$('#btnAdd').click(function() {
			$('#exampleModal').modal('show');
		});
	</script>
</body>

</html>