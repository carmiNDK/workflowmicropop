<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="./images/logo_two.png">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
<script src="./js/fecthg.js"></script>
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
						href="GarantiePage.php" class="nav-link active" type="button"
						role="tab" aria-controls="garantie" aria-selected="false">Garantie</a></li>
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
			<form action="InfoGarant.php" method="post" class="ui form">
				<div class="ui blue segment">



					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur le garant</h2>
					<hr>

					<div class="ui green message"
						style="display: ${ok != null ? 'block' : 'none'}">${ok}</div>
					<div class="ui red message"
						style="display: ${error != null ? 'block' : 'none'}">${error}</div>

					<div class="ui grid">

						<!-- Ligne 1 : NumCbs, Nom, Postnom -->
						<div class="four wide column">
							<label for="NumCbsgarant">NumCbs :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="NumCbsgarant" name="NumCbsgarant"
								value="${NumCbsgarant}" required min="0">
						</div>

						<div class="four wide column">
							<label for="NomG">Nom :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="NomG" name="NomG" value="${NomG}" required>
						</div>

						<div class="four wide column">
							<label for="PostNomG">Postnom :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="PostNomG" name="PostNomG"
								value="${PostNomG}" required>
						</div>

						<!-- Ligne 2 : Prenom, Sexe -->
						<div class="four wide column">
							<label for="PrenomG">Prenom :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="PrenomG" name="PrenomG" value="${PrenomG}"
								required>
						</div>

						<div class="four wide column">
							<label for="sexe_garant">Sexe :</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="sexe_garant" name="SexeG"
								required>
								<option selected>${SexeG}</option>
								<option>Masculin</option>
								<option>Feminin</option>
							</select>
						</div>

						<!-- Ligne 3 : Etat civil, Date de naissance -->
						<div class="four wide column">
							<label for="etat_civil_garant">Etat civil :</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="etat_civil_garant"
								name="EtatCivilG" required>
								<option selected>${EtatCivilG}</option>
								<option>Celibataire</option>
								<option>Marie(e)</option>
								<option>Veuf(e)</option>
								<option>Divorcé(e)</option>
							</select>
						</div>

						<div class="four wide column">
							<label for="DateNaissanceG">Date de naissance :</label>
						</div>
						<div class="four wide column">
							<input type="date" id="DateNaissanceG" name="DateNaissanceG"
								value="${DateNaissanceG}" required>
						</div>

						<!-- Ligne 4 : Email, Type carte identité -->
						<div class="four wide column">
							<label for="email_garant">Email :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="email_garant" name="EmailG"
								value="${EmailG}" required>
						</div>

						<div class="four wide column">
							<label for="type_carte_identite">Type Carte identité :</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="type_carte_identite"
								name="TypePieceIdentiteG" required>
								<option selected>${TypePieceIdentiteG}</option>
								<option>carte electeur</option>
								<option>Permis de conduire</option>
								<option>Passeport</option>
								<option>autre</option>
							</select>
						</div>

						<!-- Ligne 5 : Numero carte, Téléphone mobile -->
						<div class="four wide column">
							<label for="numero_carte_identite">Numero carte :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="numero_carte_identite"
								name="NumCartePieceIdentiteG" value="${NumCartePieceIdentiteG}"
								required>
						</div>

						<div class="four wide column">
							<label for="telephone_mobile_garant">Téléphone mobile :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="telephone_mobile_garant"
								name="TelephoneG" value="${TelephoneG}" required
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
						</div>

						<!-- Ligne 6 : Noms Co-Debiteur, NomsConjoint(e), Téléphone conjoint -->
						<div class="four wide column">
							<label for="nom_conjoint_garant">Noms Co-Debiteur (Trice)
								:</label>
						</div>

						<div class="four wide column">
							<input type="text" id="nom_conjoint_garant" name="NomsConjointG"
								value="${NomsConjointG}" required>
						</div>

						<div class="four wide column">
							<label for="adresseCodebiteur">Adresse Co-Debiteur
								(Trice) :</label>
						</div>

						<div class="four wide column">
							<input type="text" id="adresseCodebiteur"
								name="adresseCodebiteur" value="${adressecodebiteur}" required>
						</div>

						<div class="four wide column">
							<label for="telephoneCodebiteur">Telephone Co-Debiteur
								(Trice) :</label>
						</div>

						<div class="four wide column">
							<input type="number" id="telephoneCodebiteur"
								name="telephoneCodebiteur" value="${telephonecodebiteur}"
								required
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
						</div>

						<div class="four wide column">
							<label for="nomconjointgarant">NomsConjoint(e)Garant(e) :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="nomconjointgarant"
								name="nomconjointgarant" value="${nomconjointgarant}" required>
						</div>

						<div class="four wide column">
							<label for="telephone_mobile_conjoint_garant">Téléphone
								conjoint(e) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="telephone_mobile_conjoint_garant"
								name="TelephoneConjointG" value="${TelephoneConjointG}" required
								oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
						</div>

						<!-- Ligne 7 : Relation avec client, Propriété maison -->
						<div class="four wide column">
							<label for="relation_client_garant">Rélation avec client
								:</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="relation_client_garant"
								name="RelationAvecClientG" required>
								<option selected>${RelationAvecClientG}</option>
								<option>Ami</option>
								<option>Parent</option>
								<option>Autres</option>
							</select>
						</div>

						<div class="four wide column">
							<label for="propriete_maison_garant">Proprieté maison :</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="propriete_maison_garant"
								name="ProprieteMaisonG" required>
								<option selected>${ProprieteMaisonG}</option>
								<option>Propietaire</option>
								<option>Locataire</option>
								<option>Familliale</option>
							</select>
						</div>

						<!-- Ligne 8 : Activité, AdresseActivité, Revenu -->
						<div class="four wide column">
							<label for="activite_garant">Activité :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="activite_garant" name="ActiviteG"
								value="${ActiviteG}" required>
						</div>

						<div class="four wide column">
							<label for="adresseActivitegarant">AdresseActivité :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="adresseActivitegarant"
								name="adresseActivitegarant" value="${adresseActivitegarant}"
								required>
						</div>

						<div class="four wide column">
							<label for="revenu_garant">Revenu ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="revenu_garant" name="RevenuG"
								value="${RevenuG}" required min="0" step="0.01">
						</div>

						<!-- Ligne 9 : Adresse -->
						<div class="four wide column">
							<label for="numero_residence_garant">AdresseDomicile :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="numero_residence_garant" name="AdresseG"
								value="${AdresseG}" required>
						</div>

						<!-- Ligne 10 : Province -->
						<div class="four wide column">
							<label for="province_residence_garant">Province :</label>
						</div>
						<div class="four wide column">
							<select class="ui dropdown" id="province_residence_garant"
								name="ProvinceG" required>
								<option selected>${ProvinceG}</option>
								<option>Bas-Uele</option>
								<option>Equateur</option>
								<option>Haut-Katanga</option>
								<option>Haut-Lomami</option>
								<option>Haut-Uele</option>
								<option>Ituri</option>
								<option>Kasai</option>
								<option>Kasai-Oriental</option>
								<option>Kinshasa</option>
								<option>Kongo-Central</option>
								<option>Kwango</option>
								<option>Kwilu</option>
								<option>Lomami</option>
								<option>Lualaba</option>
								<option>Lulua</option>
								<option>Mai-Ndombe</option>
								<option>Maniema</option>
								<option>Mongala</option>
								<option>Nord-Kivu</option>
								<option>Nord-Ubangi</option>
								<option>Sankuru</option>
								<option>Sud-Kivu</option>
								<option>Sud-Ubangi</option>
								<option>Tanganyika</option>
								<option>Tshopo</option>
								<option>Tshuapa</option>
							</select>
						</div>

					</div>
				</div>

				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur le Cash-Flow garant
						(Entrepreneur)</h2>
					<hr>

					<input type="hidden" id="hid_id_garant" value="0"> <input
						type="hidden" id="hid_version_garant" value="0">

					<div class="ui grid">

						<!-- Chiffre d'affaire [A] -->
						<div class="four wide column">
							<label for="CaffG">Chiffre d'affaire [A] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="CaffG" name="CaffG" value="${CaffG}"
								min="0" step="0.01">
						</div>

						<!-- Cout des marchandises vendues [B] -->
						<div class="four wide column">
							<label for="CMVG">Cout des marchandises vendues [B] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="CMVG" name="CMVG" value="${CMVG}"
								min="0" step="0.01">
						</div>

						<!-- Profil-Brut [C]=> [A-B] -->
						<div class="four wide column">
							<label for="ProfilBruteG">Profil-Brut [C]=> [A-B] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="ProfilBruteG" name="ProfilBruteG"
								value="${ProfilBruteG}" disabled>
						</div>

						<!-- Total Depense Operationnelle [D] -->
						<div class="four wide column">
							<label for="TdOpG">Total Depense Operationnelle [D] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="TdOpG" name="TdOpG" value="${TdOpG}"
								min="0" step="0.01">
						</div>

						<!-- Profil-Net [E]=> [C-D] -->
						<div class="four wide column">
							<label for="ProfilNetG">Profil-Net [E]=> [C-D] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="ProfilNetG" name="ProfilNetG"
								value="${ProfilNetG}" disabled>
						</div>

						<!-- TotalAutresRevenus [F] -->
						<div class="four wide column">
							<label for="TotalAutresRevenusG">TotalAutresRevenus [F]
								($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="TotalAutresRevenusG"
								name="TotalAutresRevenusG" value="${TotalAutresRevenusG}"
								min="0" step="0.01">
						</div>

						<!-- TotalDepensePrive [G] -->
						<div class="four wide column">
							<label for="TotalDepensePriveG">TotalDepensePrive [G] ($)
								:</label>
						</div>
						<div class="four wide column">
							<input type="number" id="TotalDepensePriveG"
								name="TotalDepensePriveG" value="${TotalDepensePriveG}" min="0"
								step="0.01">
						</div>

						<!-- Capacite de paiement [H]=> [(E+F)-G] -->
						<div class="four wide column">
							<label for="CapPaiementG">Capacite de paiement [H]=>
								[(E+F)-G] ($) :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="CapPaiementG" name="CapPaiementG"
								value="${CapPaiementG}" disabled>
						</div>

					</div>
				</div>

				<div class="ui blue segment">

					<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
						style="margin-top: 15px;">Information sur les Ressources du
						garant (Salarié)</h2>
					<hr>
					<input type="hidden" id="hid_id_garant" value="0"> <input
						type="hidden" id="hid_version_garant" value="0">

					<div class="ui grid">

						<!-- Contrat de Travail -->
						<div class="four wide column">
							<label for="ContratTravailG">Contrat de Travail :</label>
						</div>
						<div class="four wide column">
							<select id="ContratTravailG" name="ContratTravailG">
								<option selected>${ContratTravailG}</option>
								<option>oui</option>
								<option>non</option>
							</select>
						</div>

						<!-- Bulletin de Paie -->
						<div class="four wide column">
							<label for="BulletinPaieG">Bulletin de Paie :</label>
						</div>
						<div class="four wide column">
							<select id="BulletinPaieG" name="BulletinPaieG">
								<option selected>${BulletinPaieG}</option>
								<option>oui</option>
								<option>non</option>
							</select>
						</div>

						<!-- Carte de Service -->
						<div class="four wide column">
							<label for="CarteServiceG">Carte de Service :</label>
						</div>
						<div class="four wide column">
							<select id="CarteServiceG" name="CarteServiceG">
								<option selected>${CarteServiceG}</option>
								<option>oui</option>
								<option>non</option>
							</select>
						</div>

						<!-- Salaire Mois 1 -->
						<div class="four wide column">
							<label for="SalaireMois1G">SalaireMois1 ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="SalaireMois1G" name="SalaireMois1G"
								value="${SalaireMois1G}" min="0" step="0.01">
						</div>

						<!-- Salaire Mois 2 -->
						<div class="four wide column">
							<label for="SalaireMois2G">SalaireMois2 ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="SalaireMois2G" name="SalaireMois2G"
								value="${SalaireMois2G}" min="0" step="0.01">
						</div>

						<!-- Salaire Mois 3 -->
						<div class="four wide column">
							<label for="SalaireMois3G">SalaireMois3 ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="SalaireMois3G" name="SalaireMois3G"
								value="${SalaireMois3G}" min="0" step="0.01">
						</div>

						<!-- Total-Autres-Avantages -->
						<div class="four wide column">
							<label for="TotalAutreAvtG">Total-Autres-Avantages ($) :</label>
						</div>
						<div class="four wide column">
							<input type="number" id="TotalAutreAvtG" name="TotalAutreAvtG"
								value="${TotalAutreAvtG}" min="0" step="0.01">
						</div>

						<!-- Salaire Moyen -->
						<div class="four wide column">
							<label for="SalaireMoyenG">SalaireMoyen ($) :</label>
						</div>
						<div class="four wide column">
							<input type="text" id="SalaireMoyenG" name="SalaireMoyenG"
								value="${SalaireMoyenG}" disabled>
						</div>

					</div>

					<!-- Bouton Enregistrer -->
					<div class="ui grid" style="margin-top: 1em;">
						<div class="sixteen wide column">
							<button type="submit" id="btnSave" class="ui primary button"
								<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit eq 'Comite')||(sessionScope.ProfilUser eq 'CI')||(sessionScope.EtatDossierCredit eq 'Postage')||(sessionScope.EtatDossierCredit eq 'Terminer')||(sessionScope.EtatDossierCredit eq 'Rejeter')}">
          disabled
        </c:if>>
								Enregistrer</button>
						</div>
					</div>
				</div>

			</form>

		</div>

		<div class="ui blue segment">
			<h2 class="tw-text-lg tw-font-semibold tw-mb-2"
				style="margin-top: 15px;">Information sur la garantie</h2>
			<hr>
			<div class="field" style="display: flex; justify-content: flex-end;">
				<button type="button" id="addGarantie" class="ui primary button"
					<c:if test="${(sessionScope.Parcouror eq 'oui')||(sessionScope.EtatDossierCredit != 'Analyse')||(sessionScope.ProfilUser eq 'CI')}">
                                                                        disabled
                                                        </c:if>>
					Ajouter</button>
			</div>

			<table class="ui celled table" id="tabGarantie">
				<thead>
					<tr>
						<th><label for="prix_gage"><strong>ID</strong></label></th>
						<th><label for="type_garantie"><strong>Type
									de garantie</strong></label></th>
						<th><label for="description_garantie"><strong>Description</strong></label></th>
						<th><label for="annee_fabrication"><strong>Année
									de fabrication</strong></label></th>
						<th><label for="etat_garantie"><strong>Etat</strong></label></th>
						<th><label for="prix_achat"><strong>Prix
									d’achat</strong></label></th>
						<th><label for="prix_gage"><strong>Valeur
									marchande</strong></label></th>
						<th><label for="client_garant"><strong>Client/Garant</strong></label></th>
						<th><label for="client_garant"><strong>Actions</strong></label></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ListeGarntieDeposeClientIL}" var="GGG">
						<tr>
							<td>${GGG.idgarantiedeposer}</td>
							<td>${GGG.typegarantiegg}</td>
							<td>${GGG.descriptiongg}</td>
							<td>${GGG.anneefabricationgg}</td>
							<td>${GGG.etatgg}</td>
							<td>${GGG.prixachatgg}</td>
							<td>${GGG.valeurmarchandegg}</td>
							<td>${GGG.clientgarantgg}</td>
							<td><c:if
									test="${(sessionScope.EtatDossierCredit eq 'Analyse')|| (sessionScope.EtatDossierCredit eq 'Verification')|| (sessionScope.EtatDossierCredit eq 'Comite')}">
									<a class="ui mini yellow icon button btn-edit"
										href="GetInformationGarantie.php?IdGarantie=${GGG.idgarantiedeposer}"><i
										class="edit icon"></i></a>
								</c:if></td>
							<td><c:if
									test="${(sessionScope.EtatDossierCredit eq 'Analyse')||(sessionScope.EtatDossierCredit eq 'Verification')}">
									<a class="ui mini red icon button btn-delete" data-id=""
										onclick="$('.ui.modifier-modal').modal('show');"
										data-url="SupInformationGarantie.php?IdGarantie=${GGG.idgarantiedeposer}"><i
										class="trash icon"></i></a>
								</c:if></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6">Total des biens du client (Valeur marchande):</td>
						<td><input type="text" id="tot_biens_client"
							style="width: 100%;" disabled value="${totalBienClient}"></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="6">Total des biens du garant (Valeur marchande):</td>
						<td><input type="text" id="total_biens_garant"
							style="width: 100%;" disabled value="${totalBienGarant}"></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="6">Total des biens (Valeur marchande):</td>
						<td><input type="text" id="total_biens" style="width: 100%;"
							disabled value="${totalBienMarchant}"></td>
						<td></td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>



	<!-- Modal Fomantic UI -->
	<div class="ui modal" id="exampleModal2b2002001102025">
		<i class="close icon"></i>
		<div class="header" style="margin-bottom: 10px; font-size: 14px;">Information
			sur la garantie</div>
		<div class="content">
			<form class="ui form" action="InfoGarantie.php" method="post">
				<div class="field" style="margin-top: 10px;">
					<label>Type de garantie :</label> <select name="TypeGarantieGG"
						id="propriete_maison_garant" class="ui dropdown" required>
						<option value="">--Choisir--</option>
						<option>AI</option>
						<option>AUTRE</option>
						<option>BM</option>
						<option>CDTG</option>
						<option>HYPO</option>
						<option>ST</option>
						<option>VEH</option>
					</select>
				</div>

				<div class="field">
					<label>Description :</label> <input type="text"
						name="DescriptionGG" required>
				</div>

				<div class="field">
					<label>Année de fabrication :</label> <input type="number"
						name="AnneeFabrication" required min="0" step="0.01">
				</div>

				<div class="field">
					<label>Etat :</label> <select name="EtatGG" class="ui dropdown"
						required>
						<option value="">--Choisir--</option>
						<option>Bon-Etat</option>
						<option>Mauvais-Etat</option>
					</select>
				</div>

				<div class="field">
					<label>Prix d’achat :</label> <input type="number"
						name="PrixAchatGG" required min="0" step="0.01">
				</div>

				<div class="field">
					<label>Valeur marchande :</label> <input type="number"
						name="ValeurMarchandeGG" required min="0" step="0.01">
				</div>

				<div class="field">
					<label>Client/Garant :</label> <select name="ClientGarantGG"
						class="ui dropdown" required>
						<option value="">--Choisir--</option>
						<option>Client</option>
						<option>Garant</option>
					</select>
				</div>

				<button type="submit" class="ui primary button">Enregistrer</button>
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

	<c:if test="${UpdateSP2 eq 'ook'}">
		<script>
			Swal
					.fire({
						title : 'Message !',
						text : 'la modification du garant est effectuée avec succès !!!',
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<script src="assets/dataTables.js"></script>
	<script src="assets/dataTables.semanticui.min.js"></script>
	<script src="assets/semanticui/semantic.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		$('#addGarantie').click(function() {
			$('#exampleModal2b2002001102025').modal('show');
		});
	</script>


	<div class="ui tiny modal delete-modal">
		<div class="header">
			<i class="trash icon"></i> Confirmation de Suppression
		</div>

		<div class="content">
			<p>
				Voulez-vous vraiment supprimer ?<br> Cette action est
				irréversible.
			</p>
		</div>

		<div class="actions">
			<div class="ui black deny button">Annuler</div>

			<a id="confirmDelete" class="ui red approve button"> <i
				class="check icon"></i> Oui, supprimer
			</a>
		</div>
	</div>

	<script>
		$(document).ready(function() {

			// Autorise plusieurs modals superposés
			$('.ui.modal').modal({
				allowMultiple : true
			});

			// Quand on clique sur une icône delete
			$('.btn-delete').click(function(e) {
				e.preventDefault(); // empêcher navigation immédiate

				const
				url = $(this).data('url'); // récupérer l'URL du document

				// Injecter le lien dans le bouton "Oui, supprimer"
				$('#confirmDelete').attr('href', url);

				// Afficher la modal de confirmation
				$('.delete-modal').modal('show');
			});

		});
	</script>

</body>
</html>