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
<script src="./js/fecth.js"></script>
<script src="./js/fecthpm.js"></script>

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
						href="DemandePage.php" class="nav-link active" type="button"
						role="tab" aria-selected="true">Demande</a></li>
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
					<li id="menuHistorique" class="nav-item" role="presentation"><a
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

			<form action="EnregistrementDemandeCredit.php" method="post"
				enctype="multipart/form-data" class="ui compact form">
				<input type="hidden" value="${idbussnessclientildemande}"
					name="idbussnessclientildemande"> <input type="hidden"
					value="${idreco}" name="idreco">
				<!-- messages -->

				<!-- Avatar -->
				<div style="display: flex; justify-content: flex-end; padding: 8px;">
					<a href="javascript:void(0)" title="Photos du Client"
						onclick="openClientModal(${idclidem})"
						style="display: inline-block; text-decoration: none;"> <img
						src="https://api.dicebear.com/7.x/identicon/svg?seed=generic-client"
						alt="Client"
						style="width: 46px; height: 46px; border-radius: 50%; padding: 4px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); transition: transform 0.25s ease, box-shadow 0.25s ease;"
						onmouseover="this.style.transform='scale(1.08)'; this.style.boxShadow='0 6px 14px rgba(0,0,0,0.25)'"
						onmouseout="this.style.transform='scale(1)'; this.style.boxShadow='0 4px 10px rgba(0,0,0,0.15)'">
					</a>
				</div>


				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2">Informations
						générales</h2>
					<hr>
					<div class="ui green message"
						style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
					<div class="ui red message"
						style="display: ${error != null ? 'block' : 'none'}">${error}</div>
					<!--	
					<p style="color: green;">${ok}</p>
					<p style="color: red;">${error}</p>
					-->

					<div class="ui compact grid">

						<div class="two wide column">
							<label class="form-label-sm" for="cycle_pret">Cycle :</label>
						</div>
						<div class="two wide column">
							<input name="CycleValue" type="number" id="cycle"
								style="width: 100%;" placeholder="Cycle" disabled
								value="${CycleValue}" min="0" step="0.01">
						</div>
						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs">N°
								Client (CBS) :</label>
						</div>
						<div class="four wide column">
							<input name="NumCbsCliValue" type="number" id="NumCbsCliValue"
								style="width: 100%;" placeholder="0000000000" required min="0"
								value="${NumCbsCliValue}" oninput="chercherClient()"
								<c:if test="${sessionScope.EtatDossierCredit != 'Creation'}">
                                                                        disabled
                                                        </c:if>>
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs">N°
								Client P.M Lié(CBS) :</label>
						</div>
						<div class="four wide column">
							<input name="NumCbsPMCliValue" type="number"
								id="NumCbsPMCliValue" style="width: 100%;"
								placeholder="NumCbs Personne Morale Lié" required min="0"
								value="${NumCbsPMCliValue}" oninput="chercherClient2222()">
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs">Libelle
								Client P.M Lié(CBS) :</label>
						</div>
						<div class="four wide column">
							<input name="LibelleCbsPMCliValue" type="text"
								id="LibelleCbsPMCliValue" style="width: 100%;"
								placeholder="LibelleCbs Personne Morale Lié" disabled
								value="${LibelleCbsPMCliValue}">
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs">Adresse
								Client P.M Lié(CBS) :</label>
						</div>
						<div class="four wide column">
							<input name="AdresseCbsPMCliValue" type="text"
								id="AdresseCbsPMCliValue" style="width: 100%;"
								placeholder="AdresseCbs Personne Morale Lié" disabled
								value="${AdresseCbsPMCliValue}">
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs"></label>
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs"></label>
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="customer_number_cbs">NumTel
								Client P.M Lié(CBS) :</label>
						</div>


						<div class="four wide column">
							<input name="NumTelCbsPMCliValue" type="text"
								id="NumTelCbsPMCliValue" style="width: 100%;"
								placeholder="NumTelCbs Personne Morale Lié" disabled
								value="${NumTelCbsPMCliValue}">
						</div>

						<div class="two wide column">
							<label class="form-label-sm" for="cree_par">Enregistré
								par :</label>
						</div>
						<div class="four wide column">
							<input name="NomsAgentEnregistreDemandeValue" type="text"
								id="cree_par" style="width: 100%;" disabled required="required"
								value="${NomsUserConnecter}">
						</div>
					</div>
					<hr>

				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">ELigibilité de la demande
						(checklist)</h2>
					<hr>
					<input type="hidden" id="hid_id_business_questions" value="0">
					<input type="hidden" id="hid_version_business_questions" value="0">
					<div class="ui stackable grid">
						<div class="eight wide column">
							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur"
										style="text-align: right;">Le démandeur a-t-il 18 ans
										ou plus?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="AgeMajeurplusValue"
										id="type_carte_identite" required="required">
										<option selected>${AgeMajeurplusValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">Est-il
										propriétaire de l'activité commerciale?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="PropActiviteComValue"
										id="type_carte_identite" required="required">
										<option selected>${PropActiviteComValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">Exerce-t-il
										actuellement l'activité?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="ExerceActuelActivValue"
										id="type_carte_identite" required="required">
										<option selected>${ExerceActuelActivValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>
							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">L'activité
										est-elle dans la liste d'exclusion?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="ActivZoneExclusValue"
										id="type_carte_identite" style="width: 30%;"
										required="required">
										<option selected>${ActivZoneExclusValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>


						</div>
						<div class="eight wide column">
							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur"
										style="text-align: right;">Est-il congolais/etranger
										domicilié dans le pays?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="CongolaisEtrangerPaysValue"
										id="type_carte_identite" required="required">
										<option selected>${CongolaisEtrangerPaysValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">L'activité
										se trouve dans une zone operationnelle?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="ActiviteZoneOperationelValue"
										id="type_carte_identite" required="required">
										<option selected>${ActiviteZoneOperationelValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">L'a-t-il
										exercé au cours de 6 deriniers mois?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown"
										name="ActiviteExerceplussixmoisValue" id="type_carte_identite"
										required="required">
										<option selected>${ActiviteExerceplussixmoisValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>
							</div>

							<div class="ui compact grid">
								<div class="seven wide column" style="text-align: right;">
									<label class="form-label-sm" for="age_majeur">L'activité
										est-elle enregistré légalement?</label>
								</div>
								<div class="two wide column">
									<select class="ui dropdown" name="ActiviteEnregLegalValue"
										id="type_carte_identite" required="required">
										<option selected>${ActiviteEnregLegalValue}</option>
										<option>oui</option>
										<option>non</option>
									</select>
								</div>

							</div>

						</div>

					</div>
				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur le demandeur</h2>
					<hr>

					<input type="hidden" id="hid_id_client" value="0"> <input
						type="hidden" id="hid_version_client" value="0">

					<!-- Noms complets -->
					<div class="fields">
						<div class="six wide field">
							<label>Noms complet</label> <input type="text" name="NomCliValue"
								placeholder="Nom du client" value="${NomCliValue}"
								id="NomCliValue" required>
						</div>
						<div class="six wide field">
							<label>Post-nom</label> <input type="text" name="PostNomCliValue"
								placeholder="Post-nom du client" value="${PostNomCliValue}"
								id="PostNomCliValue">
						</div>
						<div class="five wide field">
							<label>Prénom</label> <input type="text" name="PrenomCliValue"
								placeholder="Prénom du client" value="${PrenomCliValue}"
								required id="PrenomCliValue">
						</div>
					</div>

					<!-- Date de naissance -->
					<div class="fields">
						<div class="six wide field">
							<label>Date de naissance</label> <input type="date"
								name="DateNaissanceDemandeurValue" value="${DateNaissanceCli}"
								required id="DateNaissanceDemandeurValue">
						</div>

						<div class="six wide field">
							<label>Type d'identité</label> <select class="ui dropdown"
								name="TypePieceIdentiteDemandeurValue"
								id="TypePieceIdentiteDemandeurValue" required>
								<option value="">${TypePieceIdentiteDemandeurValue}</option>
								<option>Acte Mariage Civil</option>
								<option>Attestation Perte Piece</option>
								<option>Acte de Naissance</option>
								<option>Carte Electeur</option>
								<option>Carte Nationale identite</option>
								<option>Carte Etudiant</option>
								<option>Carte de Service</option>
								<option>Carte de Refugie</option>
								<option>Certificat Nationalite</option>
								<option>Carte Cnss</option>
								<option>Carte Eleve</option>
								<option>Passport</option>
								<option>Permis de Conduire</option>
								<option>Permis de Travail(Expatrie)</option>
							</select>
						</div>
						<div class="five wide field">
							<label>N° de la pièce</label> <input type="text"
								name="NumPieceIdentiteDemandeurValue"
								id="NumPieceIdentiteDemandeurValue"
								value="${NumPieceIdentiteDemandeurValue}" required>
						</div>
					</div>

					<!-- Sexe et état civil -->
					<div class="fields">
						<div class="six wide field">
							<label>Sexe</label> <select class="ui dropdown"
								name="SexeDemandeurValue" id="SexeDemandeurValue" required>
								<option value="">${SexeDemandeurValue}</option>
								<option>Masculin</option>
								<option>Feminin</option>
							</select>
						</div>
						<div class="six wide field">
							<label>État civil</label> <select class="ui dropdown"
								name="EtatCivilCliDemandeurValue"
								id="EtatCivilCliDemandeurValue" onchange="toggleInput()"
								required>
								<option value="">${EtatCivilCliDemandeurValue}</option>
								<option>Celibataire</option>
								<option>Marie</option>
								<option>Divorce</option>
								<option>Veuf(ve)</option>
							</select>
						</div>

						<div class="five wide field">
							<label>Nationalité</label> <input type="text"
								name="NationaliteCliDemandeurValue"
								id="NationaliteCliDemandeurValue"
								value="${NationaliteCliDemandeurValue}" required>
						</div>
					</div>

					<!-- Nationalité et conjoint -->
					<div class="fields">

						<div class="six wide field">
							<label>Noms (Conjoint(e))</label> <input type="text"
								name="NomsConjointCliDemandeurValue" id="nomconjoint"
								placeholder="Nom du conjoint si marié"
								value="${NomsConjointCliDemandeurValue}">
						</div>
						<div class="six wide field">
							<label>Date naissance conjoint</label> <input type="date"
								name="DateNaissanceConjoinDemandeurValue" id="dateNaissConj"
								value="${DateNaissanceConjointCli}">
						</div>
						<div class="five wide field">
							<label>Adresse du domicile</label> <input type="text"
								name="AdresseDomicileCliDemandeurValue"
								id="AdresseDomicileCliDemandeurValue"
								value="${AdresseDomicileCliDemandeurValue}" required>
						</div>
					</div>

					<!-- Adresse et téléphone -->
					<div class="fields">

						<div class="six wide field">
							<label>Téléphone(s)</label> <input type="number"
								name="TelephoneCliDemandeurValue"
								id="TelephoneCliDemandeurValue"
								value="${TelephoneCliDemandeurValue}" required="required"
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
						</div>
						<div class="six wide field">
							<label>Email</label> <input type="text"
								name="EmailCliDemandeurValue" value="${EmailCliDemandeurValue}"
								required>
						</div>
						<div class="five wide field">
							<label>Téléphone(s) Conjoint</label> <input type="number"
								name="TelephoneConjointCliDemandeurValue"
								id="telephonemobileconjoint"
								value="${TelephoneConjointCliDemandeurValue}"
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
						</div>
					</div>

					<!-- Téléphone conjoint et référence -->
					<div class="fields">

						<div class="six wide field">
							<label>Reference Adresse Client</label> <input type="text"
								name="ReferenceAdresseClientValue"
								value="${ReferenceAdresseClientValue}" required="required">
						</div>

						<div class="six three wide field">
							<label>Photo Client</label> <input type="file"
								name="txtFilePhotocli" required>
						</div>
					</div>

				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur le business</h2>
					<hr>
					<div class="ui compact form">
						<input type="hidden" id="hid_id_business" value="0"> <input
							type="hidden" id="hid_version_business" value="0">
						<div class="fields">
							<div class="six wide field">
								<label for="nom_business">Nom du business :</label> <input
									name="NombusinessCliDemandeurValue" type="text"
									id="nom_business" placeholder="Nom du business" required
									value="${NombusinessCliDemandeurValue}">
							</div>

							<div class="six wide field">
								<label for="forme_juridique">Forme juridique :</label> <select
									class="ui dropdown"
									name="FormJuridiquebusinessCliDemandeurValue"
									id="forme_juridique" required>
									<option selected>${FormJuridiquebusinessCliDemandeurValue}</option>
									<option>Entreprise individuelle</option>
									<option>Entreprise Etat</option>
									<option>Privée</option>
								</select>
							</div>

							<div class="four wide field">
								<label for="doc_admin">Document Admin :</label> <select
									class="ui dropdown" name="DocAdminbusinessCliDemandeurValue"
									id="doc_admin" required>
									<option selected>${DocAdminbusinessCliDemandeurValue}</option>
									<option>Aucun</option>
									<option>Autorisation_Ouverture</option>
									<option>Arrete_ministeriel</option>
									<option>Certificat_Enregistrement</option>
									<option>Fiche_ParcelLaire</option>
									<option>F92</option>
									<option>Numero_Agrement</option>
									<option>RCCM</option>
									<option>Statut_Juridique</option>
									<option>Patente</option>
								</select>
							</div>
						</div>

						<div class="fields">
							<div class="six wide field">
								<label for="numero_business">Adresse :</label> <input
									name="AdresseBusinessCliDemandeurValue" type="text"
									id="numero_business" placeholder="Adresse" required
									value="${AdresseBusinessCliDemandeurValue}">
							</div>

							<div class="five wide field">
								<label for="duree_activite">Année à cette adresse :</label> <input
									name="DureeBussnessAdresseCliDemandeurValue" type="number"
									id="duree_activite" placeholder="Année (ex 2024)" required
									value="${DureeBussnessAdresseCliDemandeurValue}" min="0"
									step="0.01">
							</div>
							<div class="five wide field">
								<label for="duree_experience">Année Début business :</label> <input
									name="DureeBussnessCliDemandeurValue" type="number"
									id="duree_experience" placeholder="Année (ex 2024)" required
									value="${DureeBussnessCliDemandeurValue}" min="0" step="0.01">
							</div>
						</div>

						<div class="fields">
							<div class="six wide field">
								<label for="type_activite">Type de business :</label> <input
									name="TypeBussnessCliDemandeurValue" type="text"
									id="type_activite" placeholder="Type de business" required
									value="${TypeBussnessCliDemandeurValue}">
							</div>

							<div class="six wide field">
								<label for="secteur_activite">Secteur d'activité :</label> <input
									name="SecteurActiviteDemandeurValue" type="text"
									id="secteur_activite" placeholder="Secteur" required
									value="${SecteurActiviteDemandeurValue}">
							</div>
						</div>

					</div>
				</div>

				<div class="ui blue segment">
					<input type="hidden" id="hid_id_demande_pret" value="0"> <input
						type="hidden" id="hid_version_demande_pret" value="0">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur le prêt sollicité</h2>
					<hr>
					<div class="ui compact form">

						<div class="fields">
							<div class="five wide field">
								<label for="montant_sollicite">Montant ($) :</label> <input
									type="number" name="MontantDemandeValue" id="montant_sollicite"
									value="${MontantDemandeValue}" min="0" step="0.01" required
									style="color: rgb(151, 12, 231);">
							</div>
							<div class="five wide field">
								<label for="echeance_pret">Durée de prêt (Mois) :</label> <input
									type="number" name="DureePretDemandeValue" id="echeance_pret"
									value="${DureePretDemandeValue}" min="0" step="0.01" required
									style="color: rgb(151, 12, 231);">
							</div>
							<div class="six wide field">
								<label for="rbst_facile">Combien pouvez-vous <i>facilement</i>
									payer chaque mois? ($) :
								</label> <input type="number" name="CapacitePayementMensuelValue"
									id="rbst_facile" value="${CapacitePayementMensuelValue}"
									min="0" step="0.01" required style="color: rgb(151, 12, 231);">
							</div>
						</div>

						<div class="fields">
							<div class="four wide field">
								<label for="but_pret">But du crédit :</label> <select
									class="ui dropdown" name="ButInvestissmentValue" id="butpretD"
									required onchange="toggleInput2()">
									<option selected>${ButInvestissmentValue}</option>
									<option>Besoin de fonds roulement</option>
									<option>Investissement</option>
									<option>Autres</option>
								</select>
							</div>
							<div class="four wide field">
								<label for="SiAutre">Si autre, préciser :</label> <input
									type="text" name="PrecisionSiAutreValue" id="SiAutre"
									value="${PrecisionSiAutreValue}" disabled>
							</div>
							<div class="four wide field">
								<label>Le demandeur ou conjoint a un autre prêt ?</label> <select
									class="ui dropdown" name="AvoirUnAutrePretValue"
									id="AvoirUnAutrePret" required onchange="toggleInput3()">
									<option selected>${AvoirUnAutrePretValue}</option>
									<option>Non</option>
									<option>Oui,j'avais</option>
									<option>Oui,j'ai</option>
								</select>
							</div>

							<div class="four wide field">
								<label for="experience_banque_autre20">Si oui, auprès de
									quelle institution :</label> <input type="text"
									id="experience_banque_autre20"
									name="InstututionPretAnterieurValue"
									placeholder="Nom de l'institution" disabled
									value="${InstututionPretAnterieurValue}">
							</div>
						</div>


						<div class="fields">
							<div class="eight wide field">
								<label for="date_comite_credit">Date de la demande :</label> <input
									type="date" name="DateDossierDemandeValue"
									id="date_comite_credit" value="${DateDossierDemande}" required
									disabled>
							</div>
						</div>

					</div>
				</div>

				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Recommendé par (1) [Responsable
						religieux 1]</h2>
					<hr>
					<input type="hidden" id="hid_id_recommendation" value="0">
					<input type="hidden" id="hid_version_recommendation" value="0">

					<div class="ui compact form">

						<div class="fields">
							<div class="four wide field">
								<label>Nom :</label> <input type="text"
									name="NomsPersonnageDemandeCreditRecommanderValue" id="Nom_rec"
									value="${NomsPersonnageDemandeCreditRecommanderValue}" required>
							</div>
							<div class="four wide field">
								<label>Contact :</label> <input type="number"
									name="ContactPersonnageDemandeCreditRecommanderValue"
									id="contact_rec"
									value="${ContactPersonnageDemandeCreditRecommanderValue}"
									required
									oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
							</div>
							<div class="four wide field">
								<label>Fonction :</label> <input type="text"
									name="FonctionPersonnageDemandeCreditRecommanderValue"
									id="fonction_rec"
									value="${FonctionPersonnageDemandeCreditRecommanderValue}"
									required>
							</div>
							<div class="four wide field">
								<label>Relation :</label> <input type="text"
									name="RelationPersonnageDemandeCreditRecommanderValue"
									id="relation_avec_client_rec"
									value="${RelationPersonnageDemandeCreditRecommanderValue}"
									required>
							</div>
						</div>

						<div class="fields">
							<div class="eight wide field">
								<label>Est t'il(elle) agent de Micropop ?</label> <select
									name="AgentMcpopPersonnageDemandeCreditRecommanderValue"
									id="agent_organisation_rec" required>
									<option selected>${AgentMcpopPersonnageDemandeCreditRecommanderValue}</option>
									<option>Oui</option>
									<option>Non</option>
								</select>
							</div>
							<div class="eight wide field">
								<label>Adresse physique :</label> <input type="text"
									name="AdressePersonnageDemandeCreditRecommanderValue"
									id="adr_numero_rec" placeholder="N°" required
									value="${AdressePersonnageDemandeCreditRecommanderValue}">
							</div>
						</div>

					</div>
				</div>
				<div class="ui blue segment">
					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Recommendé par (2) [Responsable
						religieux 2]</h2>
					<hr>

					<input type="hidden" id="hid_id_recommendation" value="0">
					<input type="hidden" id="hid_version_recommendation" value="0">

					<div class="ui compact form">

						<div class="fields">
							<div class="four wide field">
								<label>Nom :</label> <input type="text"
									name="NomsPersonnageDemandeCreditRecommanderValue2"
									id="Nom_rec"
									value="${NomsPersonnageDemandeCreditRecommanderValue2}"
									required>
							</div>
							<div class="four wide field">
								<label>Contact :</label> <input type="number"
									name="ContactPersonnageDemandeCreditRecommanderValue2"
									id="contact_rec"
									value="${ContactPersonnageDemandeCreditRecommanderValue2}"
									required
									oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
							</div>
							<div class="four wide field">
								<label>Fonction :</label> <input type="text"
									name="FonctionPersonnageDemandeCreditRecommanderValue2"
									id="fonction_rec"
									value="${FonctionPersonnageDemandeCreditRecommanderValue2}"
									required>
							</div>
							<div class="four wide field">
								<label>Relation :</label> <input type="text"
									name="RelationPersonnageDemandeCreditRecommanderValue2"
									id="relation_avec_client_rec"
									value="${RelationPersonnageDemandeCreditRecommanderValue2}"
									required>
							</div>
						</div>

						<div class="fields">
							<div class="eight wide field">
								<label>Est t'il(elle) agent de Micropop ?</label> <select
									name="AgentMcpopPersonnageDemandeCreditRecommanderValue2"
									id="agent_organisation_rec" required>
									<option selected>${AgentMcpopPersonnageDemandeCreditRecommanderValue2}</option>
									<option>Oui</option>
									<option>Non</option>
								</select>
							</div>
							<div class="eight wide field">
								<label>Adresse physique :</label> <input type="text"
									name="AdressePersonnageDemandeCreditRecommanderValue2"
									id="adr_numero_rec" placeholder="N°"
									value="${AdressePersonnageDemandeCreditRecommanderValue2}"
									required>
							</div>
						</div>


						<div class="row" style="margin-top: 10px;">
							<div class="button-container">
								<div class="col">
									<button type="submit" id="btnSave" class="ui primary button"
										<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Creation')||(sessionScope.clicking eq 'oui')}">
                                                                        disabled
                                                        </c:if>>Enregistrer</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

			<div class="ui blue segment">

				<div id="ModificationCarte" class="card">
					<h5 class="card-header">Modification / Information</h5>
					<div class="card-body">
						<form action="GetFormulaireDemandeModif.php" method="get">
							<div class="row" style="margin-top: 10px;">
								<div class="button-container">
									<div class="col">
										<button type="submit" id="btnSave2" class="ui primary button"
											<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit eq 'Assignation')||(sessionScope.EtatDossierCredit eq 'Comite')||(sessionScope.EtatDossierCredit eq 'Postage')}">
                                                                        disabled
                                                        </c:if>>Modification</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>


			<div class="ui blue segment">

				<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
					style="margin-top: 15px;">Assignation</h2>
				<hr>

				<form class="ui compact form" action="AssignationDemandeCredit.php"
					method="post">

					<!-- Branche / Superviseur -->
					<div class="fields">
						<div class="five wide field">
							<label>Branche :</label> <input type="text" name="BrancheValue"
								value="${BrancheValue}" disabled required>
						</div>
						<div class="six wide field">
							<label>Superviseur :</label> <select class="ui dropdown"
								name="SuperviseurValue" id="superviseur" required>
								<option selected>${SuperviseurValue}</option>
								<c:forEach items="${ListeSuperviseur}" var="listesup">
									<option>${listesup.libelleuser}</option>
								</c:forEach>
							</select>
						</div>

						<div class="five wide field">
							<label>Produit financier :</label> <select
								name="ProduitFinancierValue" id="ProduitFinancierValue" required>
								<option selected>${ProduitFinancierValue}</option>
								<option>Crédit d'Urgence</option>
							</select>
						</div>
					</div>

					<!-- Produit financier / Analyste de crédit -->
					<div class="fields">
						<div class="six wide field">
							<label>Analyste de crédit :</label> <select class="ui"
								name="AnalysteCreditValue" required>
								<option selected>${AnalysteCreditValue}</option>
								<c:forEach items="${ListePromoteur}" var="listepromo">
									<option>${listepromo.libelleuser}</option>
								</c:forEach>
							</select>
						</div>

						<div class="six wide field">
							<label>Assigné par :</label> <input type="text"
								name="AssignateurDossierCreditValue"
								value="${AssignateurDossierCreditValue}" disabled required>
						</div>
					</div>

					<!-- Assigné par / Bouton -->


					<div class="twelve wide field">
						<button id="btnAssigner" class="ui primary button"
							<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Assignation') || (sessionScope.ProfilUser eq 'CA')}">
            disabled
          </c:if>>
							Assigner</button>
					</div>
				</form>
			</div>
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

				var menuHistorique = document.getElementById('menuHistorique');
				menuHistorique.style.display = 'none';

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

				var menuHistorique = document.getElementById('menuHistorique');
				menuHistorique.style.display = 'none';
			</script>
		</c:when>

	</c:choose>
	<script>
		function toggleInput() {
			// Récupérer l'élément select et l'élément input
			var select = document.getElementById("EtatCivilCliDemandeurValue");
			var input = document.getElementById("telephonemobileconjoint");
			var input2 = document.getElementById("dateNaissConj");
			var input3 = document.getElementById("nomconjoint");

			// Vérifier la sélection du select
			if ((select.value === "Celibataire")
					|| (select.value === "Divorce")
					|| (select.value === "Veuf(ve)")) {
				input.disabled = true;
				input2.disabled = true;
				input3.disabled = true;
			} else {
				input.disabled = false;
				input2.disabled = false;
				input3.disabled = false;
			}
		}
	</script>


	<script>
		function toggleInput3() {
			// Récupérer l'élément select et l'élément input
			var select = document.getElementById("AvoirUnAutrePret");
			var input = document.getElementById("experience_banque_autre20");

			// Vérifier la sélection du select
			if ((select.value === "Oui,j'avais")
					|| (select.value === "Oui,j'ai")) {
				input.disabled = false;
			} else {
				input.disabled = true;
			}
		}

		function previewPhoto(input) {
			const
			preview = document.getElementById('previewImage');
			const
			placeholder = document.querySelector('.photo-preview .placeholder');
			const
			fileInfo = document.getElementById('fileInfo');

			if (input.files && input.files[0]) {
				const
				file = input.files[0];
				const
				reader = new FileReader();

				// Vérifier la taille du fichier (max 2MB)
				if (file.size > 2 * 1024 * 1024) {
					alert('Le fichier est trop volumineux. Taille maximum: 2MB');
					input.value = '';
					return;
				}

				reader.onload = function(e) {
					preview.src = e.target.result;
					preview.style.display = 'block';
					placeholder.style.display = 'none';
					fileInfo.textContent = file.name + ' ('
							+ Math.round(file.size / 1024) + ' KB)';
					fileInfo.className = 'ui basic fluid label';
					fileInfo.style.color = '#21ba45';
					fileInfo.style.borderColor = '#21ba45';
				};

				reader.readAsDataURL(file);
			} else {
				preview.style.display = 'none';
				placeholder.style.display = 'flex';
				fileInfo.textContent = 'Aucun fichier sélectionné';
				fileInfo.className = 'ui basic fluid label';
				fileInfo.style.color = '';
				fileInfo.style.borderColor = '';
			}
		}
	</script>

	<script src="./js/jquery.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>

	<script src="./js/navtabs.js"></script>

	<script>
		$('label[for="PhotoMembreGroupe"]').click(function() {
			$('#PhotoMembreGroupe').click();
		});
		function toggleInput2() {
			// Récupérer l'élément select et l'élément input
			var select = document.getElementById("butpretD");
			var input = document.getElementById("SiAutre");

			// Vérifier la sélection du select
			if (select.value === "Autres") {
				input.disabled = false;
			} else {

				input.disabled = true;
			}
		}
	</script>


	<script>
		$(document).ready(function() {
			$('#ProduitFinancierValue').dropdown();
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
						$('#ProduitFinancierValue').dropdown('clear').dropdown(
								'change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								}, produitAuto ]).dropdown('set selected',
								produitAuto.value);
					} else {
						// si montant hors plage → seulement urgence
						$('#ProduitFinancierValue').dropdown('clear').dropdown(
								'change values', [ {
									name : 'Crédit d\'Urgence',
									value : 'Crédit d\'Urgence'
								} ]);
					}
				});
	</script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const
			inputDate = document.getElementById("date_comite_credit");

			const
			serverValue = inputDate.value;

			if (!serverValue || serverValue === "null"
					|| serverValue === "undefined") {
				inputDate.value = new Date().toISOString().split('T')[0];
			}
		});
	</script>

	<script>
function openClientModal(idClient) {
  document.getElementById('clientModalImg').src = 'ReturnPhotosClient.php?idclient=' + idClient;
  document.getElementById('clientModal').style.display = 'flex';
}

function closeClientModal() {
  document.getElementById('clientModal').style.display = 'none';
  document.getElementById('clientModalImg').src = '';
}
</script>

</body>
</html>