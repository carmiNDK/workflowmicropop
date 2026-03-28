////////////////////////// Functions

function remoVeNavTabActiveState(){
    const activeLinkId = sessionStorage.getItem("active_nav_tab_link");
    document.getElementById(activeLinkId).className = "nav-link text-white";
}

function addNavTabActiveState(itemId){
    document.getElementById(itemId).className = "nav-link text-black active";
    sessionStorage.setItem("active_nav_tab_link", itemId);
}

function initNavTabActiveState(){
    const activeLinkId = sessionStorage.getItem("active_nav_tab_link") || "";
    console.log("activeLinkId", activeLinkId)
    if(activeLinkId !== ""){
        document.getElementById(activeLinkId).className = "nav-link text-black active";
    }
        
}

//Demande de pret
document.getElementById("linkdemande").addEventListener("click", async (e) => {
    e.preventDefault();
    try {

        remoVeNavTabActiveState();
        addNavTabActiveState("linkdemande");
        window.location.replace(`/workflow/requests/request?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}&src=1`);
    
    } catch(error) {
        console.log(error);
    }
});

//Analyse famille
document.getElementById("link_analyse_familliale").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_analyse_familliale");
        window.location.replace(`/workflow/requests/familly?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//Analyse business 
document.getElementById("link_analyse_business").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_analyse_business");
        window.location.replace(`/workflow/requests/business1?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//Analyse business 2
document.getElementById("link_analyse_business2").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_analyse_business2");
        window.location.replace(`/workflow/requests/business2?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//Analyse business 3
document.getElementById("link_analyse_business3").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_analyse_business3");
        window.location.replace(`/workflow/requests/business3?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});


//resumé
document.getElementById("link_resume").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_resume");
        window.location.replace(`/workflow/requests/resume?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

// Evaluation garantie
document.getElementById("link_evaluation_garantie").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_evaluation_garantie");
        window.location.replace(`/workflow/requests/garantie?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//Decision 
document.getElementById("link_decision1").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_decision1");
        window.location.replace(`/workflow/requests/decision?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});


//flux
document.getElementById("link_flux").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_flux");
        window.location.replace(`/workflow/requests/flux?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//Documents
document.getElementById("link_documents").addEventListener("click", async (e) => {
    e.preventDefault();
    try {
        remoVeNavTabActiveState();
        addNavTabActiveState("link_documents");
        window.location.replace(`/workflow/requests/documents?userid=${$UserId()}&name=${$Fullname()}&branch=${$Branch()}&group=${$Group()}&requestid=${$RequestId()}&prospectid=${$ProspectId()}`);
    } catch(error) {
        console.log(error);
    }
});

//set the active window
initNavTabActiveState();