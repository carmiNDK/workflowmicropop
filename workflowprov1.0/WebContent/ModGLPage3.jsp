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
						href="DemandeGL.php" class="nav-link" type="button" role="tab"
						aria-selected="true">FormationG/Membre</a></li>
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
						href="DocumentGL.php" class="nav-link " type="button" role="tab"
						aria-selected="false">Document</a></li>
					<li id="EvaluationGL" class="nav-item" role="presentation"><a
						href="EvaluationGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Evaluation</a></li>
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

			<div class="ui modal" id="exampleModal">

				<div class="content">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Modification
						Montant prêt GL</h2>
					<hr>
					<form class="ui form" action="ModificationMontantPretGL3.php"
						method="post">
						<div class="field">
							<label>NuméroDossierGL :</label> <input type="text"
								id="numDossierGLpourComiteModif"
								name="numDossierGLpourComiteModif"
								value="${numDossierGLpourComiteModif}" disabled required>
						</div>

						<div class="field">
							<label>MontantApprouver :</label> <input type="number"
								id="MontantApprouveACComiteModif"
								name="MontantApprouveACComiteModif"
								value="${MontantApprouveACComiteModif}" required min="0"
								step="0.01">
						</div>

						<div class="actions"
							style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
							<a href="EvaluationGL.php" class="ui primary button"> Annuler
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

			<div class="demande-container"></div>

		</div>
		<div class="tab-membres">

			<div class="ui blue segment table-responsive"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
					Groupe GL</h2>
				<hr>

				<p style="color: green;">${ok}</p>
				<p style="color: red;">${error}</p>
				<div class="ui grid middle aligned divided" style="margin-top: 4px">

					<!-- NumeroCbsGp -->
					<div class="two wide column">
						<label class="form-label-sm" for="NumeroCbsGpComiteValue">NumeroCbsGp
							:</label>
					</div>
					<div class="two wide column">
						<div class="ui input fluid">
							<input type="text" id="NumeroCbsGpComiteValue"
								name="NumeroCbsGpComiteValue" value="${NumeroGroupeCBS}"
								disabled>
						</div>
					</div>

					<!-- LibelleGp -->
					<div class="two wide column">
						<label class="form-label-sm" for="LibelleGpComiteValue">LibelleGp
							:</label>
					</div>
					<div class="two wide column">
						<div class="ui input fluid">
							<input type="text" id="LibelleGpComiteValue"
								name="LibelleGpComiteValue" value="${NomGroupeLisanga}" disabled>
						</div>
					</div>

					<!-- CycleGp -->
					<div class="two wide column">
						<label class="form-label-sm" for="CycleGpComiteValue">CycleGp
							:</label>
					</div>
					<div class="two wide column">
						<div class="ui input fluid">
							<input type="text" id="CycleGpComiteValue"
								name="CycleGpComiteValue" value="${NbrCycleGroupe}" disabled>
						</div>
					</div>

				</div>

			</div>

			<div class="ui blue segment table-responsive"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
					Prét Client GL</h2>
				<hr>
				<p style="color: red;">${error}</p>
				<input type="hidden" id="hid_id_stock_business" value="0"> <input
					type="hidden" id="hid_version_stock_business" value="0">

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
							<th><label for="Observation">PrétAccorder($)</label></th>
							<th><label for="Observation">FraisDossier+TVA($)</label></th>
							<th><label for="Observation">Assurance($)</label></th>
							<th><label for="Observation">SMS-Alerte($)</label></th>
							<th><label for="Observation">Carnet+Livre($)</label></th>
							<th><label for="Observation">TotalFrais($)</label></th>
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
								<td><c:if
										test="${(sessionScope.etatGroupGL eq 'Evaluation') && (sessionScope.ProfilUser eq 'SUP')}">
										<a class="ui mini yellow icon button btn-edit"
											href="ModifierDossierGL3.php?numdoss=${SPP.numdossierglgl}&pretaccorderac=${SPP.pretaccordergl}"><i
											class="edit icon"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>

			<div class="ui blue segment table-responsive"
				style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2">AVIS DU
					SUPERVISEUR / POUR EVALUATION</h2>
				<hr>
				<p style="color: red;">${error}</p>
				<input type="hidden" id="hid_id_resume" value="0"> <input
					type="hidden" id="hid_version_resume" value="0">
				<form class="ui form" action="EvaluationGL.php" method="post">
					<div class="ui grid divided">

						<!-- Noms Superviseur -->
						<div class="row middle aligned">
							<div class="four wide column">
								<label for="NomsSuperviseurGLEva">Noms Superviseur :</label>
							</div>
							<div class="twelve wide column">
								<div class="ui input fluid">
									<input type="text" id="NomsSuperviseurGLEva"
										name="NomsSuperviseurGLEva" value="${NomsSuperviseurGLEva}"
										required>
								</div>
							</div>
						</div>

						<!-- Avis Evaluation -->
						<div class="row middle aligned">
							<div class="four wide column">
								<label for="AppreciationEvaluationGL">Avis de
									l'évaluation :</label>
							</div>
							<div class="twelve wide column">
								<select class="ui dropdown fluid" id="AppreciationEvaluationGL"
									name="AppreciationEvaluationGL" required>
									<option selected>${AppreciationEvaluationGL}</option>
									<option>Passable</option>
									<option>Non-Passable</option>
								</select>
							</div>
						</div>

						<!-- Commentaire -->
						<div class="row">
							<div class="sixteen wide column">
								<label for="commentaireEvaluationGL">Commentaire sur
									l'évaluation</label>
								<textarea id="commentaireEvaluationGL"
									name="commentaireEvaluationGL" rows="5" class="ui textarea"
									required>${commentaireEvaluationGL}</textarea>
							</div>
						</div>

						<!-- Bouton Enregistrer -->
						<div class="row">
							<div class="sixteen wide column"
								style="text-align: center; margin-top: 20px;">
								<button type="submit" id="btnSave" class="ui primary button"
									<c:if test="${(sessionScope.etatGroupGL != 'Evaluation')
                                || (sessionScope.ProfilUser eq 'CI')
                                || (sessionScope.ProfilUser eq 'RC')
                                || (sessionScope.ProfilUser eq 'DG')
                                || (sessionScope.ProfilUser eq 'DGA')
                                || (sessionScope.ProfilUser eq 'CA')
                                || (sessionScope.ProfilUser eq 'BM')
                                || (sessionScope.ProfilUser eq 'SC')}">
                        disabled
                    </c:if>>
									Enregistrer</button>
							</div>
				</form>

			</div>
		</div>
	</div>
	<c:if test="${delet eq 'modifok'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'Le document est supprimer avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>


	<c:if test="${UpdateM eq 'ok'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'Le document est supprimer avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>

	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>

	<script>
		$(document).ready(function() {
			$('#exampleModal').modal({
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
</body>

</html>