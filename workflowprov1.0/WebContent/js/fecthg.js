function chercherClientok() {
    const code = document.getElementById("NumCbsgarant").value;

    if (code.trim() === "") {
        document.getElementById("NomG").value = "";
        document.getElementById("PostNomG").value = "";
        document.getElementById("PrenomG").value = "";
        document.getElementById("DateNaissanceG").value = "";
        return;
    }

    fetch("getNomServlet.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
            document.getElementById("NomG").value = data.nom;
            document.getElementById("PostNomG").value = data.postnom;
            document.getElementById("PrenomG").value = data.prenom;
            document.getElementById("DateNaissanceG").value = data.datenaissance;
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("NomG").value = "";
            document.getElementById("PostNomG").value = "";
            document.getElementById("PrenomG").value = "";
            document.getElementById("DateNaissanceG").value = "";
        });
}