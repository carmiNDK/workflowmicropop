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
						href="EvaluationGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Evaluation</a></li>
					<li id="ComiteGL" class="nav-item" role="presentation"><a
						href="ComiteGL.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Comite</a></li>
					<li id="FluxGL" class="nav-item" role="presentation"><a
						href="FluxGL.php" class="nav-link" type="button" role="tab"
						aria-selected="false">Flux</a></li>
				</ul>
			</div>

		</div>

		<div class="page-content">

			<div class="demande-container"></div>

		</div>
		<divclass"tab-membres">

		<div class="ui blue segment table-responsive"
			style="overflow-x: auto; /* scroll horizontal */ overflow-y: hidden; /* pas de scroll vertical */ min-height: 100px; margin-top: 20px">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information
				Groupe GL</h2>
			<hr>

			<div class="ui green message"
				style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
			<div class="ui red message"
				style="display: ${error != null ? 'block' : 'none'}">${error}</div>

			<div class="ui grid middle aligned divided" style="margin-top: 4px">

				<!-- NumeroCbsGp -->
				<div class="two wide column">
					<label class="form-label-sm" for="NumeroCbsGpComiteValue">NumeroCbsGp
						:</label>
				</div>
				<div class="two wide column">
					<div class="ui input fluid">
						<input type="text" id="NumeroCbsGpComiteValue"
							name="NumeroCbsGpComiteValue" value="${NumeroGroupeCBS}" disabled>
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
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Information Prét
				Client GL</h2>
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
									test="${((sessionScope.etatGroupGL eq 'Comite') && (sessionScope.ProfilUser eq 'BM'))|| ((sessionScope.etatGroupGL eq 'Comite') && (sessionScope.ProfilUser eq 'DGA'))|| ((sessionScope.etatGroupGL eq 'Comite') && (sessionScope.ProfilUser eq 'DG'))|| ((sessionScope.etatGroupGL eq 'Comite') && (sessionScope.ProfilUser eq 'SUP'))}">
									<a class="ui mini yellow icon button btn-edit"
										href="ModifierDossierGL2.php?numdoss=${SPP.numdossierglgl}&pretaccorderac=${SPP.pretaccordergl}"><i
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
				DEPARTEMENT RISQUE</h2>
			<hr>
			<p style="color: red;">${error}</p>
			<input type="hidden" id="hid_id_resume" value="0"> <input
				type="hidden" id="hid_version_resume" value="0">
			<form class="ui form" action="PropositionRisqueGL.php" method="post">
				<div class="ui grid divided">

					<!-- Noms Superviseur -->
					<div class="row middle aligned">
						<div class="four wide column">
							<label for="">Noms Responsable Risque :</label>
						</div>
						<div class="twelve wide column">
							<div class="ui input fluid">
								<input type="text" id="NomsResponsableRisqueGL"
									name="NomsResponsableRisqueGL"
									value="${NomsResponsableRisqueGL}" disabled>
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
							<select class="ui dropdown fluid" id="AppreciationRisqueGL"
								name="AppreciationRisqueGL" required>
								<option selected>${AppreciationRisqueGL}</option>
								<option>Passable</option>
								<option>Non-Passable</option>
							</select>
						</div>
					</div>

					<!-- Commentaire -->
					<div class="row">
						<div class="sixteen wide column">
							<label for="commentaireEvaluationGL"> Commentaire sur
								l'avis du risque</label>
							<textarea name="commentaireRisqueGL" id="commentaireRisqueGL"
								cols="30" rows="10" style="width: 100%;" required>${commentaireRisqueGL}</textarea>
						</div>
					</div>

					<!-- Bouton Enregistrer -->
					<div class="row">
						<div class="sixteen wide column"
							style="text-align: center; margin-top: 20px;">
							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${(sessionScope.etatGroupGL != 'Comite')
                                || (sessionScope.ProfilUser eq 'CI')
                                || (sessionScope.ProfilUser eq 'DG')
                                || (sessionScope.ProfilUser eq 'DGA')
                                || (sessionScope.ProfilUser eq 'CA')
                                || (sessionScope.ProfilUser eq 'BM')
                                || (sessionScope.ProfilUser eq 'SC')}">
                        disabled
                    </c:if>>
								Enregistrer</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="ui green segment">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Décision Comite
				GL</h2>
			<hr>
			<form class="ui form" action="EnregistrementComitePretGL.php"
				method="post">
				<div class="ui grid">
					<div class="four wide column">
						<label for="DecisionComiteGL">Date-ComiteGL :</label>
					</div>
					<div class="six wide column">
						<input type="date" name="DateComiteGLCom" id="DateComiteGLCom"
							style="width: 100%;" required="required"
							value="${DateComiteGLCom}">
					</div>
				</div>
				<div class="ui grid">
					<div class="four wide column">
						<label for="DecisionComiteGL">Approbation :</label>
					</div>
					<div class="six wide column">
						<select name="DecisionComiteGLCom" id="DecisionComiteGLCom"
							style="width: 100%;" required>
							<option selected>${DecisionComiteGLCom}</option>
							<option>Pret-Approuver</option>
							<option>Pret-Ajourne</option>
							<option>Pret-Rejeter</option>
						</select>
					</div>
				</div>

				<div class="ui grid">
					<div class="four wide column">
						<label for="DecisionComiteGL">Membre décideur :</label>
					</div>
					<div class="six wide column">
						<input type="text" name="DecideurComiteGLCom"
							id="DecideurComiteGLCom" style="width: 100%;"
							value="${DecideurComiteGLCom}" disabled>
					</div>

				</div>

				<div class="col border">
					<label for="commentaire_comiteGL">Commentaires sur la
						decision du comite</label>
					<textarea name="CommentaireComiteGLCom" id="CommentaireComiteGLCom"
						cols="30" rows="10" style="width: 100%;" required>${CommentaireComiteGLCom}</textarea>
				</div>
				<div class="row" style="margin-top: 20px">
					<div class="col">
						<button type="submit" id="btnSave" class="ui button primary"
							<c:if test="${(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.etatGroupGL != 'Comite')|| (sessionScope.ProfilUser eq 'RC')|| ((sessionScope.ProfilUser eq 'BM') && (sessionScope.etatGroupGL eq 'Comite') && ((sessionScope.TotalGeneralPretAccorderACGL<=2000) || (sessionScope.TotalGeneralPretAccorderACGL>5000)))}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
					</div>

				</div>

			</form>
		</div>

		<div class="ui blue segment">

			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Document PV
				Comite GL</h2>
			<hr>
			<div class="field"
				style="display: flex; justify-content: flex-end; align-items: flex-end;">
				<!-- Contenu pour la colonne de 4 -->
				<button id="btnAdd" type="button" class="ui primary button"
					data-bs-toggle="modal" data-bs-target="#exampleModal"
					data-bs-whatever="@mdo"
					<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.ProfilUser eq 'CA')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.etatGroupGL eq 'Evaluation') || (sessionScope.etatGroupGL eq 'Verification') || (sessionScope.etatGroupGL eq 'Postage') || (sessionScope.etatGroupGL eq 'Analyse')|| (sessionScope.etatGroupGL eq 'Terminer') || (sessionScope.etatGroupGL eq 'Rejeter')|| (sessionScope.ProfilUser eq 'RC')}">
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
					<c:forEach items="${ListeCompleteInformationsDocumentPVComitegl}"
						var="fichdocpv">
						<tr>
							<td>${fichdocpv.idfichierdoc}</td>
							<td>${fichdocpv.dateenrfichierdoc}</td>
							<td>${fichdocpv.descriptionfichierdoc}</td>
							<td>${fichdocpv.fichierdoc}</td>
							<td><a
								href="VisualisationDocumentPVGL.php?numdocumentpv=${fichdocpv.idfichierdoc}"
								target="_blank"><i class="eye icon"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="ui modal" id="exampleModal">
			<i class="close icon"></i>
			<div class="content">
				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Ajouter Document Pv Comite GL</h2>
				<hr>
				<form class="ui form" action="EnregistrementDocumentPVComiteGL.php"
					method="post" enctype="multipart/form-data">

					<div class="field">
						<label>Description :</label>
						<textarea id="txtdescPV" name="txtdescPVGL" required></textarea>
					</div>

					<div class="field">
						<label>Choisir le fichier :</label> <input type="file"
							id="txtFilePV" name="txtFilePVGL" required>
					</div>

					<button type="submit" class="ui primary button">Enregistrer</button>
				</form>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${nbrComiteSave > 0}">
			<script>
				Swal
						.fire({
							title : 'Succès !',
							text : 'Enregistrement du Comite effectuer avec succés !!!',
							icon : 'success',
							confirmButtonText : 'OK'
						});
			</script>
		</c:when>

		<c:when test="${nbrComiteSave <= 0}">
			<script>
				Swal.fire({
					title : 'error !',
					text : 'Enregistrement du Comite non effectuer!!!',
					icon : 'error',
					confirmButtonText : 'OK'
				});
			</script>
		</c:when>

	</c:choose>

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

		<c:when test="${sessionScope.etatGroupGL != 'Comite'}">
			<script>
				var lienclik = document.getElementById('lienclik');
				lienclik.style.display = 'none';
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
</body>

</html>