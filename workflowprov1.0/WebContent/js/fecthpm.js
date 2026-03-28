function chercherClient2222() {
    const code = document.getElementById("NumCbsPMCliValue").value;

    if (code.trim() === "") {
        document.getElementById("LibelleCbsPMCliValue").value = "";
        document.getElementById("AdresseCbsPMCliValue").value = "";
        document.getElementById("NumTelCbsPMCliValue").value = "";
      
        return;
    }

    fetch("getNomServlet22.php?code=" + encodeURIComponent(code))
        .then(response => response.json())
        .then(data => {
            document.getElementById("LibelleCbsPMCliValue").value = data.raisonsocialepm;
            document.getElementById("AdresseCbsPMCliValue").value = data.Adressepm;
            document.getElementById("NumTelCbsPMCliValue").value = data.numtelpm;
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("LibelleCbsPMCliValue").value = "";
            document.getElementById("AdresseCbsPMCliValue").value = "";
            document.getElementById("NumTelCbsPMCliValue").value = "";
           
        });
}