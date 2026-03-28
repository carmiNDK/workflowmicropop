function chercherClient20() {
    const nomsclient = document.getElementById("NomsMembreGroupeGL").value;
    const cycleGrp = document.getElementById("cycleGrp").value;
    const dateReunion = document.getElementById("dateR").value;
    

   // if (nomsclient.trim() === "") {
    // document.getElementById("MontantEpargneGLEspere").value = "";
    // return;
   // }

    fetch("getMontantEpargneEspereServlet.php?nomsclient=" 
            + encodeURIComponent(nomsclient) 
            + "&cycleGrp=" 
            + encodeURIComponent(cycleGrp))
        .then(response => response.json())
        .then(data => {
            document.getElementById("MontantEpargneGLEspere").value = data.epargne;
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("MontantEpargneGLEspere").value = "";
        });
    
    
    fetch("getMontantRemboursementEspereServlet.php?nomsclient2=" + encodeURIComponent(nomsclient) 
            + "&dataReunion=" 
            + encodeURIComponent(dateReunion)) 
        .then(response => response.json())
        .then(data => {
            document.getElementById("MontantRemboursEspere").value = data.rembours;
        })
        .catch(error => {
            console.error("Erreur AJAX :", error);
            document.getElementById("MontantRemboursEspere").value = "";
        });
         
}