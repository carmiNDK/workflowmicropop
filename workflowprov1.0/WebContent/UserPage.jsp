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
<link rel="stylesheet" href="./css/creditvb.css">
<script id="tailwind-config">
	tailwind.config = {
		//prefix : 'tw-',
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

<title>KwikLoan : Utilisateurs</title>
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
				<li class="link" id="menucreditGP"><a href="CreditGL.php"><i
						class="users icon" style="visibility: visible;"></i>Crédit de
						groupe</a></li>
				<li class="link" id="rapportwf"><a href="PageReporting.php"><i
						class="chart pie icon" style="visibility: visible;"></i>Rapport</a></li>
				<li class="link active" id="useradm"><a href="UserPage.php"><i
						class="user circle icon" style="visibility: visible;"></i>Utilisateurs</a></li>
				<li class="link" id="para"><a href="ParametrageModule.php"><i
						class="cog icon" style="visibility: visible;"></i>Paramètres</a></li>
			</ul>
		</div>
	</aside>

	<div class="content">
		<div class="ui modal  form-modal" id="exampleModal2025">
			<div class="content">
				<form id="monFormulaire" class="ui form" action="CreationUser.php"
					method="post">
					<div class="form-section">
						<div class="section-title">
							<i class="user icon"></i> Informations sur l'utilisateur
						</div>
						<div class="two fields">
							<div class="field">
								<label>Noms *</label> <input type="text"
									placeholder="Noms de l'utilisateur" id="quantite1"
									name="NomsUser" required="required">
							</div>
							<div class="field">
								<label>Téléphone *</label> <input type="number" id="produit1"
									name="Telephoneuser" required="required"
									placeholder="N° de téléphone"
									oninput="if(this.value.length > 13) this.value = this.value.slice(0,13);">
							</div>
						</div>
						<div class="three fields">
							<div class="field">
								<label>Adresse mail</label> <input type="text" id="prix_achat1"
									placeholder="Adresse mail" name="EmailUser" required="required">
							</div>
							<div class="field">
								<label>Login *</label> <input type="text" id="marge1"
									placeholder="Nom de l'utilisateur" name="LoginUser"
									required="required">
							</div>
							<div class="field">
								<label>Mot de passe *</label> <input type="password"
									placeholder="Mot de passe" class="form-control"
									id="MotPassUser" name="MotPassUser" required="required">
								<small id="errorPwd" style="color: red; display: none;">Le
									mot de passe doit contenir au moins 14 caractères.</small>
							</div>
						</div>
						<div class="two fields">
							<div class="field">
								<label>Statut *</label> <select class="ui dropdown"
									name="StatutUser" id="critere" required="required">
									<option>Actif</option>
									<option>Non-Actif</option>
								</select>
							</div>
							<div class="field">
								<label>Profil *</label> <select class="ui dropdown"
									name="ProfilUser" id="ProfilUser" required="required">
									<option selected></option>
									<option>ADMIN</option>
									<option>CA</option>
									<option>CI</option>
									<option>BM</option>
									<option>DG</option>
									<option>DGA</option>
									<option>ODP</option>
									<option>SC</option>
									<option>RC</option>
									<option>SUP</option>
								</select>
							</div>
						</div>
						<div class="two fields">
							<div class="field">
								<label>Branche *</label> <select class="ui dropdown"
									name="BrancheUser" id="critere" class="form-control"
									required="required">
									<c:forEach items="${ListeAgence}" var="BCHE">
										<option>${BCHE.libellebranche}</option>
									</c:forEach>
								</select>
							</div>
							<div class="field">
								<label>ID CoreBanking</label> <input type="number"
									class="form-control" id="NumCbsU" name="NumCbsU" disabled
									min="0">
							</div>
						</div>
					</div>

					<!-- LÉGENDE -->
					<div class="ui tiny grey message" style="margin-top: 8px;">
						<strong>Règles du mot de passe :</strong>
						<ul style="margin-top: 5px;">
							<li>Minimum <strong>14 caractères</strong></li>
							<li>Doit contenir au moins <strong>une lettre</strong> et <strong>un
									chiffre</strong></li>
							<li>Les caractères suivants sont <strong>interdits</strong>
								: <code>' ? - " _ : ; , . &lt; &gt; /</code>
							</li>
						</ul>
					</div>
					<div id="passwordFeedback" class="ui tiny message" style="display:"block"; margin-top: 8px;">
						<ul id="passwordRules"
							style="list-style: none; padding-left: 0; margin: 0;">
							<li id="rule-length">❌ Minimum 15 caractères</li>
							<li id="rule-letter">❌ Au moins une lettre</li>
							<li id="rule-digit">❌ Au moins un chiffre</li>
							<li id="rule-forbidden">❌ Aucun caractère interdit</li>
						</ul>
					</div>
					<div class="actions">
						<div class="ui black deny button">
							<i class="times icon"></i> Annuler
						</div>
						<button class="ui primary right labeled icon button"
							id="submitBtn">
							<i class="checkmark icon"></i> Enregistrer l'utilisateur
						</button>
					</div>
				</form>
			</div>
		</div>


		<div class="page-header">
			<div class="page-header-left">
				<h2 class="page-header-title">Utilisateurs</h2>
				<p class="page-header-subtitle text-gray">Ajouter, modifier et
					supprimer les utilisateurs</p>
			</div>
			<div class="page-header-right">
				<button class="ui primary button" id="btnAdd-user">
					<i class="plus circle icon"></i>Ajouter un utilisateur
				</button>
			</div>
		</div>

		<div class="page-content">
			<div class="ui red message"
				style="display: ${error != null ? 'block' : 'none'}">${error}</div>
			<div class="grid grid-cols-1 md:grid-cols-3 gap-4">
				<div
					class="bg-white dark:bg-background-dark p-6 rounded-xl border border-gray-200 dark:border-gray-700">
					<div class="flex items-center gap-4">
						<div class="bg-primary/10 text-primary p-3 rounded-full">
							<span class="material-symbols-outlined">group</span>
						</div>
						<div>
							<p class="text-sm text-gray-500 dark:text-gray-400">Total des
								utilisateurs</p>
							<p class="text-2xl font-bold text-gray-900 dark:text-white">${NbrUserTous}</p>
						</div>
					</div>
				</div>
				<div
					class="bg-white dark:bg-background-dark p-6 rounded-xl border border-gray-200 dark:border-gray-700">
					<div class="flex items-center gap-4">
						<div
							class="bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 p-3 rounded-full">
							<span class="material-symbols-outlined">person_check</span>
						</div>
						<div>
							<p class="text-sm text-gray-500 dark:text-gray-400">Utilisateurs
								actifs</p>
							<p class="text-2xl font-bold text-gray-900 dark:text-white">${NbrUserActif}</p>
						</div>
					</div>
				</div>
				<div
					class="bg-white dark:bg-background-dark p-6 rounded-xl border border-gray-200 dark:border-gray-700">
					<div class="flex items-center gap-4">
						<div
							class="bg-rose-500/10 text-rose-600 dark:text-rose-400 p-3 rounded-full">
							<span class="material-symbols-outlined">person_off</span>
						</div>
						<div>
							<p class="text-sm text-gray-500 dark:text-gray-400">Utilisateurs
								inactifs</p>
							<p class="text-2xl font-bold text-gray-900 dark:text-white">${NbrUserNonActif}</p>
						</div>
					</div>
				</div>
			</div>

			<div class="ui segment">
				<h2 class="text-gray-900 text-lg font-bold leading-tight text-inter">Utilisateurs</h2>

				<table id="myTable" class="ui celled table">
					<thead>
						<th scope="col">ID</th>
						<th scope="col">Noms</th>
						<th scope="col">Email</th>
						<th scope="col">Statut</th>
						<th scope="col">Branche</th>
						<th scope="col">Profil</th>
						<th scope="col">Action</th>

					</thead>
					<tbody>
						<c:forEach items="${ListeInformationTousUser}" var="LU">
							<tr>
								<td>${LU.idutilisateur}</td>
								<td>${LU.nomsutilisateur}</td>
								<td>${LU.emailutilisateur}</td>
								<td>${LU.statututilisateur}</td>
								<td>${LU.brancheuse}</td>
								<td>${LU.profilutilisateur}</td>
								<td><a class="ui mini yellow icon button btn-edit"
									href="GetInformationUtilisateurs.php?numU=${LU.idutilisateur}">
										<i class="edit icon"></i>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<c:if test="${Nbrlsave eq 'ok'}">
		<script>
			Swal.fire({
				title : 'Message !',
				text : 'Utilisateur enregistrer avec succès !!!',
				icon : 'succes',
				confirmButtonText : 'OK'
			});
		</script>
	</c:if>


	<c:if test="${Nbrl eq 'ok'}">
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
		<c:when test="${sessionScope.ProfilUser eq 'ADMIN'}">
			<script>
				var menucreditIL = document.getElementById('menucreditIL');
				menucreditIL.style.display = 'none';
				var menucreditGP = document.getElementById('menucreditGP');
				menucreditGP.style.display = 'none';
			</script>
		</c:when>
		<c:when
			test="${(sessionScope.ProfilUser eq 'CI') or(sessionScope.ProfilUser eq 'BM') or (sessionScope.ProfilUser eq 'SUP') || (sessionScope.ProfilUser eq 'ODP')|| (sessionScope.ProfilUser eq 'RC')|| (sessionScope.ProfilUser eq 'CA')|| (sessionScope.ProfilUser eq 'SC')|| (sessionScope.ProfilUser eq 'DG')|| (sessionScope.ProfilUser eq 'DGA')}">
			<script>
				var useradm = document.getElementById('useradm');
				useradm.style.display = 'none';

				var para = document.getElementById('para');
				para.style.display = 'none';
			</script>
		</c:when>
	</c:choose>


	<c:if test="${sessionScope.ProfilUser != 'CA'}">
		<script>
			var v100 = document.getElementById('100');
			v100.style.display = 'none';

			var v200 = document.getElementById('200');
			v200.style.display = 'none';
		</script>
	</c:if>

	<script>
		function toggleInput200() {
			// Récupérer l'élément select et l'élément input
			var select = document.getElementById("ProfilUser");
			var input = document.getElementById("NumCbsU");

			// Vérifier la sélection du select
			if ((select.value === "CA") || (select.value === "ODP")) {
				input.disabled = false;
			} else {

				input.disabled = true;
			}
		}
	</script>

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
		$('#myTable').DataTable();
	</script>

	<script>
		const
		form = document.getElementById('monFormulaire');
		const
		pwdInput = document.getElementById('valeur1');
		const
		errorMsg = document.getElementById('errorPwd');

		form.addEventListener('submit', function(event) {
			if (pwdInput.value.length < 14) {
				errorMsg.style.display = 'block';
				pwdInput.focus();
				event.preventDefault();
			} else {
				errorMsg.style.display = 'none';
			}
		});
	</script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {

			const
			passwordInput = document.getElementById("MotPassUser");
			const
			feedback = document.getElementById("passwordFeedback");

			passwordInput.addEventListener("input", function() {
				const
				pwd = passwordInput.value;

				let
				messages = [];
				let
				isValid = true;

				// Longueur
				if (pwd.length < 14) {
					isValid = false;
					messages.push("❌ Minimum 14 caractères");
				} else {
					messages.push("✅ Longueur OK");
				}

				// Lettre
				if (!/[A-Za-z]/.test(pwd)) {
					isValid = false;
					messages.push("❌ Au moins une lettre");
				} else {
					messages.push("✅ Lettre détectée");
				}

				// Chiffre
				if (!/[0-9]/.test(pwd)) {
					isValid = false;
					messages.push("❌ Au moins un chiffre");
				} else {
					messages.push("✅ Chiffre détecté");
				}

				// Caractères interdits
				if (/['\?\-"_:;,.<>\/]/.test(pwd)) {
					isValid = false;
					messages.push("❌ Contient un caractère interdit");
				} else {
					messages.push("✅ Aucun caractère interdit");
				}

				// Affichage
				feedback.style.display = "block";
				feedback.className = isValid ? "ui tiny positive message"
						: "ui tiny negative message";

				feedback.innerHTML = messages.join("<br>");
			});
		});
	</script>

</body>
</html>