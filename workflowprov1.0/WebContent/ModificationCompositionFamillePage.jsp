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
						href="FamillePage.php" class="nav-link active" type="button"
						role="tab" aria-selected="false">Famille</a></li>
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
				<form action="InformationFamille.php" method="post"
					class="ui compact form">

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Résidence</h2>
						<hr>
						<p style="color: green;">${ok}</p>
						<p style="color: red;">${error}</p>
						<div class="fields">
							<div class="four wide field">
								<label>Résidence actuelle depuis :</label> <input type="number"
									name="ResidenceActueldepuis" placeholder="Préciser l'année"
									value="${ResidenceActueldepuis}" required>
							</div>


							<div class="four wide field">
								<label>Propriété : </label> <select class="ui dropdown"
									name="Propriete" required>
									<option selected>${Propriete}</option>
									<option value="proprietaire">Propriétaire</option>
									<option value="locataire">Locataire</option>
									<option value="famille">Famille</option>
									<option value="Autre">Autre</option>
								</select>
							</div>

							<div class="four wide field">
								<label>Date de la visite : </label> <input type="date"
									id="date_comite_credit" name="DateVisite"
									value="${DateVisiteF}" required>
							</div>
							<div class="four wide field">
								<label>Heure de la visite : </label> <input type="text"
									id="heure_visite_menage" placeholder="Heure" name="HeurVisite"
									value="${HeurVisite}" required>
							</div>
						</div>


						<div class="fields">
							<div class="six wide field">
								<label>Nom du bailleur : </label> <input type="text"
									name="NomsBailleurs" value="${NomsBailleurs}" required>
							</div>

						</div>

					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Composition
							Familiale du demandeur</h2>
						<hr>
						<div class="row">
							<div class="col">
								<div class="field"
									style="display: flex; justify-content: flex-end;">
									<button id="btnAdd" type="button" class="ui primary button"
										<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>Ajouter</button>
								</div>

							</div>
						</div>

						<table class="ui celled table" id="tabUniteFamiliale">
							<thead>

								<tr>
									<th><label for=""><strong>N°</strong></label></th>
									<th><label for=""><strong>Nom</strong></label></th>
									<th><label for=""><strong>Age</strong></label></th>
									<th><label for=""><strong>Lien de parenté</strong></label></th>
									<th><label for=""><strong>Vit-il avec ?</strong></label></th>
									<th><label for=""><strong>Profession</strong></label></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ListeCompositionFamilliale}" var="CF">
									<tr>
										<td>${CF.idcompositionfamilliale}</td>
										<td>${CF.nomcompositionfamilliale}</td>
										<td>${CF.age}</td>
										<td>${CF.lienparente}</td>
										<td>${CF.localisation}</td>
										<td>${CF.profession}</td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini yellow icon button btn-edit"
													href="GetInformationCompositionFamille.php?numcf=${CF.idcompositionfamilliale}"><i
													class="edit icon"></i></a>
											</c:if></td>
										<td><c:if
												test="${sessionScope.EtatDossierCredit eq 'Analyse'}">
												<a class="ui mini red icon button btn-delete" data-id=""
													onclick="$('.ui.modifier-modal').modal('show');"
													data-url="SupInformationCompositionFamille.php?numcf=${CF.idcompositionfamilliale}">
													<i class="trash icon"></i>
												</a>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Revenu
							Conjoint(e) ou autre membre et Dépenses Familiales</h2>
						<hr>
						<input type="hidden" value="0" id="hid_id_analyse_menage">
						<input type="hidden" value="0" id="hid_version_analyse_menage">

						<div class="ui grid">

							<!-- LEFT SIDE: Conjoint info -->
							<div class="six wide column">

								<div class="field">
									<label>Nom - Société</label> <input type="text"
										name="LibelleSociete" value="${LibelleSociete}" required>
								</div>


								<div class="field">
									<label>Adresse</label> <input type="text" name="AdresseConjoin"
										value="${AdresseConjoin}" required>
								</div>


								<div class="field">
									<label>Poste conjoint</label> <input type="text"
										name="PosteConjoin" value="${PosteConjoin}" required>
								</div>


								<div class="field">
									<label>Salaire Net / Profit Net ($)</label> <input
										type="number" name="SalaireNet" value="${SalaireNet}" min="0"
										required>
								</div>


								<div class="field">
									<label>Salarié depuis (mois)</label> <input type="number"
										name="AncieneteConjoinBoulot"
										value="${AncieneteConjoinBoulot}" min="0" required>
								</div>


								<div class="field">
									<label>Commentaires</label>
									<textarea name="CommentaireConjoin" rows="5" required>${CommentaireConjoin}</textarea>
								</div>

							</div>


							<!-- RIGHT SIDE: Dépenses -->
							<div class="ten wide column">
								<div class="field"
									style="display: flex; justify-content: flex-end;">
									<button id="openModalD" type="button" class="ui primary button"
										${ (sessionScope.Parcouror == 'oui' || sessionScope.EtatDossierCredit != 'Analyse' || sessionScope.ProfilUser == 'CI') ? 'disabled' : '' }>
										Ajouter</button>
								</div>

								<div class="two fields">
									<div class="twelve wide field">
										<label>Nourriture ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${NourritureValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Combustible de cuisson ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${CombustibleValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Loyer ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${LoyerValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Transport ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${TransportValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Communication ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${CommunicationValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Habillement ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${HabillementValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Éducation ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${EducationValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Services ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${ServicesValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Soins médicaux ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${SoinsValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Autres dépenses ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${AutresDepenseValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Imprévus ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${ImprevusValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<label>Loisirs ($)</label>
									</div>
									<div class="four wide field">
										<input type="number" value="${LoisirsValue}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<strong><label>Autres dépenses privées ($)</label></strong>
									</div>
									<div class="four wide field">
										<input type="number" value="${AutresDepensePrive}" disabled>
									</div>
								</div>


								<div class="two fields">
									<div class="twelve wide field">
										<strong><label>Total de dépenses ($)</label></strong>
									</div>
									<div class="four wide field">
										<input type="number" value="${totalG}" disabled>
									</div>
								</div>


							</div>
						</div>
					</div>

					<div class="ui blue segment">
						<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Références à
							la Résidence</h2>
						<hr>
						<input type="hidden" id="hid_id_reference1" value="0"> <input
							type="hidden" id="hid_id_reference2" value="0"> <input
							type="hidden" id="hid_version_reference1" value="0"> <input
							type="hidden" id="hid_version_reference2" value="0">

						<div class="ui form">


							<!-- Header row -->
							<div class="ui grid">
								<div class="four column row">
									<div class="column">
										<strong>#</strong>
									</div>
									<div class="column">
										<strong>Nom</strong>
									</div>
									<div class="column">
										<strong>Téléphone</strong>
									</div>
									<div class="column">
										<strong>Relation</strong>
									</div>
								</div>


								<!-- Reference 1 -->
								<div class="four column row">
									<div class="column">1</div>
									<div class="column">
										<div class="field">
											<input type="text" name="NomsReferant1"
												value="${NomsReferant1}" required>
										</div>
									</div>
									<div class="column">
										<div class="field">
											<input type="number" name="TelReferant1"
												value="${TelReferant1}" required
												oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
										</div>
									</div>
									<div class="column">
										<div class="field">
											<input type="text" name="RelationReferant1"
												value="${RelationReferant1}" required>
										</div>
									</div>
								</div>


								<!-- Reference 2 -->
								<div class="four column row">
									<div class="column">2</div>
									<div class="column">
										<div class="field">
											<input type="text" name="NomsReferant2"
												value="${NomsReferant2}" required>
										</div>
									</div>
									<div class="column">
										<div class="field">
											<input type="number" name="TelReferant2"
												value="${TelReferant2}" required
												oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
										</div>
									</div>
									<div class="column">
										<div class="field">
											<input type="text" name="RelationReferant2"
												value="${RelationReferant2}" required>
										</div>
									</div>
								</div>
							</div>


							<br>


							<!-- Submit button -->
							<button type="submit" id="btnSave" class="ui primary button"
								${ (sessionScope.Parcouror == 'oui' || sessionScope.EtatDossierCredit != 'Analyse' || sessionScope.ProfilUser == 'CI') ? 'disabled' : '' }>
								Enregistrer</button>


						</div>
					</div>
				</form>

			</div>

		</div>
		<div class="tab-membres"></div>
	</div>

	<div class="ui modal" id="exampleModal">
		<i class="close icon"></i>
		<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
			style="margin-top: 15px; margin-left: 300px;">Modifier membre de
			la famille</h2>
		<hr>
		<div class="content">
			<form class="ui form"
				action="UpdateInformationCompositionFamille.php" method="post"
				id="formMembre">
				<input type="hidden" name="numcf" value="${numcf}">

				<div class="field required">
					<label for="nom">Nom :</label> <input type="text" id="nom"
						name="NomMF" required value="${NomMF}" placeholder="Nom">
				</div>

				<div class="field required">
					<label for="age">Age :</label> <input type="number" id="age"
						name="AgeMF" min="0" step="0.01" required value="${AgeMF}"
						placeholder="Age">
				</div>

				<div class="field required">
					<label for="lien">Lien de parenté :</label> <input type="text"
						id="lien" name="LienMF" required value="${LienMF}"
						placeholder="Lien de parenté">
				</div>

				<div class="field required">
					<label for="vit_avec">Vit-il avec ?</label> <select
						name="localisationMF" id="vit_avec" class="ui dropdown" required>
						<option selected>${localisationMF}</option>
						<option value="oui">Oui</option>
						<option value="non">Non</option>
					</select>
				</div>

				<div class="field required">
					<label for="profession">Profession :</label> <input type="text"
						id="profession" name="ProfessionMF" required
						value="${ProfessionMF}" placeholder="Profession">
				</div>

				<div class="actions"
					style="background: #f9f9f9; padding: 15px; border-top: 1px solid #ddd; margin-top: 20px;">
					<a href="FamillePage.php" class="ui primary button"> Annuler </a>
					<button type="button"
						onclick="$('.ui.modifier-modal').modal('show');"
						class="ui large primary right labeled icon button">
						<i class="checkmark icon"></i> Modifier
					</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModalD">
		<i class="close icon"></i>
		<div class="content">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Ajout
				Information / Dépenses Familiales</h2>
			<hr>
			<form class="ui form" action="InformationDepenseFamille.php"
				method="post">
				<input type="hidden" name="iddepensefamilliale"
					value="${iddepensefamilliale}">

				<div class="fields">
					<div class="six wide column field">
						<label>Nourriture ($):</label> <input type="number"
							name="NourritureValue" min="0" value="${NourritureValue}"
							required>
					</div>

					<div class="six wide column field">
						<label>Combustible de cuisson ($):</label> <input type="number"
							name="CombustibleValue" min="0" value="${CombustibleValue}"
							required>
					</div>

					<div class="four wide column field">
						<label>Loyer ($):</label> <input type="number" name="LoyerValue"
							min="0" value="${LoyerValue}" required>
					</div>

				</div>
				<div class="fields">
					<div class="six wide column field">
						<label>Transport ($):</label> <input type="number"
							name="TransportValue" min="0" value="${TransportValue}" required>
					</div>

					<div class="six wide column field">
						<label>Communication ($):</label> <input type="number"
							name="CommunicationValue" min="0" value="${CommunicationValue}"
							required>
					</div>

					<div class="four wide column field">
						<label>Habillement ($):</label> <input type="number"
							name="HabillementValue" min="0" value="${HabillementValue}"
							required>
					</div>

				</div>

				<div class="fields">

					<div class="six wide column field">
						<label>Education ($):</label> <input type="number"
							name="EducationValue" min="0" value="${EducationValue}" required>
					</div>

					<div class="six wide column field">
						<label>Services ($):</label> <input type="number"
							name="ServicesValue" min="0" value="${ServicesValue}" required>
					</div>

					<div class="four wide column field">
						<label>Soins médicaux ($):</label> <input type="number"
							name="SoinsValue" min="0" value="${SoinsValue}" required>
					</div>


				</div>

				<div class="fields">
					<div class="six wide column field">
						<label>Autres dépenses ($):</label> <input type="number"
							name="AutresDepenseValue" min="0" value="${AutresDepenseValue}"
							required>
					</div>

					<div class="six wide column field">
						<label>Imprévus ($):</label> <input type="number"
							name="ImprevusValue" min="0" value="${ImprevusValue}" required>
					</div>

					<div class="six wide column field">
						<label>Loisirs ($):</label> <input type="number"
							name="LoisirsValue" min="0" value="${LoisirsValue}" required>
					</div>


				</div>

				<div class="field">
					<label>Autres dépenses privées ($):</label> <input type="number"
						name="AutresDepensePrive" min="0" value="${AutresDepensePrive}"
						required>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
			</form>
		</div>
	</div>

	<c:if test="${updateokCF eq 'CFOK'}">
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