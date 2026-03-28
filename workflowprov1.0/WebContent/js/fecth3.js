function chercherLibelleGroupe() {
    const code = document.getElementById("NumeroGroupeCBS").value;

    if (code.trim() === "") {
        document.getElementById("NomGroupeLisanga").value = "";
        return;
    }

    fetch("getLibelleGroupeServlet.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
            document.getElementById("NomGroupeLisanga").value = data.nom;
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("NomGroupeLisanga").value = "";
        });
}