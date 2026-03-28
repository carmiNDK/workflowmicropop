function chercherClient() {
    const code = document.getElementById("NumCbsCliValue").value;

    if (code.trim() === "") {
        document.getElementById("NomCliValue").value = "";
        document.getElementById("PostNomCliValue").value = "";
        document.getElementById("PrenomCliValue").value = "";
        document.getElementById("DateNaissanceDemandeurValue").value = "";
        
        document.getElementById("NumPieceIdentiteDemandeurValue").value = "";
        document.getElementById("SexeDemandeurValue").value = "";
        document.getElementById("AdresseDomicileCliDemandeurValue").value = "";
        document.getElementById("TelephoneCliDemandeurValue").value = "";
        
        document.getElementById("TypePieceIdentiteDemandeurValue").value = "";
        //document.getElementById("EtatCivilCliDemandeurValue").value = "";
        document.getElementById("NationaliteCliDemandeurValue").value = "";
       
        return;
    }

    fetch("getNomServlet.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
            document.getElementById("NomCliValue").value = data.nom;
            document.getElementById("PostNomCliValue").value = data.postnom;
            document.getElementById("PrenomCliValue").value = data.prenom;
            document.getElementById("DateNaissanceDemandeurValue").value = data.datenaissance;
            
            document.getElementById("NumPieceIdentiteDemandeurValue").value = data.NumPieceIdentite;
            document.getElementById("AdresseDomicileCliDemandeurValue").value = data.Adresse;
            document.getElementById("TelephoneCliDemandeurValue").value = data.Telephone;
            document.getElementById("NationaliteCliDemandeurValue").value = data.Nationalite;
           
            // PARTIE IMPORTANTE : mise à jour du SELECT (pour les champs de
			// type comboBox
            document.getElementById("SexeDemandeurValue").value = data.Sexe;
            document.getElementById("TypePieceIdentiteDemandeurValue").value = data.TypePieceIdentite;
            // document.getElementById("EtatCivilCliDemandeurValue").value =data.EtatCivil;

            // OBLIGATOIRE POUR SEMANTIC UI
            $('#SexeDemandeurValue').dropdown('set selected', data.Sexe);
            $('#TypePieceIdentiteDemandeurValue').dropdown('set selected', data.TypePieceIdentite);
            // $('#EtatCivilCliDemandeurValue').dropdown('set selected', data.EtatCivil);
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("NomCliValue").value = "";
            document.getElementById("PostNomCliValue").value = "";
            document.getElementById("PrenomCliValue").value = "";
            document.getElementById("DateNaissanceDemandeurValue").value = "";
            
            document.getElementById("NumPieceIdentiteDemandeurValue").value = "";
            document.getElementById("SexeDemandeurValue").value = "";
            document.getElementById("AdresseDomicileCliDemandeurValue").value = "";
            document.getElementById("TelephoneCliDemandeurValue").value = "";
            
            document.getElementById("TypePieceIdentiteDemandeurValue").value = "";
            // document.getElementById("EtatCivilCliDemandeurValue").value = "";
            document.getElementById("NationaliteCliDemandeurValue").value = "";
           
        });
}