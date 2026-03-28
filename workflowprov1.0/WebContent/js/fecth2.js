function chercherClient2() {
    const code = document.getElementById("NumClientMembreCbs").value;

    if (code.trim() === "") {
        document.getElementById("NomMembreGroupe").value = "";
        document.getElementById("PostNomMembreGroupe").value = "";
        document.getElementById("PreNomMembreGroupe").value = "";
        document.getElementById("DateNaissanceMembreGroupe").value = "";
        
        document.getElementById("SexeMembreGroupe").value = "";
        document.getElementById("AdresseMembreGroupe").value = "";
        document.getElementById("TelephoneMembreGroupe1").value = "";
        document.getElementById("EtatCivilMembreGroupe").value = "";
        return;
    }

    fetch("getNomServlet.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
            document.getElementById("NomMembreGroupe").value = data.nom ?? "";;
            document.getElementById("PostNomMembreGroupe").value = data.postnom ?? "";;
            document.getElementById("PreNomMembreGroupe").value = data.prenom ?? "";;
            document.getElementById("DateNaissanceMembreGroupe").value = data.datenaissance ?? "";;
            document.getElementById("AdresseMembreGroupe").value = data.Adresse ?? "";;
            document.getElementById("TelephoneMembreGroupe1").value = data.Telephone ?? "";;
            
            // PARTIE IMPORTANTE : mise à jour du SELECT (pour les champs de
			// type comboBox
            document.getElementById("SexeMembreGroupe").value = data.Sexe ?? "";;
            document.getElementById("EtatCivilMembreGroupe").value =data.EtatCivil ?? "";;
            
            // OBLIGATOIRE POUR SEMANTIC UI
            setTimeout(() => {
                $('#SexeMembreGroupe').dropdown('set selected', data.sexe);
                $('#EtatCivilMembreGroupe').dropdown('set selected', data.etatCivil);
            }, 100);
            
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("NomMembreGroupe").value = "";
            document.getElementById("PostNomMembreGroupe").value = "";
            document.getElementById("PreNomMembreGroupe").value = "";
            document.getElementById("DateNaissanceMembreGroupe").value = "";
            
            document.getElementById("SexeMembreGroupe").value = "";
            document.getElementById("AdresseMembreGroupe").value = "";
            document.getElementById("TelephoneMembreGroupe1").value = "";
            document.getElementById("EtatCivilMembreGroupe").value = "";
          
        });
}