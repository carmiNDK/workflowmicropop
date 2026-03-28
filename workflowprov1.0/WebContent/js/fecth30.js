function chercherLibelleGroupeRecap() {
    const code = document.getElementById("NumeroGroupeCBS").value;

    if (code.trim() === "") {
        document.getElementById("NomGroupeLisanga").value = "";
        document.getElementById("AdresseGroupe").value = "";
        document.getElementById("ProvinceGroupe").value = "";
        document.getElementById("JourReunionGroupe").value = "";
        document.getElementById("HeureReunionGroupe").value = "";
        document.getElementById("NumeroTelephoneGroupe").value = "";
        document.getElementById("PromoteurGroupe").value = "";
        document.getElementById("SuperviseurGL").value = "";
        document.getElementById("NomsChefAgence").value = "";
        document.getElementById("NbrCycleGroupe").value = "";
        return;
    }

    fetch("getInfoGroupeRecapServlet.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
        	document.getElementById("NomGroupeLisanga").value = data.NomGroupeLisanga;
            document.getElementById("AdresseGroupe").value = data.AdresseGroupe;
            document.getElementById("ProvinceGroupe").value =data.ProvinceGroupe;
            document.getElementById("JourReunionGroupe").value = data.JourReunionGroupe;
            document.getElementById("HeureReunionGroupe").value =  data.HeureReunionGroupe;
            document.getElementById("NumeroTelephoneGroupe").value = data.NumeroTelephoneGroupe;
            document.getElementById("PromoteurGroupe").value = data.PromoteurGroupe;
            document.getElementById("SuperviseurGL").value = data.SuperviseurGL;
            document.getElementById("NomsChefAgence").value = data.NomsChefAgence;
            document.getElementById("NbrCycleGroupe").value =  Number(data.cycleRecap);
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("NomGroupeLisanga").value = "";
            document.getElementById("AdresseGroupe").value = "";
            document.getElementById("ProvinceGroupe").value = "";
            document.getElementById("JourReunionGroupe").value = "";
            document.getElementById("HeureReunionGroupe").value = "";
            document.getElementById("NumeroTelephoneGroupe").value = "";
            document.getElementById("PromoteurGroupe").value = "";
            document.getElementById("SuperviseurGL").value = "";
            document.getElementById("NomsChefAgence").value = "";
            document.getElementById("NbrCycleGroupe").value = "";
        });
}