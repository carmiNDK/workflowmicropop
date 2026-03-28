package entite;

public class WorkflowEntite {
	// ------------pour branche-----------
	private String libellebranche;
	// ----------------pour user---------------------
	private int iduser;
	private String libelleuser;
	private String nomsuser;
	private String statutuser;
	private String profiluser;
	private int idbrancheuser;
	private String libellebrancheuser;
	private int connecteduser;

	public int getConnecteduser() {
		return connecteduser;
	}

	public void setConnecteduser(int connecteduser) {
		this.connecteduser = connecteduser;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getNomsuser() {
		return nomsuser;
	}

	public void setNomsuser(String nomsuser) {
		this.nomsuser = nomsuser;
	}

	public String getStatutuser() {
		return statutuser;
	}

	public void setStatutuser(String statutuser) {
		this.statutuser = statutuser;
	}

	public String getProfiluser() {
		return profiluser;
	}

	public void setProfiluser(String profiluser) {
		this.profiluser = profiluser;
	}

	public int getIdbrancheuser() {
		return idbrancheuser;
	}

	public void setIdbrancheuser(int idbrancheuser) {
		this.idbrancheuser = idbrancheuser;
	}

	public String getLibellebrancheuser() {
		return libellebrancheuser;
	}

	public void setLibellebrancheuser(String libellebrancheuser) {
		this.libellebrancheuser = libellebrancheuser;
	}

	// --------------------pour composition familliale---------------
	private int idcompositionfamilliale;
	private String nomcompositionfamilliale;
	private int age;
	private String lienparente;
	private String localisation;
	private String profession;

	// --------------------pour Bunises 2 Vente Mensuel Moyen---------------
	private int idventemensuelmoyen;
	private String libellemois;
	private String appreciation;
	private double montantventemensuelmoyen;
	// --------------------pour Bunises 2 Autres Revenu---------------
	private int idautresrevenub2;
	private String descriptionactiviteb2;
	private int anneedepuisb2;
	private double revenumensuelb2;

	// --------------------pour Bunises 3 Cout de production (cp)---------------
	private int idcoupproductioncp;
	private String libelleproduitcp;
	private int qtematerielproductioncp;
	private String libellematerielutilisecp;
	private double prixachaparunitecp;
	private double couttotalcp;
	private double couttotalmaterielcp;
	private int nbruniteproduitcp;

	// --------------------pour utilisateur---------------

	private int idutilisateur;
	private String nomsutilisateur;
	private String telephoneutilisateur;
	private String emailutilisateur;
	private String statututilisateur;
	private String loginutilisateur;
	private String motpassutilisateur;
	private String libellebrancheutilisateur;
	private String profilutilisateur;
	private String brancheuse;
	private int numcbsutilisateur;

	public int getNumcbsutilisateur() {
		return numcbsutilisateur;
	}

	public void setNumcbsutilisateur(int numcbsutilisateur) {
		this.numcbsutilisateur = numcbsutilisateur;
	}

	public String getBrancheuse() {
		return brancheuse;
	}

	public void setBrancheuse(String brancheuse) {
		this.brancheuse = brancheuse;
	}

	// --------------------pour Stock Principaux / business 1---------------
	private double margestockprincipaux;
	private int idstockprincipal;
	private String libelleproduitstockprincipal;
	private int qteproduitstockprincipal;
	private double prixachatstockprincipal;
	private double prixventestockprincipal;
	private double valeurstockprincipal;
	private String observationstockprincipal;

	// --------------------pour Depense operationnelle / business2
	private int iddepenseop;
	private double transportlieuactivite;
	private double transportcoutvoyageachat;
	private double loyer;
	private double communication;
	private double salaire;
	private double services;
	private double taxes;
	private double autres;
	private double depenseinvestsixmoisdernier;
	private String commentairedepenseop;

	public int getIddepenseop() {
		return iddepenseop;
	}

	public void setIddepenseop(int iddepenseop) {
		this.iddepenseop = iddepenseop;
	}

	public String getCommentairedepenseop() {
		return commentairedepenseop;
	}

	public void setCommentairedepenseop(String commentairedepenseop) {
		this.commentairedepenseop = commentairedepenseop;
	}

	// ---------------
	// --------------------pour Achat et vente bussness1---------------

	private String registrevente;
	private int nbrjourouvrableparmois;
	private String categorievjlundi;
	private int montantvjlundi;

	private String categorievjmardi;
	private int montantvjmardi;

	private String categorievjmercredi;
	private int montantvjmercredi;

	private String categorievjjeudi;
	private int montantvjjeudi;

	private String categorievjvendredi;
	private int montantvjvendredi;

	// pour achat de produit principaux bussness 1
	private int idapp;
	private String libelleproduitprincipauxachat;
	private int qteproduitprincipauxachat;
	private int frequenceproduitprincipauxachat;
	private double achatmensuelproduitprincipaux;
	private double ventemensuelproduitprincipaux;

	public int getIdapp() {
		return idapp;
	}

	public void setIdapp(int idapp) {
		this.idapp = idapp;
	}

	// Bussness 3 MPMP
	private int idmbmp;
	private String libelleproduitmpmp;
	private double coutparunitempmp;
	private double prixventempmp;
	private double margeproduitmpmp;
	private int qtevendueparmoismpmp;
	private double coutmensuelmpmp;
	private double ventemensuelmpmp;

	public int getIdmbmp() {
		return idmbmp;
	}

	public void setIdmbmp(int idmbmp) {
		this.idmbmp = idmbmp;
	}

	// pour garantie credit individuel
	private int idgarantiedeposer;
	private String typegarantiegg;
	private String descriptiongg;
	private int anneefabricationgg;
	private String etatgg;
	private double prixachatgg;
	private double valeurmarchandegg;
	private String clientgarantgg;

	public int getIdgarantiedeposer() {
		return idgarantiedeposer;
	}

	public void setIdgarantiedeposer(int idgarantiedeposer) {
		this.idgarantiedeposer = idgarantiedeposer;
	}

	// pour dossier credit IL affichage
	private int numclientil;
	private String numerodossieril;
	private String datedossieril;
	private double montantdossieril;
	private double montantapprouvedossieril;
	private int echeancedossieril;
	private int echeanceapprouverdossieril;
	private String statutdossieril;
	private String agencedossieril;
	private String nomscompletclientdemandeurdossieril;
	private String nomscompletinitiateurdemandedossieril;
	private String nomscompletanalystedossieril;
	private long nombre;
	private long volume;
	private long nbrjourmoyentraitement;

	public long getNbrjourmoyentraitement() {
		return nbrjourmoyentraitement;
	}

	public void setNbrjourmoyentraitement(long nbrjourmoyentraitement) {
		this.nbrjourmoyentraitement = nbrjourmoyentraitement;
	}

	public long getNombre() {
		return nombre;
	}

	public void setNombre(long nombre) {
		this.nombre = nombre;
	}

	public long getVolume() {
		return volume;
	}

	public void setVolume(long volume) {
		this.volume = volume;
	}

	public int getNumclientil() {
		return numclientil;
	}

	public void setNumclientil(int numclientil) {
		this.numclientil = numclientil;
	}

	public int getEcheanceapprouverdossieril() {
		return echeanceapprouverdossieril;
	}

	public void setEcheanceapprouverdossieril(int echeanceapprouverdossieril) {
		this.echeanceapprouverdossieril = echeanceapprouverdossieril;
	}

	private String datefluxcreationdossieril;
	private String datefluxassignationdossieril;
	private String datefluxanalysedossieril;
	private String datefluxcomitedossieril;
	private String datefluxverificationdossieril;
	private String datefluxpostagedossieril;
	private String datefluxterminerdossieril;

	public double getMontantapprouvedossieril() {
		return montantapprouvedossieril;
	}

	public void setMontantapprouvedossieril(double montantapprouvedossieril) {
		this.montantapprouvedossieril = montantapprouvedossieril;
	}

	public String getDatefluxcreationdossieril() {
		return datefluxcreationdossieril;
	}

	public void setDatefluxcreationdossieril(String datefluxcreationdossieril) {
		this.datefluxcreationdossieril = datefluxcreationdossieril;
	}

	public String getDatefluxassignationdossieril() {
		return datefluxassignationdossieril;
	}

	public void setDatefluxassignationdossieril(
			String datefluxassignationdossieril) {
		this.datefluxassignationdossieril = datefluxassignationdossieril;
	}

	public String getDatefluxanalysedossieril() {
		return datefluxanalysedossieril;
	}

	public void setDatefluxanalysedossieril(String datefluxanalysedossieril) {
		this.datefluxanalysedossieril = datefluxanalysedossieril;
	}

	public String getDatefluxcomitedossieril() {
		return datefluxcomitedossieril;
	}

	public void setDatefluxcomitedossieril(String datefluxcomitedossieril) {
		this.datefluxcomitedossieril = datefluxcomitedossieril;
	}

	public String getDatefluxverificationdossieril() {
		return datefluxverificationdossieril;
	}

	public void setDatefluxverificationdossieril(
			String datefluxverificationdossieril) {
		this.datefluxverificationdossieril = datefluxverificationdossieril;
	}

	public String getDatefluxpostagedossieril() {
		return datefluxpostagedossieril;
	}

	public void setDatefluxpostagedossieril(String datefluxpostagedossieril) {
		this.datefluxpostagedossieril = datefluxpostagedossieril;
	}

	public String getDatefluxterminerdossieril() {
		return datefluxterminerdossieril;
	}

	public void setDatefluxterminerdossieril(String datefluxterminerdossieril) {
		this.datefluxterminerdossieril = datefluxterminerdossieril;
	}

	public String getNomscompletanalystedossieril() {
		return nomscompletanalystedossieril;
	}

	public void setNomscompletanalystedossieril(
			String nomscompletanalystedossieril) {
		this.nomscompletanalystedossieril = nomscompletanalystedossieril;
	}

	public String getNumerodossieril() {
		return numerodossieril;
	}

	public void setNumerodossieril(String numerodossieril) {
		this.numerodossieril = numerodossieril;
	}

	public String getDatedossieril() {
		return datedossieril;
	}

	public void setDatedossieril(String datedossieril) {
		this.datedossieril = datedossieril;
	}

	public double getMontantdossieril() {
		return montantdossieril;
	}

	public void setMontantdossieril(double montantdossieril) {
		this.montantdossieril = montantdossieril;
	}

	public int getEcheancedossieril() {
		return echeancedossieril;
	}

	public void setEcheancedossieril(int echeancedossieril) {
		this.echeancedossieril = echeancedossieril;
	}

	public String getStatutdossieril() {
		return statutdossieril;
	}

	public void setStatutdossieril(String statutdossieril) {
		this.statutdossieril = statutdossieril;
	}

	public String getAgencedossieril() {
		return agencedossieril;
	}

	public void setAgencedossieril(String agencedossieril) {
		this.agencedossieril = agencedossieril;
	}

	public String getNomscompletclientdemandeurdossieril() {
		return nomscompletclientdemandeurdossieril;
	}

	public void setNomscompletclientdemandeurdossieril(
			String nomscompletclientdemandeurdossieril) {
		this.nomscompletclientdemandeurdossieril = nomscompletclientdemandeurdossieril;
	}

	public String getNomscompletinitiateurdemandedossieril() {
		return nomscompletinitiateurdemandedossieril;
	}

	public void setNomscompletinitiateurdemandedossieril(
			String nomscompletinitiateurdemandedossieril) {
		this.nomscompletinitiateurdemandedossieril = nomscompletinitiateurdemandedossieril;
	}

	public String getTypegarantiegg() {
		return typegarantiegg;
	}

	public void setTypegarantiegg(String typegarantiegg) {
		this.typegarantiegg = typegarantiegg;
	}

	public String getDescriptiongg() {
		return descriptiongg;
	}

	public void setDescriptiongg(String descriptiongg) {
		this.descriptiongg = descriptiongg;
	}

	public int getAnneefabricationgg() {
		return anneefabricationgg;
	}

	public void setAnneefabricationgg(int anneefabricationgg) {
		this.anneefabricationgg = anneefabricationgg;
	}

	public String getEtatgg() {
		return etatgg;
	}

	public void setEtatgg(String etatgg) {
		this.etatgg = etatgg;
	}

	public double getPrixachatgg() {
		return prixachatgg;
	}

	public void setPrixachatgg(double prixachatgg) {
		this.prixachatgg = prixachatgg;
	}

	public double getValeurmarchandegg() {
		return valeurmarchandegg;
	}

	public void setValeurmarchandegg(double valeurmarchandegg) {
		this.valeurmarchandegg = valeurmarchandegg;
	}

	public String getClientgarantgg() {
		return clientgarantgg;
	}

	public void setClientgarantgg(String clientgarantgg) {
		this.clientgarantgg = clientgarantgg;
	}

	public String getLibelleproduitmpmp() {
		return libelleproduitmpmp;
	}

	public void setLibelleproduitmpmp(String libelleproduitmpmp) {
		this.libelleproduitmpmp = libelleproduitmpmp;
	}

	public double getCoutparunitempmp() {
		return coutparunitempmp;
	}

	public void setCoutparunitempmp(double coutparunitempmp) {
		this.coutparunitempmp = coutparunitempmp;
	}

	public double getPrixventempmp() {
		return prixventempmp;
	}

	public void setPrixventempmp(double prixventempmp) {
		this.prixventempmp = prixventempmp;
	}

	public double getMargeproduitmpmp() {
		return margeproduitmpmp;
	}

	public void setMargeproduitmpmp(double margeproduitmpmp) {
		this.margeproduitmpmp = margeproduitmpmp;
	}

	public int getQtevendueparmoismpmp() {
		return qtevendueparmoismpmp;
	}

	public void setQtevendueparmoismpmp(int qtevendueparmoismpmp) {
		this.qtevendueparmoismpmp = qtevendueparmoismpmp;
	}

	public double getCoutmensuelmpmp() {
		return coutmensuelmpmp;
	}

	public void setCoutmensuelmpmp(double coutmensuelmpmp) {
		this.coutmensuelmpmp = coutmensuelmpmp;
	}

	public double getVentemensuelmpmp() {
		return ventemensuelmpmp;
	}

	public void setVentemensuelmpmp(double ventemensuelmpmp) {
		this.ventemensuelmpmp = ventemensuelmpmp;
	}

	public String getLibelleproduitprincipauxachat() {
		return libelleproduitprincipauxachat;
	}

	public void setLibelleproduitprincipauxachat(
			String libelleproduitprincipauxachat) {
		this.libelleproduitprincipauxachat = libelleproduitprincipauxachat;
	}

	public int getQteproduitprincipauxachat() {
		return qteproduitprincipauxachat;
	}

	public void setQteproduitprincipauxachat(int qteproduitprincipauxachat) {
		this.qteproduitprincipauxachat = qteproduitprincipauxachat;
	}

	public int getFrequenceproduitprincipauxachat() {
		return frequenceproduitprincipauxachat;
	}

	public void setFrequenceproduitprincipauxachat(
			int frequenceproduitprincipauxachat) {
		this.frequenceproduitprincipauxachat = frequenceproduitprincipauxachat;
	}

	public double getAchatmensuelproduitprincipaux() {
		return achatmensuelproduitprincipaux;
	}

	public void setAchatmensuelproduitprincipaux(
			double achatmensuelproduitprincipaux) {
		this.achatmensuelproduitprincipaux = achatmensuelproduitprincipaux;
	}

	public double getVentemensuelproduitprincipaux() {
		return ventemensuelproduitprincipaux;
	}

	public void setVentemensuelproduitprincipaux(
			double ventemensuelproduitprincipaux) {
		this.ventemensuelproduitprincipaux = ventemensuelproduitprincipaux;
	}

	public int getMontantvjvendredi() {
		return montantvjvendredi;
	}

	public void setMontantvjvendredi(int montantvjvendredi) {
		this.montantvjvendredi = montantvjvendredi;
	}

	private String categorievjsamedi;
	private int montantvjsamedi;

	private String categorievjdimanche;
	private int montantvjdimanche;

	private int totalsemaine;

	private String dernierjour1;
	private double ventedernierjour1;

	private String dernierjour2;
	private double ventedernierjour2;

	private String dernierjour3;
	private double ventedernierjour3;

	private double ventejourtodays;

	private double ventemensuelminmax;
	private double ventemensueltroisdernierjours;

	public String getRegistrevente() {
		return registrevente;
	}

	public void setRegistrevente(String registrevente) {
		this.registrevente = registrevente;
	}

	public int getNbrjourouvrableparmois() {
		return nbrjourouvrableparmois;
	}

	public void setNbrjourouvrableparmois(int nbrjourouvrableparmois) {
		this.nbrjourouvrableparmois = nbrjourouvrableparmois;
	}

	public String getCategorievjlundi() {
		return categorievjlundi;
	}

	public void setCategorievjlundi(String categorievjlundi) {
		this.categorievjlundi = categorievjlundi;
	}

	public int getMontantvjlundi() {
		return montantvjlundi;
	}

	public void setMontantvjlundi(int montantvjlundi) {
		this.montantvjlundi = montantvjlundi;
	}

	public String getCategorievjmardi() {
		return categorievjmardi;
	}

	public void setCategorievjmardi(String categorievjmardi) {
		this.categorievjmardi = categorievjmardi;
	}

	public int getMontantvjmardi() {
		return montantvjmardi;
	}

	public void setMontantvjmardi(int montantvjmardi) {
		this.montantvjmardi = montantvjmardi;
	}

	public String getCategorievjmercredi() {
		return categorievjmercredi;
	}

	public void setCategorievjmercredi(String categorievjmercredi) {
		this.categorievjmercredi = categorievjmercredi;
	}

	public int getMontantvjmercredi() {
		return montantvjmercredi;
	}

	public void setMontantvjmercredi(int montantvjmercredi) {
		this.montantvjmercredi = montantvjmercredi;
	}

	public String getCategorievjjeudi() {
		return categorievjjeudi;
	}

	public void setCategorievjjeudi(String categorievjjeudi) {
		this.categorievjjeudi = categorievjjeudi;
	}

	public int getMontantvjjeudi() {
		return montantvjjeudi;
	}

	public void setMontantvjjeudi(int montantvjjeudi) {
		this.montantvjjeudi = montantvjjeudi;
	}

	public String getCategorievjvendredi() {
		return categorievjvendredi;
	}

	public void setCategorievjvendredi(String categorievjvendredi) {
		this.categorievjvendredi = categorievjvendredi;
	}

	public String getCategorievjsamedi() {
		return categorievjsamedi;
	}

	public void setCategorievjsamedi(String categorievjsamedi) {
		this.categorievjsamedi = categorievjsamedi;
	}

	public int getMontantvjsamedi() {
		return montantvjsamedi;
	}

	public void setMontantvjsamedi(int montantvjsamedi) {
		this.montantvjsamedi = montantvjsamedi;
	}

	public String getCategorievjdimanche() {
		return categorievjdimanche;
	}

	public void setCategorievjdimanche(String categorievjdimanche) {
		this.categorievjdimanche = categorievjdimanche;
	}

	public int getMontantvjdimanche() {
		return montantvjdimanche;
	}

	public void setMontantvjdimanche(int montantvjdimanche) {
		this.montantvjdimanche = montantvjdimanche;
	}

	public int getTotalsemaine() {
		return totalsemaine;
	}

	public void setTotalsemaine(int totalsemaine) {
		this.totalsemaine = totalsemaine;
	}

	public String getDernierjour1() {
		return dernierjour1;
	}

	public void setDernierjour1(String dernierjour1) {
		this.dernierjour1 = dernierjour1;
	}

	public double getVentedernierjour1() {
		return ventedernierjour1;
	}

	public void setVentedernierjour1(double ventedernierjour1) {
		this.ventedernierjour1 = ventedernierjour1;
	}

	public String getDernierjour2() {
		return dernierjour2;
	}

	public void setDernierjour2(String dernierjour2) {
		this.dernierjour2 = dernierjour2;
	}

	public double getVentedernierjour2() {
		return ventedernierjour2;
	}

	public void setVentedernierjour2(double ventedernierjour2) {
		this.ventedernierjour2 = ventedernierjour2;
	}

	public String getDernierjour3() {
		return dernierjour3;
	}

	public void setDernierjour3(String dernierjour3) {
		this.dernierjour3 = dernierjour3;
	}

	public double getVentedernierjour3() {
		return ventedernierjour3;
	}

	public void setVentedernierjour3(double ventedernierjour3) {
		this.ventedernierjour3 = ventedernierjour3;
	}

	public double getVentejourtodays() {
		return ventejourtodays;
	}

	public void setVentejourtodays(double ventejourtodays) {
		this.ventejourtodays = ventejourtodays;
	}

	public double getVentemensuelminmax() {
		return ventemensuelminmax;
	}

	public void setVentemensuelminmax(double ventemensuelminmax) {
		this.ventemensuelminmax = ventemensuelminmax;
	}

	public double getVentemensueltroisdernierjours() {
		return ventemensueltroisdernierjours;
	}

	public void setVentemensueltroisdernierjours(
			double ventemensueltroisdernierjours) {
		this.ventemensueltroisdernierjours = ventemensueltroisdernierjours;
	}

	public int getIdstockprincipal() {
		return idstockprincipal;
	}

	public String getObservationstockprincipal() {
		return observationstockprincipal;
	}

	public void setObservationstockprincipal(String observationstockprincipal) {
		this.observationstockprincipal = observationstockprincipal;
	}

	public void setIdstockprincipal(int idstockprincipal) {
		this.idstockprincipal = idstockprincipal;
	}

	public String getLibelleproduitstockprincipal() {
		return libelleproduitstockprincipal;
	}

	public void setLibelleproduitstockprincipal(
			String libelleproduitstockprincipal) {
		this.libelleproduitstockprincipal = libelleproduitstockprincipal;
	}

	public int getQteproduitstockprincipal() {
		return qteproduitstockprincipal;
	}

	public void setQteproduitstockprincipal(int qteproduitstockprincipal) {
		this.qteproduitstockprincipal = qteproduitstockprincipal;
	}

	public double getPrixachatstockprincipal() {
		return prixachatstockprincipal;
	}

	public void setPrixachatstockprincipal(double prixachatstockprincipal) {
		this.prixachatstockprincipal = prixachatstockprincipal;
	}

	public double getPrixventestockprincipal() {
		return prixventestockprincipal;
	}

	public void setPrixventestockprincipal(double prixventestockprincipal) {
		this.prixventestockprincipal = prixventestockprincipal;
	}

	public double getValeurstockprincipal() {
		return valeurstockprincipal;
	}

	public void setValeurstockprincipal(double valeurstockprincipal) {
		this.valeurstockprincipal = valeurstockprincipal;
	}

	// informations sur le dossier credit au niveau de la liste menu credit
	// individuel
	private String numdossiercreok;
	private int idclientdok;
	private String nomsclientsok;
	private String datedemandeok;
	private String statutdossiercreok;

	public String getNumdossiercreok() {
		return numdossiercreok;
	}

	public void setNumdossiercreok(String numdossiercreok) {
		this.numdossiercreok = numdossiercreok;
	}

	public int getIdclientdok() {
		return idclientdok;
	}

	public void setIdclientdok(int idclientdok) {
		this.idclientdok = idclientdok;
	}

	public String getNomsclientsok() {
		return nomsclientsok;
	}

	public void setNomsclientsok(String nomsclientsok) {
		this.nomsclientsok = nomsclientsok;
	}

	public String getDatedemandeok() {
		return datedemandeok;
	}

	public void setDatedemandeok(String datedemandeok) {
		this.datedemandeok = datedemandeok;
	}

	public String getStatutdossiercreok() {
		return statutdossiercreok;
	}

	public void setStatutdossiercreok(String statutdossiercreok) {
		this.statutdossiercreok = statutdossiercreok;
	}

	// --------------------pour risques Principaux / business 1---------------
	private String libellerisquesprincipauxb1;
	private String mitigation;

	// --------------------pour Achat Produits Principaux / business
	// 1---------------
	private double achatmensuel;
	private double ventemensuel;

	public double getAchatmensuel() {
		return achatmensuel;
	}

	public void setAchatmensuel(double achatmensuel) {
		this.achatmensuel = achatmensuel;
	}

	public double getVentemensuel() {
		return ventemensuel;
	}

	public void setVentemensuel(double ventemensuel) {
		this.ventemensuel = ventemensuel;
	}

	public String getLibellerisquesprincipauxb1() {
		return libellerisquesprincipauxb1;
	}

	public void setLibellerisquesprincipauxb1(String libellerisquesprincipauxb1) {
		this.libellerisquesprincipauxb1 = libellerisquesprincipauxb1;
	}

	public String getMitigation() {
		return mitigation;
	}

	public void setMitigation(String mitigation) {
		this.mitigation = mitigation;
	}

	public double getTransportlieuactivite() {
		return transportlieuactivite;
	}

	public void setTransportlieuactivite(double transportlieuactivite) {
		this.transportlieuactivite = transportlieuactivite;
	}

	public double getTransportcoutvoyageachat() {
		return transportcoutvoyageachat;
	}

	public void setTransportcoutvoyageachat(double transportcoutvoyageachat) {
		this.transportcoutvoyageachat = transportcoutvoyageachat;
	}

	public double getLoyer() {
		return loyer;
	}

	public void setLoyer(double loyer) {
		this.loyer = loyer;
	}

	public double getCommunication() {
		return communication;
	}

	public void setCommunication(double communication) {
		this.communication = communication;
	}

	public double getSalaire() {
		return salaire;
	}

	public void setSalaire(double salaire) {
		this.salaire = salaire;
	}

	public double getServices() {
		return services;
	}

	public void setServices(double services) {
		this.services = services;
	}

	public double getTaxes() {
		return taxes;
	}

	public void setTaxes(double taxes) {
		this.taxes = taxes;
	}

	public double getAutres() {
		return autres;
	}

	public void setAutres(double autres) {
		this.autres = autres;
	}

	public double getDepenseinvestsixmoisdernier() {
		return depenseinvestsixmoisdernier;
	}

	public void setDepenseinvestsixmoisdernier(
			double depenseinvestsixmoisdernier) {
		this.depenseinvestsixmoisdernier = depenseinvestsixmoisdernier;
	}

	public double getMargestockprincipaux() {
		return margestockprincipaux;
	}

	public void setMargestockprincipaux(double margestockprincipaux) {
		this.margestockprincipaux = margestockprincipaux;
	}

	public int getIdutilisateur() {
		return idutilisateur;
	}

	public void setIdutilisateur(int idutilisateur) {
		this.idutilisateur = idutilisateur;
	}

	public String getNomsutilisateur() {
		return nomsutilisateur;
	}

	public void setNomsutilisateur(String nomsutilisateur) {
		this.nomsutilisateur = nomsutilisateur;
	}

	public String getTelephoneutilisateur() {
		return telephoneutilisateur;
	}

	public void setTelephoneutilisateur(String telephoneutilisateur) {
		this.telephoneutilisateur = telephoneutilisateur;
	}

	public String getEmailutilisateur() {
		return emailutilisateur;
	}

	public void setEmailutilisateur(String emailutilisateur) {
		this.emailutilisateur = emailutilisateur;
	}

	public String getStatututilisateur() {
		return statututilisateur;
	}

	public void setStatututilisateur(String statututilisateur) {
		this.statututilisateur = statututilisateur;
	}

	public String getLoginutilisateur() {
		return loginutilisateur;
	}

	public void setLoginutilisateur(String loginutilisateur) {
		this.loginutilisateur = loginutilisateur;
	}

	public String getMotpassutilisateur() {
		return motpassutilisateur;
	}

	public void setMotpassutilisateur(String motpassutilisateur) {
		this.motpassutilisateur = motpassutilisateur;
	}

	public String getLibellebrancheutilisateur() {
		return libellebrancheutilisateur;
	}

	public void setLibellebrancheutilisateur(String libellebrancheutilisateur) {
		this.libellebrancheutilisateur = libellebrancheutilisateur;
	}

	public String getProfilutilisateur() {
		return profilutilisateur;
	}

	public void setProfilutilisateur(String profilutilisateur) {
		this.profilutilisateur = profilutilisateur;
	}

	public int getIdcoupproductioncp() {
		return idcoupproductioncp;
	}

	public void setIdcoupproductioncp(int idcoupproductioncp) {
		this.idcoupproductioncp = idcoupproductioncp;
	}

	public String getLibelleproduitcp() {
		return libelleproduitcp;
	}

	public void setLibelleproduitcp(String libelleproduitcp) {
		this.libelleproduitcp = libelleproduitcp;
	}

	public int getQtematerielproductioncp() {
		return qtematerielproductioncp;
	}

	public void setQtematerielproductioncp(int qtematerielproductioncp) {
		this.qtematerielproductioncp = qtematerielproductioncp;
	}

	public String getLibellematerielutilisecp() {
		return libellematerielutilisecp;
	}

	public void setLibellematerielutilisecp(String libellematerielutilisecp) {
		this.libellematerielutilisecp = libellematerielutilisecp;
	}

	public double getPrixachaparunitecp() {
		return prixachaparunitecp;
	}

	public void setPrixachaparunitecp(double prixachaparunitecp) {
		this.prixachaparunitecp = prixachaparunitecp;
	}

	public double getCouttotalcp() {
		return couttotalcp;
	}

	public void setCouttotalcp(double couttotalcp) {
		this.couttotalcp = couttotalcp;
	}

	public double getCouttotalmaterielcp() {
		return couttotalmaterielcp;
	}

	public void setCouttotalmaterielcp(double couttotalmaterielcp) {
		this.couttotalmaterielcp = couttotalmaterielcp;
	}

	public int getNbruniteproduitcp() {
		return nbruniteproduitcp;
	}

	public void setNbruniteproduitcp(int nbruniteproduitcp) {
		this.nbruniteproduitcp = nbruniteproduitcp;
	}

	public int getIdautresrevenub2() {
		return idautresrevenub2;
	}

	public void setIdautresrevenub2(int idautresrevenub2) {
		this.idautresrevenub2 = idautresrevenub2;
	}

	public String getDescriptionactiviteb2() {
		return descriptionactiviteb2;
	}

	public void setDescriptionactiviteb2(String descriptionactiviteb2) {
		this.descriptionactiviteb2 = descriptionactiviteb2;
	}

	public int getAnneedepuisb2() {
		return anneedepuisb2;
	}

	public void setAnneedepuisb2(int anneedepuisb2) {
		this.anneedepuisb2 = anneedepuisb2;
	}

	public double getRevenumensuelb2() {
		return revenumensuelb2;
	}

	public void setRevenumensuelb2(double revenumensuelb2) {
		this.revenumensuelb2 = revenumensuelb2;
	}

	public int getIdventemensuelmoyen() {
		return idventemensuelmoyen;
	}

	public void setIdventemensuelmoyen(int idventemensuelmoyen) {
		this.idventemensuelmoyen = idventemensuelmoyen;
	}

	public String getLibellemois() {
		return libellemois;
	}

	public void setLibellemois(String libellemois) {
		this.libellemois = libellemois;
	}

	public String getAppreciation() {
		return appreciation;
	}

	public void setAppreciation(String appreciation) {
		this.appreciation = appreciation;
	}

	public double getMontantventemensuelmoyen() {
		return montantventemensuelmoyen;
	}

	public void setMontantventemensuelmoyen(double montantventemensuelmoyen) {
		this.montantventemensuelmoyen = montantventemensuelmoyen;
	}

	public int getIdcompositionfamilliale() {
		return idcompositionfamilliale;
	}

	public void setIdcompositionfamilliale(int idcompositionfamilliale) {
		this.idcompositionfamilliale = idcompositionfamilliale;
	}

	public String getNomcompositionfamilliale() {
		return nomcompositionfamilliale;
	}

	public void setNomcompositionfamilliale(String nomcompositionfamilliale) {
		this.nomcompositionfamilliale = nomcompositionfamilliale;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLienparente() {
		return lienparente;
	}

	public void setLienparente(String lienparente) {
		this.lienparente = lienparente;
	}

	public String getLocalisation() {
		return localisation;
	}

	public void setLocalisation(String localisation) {
		this.localisation = localisation;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getLibelleuser() {
		return libelleuser;
	}

	public void setLibelleuser(String libelleuser) {
		this.libelleuser = libelleuser;
	}

	public String getLibellebranche() {
		return libellebranche;
	}

	public void setLibellebranche(String libellebranche) {
		this.libellebranche = libellebranche;
	}

	// AFFICHAGE SESSION APRES CLIQUE BUTTON PARCOURIR
	// A) pour information client demandeur
	private int idclid;
	private int idcbsclisession;
	private int idcbsclipmsession;
	private int cycleclicbssession;
	private String agemajeurplussession;
	private String propactivitecomsession;
	private String exerceactuelactivsession;
	private String activzoneexclussession;
	private String congolaisetrangerpayssession;
	private String activitezoneoperationelsession;
	private String activiteexerceplussixmoissession;
	private String activiteenreglegalsession;
	private String nomclisession;
	private String postnomclisession;
	private String prenomclisession;
	private String datenaissanceclisession;
	private String typepieceidentitesession;
	private String numpieceidentitesession;
	private String sexeclisession;
	private String nationaliteclisession;
	private String etatcivilclisession;
	private String nomsconjointclisession;
	private String datenaissanceconjointclisession;
	private String adressedomicileclisession;
	private String telephoneclisession;
	private String emailclisession;
	private String telephoneconjointclisession;
	private String referenceadresseclientsession;
	private String photosclientdsession;
	private String numtelpm;
	private String adressepm;

	public String getNumtelpm() {
		return numtelpm;
	}

	public void setNumtelpm(String numtelpm) {
		this.numtelpm = numtelpm;
	}

	public String getAdressepm() {
		return adressepm;
	}

	public void setAdressepm(String adressepm) {
		this.adressepm = adressepm;
	}

	public int getIdcbsclipmsession() {
		return idcbsclipmsession;
	}

	public void setIdcbsclipmsession(int idcbsclipmsession) {
		this.idcbsclipmsession = idcbsclipmsession;
	}

	public int getIdclid() {
		return idclid;
	}

	public void setIdclid(int idclid) {
		this.idclid = idclid;
	}

	public String getPhotosclientdsession() {
		return photosclientdsession;
	}

	public void setPhotosclientdsession(String photosclientdsession) {
		this.photosclientdsession = photosclientdsession;
	}

	public String getReferenceadresseclientsession() {
		return referenceadresseclientsession;
	}

	public void setReferenceadresseclientsession(
			String referenceadresseclientsession) {
		this.referenceadresseclientsession = referenceadresseclientsession;
	}

	public int getIdcbsclisession() {
		return idcbsclisession;
	}

	public void setIdcbsclisession(int idcbsclisession) {
		this.idcbsclisession = idcbsclisession;
	}

	public int getCycleclicbssession() {
		return cycleclicbssession;
	}

	public void setCycleclicbssession(int cycleclicbssession) {
		this.cycleclicbssession = cycleclicbssession;
	}

	public String getAgemajeurplussession() {
		return agemajeurplussession;
	}

	public void setAgemajeurplussession(String agemajeurplussession) {
		this.agemajeurplussession = agemajeurplussession;
	}

	public String getPropactivitecomsession() {
		return propactivitecomsession;
	}

	public void setPropactivitecomsession(String propactivitecomsession) {
		this.propactivitecomsession = propactivitecomsession;
	}

	public String getExerceactuelactivsession() {
		return exerceactuelactivsession;
	}

	public void setExerceactuelactivsession(String exerceactuelactivsession) {
		this.exerceactuelactivsession = exerceactuelactivsession;
	}

	public String getActivzoneexclussession() {
		return activzoneexclussession;
	}

	public void setActivzoneexclussession(String activzoneexclussession) {
		this.activzoneexclussession = activzoneexclussession;
	}

	public String getCongolaisetrangerpayssession() {
		return congolaisetrangerpayssession;
	}

	public void setCongolaisetrangerpayssession(
			String congolaisetrangerpayssession) {
		this.congolaisetrangerpayssession = congolaisetrangerpayssession;
	}

	public String getActivitezoneoperationelsession() {
		return activitezoneoperationelsession;
	}

	public void setActivitezoneoperationelsession(
			String activitezoneoperationelsession) {
		this.activitezoneoperationelsession = activitezoneoperationelsession;
	}

	public String getActiviteexerceplussixmoissession() {
		return activiteexerceplussixmoissession;
	}

	public void setActiviteexerceplussixmoissession(
			String activiteexerceplussixmoissession) {
		this.activiteexerceplussixmoissession = activiteexerceplussixmoissession;
	}

	public String getActiviteenreglegalsession() {
		return activiteenreglegalsession;
	}

	public void setActiviteenreglegalsession(String activiteenreglegalsession) {
		this.activiteenreglegalsession = activiteenreglegalsession;
	}

	public String getNomclisession() {
		return nomclisession;
	}

	public void setNomclisession(String nomclisession) {
		this.nomclisession = nomclisession;
	}

	public String getPostnomclisession() {
		return postnomclisession;
	}

	public void setPostnomclisession(String postnomclisession) {
		this.postnomclisession = postnomclisession;
	}

	public String getPrenomclisession() {
		return prenomclisession;
	}

	public void setPrenomclisession(String prenomclisession) {
		this.prenomclisession = prenomclisession;
	}

	public String getDatenaissanceclisession() {
		return datenaissanceclisession;
	}

	public void setDatenaissanceclisession(String datenaissanceclisession) {
		this.datenaissanceclisession = datenaissanceclisession;
	}

	public String getTypepieceidentitesession() {
		return typepieceidentitesession;
	}

	public void setTypepieceidentitesession(String typepieceidentitesession) {
		this.typepieceidentitesession = typepieceidentitesession;
	}

	public String getNumpieceidentitesession() {
		return numpieceidentitesession;
	}

	public void setNumpieceidentitesession(String numpieceidentitesession) {
		this.numpieceidentitesession = numpieceidentitesession;
	}

	public String getSexeclisession() {
		return sexeclisession;
	}

	public void setSexeclisession(String sexeclisession) {
		this.sexeclisession = sexeclisession;
	}

	public String getNationaliteclisession() {
		return nationaliteclisession;
	}

	public void setNationaliteclisession(String nationaliteclisession) {
		this.nationaliteclisession = nationaliteclisession;
	}

	public String getEtatcivilclisession() {
		return etatcivilclisession;
	}

	public void setEtatcivilclisession(String etatcivilclisession) {
		this.etatcivilclisession = etatcivilclisession;
	}

	public String getNomsconjointclisession() {
		return nomsconjointclisession;
	}

	public void setNomsconjointclisession(String nomsconjointclisession) {
		this.nomsconjointclisession = nomsconjointclisession;
	}

	public String getDatenaissanceconjointclisession() {
		return datenaissanceconjointclisession;
	}

	public void setDatenaissanceconjointclisession(
			String datenaissanceconjointclisession) {
		this.datenaissanceconjointclisession = datenaissanceconjointclisession;
	}

	public String getAdressedomicileclisession() {
		return adressedomicileclisession;
	}

	public void setAdressedomicileclisession(String adressedomicileclisession) {
		this.adressedomicileclisession = adressedomicileclisession;
	}

	public String getTelephoneclisession() {
		return telephoneclisession;
	}

	public void setTelephoneclisession(String telephoneclisession) {
		this.telephoneclisession = telephoneclisession;
	}

	public String getEmailclisession() {
		return emailclisession;
	}

	public void setEmailclisession(String emailclisession) {
		this.emailclisession = emailclisession;
	}

	public String getTelephoneconjointclisession() {
		return telephoneconjointclisession;
	}

	public void setTelephoneconjointclisession(
			String telephoneconjointclisession) {
		this.telephoneconjointclisession = telephoneconjointclisession;
	}

	// B) pour information Bussness client demandeur
	private int idbussnessclientildemande;
	private String nombusinesssession;
	private String adressebusinesssession;
	private int dureebussnessadressesession;
	private int dureebussnesssession;
	private String typebussnesssession;
	private String formjuridiquesession;
	private String secteuractivitesession;
	private String docadminsession;

	public int getIdbussnessclientildemande() {
		return idbussnessclientildemande;
	}

	public void setIdbussnessclientildemande(int idbussnessclientildemande) {
		this.idbussnessclientildemande = idbussnessclientildemande;
	}

	public String getDocadminsession() {
		return docadminsession;
	}

	public void setDocadminsession(String docadminsession) {
		this.docadminsession = docadminsession;
	}

	public String getNombusinesssession() {
		return nombusinesssession;
	}

	public void setNombusinesssession(String nombusinesssession) {
		this.nombusinesssession = nombusinesssession;
	}

	public String getAdressebusinesssession() {
		return adressebusinesssession;
	}

	public void setAdressebusinesssession(String adressebusinesssession) {
		this.adressebusinesssession = adressebusinesssession;
	}

	public int getDureebussnessadressesession() {
		return dureebussnessadressesession;
	}

	public void setDureebussnessadressesession(int dureebussnessadressesession) {
		this.dureebussnessadressesession = dureebussnessadressesession;
	}

	public int getDureebussnesssession() {
		return dureebussnesssession;
	}

	public void setDureebussnesssession(int dureebussnesssession) {
		this.dureebussnesssession = dureebussnesssession;
	}

	public String getTypebussnesssession() {
		return typebussnesssession;
	}

	public void setTypebussnesssession(String typebussnesssession) {
		this.typebussnesssession = typebussnesssession;
	}

	public String getFormjuridiquesession() {
		return formjuridiquesession;
	}

	public void setFormjuridiquesession(String formjuridiquesession) {
		this.formjuridiquesession = formjuridiquesession;
	}

	public String getSecteuractivitesession() {
		return secteuractivitesession;
	}

	public void setSecteuractivitesession(String secteuractivitesession) {
		this.secteuractivitesession = secteuractivitesession;
	}

	// C) pour information Dossier Credit
	private String iddossokkkkkk;
	private String datedossiersession;
	private double montantdemandesession;
	private int dureepretsession;
	private int capacitepayementmensuelsession;
	private String butInvestissmentsession;
	private String precisionsiautresession;
	private String avoirunautrepretsession;
	private String instututionpretanterieursession;
	private String etatdossiercreditsession;
	private String DossierinitiePar;

	public String getIddossokkkkkk() {
		return iddossokkkkkk;
	}

	public void setIddossokkkkkk(String iddossokkkkkk) {
		this.iddossokkkkkk = iddossokkkkkk;
	}

	public String getDatedossiersession() {
		return datedossiersession;
	}

	public void setDatedossiersession(String datedossiersession) {
		this.datedossiersession = datedossiersession;
	}

	public double getMontantdemandesession() {
		return montantdemandesession;
	}

	public void setMontantdemandesession(double montantdemandesession) {
		this.montantdemandesession = montantdemandesession;
	}

	public int getDureepretsession() {
		return dureepretsession;
	}

	public void setDureepretsession(int dureepretsession) {
		this.dureepretsession = dureepretsession;
	}

	public int getCapacitepayementmensuelsession() {
		return capacitepayementmensuelsession;
	}

	public void setCapacitepayementmensuelsession(
			int capacitepayementmensuelsession) {
		this.capacitepayementmensuelsession = capacitepayementmensuelsession;
	}

	public String getButInvestissmentsession() {
		return butInvestissmentsession;
	}

	public void setButInvestissmentsession(String butInvestissmentsession) {
		this.butInvestissmentsession = butInvestissmentsession;
	}

	public String getPrecisionsiautresession() {
		return precisionsiautresession;
	}

	public void setPrecisionsiautresession(String precisionsiautresession) {
		this.precisionsiautresession = precisionsiautresession;
	}

	public String getAvoirunautrepretsession() {
		return avoirunautrepretsession;
	}

	public void setAvoirunautrepretsession(String avoirunautrepretsession) {
		this.avoirunautrepretsession = avoirunautrepretsession;
	}

	public String getInstututionpretanterieursession() {
		return instututionpretanterieursession;
	}

	public void setInstututionpretanterieursession(
			String instututionpretanterieursession) {
		this.instututionpretanterieursession = instututionpretanterieursession;
	}

	public String getEtatdossiercreditsession() {
		return etatdossiercreditsession;
	}

	public void setEtatdossiercreditsession(String etatdossiercreditsession) {
		this.etatdossiercreditsession = etatdossiercreditsession;
	}

	public String getDossierinitiePar() {
		return DossierinitiePar;
	}

	public void setDossierinitiePar(String dossierinitiePar) {
		DossierinitiePar = dossierinitiePar;
	}

	// D) pour information Recommander par (dossier credit / client demandeur)
	private int idreco;
	private String nomsdrsession;
	private String telephonedrsession;
	private String fonctionrdrsession;
	private String agentmcpopsession;
	private String adressedrsession;
	private String relationdrsession;

	private String nomsdrsession2;
	private String telephonedrsession2;
	private String fonctionrdrsession2;
	private String agentmcpopsession2;
	private String adressedrsession2;
	private String relationdrsession2;

	public int getIdreco() {
		return idreco;
	}

	public void setIdreco(int idreco) {
		this.idreco = idreco;
	}

	public String getNomsdrsession2() {
		return nomsdrsession2;
	}

	public void setNomsdrsession2(String nomsdrsession2) {
		this.nomsdrsession2 = nomsdrsession2;
	}

	public String getTelephonedrsession2() {
		return telephonedrsession2;
	}

	public void setTelephonedrsession2(String telephonedrsession2) {
		this.telephonedrsession2 = telephonedrsession2;
	}

	public String getFonctionrdrsession2() {
		return fonctionrdrsession2;
	}

	public void setFonctionrdrsession2(String fonctionrdrsession2) {
		this.fonctionrdrsession2 = fonctionrdrsession2;
	}

	public String getAgentmcpopsession2() {
		return agentmcpopsession2;
	}

	public void setAgentmcpopsession2(String agentmcpopsession2) {
		this.agentmcpopsession2 = agentmcpopsession2;
	}

	public String getAdressedrsession2() {
		return adressedrsession2;
	}

	public void setAdressedrsession2(String adressedrsession2) {
		this.adressedrsession2 = adressedrsession2;
	}

	public String getRelationdrsession2() {
		return relationdrsession2;
	}

	public void setRelationdrsession2(String relationdrsession2) {
		this.relationdrsession2 = relationdrsession2;
	}

	public String getNomsdrsession() {
		return nomsdrsession;
	}

	public void setNomsdrsession(String nomsdrsession) {
		this.nomsdrsession = nomsdrsession;
	}

	public String getTelephonedrsession() {
		return telephonedrsession;
	}

	public void setTelephonedrsession(String telephonedrsession) {
		this.telephonedrsession = telephonedrsession;
	}

	public String getFonctionrdrsession() {
		return fonctionrdrsession;
	}

	public void setFonctionrdrsession(String fonctionrdrsession) {
		this.fonctionrdrsession = fonctionrdrsession;
	}

	public String getAgentmcpopsession() {
		return agentmcpopsession;
	}

	public void setAgentmcpopsession(String agentmcpopsession) {
		this.agentmcpopsession = agentmcpopsession;
	}

	public String getAdressedrsession() {
		return adressedrsession;
	}

	public void setAdressedrsession(String adressedrsession) {
		this.adressedrsession = adressedrsession;
	}

	public String getRelationdrsession() {
		return relationdrsession;
	}

	public void setRelationdrsession(String relationdrsession) {
		this.relationdrsession = relationdrsession;
	}

	// E) pour information Assignation dossier credit
	private int idassignation;
	private String assbranchesession;
	private String asssuperviseursession;
	private String assproduitcreditsession;
	private String assanalystedossiercreditsession;
	private String assignateursession;

	public int getIdassignation() {
		return idassignation;
	}

	public void setIdassignation(int idassignation) {
		this.idassignation = idassignation;
	}

	public String getAssbranchesession() {
		return assbranchesession;
	}

	public void setAssbranchesession(String assbranchesession) {
		this.assbranchesession = assbranchesession;
	}

	public String getAsssuperviseursession() {
		return asssuperviseursession;
	}

	public void setAsssuperviseursession(String asssuperviseursession) {
		this.asssuperviseursession = asssuperviseursession;
	}

	public String getAssproduitcreditsession() {
		return assproduitcreditsession;
	}

	public void setAssproduitcreditsession(String assproduitcreditsession) {
		this.assproduitcreditsession = assproduitcreditsession;
	}

	public String getAssanalystedossiercreditsession() {
		return assanalystedossiercreditsession;
	}

	public void setAssanalystedossiercreditsession(
			String assanalystedossiercreditsession) {
		this.assanalystedossiercreditsession = assanalystedossiercreditsession;
	}

	public String getAssignateursession() {
		return assignateursession;
	}

	public void setAssignateursession(String assignateursession) {
		this.assignateursession = assignateursession;
	}

	// -----------------------------------------------------------------------------------------------------
	// F) pour information Residence famille
	private int idresidencefamilliallesession;
	private int fresidenceactueldepuissession;
	private String fproprietesession;
	private String fdatevisitesession;
	private String heurevisitesession;
	private String fnomsbailleurssession;

	public int getIdresidencefamilliallesession() {
		return idresidencefamilliallesession;
	}

	public void setIdresidencefamilliallesession(
			int idresidencefamilliallesession) {
		this.idresidencefamilliallesession = idresidencefamilliallesession;
	}

	public int getFresidenceactueldepuissession() {
		return fresidenceactueldepuissession;
	}

	public void setFresidenceactueldepuissession(
			int fresidenceactueldepuissession) {
		this.fresidenceactueldepuissession = fresidenceactueldepuissession;
	}

	public String getFproprietesession() {
		return fproprietesession;
	}

	public void setFproprietesession(String fproprietesession) {
		this.fproprietesession = fproprietesession;
	}

	public String getFdatevisitesession() {
		return fdatevisitesession;
	}

	public void setFdatevisitesession(String fdatevisitesession) {
		this.fdatevisitesession = fdatevisitesession;
	}

	public String getHeurevisitesession() {
		return heurevisitesession;
	}

	public void setHeurevisitesession(String heurevisitesession) {
		this.heurevisitesession = heurevisitesession;
	}

	public String getFnomsbailleurssession() {
		return fnomsbailleurssession;
	}

	public void setFnomsbailleurssession(String fnomsbailleurssession) {
		this.fnomsbailleurssession = fnomsbailleurssession;
	}

	// F) pour information Revenu conjoint
	private int idrevenuconjointsession;
	private String libellesocietercsession;
	private String adressercsession;
	private String postercsession;
	private String salairenetrcsession;
	private String ancienetercsession;
	private String commentairercsession;

	public int getIdrevenuconjointsession() {
		return idrevenuconjointsession;
	}

	public void setIdrevenuconjointsession(int idrevenuconjointsession) {
		this.idrevenuconjointsession = idrevenuconjointsession;
	}

	public String getLibellesocietercsession() {
		return libellesocietercsession;
	}

	public void setLibellesocietercsession(String libellesocietercsession) {
		this.libellesocietercsession = libellesocietercsession;
	}

	public String getAdressercsession() {
		return adressercsession;
	}

	public void setAdressercsession(String adressercsession) {
		this.adressercsession = adressercsession;
	}

	public String getPostercsession() {
		return postercsession;
	}

	public void setPostercsession(String postercsession) {
		this.postercsession = postercsession;
	}

	public String getSalairenetrcsession() {
		return salairenetrcsession;
	}

	public void setSalairenetrcsession(String salairenetrcsession) {
		this.salairenetrcsession = salairenetrcsession;
	}

	public String getAncienetercsession() {
		return ancienetercsession;
	}

	public void setAncienetercsession(String ancienetercsession) {
		this.ancienetercsession = ancienetercsession;
	}

	public String getCommentairercsession() {
		return commentairercsession;
	}

	public void setCommentairercsession(String commentairercsession) {
		this.commentairercsession = commentairercsession;
	}

	// F) pour information reference a la residence
	private int idrr;
	private String nomsrr;
	private String telephonerr;
	private String relationrr;

	public int getIdrr() {
		return idrr;
	}

	public void setIdrr(int idrr) {
		this.idrr = idrr;
	}

	public String getNomsrr() {
		return nomsrr;
	}

	public void setNomsrr(String nomsrr) {
		this.nomsrr = nomsrr;
	}

	public String getTelephonerr() {
		return telephonerr;
	}

	public void setTelephonerr(String telephonerr) {
		this.telephonerr = telephonerr;
	}

	public String getRelationrr() {
		return relationrr;
	}

	public void setRelationrr(String relationrr) {
		this.relationrr = relationrr;
	}

	// pour depense familliale
	private int iddepensefamilliale;
	private int nourriturevalue;
	private int combustiblevalue;
	private int loyervalue;
	private int transportvalue;
	private int communicationvalue;
	private int habillementvalue;
	private int educationvalue;
	private int servicesvalue;
	private int soinsvalue;
	private int autresdepensevalue;
	private int imprevusvalue;
	private int loisirsvalue;
	private int autresdepenseprivevalue;
	private int contributionclientdemandeurvalue;

	public int getContributionclientdemandeurvalue() {
		return contributionclientdemandeurvalue;
	}

	public void setContributionclientdemandeurvalue(
			int contributionclientdemandeurvalue) {
		this.contributionclientdemandeurvalue = contributionclientdemandeurvalue;
	}

	public int getIddepensefamilliale() {
		return iddepensefamilliale;
	}

	public void setIddepensefamilliale(int iddepensefamilliale) {
		this.iddepensefamilliale = iddepensefamilliale;
	}

	public int getNourriturevalue() {
		return nourriturevalue;
	}

	public void setNourriturevalue(int nourriturevalue) {
		this.nourriturevalue = nourriturevalue;
	}

	public int getCombustiblevalue() {
		return combustiblevalue;
	}

	public void setCombustiblevalue(int combustiblevalue) {
		this.combustiblevalue = combustiblevalue;
	}

	public int getLoyervalue() {
		return loyervalue;
	}

	public void setLoyervalue(int loyervalue) {
		this.loyervalue = loyervalue;
	}

	public int getTransportvalue() {
		return transportvalue;
	}

	public void setTransportvalue(int transportvalue) {
		this.transportvalue = transportvalue;
	}

	public int getCommunicationvalue() {
		return communicationvalue;
	}

	public void setCommunicationvalue(int communicationvalue) {
		this.communicationvalue = communicationvalue;
	}

	public int getHabillementvalue() {
		return habillementvalue;
	}

	public void setHabillementvalue(int habillementvalue) {
		this.habillementvalue = habillementvalue;
	}

	public int getEducationvalue() {
		return educationvalue;
	}

	public void setEducationvalue(int educationvalue) {
		this.educationvalue = educationvalue;
	}

	public int getServicesvalue() {
		return servicesvalue;
	}

	public void setServicesvalue(int servicesvalue) {
		this.servicesvalue = servicesvalue;
	}

	public int getSoinsvalue() {
		return soinsvalue;
	}

	public void setSoinsvalue(int soinsvalue) {
		this.soinsvalue = soinsvalue;
	}

	public int getAutresdepensevalue() {
		return autresdepensevalue;
	}

	public void setAutresdepensevalue(int autresdepensevalue) {
		this.autresdepensevalue = autresdepensevalue;
	}

	public int getImprevusvalue() {
		return imprevusvalue;
	}

	public void setImprevusvalue(int imprevusvalue) {
		this.imprevusvalue = imprevusvalue;
	}

	public int getLoisirsvalue() {
		return loisirsvalue;
	}

	public void setLoisirsvalue(int loisirsvalue) {
		this.loisirsvalue = loisirsvalue;
	}

	public int getAutresdepenseprivevalue() {
		return autresdepenseprivevalue;
	}

	public void setAutresdepenseprivevalue(int autresdepenseprivevalue) {
		this.autresdepenseprivevalue = autresdepenseprivevalue;
	}

	// pour Bussness 1 client demandeur
	private int idbussnessclientb1;
	private int activitedepuisb1;
	private int lieudepuisb1;
	private int nbrpointventeb1;
	private String proprietelocauxb1;
	private String nombailleurb1;
	private String datevisiteb1;
	private String heurevisiteb1;

	public int getIdbussnessclientb1() {
		return idbussnessclientb1;
	}

	public void setIdbussnessclientb1(int idbussnessclientb1) {
		this.idbussnessclientb1 = idbussnessclientb1;
	}

	public int getActivitedepuisb1() {
		return activitedepuisb1;
	}

	public void setActivitedepuisb1(int activitedepuisb1) {
		this.activitedepuisb1 = activitedepuisb1;
	}

	public int getLieudepuisb1() {
		return lieudepuisb1;
	}

	public void setLieudepuisb1(int lieudepuisb1) {
		this.lieudepuisb1 = lieudepuisb1;
	}

	public int getNbrpointventeb1() {
		return nbrpointventeb1;
	}

	public void setNbrpointventeb1(int nbrpointventeb1) {
		this.nbrpointventeb1 = nbrpointventeb1;
	}

	public String getProprietelocauxb1() {
		return proprietelocauxb1;
	}

	public void setProprietelocauxb1(String proprietelocauxb1) {
		this.proprietelocauxb1 = proprietelocauxb1;
	}

	public String getNombailleurb1() {
		return nombailleurb1;
	}

	public void setNombailleurb1(String nombailleurb1) {
		this.nombailleurb1 = nombailleurb1;
	}

	public String getDatevisiteb1() {
		return datevisiteb1;
	}

	public void setDatevisiteb1(String datevisiteb1) {
		this.datevisiteb1 = datevisiteb1;
	}

	public String getHeurevisiteb1() {
		return heurevisiteb1;
	}

	public void setHeurevisiteb1(String heurevisiteb1) {
		this.heurevisiteb1 = heurevisiteb1;
	}

	// pour Actif et Dette
	private int idactifdette;
	private int cashbusiness;
	private int cashbanque;
	private int dettecourterme;
	private int meubles;
	private int vehicule;
	private int autresactifetdette;
	private int cashmaison;
	private int creances;
	private int dettlongterme;
	private int equipementoutils;
	private int localcommercial;

	public int getIdactifdette() {
		return idactifdette;
	}

	public void setIdactifdette(int idactifdette) {
		this.idactifdette = idactifdette;
	}

	public int getCashbusiness() {
		return cashbusiness;
	}

	public void setCashbusiness(int cashbusiness) {
		this.cashbusiness = cashbusiness;
	}

	public int getCashbanque() {
		return cashbanque;
	}

	public void setCashbanque(int cashbanque) {
		this.cashbanque = cashbanque;
	}

	public int getDettecourterme() {
		return dettecourterme;
	}

	public void setDettecourterme(int dettecourterme) {
		this.dettecourterme = dettecourterme;
	}

	public int getMeubles() {
		return meubles;
	}

	public void setMeubles(int meubles) {
		this.meubles = meubles;
	}

	public int getVehicule() {
		return vehicule;
	}

	public void setVehicule(int vehicule) {
		this.vehicule = vehicule;
	}

	public int getAutresactifetdette() {
		return autresactifetdette;
	}

	public void setAutresactifetdette(int autresactifetdette) {
		this.autresactifetdette = autresactifetdette;
	}

	public int getCashmaison() {
		return cashmaison;
	}

	public void setCashmaison(int cashmaison) {
		this.cashmaison = cashmaison;
	}

	public int getCreances() {
		return creances;
	}

	public void setCreances(int creances) {
		this.creances = creances;
	}

	public int getDettlongterme() {
		return dettlongterme;
	}

	public void setDettlongterme(int dettlongterme) {
		this.dettlongterme = dettlongterme;
	}

	public int getEquipementoutils() {
		return equipementoutils;
	}

	public void setEquipementoutils(int equipementoutils) {
		this.equipementoutils = equipementoutils;
	}

	public int getLocalcommercial() {
		return localcommercial;
	}

	public void setLocalcommercial(int localcommercial) {
		this.localcommercial = localcommercial;
	}

	// pour risques principaux bussness1
	private int idrisquesprincipauxb11;
	private String libellerisqueprincipauxb11;
	private String mitigationrisquesprincipaux;

	public int getIdrisquesprincipauxb11() {
		return idrisquesprincipauxb11;
	}

	public void setIdrisquesprincipauxb11(int idrisquesprincipauxb11) {
		this.idrisquesprincipauxb11 = idrisquesprincipauxb11;
	}

	public String getLibellerisqueprincipauxb11() {
		return libellerisqueprincipauxb11;
	}

	public void setLibellerisqueprincipauxb11(String libellerisqueprincipauxb11) {
		this.libellerisqueprincipauxb11 = libellerisqueprincipauxb11;
	}

	public String getMitigationrisquesprincipaux() {
		return mitigationrisquesprincipaux;
	}

	public void setMitigationrisquesprincipaux(
			String mitigationrisquesprincipaux) {
		this.mitigationrisquesprincipaux = mitigationrisquesprincipaux;
	}

	// pour Vente et Achat
	private int idventeachatwf;
	private String registreventevariableav;
	private int nbrjourouvrableparmoisvariableav;
	private String categorievjlundivariableav;
	private int montantvjlundivariableav;
	private String categorievjmardivariableav;
	private int montantvjmardivariableav;
	private String categorievjmercredivariableav;
	private int montantvjmercredivariableav;
	private String categorievjjeudivariableav;
	private int montantvjjeudivariableav;
	private String categorievjvendredivariableav;
	private int montantvjvendredivariableav;
	private String categorievjsamedivariableav;
	private int montantvjsamedivariableav;
	private String categorievjdimanchevariableav;
	private int montantvjdimanchevariableav;
	private int totalsemainevariableav;

	private String dernierjour1variableav;
	private int ventedernierjour1variableav;
	private String dernierjour2variableav;
	private int ventedernierjour2variableav;
	private String dernierjour3variableav;
	private int ventedernierjour3variableav;
	private int ventejourTodaysvariableav;
	private double ventemensuelminmaxvariableav;
	private double ventemensueltroisdernierjoursvariableav;
	private String jour1;
	private String jour2;
	private String jour3;
	private double mntjour1;
	private double mntjour2;
	private double mntjour3;
	private double mntdays;
	private double ventetotaljour123;
	private String commentaiteva;

	public int getIdventeachatwf() {
		return idventeachatwf;
	}

	public void setIdventeachatwf(int idventeachatwf) {
		this.idventeachatwf = idventeachatwf;
	}

	public String getCommentaiteva() {
		return commentaiteva;
	}

	public void setCommentaiteva(String commentaiteva) {
		this.commentaiteva = commentaiteva;
	}

	public String getJour1() {
		return jour1;
	}

	public void setJour1(String jour1) {
		this.jour1 = jour1;
	}

	public String getJour2() {
		return jour2;
	}

	public void setJour2(String jour2) {
		this.jour2 = jour2;
	}

	public String getJour3() {
		return jour3;
	}

	public void setJour3(String jour3) {
		this.jour3 = jour3;
	}

	public double getMntjour1() {
		return mntjour1;
	}

	public void setMntjour1(double mntjour1) {
		this.mntjour1 = mntjour1;
	}

	public double getMntjour2() {
		return mntjour2;
	}

	public void setMntjour2(double mntjour2) {
		this.mntjour2 = mntjour2;
	}

	public double getMntjour3() {
		return mntjour3;
	}

	public void setMntjour3(double mntjour3) {
		this.mntjour3 = mntjour3;
	}

	public double getMntdays() {
		return mntdays;
	}

	public void setMntdays(double mntdays) {
		this.mntdays = mntdays;
	}

	public double getVentetotaljour123() {
		return ventetotaljour123;
	}

	public void setVentetotaljour123(double ventetotaljour123) {
		this.ventetotaljour123 = ventetotaljour123;
	}

	public String getRegistreventevariableav() {
		return registreventevariableav;
	}

	public void setRegistreventevariableav(String registreventevariableav) {
		this.registreventevariableav = registreventevariableav;
	}

	public int getNbrjourouvrableparmoisvariableav() {
		return nbrjourouvrableparmoisvariableav;
	}

	public void setNbrjourouvrableparmoisvariableav(
			int nbrjourouvrableparmoisvariableav) {
		this.nbrjourouvrableparmoisvariableav = nbrjourouvrableparmoisvariableav;
	}

	public String getCategorievjlundivariableav() {
		return categorievjlundivariableav;
	}

	public void setCategorievjlundivariableav(String categorievjlundivariableav) {
		this.categorievjlundivariableav = categorievjlundivariableav;
	}

	public int getMontantvjlundivariableav() {
		return montantvjlundivariableav;
	}

	public void setMontantvjlundivariableav(int montantvjlundivariableav) {
		this.montantvjlundivariableav = montantvjlundivariableav;
	}

	public String getCategorievjmardivariableav() {
		return categorievjmardivariableav;
	}

	public void setCategorievjmardivariableav(String categorievjmardivariableav) {
		this.categorievjmardivariableav = categorievjmardivariableav;
	}

	public int getMontantvjmardivariableav() {
		return montantvjmardivariableav;
	}

	public void setMontantvjmardivariableav(int montantvjmardivariableav) {
		this.montantvjmardivariableav = montantvjmardivariableav;
	}

	public String getCategorievjmercredivariableav() {
		return categorievjmercredivariableav;
	}

	public void setCategorievjmercredivariableav(
			String categorievjmercredivariableav) {
		this.categorievjmercredivariableav = categorievjmercredivariableav;
	}

	public int getMontantvjmercredivariableav() {
		return montantvjmercredivariableav;
	}

	public void setMontantvjmercredivariableav(int montantvjmercredivariableav) {
		this.montantvjmercredivariableav = montantvjmercredivariableav;
	}

	public String getCategorievjjeudivariableav() {
		return categorievjjeudivariableav;
	}

	public void setCategorievjjeudivariableav(String categorievjjeudivariableav) {
		this.categorievjjeudivariableav = categorievjjeudivariableav;
	}

	public int getMontantvjjeudivariableav() {
		return montantvjjeudivariableav;
	}

	public void setMontantvjjeudivariableav(int montantvjjeudivariableav) {
		this.montantvjjeudivariableav = montantvjjeudivariableav;
	}

	public String getCategorievjvendredivariableav() {
		return categorievjvendredivariableav;
	}

	public void setCategorievjvendredivariableav(
			String categorievjvendredivariableav) {
		this.categorievjvendredivariableav = categorievjvendredivariableav;
	}

	public int getMontantvjvendredivariableav() {
		return montantvjvendredivariableav;
	}

	public void setMontantvjvendredivariableav(int montantvjvendredivariableav) {
		this.montantvjvendredivariableav = montantvjvendredivariableav;
	}

	public String getCategorievjsamedivariableav() {
		return categorievjsamedivariableav;
	}

	public void setCategorievjsamedivariableav(
			String categorievjsamedivariableav) {
		this.categorievjsamedivariableav = categorievjsamedivariableav;
	}

	public int getMontantvjsamedivariableav() {
		return montantvjsamedivariableav;
	}

	public void setMontantvjsamedivariableav(int montantvjsamedivariableav) {
		this.montantvjsamedivariableav = montantvjsamedivariableav;
	}

	public String getCategorievjdimanchevariableav() {
		return categorievjdimanchevariableav;
	}

	public void setCategorievjdimanchevariableav(
			String categorievjdimanchevariableav) {
		this.categorievjdimanchevariableav = categorievjdimanchevariableav;
	}

	public int getMontantvjdimanchevariableav() {
		return montantvjdimanchevariableav;
	}

	public void setMontantvjdimanchevariableav(int montantvjdimanchevariableav) {
		this.montantvjdimanchevariableav = montantvjdimanchevariableav;
	}

	public int getTotalsemainevariableav() {
		return totalsemainevariableav;
	}

	public void setTotalsemainevariableav(int totalsemainevariableav) {
		this.totalsemainevariableav = totalsemainevariableav;
	}

	public String getDernierjour1variableav() {
		return dernierjour1variableav;
	}

	public void setDernierjour1variableav(String dernierjour1variableav) {
		this.dernierjour1variableav = dernierjour1variableav;
	}

	public int getVentedernierjour1variableav() {
		return ventedernierjour1variableav;
	}

	public void setVentedernierjour1variableav(int ventedernierjour1variableav) {
		this.ventedernierjour1variableav = ventedernierjour1variableav;
	}

	public String getDernierjour2variableav() {
		return dernierjour2variableav;
	}

	public void setDernierjour2variableav(String dernierjour2variableav) {
		this.dernierjour2variableav = dernierjour2variableav;
	}

	public int getVentedernierjour2variableav() {
		return ventedernierjour2variableav;
	}

	public void setVentedernierjour2variableav(int ventedernierjour2variableav) {
		this.ventedernierjour2variableav = ventedernierjour2variableav;
	}

	public String getDernierjour3variableav() {
		return dernierjour3variableav;
	}

	public void setDernierjour3variableav(String dernierjour3variableav) {
		this.dernierjour3variableav = dernierjour3variableav;
	}

	public int getVentedernierjour3variableav() {
		return ventedernierjour3variableav;
	}

	public void setVentedernierjour3variableav(int ventedernierjour3variableav) {
		this.ventedernierjour3variableav = ventedernierjour3variableav;
	}

	public int getVentejourTodaysvariableav() {
		return ventejourTodaysvariableav;
	}

	public void setVentejourTodaysvariableav(int ventejourTodaysvariableav) {
		this.ventejourTodaysvariableav = ventejourTodaysvariableav;
	}

	public double getVentemensuelminmaxvariableav() {
		return ventemensuelminmaxvariableav;
	}

	public void setVentemensuelminmaxvariableav(
			double ventemensuelminmaxvariableav) {
		this.ventemensuelminmaxvariableav = ventemensuelminmaxvariableav;
	}

	public double getVentemensueltroisdernierjoursvariableav() {
		return ventemensueltroisdernierjoursvariableav;
	}

	public void setVentemensueltroisdernierjoursvariableav(
			double ventemensueltroisdernierjoursvariableav) {
		this.ventemensueltroisdernierjoursvariableav = ventemensueltroisdernierjoursvariableav;
	}

	// pour saisonnalisation bussness 2
	private int idsv;
	private double montantjanviersv;
	private double montantfevriersv;
	private double montantmarssv;
	private double montantavrilsv;
	private double montantmaisv;
	private double montantjuinsv;
	private double montantjuilletsv;
	private double montantaoutsv;
	private double montantseptembresv;
	private double montantoctobresv;
	private double montantnovembresv;
	private double montantdecembresv;

	public int getIdsv() {
		return idsv;
	}

	public void setIdsv(int idsv) {
		this.idsv = idsv;
	}

	public double getMontantjanviersv() {
		return montantjanviersv;
	}

	public void setMontantjanviersv(double montantjanviersv) {
		this.montantjanviersv = montantjanviersv;
	}

	public double getMontantfevriersv() {
		return montantfevriersv;
	}

	public void setMontantfevriersv(double montantfevriersv) {
		this.montantfevriersv = montantfevriersv;
	}

	public double getMontantmarssv() {
		return montantmarssv;
	}

	public void setMontantmarssv(double montantmarssv) {
		this.montantmarssv = montantmarssv;
	}

	public double getMontantavrilsv() {
		return montantavrilsv;
	}

	public void setMontantavrilsv(double montantavrilsv) {
		this.montantavrilsv = montantavrilsv;
	}

	public double getMontantmaisv() {
		return montantmaisv;
	}

	public void setMontantmaisv(double montantmaisv) {
		this.montantmaisv = montantmaisv;
	}

	public double getMontantjuinsv() {
		return montantjuinsv;
	}

	public void setMontantjuinsv(double montantjuinsv) {
		this.montantjuinsv = montantjuinsv;
	}

	public double getMontantjuilletsv() {
		return montantjuilletsv;
	}

	public void setMontantjuilletsv(double montantjuilletsv) {
		this.montantjuilletsv = montantjuilletsv;
	}

	public double getMontantaoutsv() {
		return montantaoutsv;
	}

	public void setMontantaoutsv(double montantaoutsv) {
		this.montantaoutsv = montantaoutsv;
	}

	public double getMontantseptembresv() {
		return montantseptembresv;
	}

	public void setMontantseptembresv(double montantseptembresv) {
		this.montantseptembresv = montantseptembresv;
	}

	public double getMontantoctobresv() {
		return montantoctobresv;
	}

	public void setMontantoctobresv(double montantoctobresv) {
		this.montantoctobresv = montantoctobresv;
	}

	public double getMontantnovembresv() {
		return montantnovembresv;
	}

	public void setMontantnovembresv(double montantnovembresv) {
		this.montantnovembresv = montantnovembresv;
	}

	public double getMontantdecembresv() {
		return montantdecembresv;
	}

	public void setMontantdecembresv(double montantdecembresv) {
		this.montantdecembresv = montantdecembresv;
	}

	// pour Reference bussness 2

	private int idrefb2;
	private String nomsreferenceb2;
	private String typerelationb2;
	private String telephoneb2;

	public int getIdrefb2() {
		return idrefb2;
	}

	public void setIdrefb2(int idrefb2) {
		this.idrefb2 = idrefb2;
	}

	public String getNomsreferenceb2() {
		return nomsreferenceb2;
	}

	public void setNomsreferenceb2(String nomsreferenceb2) {
		this.nomsreferenceb2 = nomsreferenceb2;
	}

	public String getTyperelationb2() {
		return typerelationb2;
	}

	public void setTyperelationb2(String typerelationb2) {
		this.typerelationb2 = typerelationb2;
	}

	public String getTelephoneb2() {
		return telephoneb2;
	}

	public void setTelephoneb2(String telephoneb2) {
		this.telephoneb2 = telephoneb2;
	}

	// pour information du garant
	private int idgarant;
	private String nomg;
	private String postnomg;
	private String prenomg;
	private String etatcivilg;
	private String sexeg;
	private String datenaissanceg;
	private String telephoneg;
	private String emailg;
	private String typepieceidentiteg;
	private String numcartepieceidentiteg;
	private String nomsconjointg;
	private String telephoneconjointg;
	private String relationavecclientg;
	private String proprietemaisong;
	private String activiteg;
	private String revenug;
	private String adresseg;
	private String provinceg;

	private double chiffreaffaireg;
	private double cmvg;
	private double profilbruteg;
	private double totdepenseopg;
	private double Profilnetg;
	private double totalautresrevenusg;
	private double totaldepensepriveg;
	private double capacitepaiementg;
	private String contrattravailg;
	private String bulletinpaig;
	private String carteserviceg;
	private double salairem1g;
	private double salairem2g;
	private double salairem3g;
	private double totalautresavantagesg;
	private double salairemoyeng;
	private int numcbsg;
	private String nomsconjointgarantg;
	private String adresseactivitegarantg;
	private String adressecodebiteur;
	private String telephonecodebiteur;

	public String getAdressecodebiteur() {
		return adressecodebiteur;
	}

	public void setAdressecodebiteur(String adressecodebiteur) {
		this.adressecodebiteur = adressecodebiteur;
	}

	public String getTelephonecodebiteur() {
		return telephonecodebiteur;
	}

	public void setTelephonecodebiteur(String telephonecodebiteur) {
		this.telephonecodebiteur = telephonecodebiteur;
	}

	public int getIdgarant() {
		return idgarant;
	}

	public void setIdgarant(int idgarant) {
		this.idgarant = idgarant;
	}

	public int getNumcbsg() {
		return numcbsg;
	}

	public void setNumcbsg(int numcbsg) {
		this.numcbsg = numcbsg;
	}

	public String getNomsconjointgarantg() {
		return nomsconjointgarantg;
	}

	public void setNomsconjointgarantg(String nomsconjointgarantg) {
		this.nomsconjointgarantg = nomsconjointgarantg;
	}

	public String getAdresseactivitegarantg() {
		return adresseactivitegarantg;
	}

	public void setAdresseactivitegarantg(String adresseactivitegarantg) {
		this.adresseactivitegarantg = adresseactivitegarantg;
	}

	public double getChiffreaffaireg() {
		return chiffreaffaireg;
	}

	public void setChiffreaffaireg(double chiffreaffaireg) {
		this.chiffreaffaireg = chiffreaffaireg;
	}

	public double getCmvg() {
		return cmvg;
	}

	public void setCmvg(double cmvg) {
		this.cmvg = cmvg;
	}

	public double getProfilbruteg() {
		return profilbruteg;
	}

	public void setProfilbruteg(double profilbruteg) {
		this.profilbruteg = profilbruteg;
	}

	public double getTotdepenseopg() {
		return totdepenseopg;
	}

	public void setTotdepenseopg(double totdepenseopg) {
		this.totdepenseopg = totdepenseopg;
	}

	public double getProfilnetg() {
		return Profilnetg;
	}

	public void setProfilnetg(double profilnetg) {
		Profilnetg = profilnetg;
	}

	public double getTotalautresrevenusg() {
		return totalautresrevenusg;
	}

	public void setTotalautresrevenusg(double totalautresrevenusg) {
		this.totalautresrevenusg = totalautresrevenusg;
	}

	public double getTotaldepensepriveg() {
		return totaldepensepriveg;
	}

	public void setTotaldepensepriveg(double totaldepensepriveg) {
		this.totaldepensepriveg = totaldepensepriveg;
	}

	public double getCapacitepaiementg() {
		return capacitepaiementg;
	}

	public void setCapacitepaiementg(double capacitepaiementg) {
		this.capacitepaiementg = capacitepaiementg;
	}

	public String getContrattravailg() {
		return contrattravailg;
	}

	public void setContrattravailg(String contrattravailg) {
		this.contrattravailg = contrattravailg;
	}

	public String getBulletinpaig() {
		return bulletinpaig;
	}

	public void setBulletinpaig(String bulletinpaig) {
		this.bulletinpaig = bulletinpaig;
	}

	public String getCarteserviceg() {
		return carteserviceg;
	}

	public void setCarteserviceg(String carteserviceg) {
		this.carteserviceg = carteserviceg;
	}

	public double getSalairem1g() {
		return salairem1g;
	}

	public void setSalairem1g(double salairem1g) {
		this.salairem1g = salairem1g;
	}

	public double getSalairem2g() {
		return salairem2g;
	}

	public void setSalairem2g(double salairem2g) {
		this.salairem2g = salairem2g;
	}

	public double getSalairem3g() {
		return salairem3g;
	}

	public void setSalairem3g(double salairem3g) {
		this.salairem3g = salairem3g;
	}

	public double getTotalautresavantagesg() {
		return totalautresavantagesg;
	}

	public void setTotalautresavantagesg(double totalautresavantagesg) {
		this.totalautresavantagesg = totalautresavantagesg;
	}

	public double getSalairemoyeng() {
		return salairemoyeng;
	}

	public void setSalairemoyeng(double salairemoyeng) {
		this.salairemoyeng = salairemoyeng;
	}

	public String getNomg() {
		return nomg;
	}

	public void setNomg(String nomg) {
		this.nomg = nomg;
	}

	public String getPostnomg() {
		return postnomg;
	}

	public void setPostnomg(String postnomg) {
		this.postnomg = postnomg;
	}

	public String getPrenomg() {
		return prenomg;
	}

	public void setPrenomg(String prenomg) {
		this.prenomg = prenomg;
	}

	public String getEtatcivilg() {
		return etatcivilg;
	}

	public void setEtatcivilg(String etatcivilg) {
		this.etatcivilg = etatcivilg;
	}

	public String getSexeg() {
		return sexeg;
	}

	public void setSexeg(String sexeg) {
		this.sexeg = sexeg;
	}

	public String getDatenaissanceg() {
		return datenaissanceg;
	}

	public void setDatenaissanceg(String datenaissanceg) {
		this.datenaissanceg = datenaissanceg;
	}

	public String getTelephoneg() {
		return telephoneg;
	}

	public void setTelephoneg(String telephoneg) {
		this.telephoneg = telephoneg;
	}

	public String getEmailg() {
		return emailg;
	}

	public void setEmailg(String emailg) {
		this.emailg = emailg;
	}

	public String getTypepieceidentiteg() {
		return typepieceidentiteg;
	}

	public void setTypepieceidentiteg(String typepieceidentiteg) {
		this.typepieceidentiteg = typepieceidentiteg;
	}

	public String getNumcartepieceidentiteg() {
		return numcartepieceidentiteg;
	}

	public void setNumcartepieceidentiteg(String numcartepieceidentiteg) {
		this.numcartepieceidentiteg = numcartepieceidentiteg;
	}

	public String getNomsconjointg() {
		return nomsconjointg;
	}

	public void setNomsconjointg(String nomsconjointg) {
		this.nomsconjointg = nomsconjointg;
	}

	public String getTelephoneconjointg() {
		return telephoneconjointg;
	}

	public void setTelephoneconjointg(String telephoneconjointg) {
		this.telephoneconjointg = telephoneconjointg;
	}

	public String getRelationavecclientg() {
		return relationavecclientg;
	}

	public void setRelationavecclientg(String relationavecclientg) {
		this.relationavecclientg = relationavecclientg;
	}

	public String getProprietemaisong() {
		return proprietemaisong;
	}

	public void setProprietemaisong(String proprietemaisong) {
		this.proprietemaisong = proprietemaisong;
	}

	public String getActiviteg() {
		return activiteg;
	}

	public void setActiviteg(String activiteg) {
		this.activiteg = activiteg;
	}

	public String getRevenug() {
		return revenug;
	}

	public void setRevenug(String revenug) {
		this.revenug = revenug;
	}

	public String getAdresseg() {
		return adresseg;
	}

	public void setAdresseg(String adresseg) {
		this.adresseg = adresseg;
	}

	public String getProvinceg() {
		return provinceg;
	}

	public void setProvinceg(String provinceg) {
		this.provinceg = provinceg;
	}

	// pour comite du dossier credit
	private String datecomitecreditcc;
	private String decisioncomitecc;
	private double montantcreditvalidercc;
	private int nbrecheanciervalidecc;
	private String butpretcc;
	private double fraissmscc;
	private double cautioncc;
	private double fraisdossiercc;
	private double tauxinteretcc;
	private double assurancecc;
	private String membreparticipecc;
	private int nbrmembrecomitecc;

	public String getDatecomitecreditcc() {
		return datecomitecreditcc;
	}

	public void setDatecomitecreditcc(String datecomitecreditcc) {
		this.datecomitecreditcc = datecomitecreditcc;
	}

	public String getDecisioncomitecc() {
		return decisioncomitecc;
	}

	public void setDecisioncomitecc(String decisioncomitecc) {
		this.decisioncomitecc = decisioncomitecc;
	}

	public double getMontantcreditvalidercc() {
		return montantcreditvalidercc;
	}

	public void setMontantcreditvalidercc(double montantcreditvalidercc) {
		this.montantcreditvalidercc = montantcreditvalidercc;
	}

	public int getNbrecheanciervalidecc() {
		return nbrecheanciervalidecc;
	}

	public void setNbrecheanciervalidecc(int nbrecheanciervalidecc) {
		this.nbrecheanciervalidecc = nbrecheanciervalidecc;
	}

	public String getButpretcc() {
		return butpretcc;
	}

	public void setButpretcc(String butpretcc) {
		this.butpretcc = butpretcc;
	}

	public double getFraissmscc() {
		return fraissmscc;
	}

	public void setFraissmscc(double fraissmscc) {
		this.fraissmscc = fraissmscc;
	}

	public double getCautioncc() {
		return cautioncc;
	}

	public void setCautioncc(double cautioncc) {
		this.cautioncc = cautioncc;
	}

	public double getFraisdossiercc() {
		return fraisdossiercc;
	}

	public void setFraisdossiercc(double fraisdossiercc) {
		this.fraisdossiercc = fraisdossiercc;
	}

	public double getTauxinteretcc() {
		return tauxinteretcc;
	}

	public void setTauxinteretcc(double tauxinteretcc) {
		this.tauxinteretcc = tauxinteretcc;
	}

	public double getAssurancecc() {
		return assurancecc;
	}

	public void setAssurancecc(double assurancecc) {
		this.assurancecc = assurancecc;
	}

	public String getMembreparticipecc() {
		return membreparticipecc;
	}

	public void setMembreparticipecc(String membreparticipecc) {
		this.membreparticipecc = membreparticipecc;
	}

	public int getNbrmembrecomitecc() {
		return nbrmembrecomitecc;
	}

	public void setNbrmembrecomitecc(int nbrmembrecomitecc) {
		this.nbrmembrecomitecc = nbrmembrecomitecc;
	}

	private String libellebranchestat;
	private int nbrdossierterminebranche;

	public String getLibellebranchestat() {
		return libellebranchestat;
	}

	public void setLibellebranchestat(String libellebranchestat) {
		this.libellebranchestat = libellebranchestat;
	}

	public int getNbrdossierterminebranche() {
		return nbrdossierterminebranche;
	}

	public void setNbrdossierterminebranche(int nbrdossierterminebranche) {
		this.nbrdossierterminebranche = nbrdossierterminebranche;
	}

	// pour document IL
	private int idfichierdoc;
	private String descriptionfichierdoc;
	private String fichierdoc;
	private String dateenrfichierdoc;

	public String getDateenrfichierdoc() {
		return dateenrfichierdoc;
	}

	public void setDateenrfichierdoc(String dateenrfichierdoc) {
		this.dateenrfichierdoc = dateenrfichierdoc;
	}

	public int getIdfichierdoc() {
		return idfichierdoc;
	}

	public void setIdfichierdoc(int idfichierdoc) {
		this.idfichierdoc = idfichierdoc;
	}

	public String getDescriptionfichierdoc() {
		return descriptionfichierdoc;
	}

	public void setDescriptionfichierdoc(String descriptionfichierdoc) {
		this.descriptionfichierdoc = descriptionfichierdoc;
	}

	public String getFichierdoc() {
		return fichierdoc;
	}

	public void setFichierdoc(String fichierdoc) {
		this.fichierdoc = fichierdoc;
	}

	private String libelleproduitprincipauxpp;
	private double papp;
	private double pvpp;

	public double getPapp() {
		return papp;
	}

	public void setPapp(double papp) {
		this.papp = papp;
	}

	public double getPvpp() {
		return pvpp;
	}

	public void setPvpp(double pvpp) {
		this.pvpp = pvpp;
	}

	public String getLibelleproduitprincipauxpp() {
		return libelleproduitprincipauxpp;
	}

	public void setLibelleproduitprincipauxpp(String libelleproduitprincipauxpp) {
		this.libelleproduitprincipauxpp = libelleproduitprincipauxpp;
	}

	private String produitcreditproposition;
	private int montantproposition;
	private int echeanceproposition;
	private String numdossiercreproposition;
	private String commentaireprop;
	private double mensualite;

	public double getMensualite() {
		return mensualite;
	}

	public void setMensualite(double mensualite) {
		this.mensualite = mensualite;
	}

	public String getCommentaireprop() {
		return commentaireprop;
	}

	public void setCommentaireprop(String commentaireprop) {
		this.commentaireprop = commentaireprop;
	}

	public String getProduitcreditproposition() {
		return produitcreditproposition;
	}

	public void setProduitcreditproposition(String produitcreditproposition) {
		this.produitcreditproposition = produitcreditproposition;
	}

	public int getMontantproposition() {
		return montantproposition;
	}

	public void setMontantproposition(int montantproposition) {
		this.montantproposition = montantproposition;
	}

	public int getEcheanceproposition() {
		return echeanceproposition;
	}

	public void setEcheanceproposition(int echeanceproposition) {
		this.echeanceproposition = echeanceproposition;
	}

	public String getNumdossiercreproposition() {
		return numdossiercreproposition;
	}

	public void setNumdossiercreproposition(String numdossiercreproposition) {
		this.numdossiercreproposition = numdossiercreproposition;
	}

	private String libelleproduitcreditdecisionokkk;
	private String commentairecomitedecision;
	private double tauxcautionmodif;

	public double getTauxcautionmodif() {
		return tauxcautionmodif;
	}

	public void setTauxcautionmodif(double tauxcautionmodif) {
		this.tauxcautionmodif = tauxcautionmodif;
	}

	public String getCommentairecomitedecision() {
		return commentairecomitedecision;
	}

	public void setCommentairecomitedecision(String commentairecomitedecision) {
		this.commentairecomitedecision = commentairecomitedecision;
	}

	public String getLibelleproduitcreditdecisionokkk() {
		return libelleproduitcreditdecisionokkk;
	}

	public void setLibelleproduitcreditdecisionokkk(
			String libelleproduitcreditdecisionokkk) {
		this.libelleproduitcreditdecisionokkk = libelleproduitcreditdecisionokkk;
	}

	private int idcommentairerp;
	private String commentaire1;
	private String commentaire2;
	private String commentaire3;

	public int getIdcommentairerp() {
		return idcommentairerp;
	}

	public void setIdcommentairerp(int idcommentairerp) {
		this.idcommentairerp = idcommentairerp;
	}

	public String getCommentaire1() {
		return commentaire1;
	}

	public void setCommentaire1(String commentaire1) {
		this.commentaire1 = commentaire1;
	}

	public String getCommentaire2() {
		return commentaire2;
	}

	public void setCommentaire2(String commentaire2) {
		this.commentaire2 = commentaire2;
	}

	public String getCommentaire3() {
		return commentaire3;
	}

	public void setCommentaire3(String commentaire3) {
		this.commentaire3 = commentaire3;
	}

	private String nomsresponsablerisque;
	private String appreciationrisque;
	private String commentairerisque;

	public String getNomsresponsablerisque() {
		return nomsresponsablerisque;
	}

	public void setNomsresponsablerisque(String nomsresponsablerisque) {
		this.nomsresponsablerisque = nomsresponsablerisque;
	}

	public String getAppreciationrisque() {
		return appreciationrisque;
	}

	public void setAppreciationrisque(String appreciationrisque) {
		this.appreciationrisque = appreciationrisque;
	}

	public String getCommentairerisque() {
		return commentairerisque;
	}

	public void setCommentairerisque(String commentairerisque) {
		this.commentairerisque = commentairerisque;
	}

	private int idprecomitebm;
	private String nomsbmprecomite;
	private String appreciationbmprecomite;
	private String commentaireprecomite;

	public int getIdprecomitebm() {
		return idprecomitebm;
	}

	public void setIdprecomitebm(int idprecomitebm) {
		this.idprecomitebm = idprecomitebm;
	}

	public String getNomsbmprecomite() {
		return nomsbmprecomite;
	}

	public void setNomsbmprecomite(String nomsbmprecomite) {
		this.nomsbmprecomite = nomsbmprecomite;
	}

	public String getAppreciationbmprecomite() {
		return appreciationbmprecomite;
	}

	public void setAppreciationbmprecomite(String appreciationbmprecomite) {
		this.appreciationbmprecomite = appreciationbmprecomite;
	}

	public String getCommentaireprecomite() {
		return commentaireprecomite;
	}

	public void setCommentaireprecomite(String commentaireprecomite) {
		this.commentaireprecomite = commentaireprecomite;
	}

	// pour membre du groupe lisanga

	private int idclientmembregl;
	private int numclientmembrecbs;
	private String nomsmembregroupe;
	private String postnommembregroupe;
	private String prenommembregroupe;
	private String telephonemembregroupe;
	private String sexemembregroupe;
	private String adressemembregroupe;
	private String categoriemembregroupe;
	private String photomembregroupe;
	private String nomscompletclientlisanga;
	private String etatcivilclilisanga;
	private String datenaissancemembregroupe;
	private String transfertgl;
	private String groupeprovenancegl;
	private String societemembregl;
	private String fonctionsocietemembreg;
	private String adressesocietemembregl;
	private String salairemembregl;
	private String nomsconjointmembregl;
	private String telconjointmembregl;

	public String getSocietemembregl() {
		return societemembregl;
	}

	public void setSocietemembregl(String societemembregl) {
		this.societemembregl = societemembregl;
	}

	public String getFonctionsocietemembreg() {
		return fonctionsocietemembreg;
	}

	public void setFonctionsocietemembreg(String fonctionsocietemembreg) {
		this.fonctionsocietemembreg = fonctionsocietemembreg;
	}

	public String getAdressesocietemembregl() {
		return adressesocietemembregl;
	}

	public void setAdressesocietemembregl(String adressesocietemembregl) {
		this.adressesocietemembregl = adressesocietemembregl;
	}

	public String getSalairemembregl() {
		return salairemembregl;
	}

	public void setSalairemembregl(String salairemembregl) {
		this.salairemembregl = salairemembregl;
	}

	public String getNomsconjointmembregl() {
		return nomsconjointmembregl;
	}

	public void setNomsconjointmembregl(String nomsconjointmembregl) {
		this.nomsconjointmembregl = nomsconjointmembregl;
	}

	public String getTelconjointmembregl() {
		return telconjointmembregl;
	}

	public void setTelconjointmembregl(String telconjointmembregl) {
		this.telconjointmembregl = telconjointmembregl;
	}

	public String getTransfertgl() {
		return transfertgl;
	}

	public void setTransfertgl(String transfertgl) {
		this.transfertgl = transfertgl;
	}

	public String getGroupeprovenancegl() {
		return groupeprovenancegl;
	}

	public void setGroupeprovenancegl(String groupeprovenancegl) {
		this.groupeprovenancegl = groupeprovenancegl;
	}

	public String getDatenaissancemembregroupe() {
		return datenaissancemembregroupe;
	}

	public void setDatenaissancemembregroupe(String datenaissancemembregroupe) {
		this.datenaissancemembregroupe = datenaissancemembregroupe;
	}

	public String getNomscompletclientlisanga() {
		return nomscompletclientlisanga;
	}

	public String getEtatcivilclilisanga() {
		return etatcivilclilisanga;
	}

	public void setEtatcivilclilisanga(String etatcivilclilisanga) {
		this.etatcivilclilisanga = etatcivilclilisanga;
	}

	public void setNomscompletclientlisanga(String nomscompletclientlisanga) {
		this.nomscompletclientlisanga = nomscompletclientlisanga;
	}

	public int getIdclientmembregl() {
		return idclientmembregl;
	}

	public void setIdclientmembregl(int idclientmembregl) {
		this.idclientmembregl = idclientmembregl;
	}

	public int getNumclientmembrecbs() {
		return numclientmembrecbs;
	}

	public void setNumclientmembrecbs(int numclientmembrecbs) {
		this.numclientmembrecbs = numclientmembrecbs;
	}

	public String getNomsmembregroupe() {
		return nomsmembregroupe;
	}

	public void setNomsmembregroupe(String nomsmembregroupe) {
		this.nomsmembregroupe = nomsmembregroupe;
	}

	public String getPostnommembregroupe() {
		return postnommembregroupe;
	}

	public void setPostnommembregroupe(String postnommembregroupe) {
		this.postnommembregroupe = postnommembregroupe;
	}

	public String getPrenommembregroupe() {
		return prenommembregroupe;
	}

	public void setPrenommembregroupe(String prenommembregroupe) {
		this.prenommembregroupe = prenommembregroupe;
	}

	public String getTelephonemembregroupe() {
		return telephonemembregroupe;
	}

	public void setTelephonemembregroupe(String telephonemembregroupe) {
		this.telephonemembregroupe = telephonemembregroupe;
	}

	public String getSexemembregroupe() {
		return sexemembregroupe;
	}

	public void setSexemembregroupe(String sexemembregroupe) {
		this.sexemembregroupe = sexemembregroupe;
	}

	public String getAdressemembregroupe() {
		return adressemembregroupe;
	}

	public void setAdressemembregroupe(String adressemembregroupe) {
		this.adressemembregroupe = adressemembregroupe;
	}

	public String getCategoriemembregroupe() {
		return categoriemembregroupe;
	}

	public void setCategoriemembregroupe(String categoriemembregroupe) {
		this.categoriemembregroupe = categoriemembregroupe;
	}

	public String getPhotomembregroupe() {
		return photomembregroupe;
	}

	public void setPhotomembregroupe(String photomembregroupe) {
		this.photomembregroupe = photomembregroupe;
	}

	private String idgroupelisanga;
	private int numerogroupecbslisanga;
	private String nomgroupelisanga;
	private String adressegroupelisanga;
	private String provincegroupelisanga;
	private String jourreuniongroupelisanga;
	private String heurereuniongroupelisanga;
	private String numerotelephonegroupelisanga;
	private int nbrhommegroupelisanga;
	private int nbrfemmegroupelisanga;
	private int nbrcyclegroupelisanga;
	private String categorierisquegroupelisanga;
	private String promoteurgroupelisanga;
	private String superviseurgllisanga;
	private String branchegroupelisanga;
	private String etatgroupgllisanga;
	private String nomchefagencemv;

	public String getNomchefagencemv() {
		return nomchefagencemv;
	}

	public void setNomchefagencemv(String nomchefagencemv) {
		this.nomchefagencemv = nomchefagencemv;
	}

	public String getIdgroupelisanga() {
		return idgroupelisanga;
	}

	public void setIdgroupelisanga(String idgroupelisanga) {
		this.idgroupelisanga = idgroupelisanga;
	}

	public int getNumerogroupecbslisanga() {
		return numerogroupecbslisanga;
	}

	public void setNumerogroupecbslisanga(int numerogroupecbslisanga) {
		this.numerogroupecbslisanga = numerogroupecbslisanga;
	}

	public String getNomgroupelisanga() {
		return nomgroupelisanga;
	}

	public void setNomgroupelisanga(String nomgroupelisanga) {
		this.nomgroupelisanga = nomgroupelisanga;
	}

	public String getAdressegroupelisanga() {
		return adressegroupelisanga;
	}

	public void setAdressegroupelisanga(String adressegroupelisanga) {
		this.adressegroupelisanga = adressegroupelisanga;
	}

	public String getProvincegroupelisanga() {
		return provincegroupelisanga;
	}

	public void setProvincegroupelisanga(String provincegroupelisanga) {
		this.provincegroupelisanga = provincegroupelisanga;
	}

	public String getJourreuniongroupelisanga() {
		return jourreuniongroupelisanga;
	}

	public void setJourreuniongroupelisanga(String jourreuniongroupelisanga) {
		this.jourreuniongroupelisanga = jourreuniongroupelisanga;
	}

	public String getHeurereuniongroupelisanga() {
		return heurereuniongroupelisanga;
	}

	public void setHeurereuniongroupelisanga(String heurereuniongroupelisanga) {
		this.heurereuniongroupelisanga = heurereuniongroupelisanga;
	}

	public String getNumerotelephonegroupelisanga() {
		return numerotelephonegroupelisanga;
	}

	public void setNumerotelephonegroupelisanga(
			String numerotelephonegroupelisanga) {
		this.numerotelephonegroupelisanga = numerotelephonegroupelisanga;
	}

	public int getNbrhommegroupelisanga() {
		return nbrhommegroupelisanga;
	}

	public void setNbrhommegroupelisanga(int nbrhommegroupelisanga) {
		this.nbrhommegroupelisanga = nbrhommegroupelisanga;
	}

	public int getNbrfemmegroupelisanga() {
		return nbrfemmegroupelisanga;
	}

	public void setNbrfemmegroupelisanga(int nbrfemmegroupelisanga) {
		this.nbrfemmegroupelisanga = nbrfemmegroupelisanga;
	}

	public int getNbrcyclegroupelisanga() {
		return nbrcyclegroupelisanga;
	}

	public void setNbrcyclegroupelisanga(int nbrcyclegroupelisanga) {
		this.nbrcyclegroupelisanga = nbrcyclegroupelisanga;
	}

	public String getCategorierisquegroupelisanga() {
		return categorierisquegroupelisanga;
	}

	public void setCategorierisquegroupelisanga(
			String categorierisquegroupelisanga) {
		this.categorierisquegroupelisanga = categorierisquegroupelisanga;
	}

	public String getPromoteurgroupelisanga() {
		return promoteurgroupelisanga;
	}

	public void setPromoteurgroupelisanga(String promoteurgroupelisanga) {
		this.promoteurgroupelisanga = promoteurgroupelisanga;
	}

	public String getSuperviseurgllisanga() {
		return superviseurgllisanga;
	}

	public void setSuperviseurgllisanga(String superviseurgllisanga) {
		this.superviseurgllisanga = superviseurgllisanga;
	}

	public String getBranchegroupelisanga() {
		return branchegroupelisanga;
	}

	public void setBranchegroupelisanga(String branchegroupelisanga) {
		this.branchegroupelisanga = branchegroupelisanga;
	}

	public String getEtatgroupgllisanga() {
		return etatgroupgllisanga;
	}

	public void setEtatgroupgllisanga(String etatgroupgllisanga) {
		this.etatgroupgllisanga = etatgroupgllisanga;
	}

	private int numcbsclientgl;
	private int numdossierglgl;
	private String datedossierglgl;
	private String etatdossierglgl;
	private double depotavuegl;
	private double cautionfinancieregl;
	private double totalepargnegl;
	private double dernierpretgl;
	private double pretsollicitegl;
	private double pretaccordergl;
	private double fraisdossiertvagl;
	private double assuranceglgl;
	private double smsglgl;
	private double carnetlivregl;
	private double totalfraisglgl;
	private int cycleglgl;
	private String nomsclientmembredosgl;
	private String categotisationm;

	public String getCategotisationm() {
		return categotisationm;
	}

	public void setCategotisationm(String categotisationm) {
		this.categotisationm = categotisationm;
	}

	public int getNumcbsclientgl() {
		return numcbsclientgl;
	}

	public void setNumcbsclientgl(int numcbsclientgl) {
		this.numcbsclientgl = numcbsclientgl;
	}

	public int getNumdossierglgl() {
		return numdossierglgl;
	}

	public void setNumdossierglgl(int numdossierglgl) {
		this.numdossierglgl = numdossierglgl;
	}

	public String getDatedossierglgl() {
		return datedossierglgl;
	}

	public void setDatedossierglgl(String datedossierglgl) {
		this.datedossierglgl = datedossierglgl;
	}

	public String getEtatdossierglgl() {
		return etatdossierglgl;
	}

	public void setEtatdossierglgl(String etatdossierglgl) {
		this.etatdossierglgl = etatdossierglgl;
	}

	public double getDepotavuegl() {
		return depotavuegl;
	}

	public void setDepotavuegl(double depotavuegl) {
		this.depotavuegl = depotavuegl;
	}

	public double getCautionfinancieregl() {
		return cautionfinancieregl;
	}

	public void setCautionfinancieregl(double cautionfinancieregl) {
		this.cautionfinancieregl = cautionfinancieregl;
	}

	public double getTotalepargnegl() {
		return totalepargnegl;
	}

	public void setTotalepargnegl(double totalepargnegl) {
		this.totalepargnegl = totalepargnegl;
	}

	public double getDernierpretgl() {
		return dernierpretgl;
	}

	public void setDernierpretgl(double dernierpretgl) {
		this.dernierpretgl = dernierpretgl;
	}

	public double getPretsollicitegl() {
		return pretsollicitegl;
	}

	public void setPretsollicitegl(double pretsollicitegl) {
		this.pretsollicitegl = pretsollicitegl;
	}

	public double getPretaccordergl() {
		return pretaccordergl;
	}

	public void setPretaccordergl(double pretaccordergl) {
		this.pretaccordergl = pretaccordergl;
	}

	public double getFraisdossiertvagl() {
		return fraisdossiertvagl;
	}

	public void setFraisdossiertvagl(double fraisdossiertvagl) {
		this.fraisdossiertvagl = fraisdossiertvagl;
	}

	public double getAssuranceglgl() {
		return assuranceglgl;
	}

	public void setAssuranceglgl(double assuranceglgl) {
		this.assuranceglgl = assuranceglgl;
	}

	public double getSmsglgl() {
		return smsglgl;
	}

	public void setSmsglgl(double smsglgl) {
		this.smsglgl = smsglgl;
	}

	public double getCarnetlivregl() {
		return carnetlivregl;
	}

	public void setCarnetlivregl(double carnetlivregl) {
		this.carnetlivregl = carnetlivregl;
	}

	public double getTotalfraisglgl() {
		return totalfraisglgl;
	}

	public void setTotalfraisglgl(double totalfraisglgl) {
		this.totalfraisglgl = totalfraisglgl;
	}

	public int getCycleglgl() {
		return cycleglgl;
	}

	public void setCycleglgl(int cycleglgl) {
		this.cycleglgl = cycleglgl;
	}

	public String getNomsclientmembredosgl() {
		return nomsclientmembredosgl;
	}

	public void setNomsclientmembredosgl(String nomsclientmembredosgl) {
		this.nomsclientmembredosgl = nomsclientmembredosgl;
	}

	private int idbussnessglb;
	private String activitebussnessglb;
	private String adressebussnessglb;
	private String experiencebussnessglb;
	private int rotationhebdoglb;
	private double capitalbussnessglb;
	private double beneficeshebdoglb;
	private String numtelephoneglb;
	private String commentairebussnessglb;

	public int getIdbussnessglb() {
		return idbussnessglb;
	}

	public void setIdbussnessglb(int idbussnessglb) {
		this.idbussnessglb = idbussnessglb;
	}

	public String getActivitebussnessglb() {
		return activitebussnessglb;
	}

	public void setActivitebussnessglb(String activitebussnessglb) {
		this.activitebussnessglb = activitebussnessglb;
	}

	public String getAdressebussnessglb() {
		return adressebussnessglb;
	}

	public void setAdressebussnessglb(String adressebussnessglb) {
		this.adressebussnessglb = adressebussnessglb;
	}

	public String getExperiencebussnessglb() {
		return experiencebussnessglb;
	}

	public void setExperiencebussnessglb(String experiencebussnessglb) {
		this.experiencebussnessglb = experiencebussnessglb;
	}

	public int getRotationhebdoglb() {
		return rotationhebdoglb;
	}

	public void setRotationhebdoglb(int rotationhebdoglb) {
		this.rotationhebdoglb = rotationhebdoglb;
	}

	public double getCapitalbussnessglb() {
		return capitalbussnessglb;
	}

	public void setCapitalbussnessglb(double capitalbussnessglb) {
		this.capitalbussnessglb = capitalbussnessglb;
	}

	public double getBeneficeshebdoglb() {
		return beneficeshebdoglb;
	}

	public void setBeneficeshebdoglb(double beneficeshebdoglb) {
		this.beneficeshebdoglb = beneficeshebdoglb;
	}

	public String getNumtelephoneglb() {
		return numtelephoneglb;
	}

	public void setNumtelephoneglb(String numtelephoneglb) {
		this.numtelephoneglb = numtelephoneglb;
	}

	public String getCommentairebussnessglb() {
		return commentairebussnessglb;
	}

	public void setCommentairebussnessglb(String commentairebussnessglb) {
		this.commentairebussnessglb = commentairebussnessglb;
	}

	private int idinfofinanciereglglgl;
	private double totalapayerglglgl;
	private double epargneglglgl;
	private double remboursementglglgl;
	private double totalremboursementglglgl;
	private double epargnebruteglglgl;
	private double montantpretglglgl;
	private String commentaireinfofinancireglglgl;

	public int getIdinfofinanciereglglgl() {
		return idinfofinanciereglglgl;
	}

	public void setIdinfofinanciereglglgl(int idinfofinanciereglglgl) {
		this.idinfofinanciereglglgl = idinfofinanciereglglgl;
	}

	public double getTotalapayerglglgl() {
		return totalapayerglglgl;
	}

	public void setTotalapayerglglgl(double totalapayerglglgl) {
		this.totalapayerglglgl = totalapayerglglgl;
	}

	public double getEpargneglglgl() {
		return epargneglglgl;
	}

	public void setEpargneglglgl(double epargneglglgl) {
		this.epargneglglgl = epargneglglgl;
	}

	public double getRemboursementglglgl() {
		return remboursementglglgl;
	}

	public void setRemboursementglglgl(double remboursementglglgl) {
		this.remboursementglglgl = remboursementglglgl;
	}

	public double getTotalremboursementglglgl() {
		return totalremboursementglglgl;
	}

	public void setTotalremboursementglglgl(double totalremboursementglglgl) {
		this.totalremboursementglglgl = totalremboursementglglgl;
	}

	public double getEpargnebruteglglgl() {
		return epargnebruteglglgl;
	}

	public void setEpargnebruteglglgl(double epargnebruteglglgl) {
		this.epargnebruteglglgl = epargnebruteglglgl;
	}

	public double getMontantpretglglgl() {
		return montantpretglglgl;
	}

	public void setMontantpretglglgl(double montantpretglglgl) {
		this.montantpretglglgl = montantpretglglgl;
	}

	public String getCommentaireinfofinancireglglgl() {
		return commentaireinfofinancireglglgl;
	}

	public void setCommentaireinfofinancireglglgl(
			String commentaireinfofinancireglglgl) {
		this.commentaireinfofinancireglglgl = commentaireinfofinancireglglgl;
	}

	private int idquitte;
	private int numclientquitte;
	private String datequitte;
	private String nomsclientglquite;
	private int cyclequitte;
	private double montantepargnemquitte;
	private String raisonsocialquitte;
	private String statutquitte;
	private String commquitte;

	public String getStatutquitte() {
		return statutquitte;
	}

	public void setStatutquitte(String statutquitte) {
		this.statutquitte = statutquitte;
	}

	public String getCommquitte() {
		return commquitte;
	}

	public void setCommquitte(String commquitte) {
		this.commquitte = commquitte;
	}

	public int getNumclientquitte() {
		return numclientquitte;
	}

	public void setNumclientquitte(int numclientquitte) {
		this.numclientquitte = numclientquitte;
	}

	public double getMontantepargnemquitte() {
		return montantepargnemquitte;
	}

	public void setMontantepargnemquitte(double montantepargnemquitte) {
		this.montantepargnemquitte = montantepargnemquitte;
	}

	public int getIdquitte() {
		return idquitte;
	}

	public void setIdquitte(int idquitte) {
		this.idquitte = idquitte;
	}

	public String getDatequitte() {
		return datequitte;
	}

	public void setDatequitte(String datequitte) {
		this.datequitte = datequitte;
	}

	public String getNomsclientglquite() {
		return nomsclientglquite;
	}

	public void setNomsclientglquite(String nomsclientglquite) {
		this.nomsclientglquite = nomsclientglquite;
	}

	public int getCyclequitte() {
		return cyclequitte;
	}

	public void setCyclequitte(int cyclequitte) {
		this.cyclequitte = cyclequitte;
	}

	public String getRaisonsocialquitte() {
		return raisonsocialquitte;
	}

	public void setRaisonsocialquitte(String raisonsocialquitte) {
		this.raisonsocialquitte = raisonsocialquitte;
	}

	private int IdComiteGLCom;
	private String DateComiteGLCom;
	private int CycleGroupeGLCom;
	private String DecisionComiteGLCom;
	private String CommentaireComiteGLCom;
	private String NumeroGroupeLisangaCom;
	private String DecideurComiteGLCom;

	public int getIdComiteGLCom() {
		return IdComiteGLCom;
	}

	public void setIdComiteGLCom(int idComiteGLCom) {
		IdComiteGLCom = idComiteGLCom;
	}

	public String getDateComiteGLCom() {
		return DateComiteGLCom;
	}

	public void setDateComiteGLCom(String dateComiteGLCom) {
		DateComiteGLCom = dateComiteGLCom;
	}

	public int getCycleGroupeGLCom() {
		return CycleGroupeGLCom;
	}

	public void setCycleGroupeGLCom(int cycleGroupeGLCom) {
		CycleGroupeGLCom = cycleGroupeGLCom;
	}

	public String getDecisionComiteGLCom() {
		return DecisionComiteGLCom;
	}

	public void setDecisionComiteGLCom(String decisionComiteGLCom) {
		DecisionComiteGLCom = decisionComiteGLCom;
	}

	public String getCommentaireComiteGLCom() {
		return CommentaireComiteGLCom;
	}

	public void setCommentaireComiteGLCom(String commentaireComiteGLCom) {
		CommentaireComiteGLCom = commentaireComiteGLCom;
	}

	public String getNumeroGroupeLisangaCom() {
		return NumeroGroupeLisangaCom;
	}

	public void setNumeroGroupeLisangaCom(String numeroGroupeLisangaCom) {
		NumeroGroupeLisangaCom = numeroGroupeLisangaCom;
	}

	public String getDecideurComiteGLCom() {
		return DecideurComiteGLCom;
	}

	public void setDecideurComiteGLCom(String decideurComiteGLCom) {
		DecideurComiteGLCom = decideurComiteGLCom;
	}

	private int numcligroupeokokokok;

	public int getNumcligroupeokokokok() {
		return numcligroupeokokokok;
	}

	public void setNumcligroupeokokokok(int numcligroupeokokokok) {
		this.numcligroupeokokokok = numcligroupeokokokok;
	}

	private int numclientglwf;
	private String nomclientglwf;
	private String prenomclientglwf;

	public int getNumclientglwf() {
		return numclientglwf;
	}

	public void setNumclientglwf(int numclientglwf) {
		this.numclientglwf = numclientglwf;
	}

	public String getNomclientglwf() {
		return nomclientglwf;
	}

	public void setNomclientglwf(String nomclientglwf) {
		this.nomclientglwf = nomclientglwf;
	}

	public String getPrenomclientglwf() {
		return prenomclientglwf;
	}

	public void setPrenomclientglwf(String prenomclientglwf) {
		this.prenomclientglwf = prenomclientglwf;
	}

	private int numclientglcbs;
	private String nomclientglcbs;
	private String prenomclientglcbs;

	public int getNumclientglcbs() {
		return numclientglcbs;
	}

	public void setNumclientglcbs(int numclientglcbs) {
		this.numclientglcbs = numclientglcbs;
	}

	public String getNomclientglcbs() {
		return nomclientglcbs;
	}

	public void setNomclientglcbs(String nomclientglcbs) {
		this.nomclientglcbs = nomclientglcbs;
	}

	public String getPrenomclientglcbs() {
		return prenomclientglcbs;
	}

	public void setPrenomclientglcbs(String prenomclientglcbs) {
		this.prenomclientglcbs = prenomclientglcbs;
	}

	private String nomssupeva;
	private String appreciationeva;
	private String commentaireeva;

	public String getNomssupeva() {
		return nomssupeva;
	}

	public void setNomssupeva(String nomssupeva) {
		this.nomssupeva = nomssupeva;
	}

	public String getAppreciationeva() {
		return appreciationeva;
	}

	public void setAppreciationeva(String appreciationeva) {
		this.appreciationeva = appreciationeva;
	}

	public String getCommentaireeva() {
		return commentaireeva;
	}

	public void setCommentaireeva(String commentaireeva) {
		this.commentaireeva = commentaireeva;
	}

	private String dateecheancierclientgl;
	private int montanttotrembourserecheanceclientgl;

	public String getDateecheancierclientgl() {
		return dateecheancierclientgl;
	}

	public void setDateecheancierclientgl(String dateecheancierclientgl) {
		this.dateecheancierclientgl = dateecheancierclientgl;
	}

	public int getMontanttotrembourserecheanceclientgl() {
		return montanttotrembourserecheanceclientgl;
	}

	public void setMontanttotrembourserecheanceclientgl(
			int montanttotrembourserecheanceclientgl) {
		this.montanttotrembourserecheanceclientgl = montanttotrembourserecheanceclientgl;
	}

	private int idreuniongl;
	private String datereuniongl;
	private String lieureuniongl;
	private String heuredebutreuniongl;
	private String heurefinreuniongl;
	private int cyclegrpreunion;
	private String libellegrpforreuniongl;

	public int getIdreuniongl() {
		return idreuniongl;
	}

	public void setIdreuniongl(int idreuniongl) {
		this.idreuniongl = idreuniongl;
	}

	public int getCyclegrpreunion() {
		return cyclegrpreunion;
	}

	public void setCyclegrpreunion(int cyclegrpreunion) {
		this.cyclegrpreunion = cyclegrpreunion;
	}

	public String getLibellegrpforreuniongl() {
		return libellegrpforreuniongl;
	}

	public void setLibellegrpforreuniongl(String libellegrpforreuniongl) {
		this.libellegrpforreuniongl = libellegrpforreuniongl;
	}

	public String getDatereuniongl() {
		return datereuniongl;
	}

	public void setDatereuniongl(String datereuniongl) {
		this.datereuniongl = datereuniongl;
	}

	public String getLieureuniongl() {
		return lieureuniongl;
	}

	public void setLieureuniongl(String lieureuniongl) {
		this.lieureuniongl = lieureuniongl;
	}

	public String getHeuredebutreuniongl() {
		return heuredebutreuniongl;
	}

	public void setHeuredebutreuniongl(String heuredebutreuniongl) {
		this.heuredebutreuniongl = heuredebutreuniongl;
	}

	public String getHeurefinreuniongl() {
		return heurefinreuniongl;
	}

	public void setHeurefinreuniongl(String heurefinreuniongl) {
		this.heurefinreuniongl = heurefinreuniongl;
	}

	private String nomsmgl;
	private String datereunionpresencegl;
	private double montantremboursesperegl;
	private double montantepargneesperegl;
	private double montantremboursreuniongl;
	private double montantepargnereuniongl;
	private String statutremboursementgl;
	private String statutepargnegl;
	private int cyclegprreuniongl;
	private String delegationreuniongl;

	public String getDelegationreuniongl() {
		return delegationreuniongl;
	}

	public void setDelegationreuniongl(String delegationreuniongl) {
		this.delegationreuniongl = delegationreuniongl;
	}

	public String getNomsmgl() {
		return nomsmgl;
	}

	public void setNomsmgl(String nomsmgl) {
		this.nomsmgl = nomsmgl;
	}

	public String getDatereunionpresencegl() {
		return datereunionpresencegl;
	}

	public void setDatereunionpresencegl(String datereunionpresencegl) {
		this.datereunionpresencegl = datereunionpresencegl;
	}

	public double getMontantremboursesperegl() {
		return montantremboursesperegl;
	}

	public void setMontantremboursesperegl(double montantremboursesperegl) {
		this.montantremboursesperegl = montantremboursesperegl;
	}

	public double getMontantepargneesperegl() {
		return montantepargneesperegl;
	}

	public void setMontantepargneesperegl(double montantepargneesperegl) {
		this.montantepargneesperegl = montantepargneesperegl;
	}

	public double getMontantremboursreuniongl() {
		return montantremboursreuniongl;
	}

	public void setMontantremboursreuniongl(double montantremboursreuniongl) {
		this.montantremboursreuniongl = montantremboursreuniongl;
	}

	public double getMontantepargnereuniongl() {
		return montantepargnereuniongl;
	}

	public void setMontantepargnereuniongl(double montantepargnereuniongl) {
		this.montantepargnereuniongl = montantepargnereuniongl;
	}

	public String getStatutremboursementgl() {
		return statutremboursementgl;
	}

	public void setStatutremboursementgl(String statutremboursementgl) {
		this.statutremboursementgl = statutremboursementgl;
	}

	public String getStatutepargnegl() {
		return statutepargnegl;
	}

	public void setStatutepargnegl(String statutepargnegl) {
		this.statutepargnegl = statutepargnegl;
	}

	public int getCyclegprreuniongl() {
		return cyclegprreuniongl;
	}

	public void setCyclegprreuniongl(int cyclegprreuniongl) {
		this.cyclegprreuniongl = cyclegprreuniongl;
	}

	private String nomcli;
	private int rm;
	private int em;
	private int abs;
	private String cat;
	private String cycleok;

	public String getCycleok() {
		return cycleok;
	}

	public void setCycleok(String cycleok) {
		this.cycleok = cycleok;
	}

	public String getNomcli() {
		return nomcli;
	}

	public void setNomcli(String nomcli) {
		this.nomcli = nomcli;
	}

	public int getRm() {
		return rm;
	}

	public void setRm(int rm) {
		this.rm = rm;
	}

	public int getEm() {
		return em;
	}

	public void setEm(int em) {
		this.em = em;
	}

	public int getAbs() {
		return abs;
	}

	public void setAbs(int abs) {
		this.abs = abs;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}

	private int idproduitcreditvalide;
	private String descriptionproduitcreditvalide;
	private double montantminproduitcreditvalider;
	private double montantmaxproduitcreditvalider;
	private double tauxinteretproduitcreditvalider;
	private double fraisdossierproduitcreditvalider;
	private double cautionproduitcreditvalider;
	private double tauxinteretmproduitcreditvaliderok;

	public int getIdproduitcreditvalide() {
		return idproduitcreditvalide;
	}

	public void setIdproduitcreditvalide(int idproduitcreditvalide) {
		this.idproduitcreditvalide = idproduitcreditvalide;
	}

	public String getDescriptionproduitcreditvalide() {
		return descriptionproduitcreditvalide;
	}

	public void setDescriptionproduitcreditvalide(
			String descriptionproduitcreditvalide) {
		this.descriptionproduitcreditvalide = descriptionproduitcreditvalide;
	}

	public double getMontantminproduitcreditvalider() {
		return montantminproduitcreditvalider;
	}

	public void setMontantminproduitcreditvalider(
			double montantminproduitcreditvalider) {
		this.montantminproduitcreditvalider = montantminproduitcreditvalider;
	}

	public double getMontantmaxproduitcreditvalider() {
		return montantmaxproduitcreditvalider;
	}

	public void setMontantmaxproduitcreditvalider(
			double montantmaxproduitcreditvalider) {
		this.montantmaxproduitcreditvalider = montantmaxproduitcreditvalider;
	}

	public double getTauxinteretproduitcreditvalider() {
		return tauxinteretproduitcreditvalider;
	}

	public void setTauxinteretproduitcreditvalider(
			double tauxinteretproduitcreditvalider) {
		this.tauxinteretproduitcreditvalider = tauxinteretproduitcreditvalider;
	}

	public double getFraisdossierproduitcreditvalider() {
		return fraisdossierproduitcreditvalider;
	}

	public void setFraisdossierproduitcreditvalider(
			double fraisdossierproduitcreditvalider) {
		this.fraisdossierproduitcreditvalider = fraisdossierproduitcreditvalider;
	}

	public double getCautionproduitcreditvalider() {
		return cautionproduitcreditvalider;
	}

	public void setCautionproduitcreditvalider(
			double cautionproduitcreditvalider) {
		this.cautionproduitcreditvalider = cautionproduitcreditvalider;
	}

	public double getTauxinteretmproduitcreditvaliderok() {
		return tauxinteretmproduitcreditvaliderok;
	}

	public void setTauxinteretmproduitcreditvaliderok(
			double tauxinteretmproduitcreditvaliderok) {
		this.tauxinteretmproduitcreditvaliderok = tauxinteretmproduitcreditvaliderok;
	}

	private int idbranchemcpop2025;
	private String libellebranchemcpop2025;
	private String adressebranchemcpop2025;
	private String telephonemcpop2025;
	private String provincemcpop2025;
	private String responsableagencemcpop2025;

	public int getIdbranchemcpop2025() {
		return idbranchemcpop2025;
	}

	public void setIdbranchemcpop2025(int idbranchemcpop2025) {
		this.idbranchemcpop2025 = idbranchemcpop2025;
	}

	public String getLibellebranchemcpop2025() {
		return libellebranchemcpop2025;
	}

	public void setLibellebranchemcpop2025(String libellebranchemcpop2025) {
		this.libellebranchemcpop2025 = libellebranchemcpop2025;
	}

	public String getAdressebranchemcpop2025() {
		return adressebranchemcpop2025;
	}

	public void setAdressebranchemcpop2025(String adressebranchemcpop2025) {
		this.adressebranchemcpop2025 = adressebranchemcpop2025;
	}

	public String getTelephonemcpop2025() {
		return telephonemcpop2025;
	}

	public void setTelephonemcpop2025(String telephonemcpop2025) {
		this.telephonemcpop2025 = telephonemcpop2025;
	}

	public String getProvincemcpop2025() {
		return provincemcpop2025;
	}

	public void setProvincemcpop2025(String provincemcpop2025) {
		this.provincemcpop2025 = provincemcpop2025;
	}

	public String getResponsableagencemcpop2025() {
		return responsableagencemcpop2025;
	}

	public void setResponsableagencemcpop2025(String responsableagencemcpop2025) {
		this.responsableagencemcpop2025 = responsableagencemcpop2025;
	}

	private int idassurancetaux;
	private double tauxassuranceafrisur;
	private double tauxassurancerawsur;

	public int getIdassurancetaux() {
		return idassurancetaux;
	}

	public void setIdassurancetaux(int idassurancetaux) {
		this.idassurancetaux = idassurancetaux;
	}

	public double getTauxassuranceafrisur() {
		return tauxassuranceafrisur;
	}

	public void setTauxassuranceafrisur(double tauxassuranceafrisur) {
		this.tauxassuranceafrisur = tauxassuranceafrisur;
	}

	public double getTauxassurancerawsur() {
		return tauxassurancerawsur;
	}

	public void setTauxassurancerawsur(double tauxassurancerawsur) {
		this.tauxassurancerawsur = tauxassurancerawsur;
	}

	private int idproductionproddd;
	private String libelleproductionproddd;
	private int nbruniteproduitproddd;
	private double prixventeparuniteproddd;
	private double ventetotalproddd;
	private String numerodossierilproddd;

	public int getIdproductionproddd() {
		return idproductionproddd;
	}

	public void setIdproductionproddd(int idproductionproddd) {
		this.idproductionproddd = idproductionproddd;
	}

	public String getLibelleproductionproddd() {
		return libelleproductionproddd;
	}

	public void setLibelleproductionproddd(String libelleproductionproddd) {
		this.libelleproductionproddd = libelleproductionproddd;
	}

	public int getNbruniteproduitproddd() {
		return nbruniteproduitproddd;
	}

	public void setNbruniteproduitproddd(int nbruniteproduitproddd) {
		this.nbruniteproduitproddd = nbruniteproduitproddd;
	}

	public double getPrixventeparuniteproddd() {
		return prixventeparuniteproddd;
	}

	public void setPrixventeparuniteproddd(double prixventeparuniteproddd) {
		this.prixventeparuniteproddd = prixventeparuniteproddd;
	}

	public double getVentetotalproddd() {
		return ventetotalproddd;
	}

	public void setVentetotalproddd(double ventetotalproddd) {
		this.ventetotalproddd = ventetotalproddd;
	}

	public String getNumerodossierilproddd() {
		return numerodossierilproddd;
	}

	public void setNumerodossierilproddd(String numerodossierilproddd) {
		this.numerodossierilproddd = numerodossierilproddd;
	}

	private int idmaterielprod;
	private String libellematiereprod;
	private double prixachatmatierepro;
	private double couttotalprod;

	public int getIdmaterielprod() {
		return idmaterielprod;
	}

	public void setIdmaterielprod(int idmaterielprod) {
		this.idmaterielprod = idmaterielprod;
	}

	public String getLibellematiereprod() {
		return libellematiereprod;
	}

	public void setLibellematiereprod(String libellematiereprod) {
		this.libellematiereprod = libellematiereprod;
	}

	public double getPrixachatmatierepro() {
		return prixachatmatierepro;
	}

	public void setPrixachatmatierepro(double prixachatmatierepro) {
		this.prixachatmatierepro = prixachatmatierepro;
	}

	public double getCouttotalprod() {
		return couttotalprod;
	}

	public void setCouttotalprod(double couttotalprod) {
		this.couttotalprod = couttotalprod;
	}

	private int idventebaisse;
	private double ventebaisse;
	private String periodedebutbaisse;
	private String periodefinbaisse;
	private String commentairebaisse;

	public int getIdventebaisse() {
		return idventebaisse;
	}

	public void setIdventebaisse(int idventebaisse) {
		this.idventebaisse = idventebaisse;
	}

	public double getVentebaisse() {
		return ventebaisse;
	}

	public void setVentebaisse(double ventebaisse) {
		this.ventebaisse = ventebaisse;
	}

	public String getPeriodedebutbaisse() {
		return periodedebutbaisse;
	}

	public void setPeriodedebutbaisse(String periodedebutbaisse) {
		this.periodedebutbaisse = periodedebutbaisse;
	}

	public String getPeriodefinbaisse() {
		return periodefinbaisse;
	}

	public void setPeriodefinbaisse(String periodefinbaisse) {
		this.periodefinbaisse = periodefinbaisse;
	}

	public String getCommentairebaisse() {
		return commentairebaisse;
	}

	public void setCommentairebaisse(String commentairebaisse) {
		this.commentairebaisse = commentairebaisse;
	}

	private int idswot;
	private String force;
	private String opportunite;
	private String faiblesse;
	private String menace;

	public int getIdswot() {
		return idswot;
	}

	public void setIdswot(int idswot) {
		this.idswot = idswot;
	}

	public String getForce() {
		return force;
	}

	public void setForce(String force) {
		this.force = force;
	}

	public String getOpportunite() {
		return opportunite;
	}

	public void setOpportunite(String opportunite) {
		this.opportunite = opportunite;
	}

	public String getFaiblesse() {
		return faiblesse;
	}

	public void setFaiblesse(String faiblesse) {
		this.faiblesse = faiblesse;
	}

	public String getMenace() {
		return menace;
	}

	public void setMenace(String menace) {
		this.menace = menace;
	}

	private String nomac;

	public String getNomac() {
		return nomac;
	}

	public void setNomac(String nomac) {
		this.nomac = nomac;
	}

	private String noclient;
	private String nodossier;
	private String datedeboursement;
	private String dateprevuremboursement;
	private double montantcapitalattendu;
	private double montantinteret;
	private double montantarembourse;
	private String typecredit;
	private String remboursement;

	public String getNoclient() {
		return noclient;
	}

	public void setNoclient(String noclient) {
		this.noclient = noclient;
	}

	public String getNodossier() {
		return nodossier;
	}

	public void setNodossier(String nodossier) {
		this.nodossier = nodossier;
	}

	public String getDatedeboursement() {
		return datedeboursement;
	}

	public void setDatedeboursement(String datedeboursement) {
		this.datedeboursement = datedeboursement;
	}

	public String getDateprevuremboursement() {
		return dateprevuremboursement;
	}

	public void setDateprevuremboursement(String dateprevuremboursement) {
		this.dateprevuremboursement = dateprevuremboursement;
	}

	public double getMontantcapitalattendu() {
		return montantcapitalattendu;
	}

	public void setMontantcapitalattendu(double montantcapitalattendu) {
		this.montantcapitalattendu = montantcapitalattendu;
	}

	public double getMontantinteret() {
		return montantinteret;
	}

	public void setMontantinteret(double montantinteret) {
		this.montantinteret = montantinteret;
	}

	public double getMontantarembourse() {
		return montantarembourse;
	}

	public void setMontantarembourse(double montantarembourse) {
		this.montantarembourse = montantarembourse;
	}

	public String getTypecredit() {
		return typecredit;
	}

	public void setTypecredit(String typecredit) {
		this.typecredit = typecredit;
	}

	public String getRemboursement() {
		return remboursement;
	}

	public void setRemboursement(String remboursement) {
		this.remboursement = remboursement;
	}

	private int idparamgl;
	private double coefdegressifgl;
	private double mntfraistenucomptegl;
	private int nbrmaxmembregl;
	private int nbrecheancegl;
	private double fraissmsgl;
	private double fraiscarnetgl;
	private double tauxcautiongl;
	private double fraisdossiergl;

	public int getIdparamgl() {
		return idparamgl;
	}

	public void setIdparamgl(int idparamgl) {
		this.idparamgl = idparamgl;
	}

	public double getCoefdegressifgl() {
		return coefdegressifgl;
	}

	public void setCoefdegressifgl(double coefdegressifgl) {
		this.coefdegressifgl = coefdegressifgl;
	}

	public double getMntfraistenucomptegl() {
		return mntfraistenucomptegl;
	}

	public void setMntfraistenucomptegl(double mntfraistenucomptegl) {
		this.mntfraistenucomptegl = mntfraistenucomptegl;
	}

	public int getNbrmaxmembregl() {
		return nbrmaxmembregl;
	}

	public void setNbrmaxmembregl(int nbrmaxmembregl) {
		this.nbrmaxmembregl = nbrmaxmembregl;
	}

	public int getNbrecheancegl() {
		return nbrecheancegl;
	}

	public void setNbrecheancegl(int nbrecheancegl) {
		this.nbrecheancegl = nbrecheancegl;
	}

	public double getFraissmsgl() {
		return fraissmsgl;
	}

	public void setFraissmsgl(double fraissmsgl) {
		this.fraissmsgl = fraissmsgl;
	}

	public double getFraiscarnetgl() {
		return fraiscarnetgl;
	}

	public void setFraiscarnetgl(double fraiscarnetgl) {
		this.fraiscarnetgl = fraiscarnetgl;
	}

	public double getTauxcautiongl() {
		return tauxcautiongl;
	}

	public void setTauxcautiongl(double tauxcautiongl) {
		this.tauxcautiongl = tauxcautiongl;
	}

	public double getFraisdossiergl() {
		return fraisdossiergl;
	}

	public void setFraisdossiergl(double fraisdossiergl) {
		this.fraisdossiergl = fraisdossiergl;
	}

	private double encoursTotal;
	private double pourcentage;

	public double getEncoursTotal() {
		return encoursTotal;
	}

	public void setEncoursTotal(double encoursTotal) {
		this.encoursTotal = encoursTotal;
	}

	public double getPourcentage() {
		return pourcentage;
	}

	public void setPourcentage(double pourcentage) {
		this.pourcentage = pourcentage;
	}

	private double chiffrecaffrdc;
	private double camvrdc;
	private double profitbrutrdc;
	private double depenseoprdc;
	private double profitnetrdc;
	private double autrerevenunetrdc;
	private double totaldepensepriverdc;
	private double capacitepaiementrdc;
	private double actifcirculantrdc;
	private double caissebmrdc;
	private double banquerdc;
	private double creanceprepayementrdc;
	private double stockrdc;
	private double actifimmobiliserdc;
	private double meublerdc;
	private double equipementoutilsrdc;
	private double vehiculerdc;
	private double localcommercialrdc;
	private double autregarantierdc;
	private double totalactifsrdc;
	private double totalpassifsrdc;
	private double courttermerdc;
	private double longtermerdc;
	private double capitalproprerdc;
	private double dsrrdc;
	private double ratiogrdc;
	private double ratioliqrdc;
	private double levierfrdc;
	private double ratioendtrdc;
	private double ratiorotrdc;
	private double c1;
	private double c2;
	private double c3;

	public double getC1() {
		return c1;
	}

	public void setC1(double c1) {
		this.c1 = c1;
	}

	public double getC2() {
		return c2;
	}

	public void setC2(double c2) {
		this.c2 = c2;
	}

	public double getC3() {
		return c3;
	}

	public void setC3(double c3) {
		this.c3 = c3;
	}

	public double getChiffrecaffrdc() {
		return chiffrecaffrdc;
	}

	public void setChiffrecaffrdc(double chiffrecaffrdc) {
		this.chiffrecaffrdc = chiffrecaffrdc;
	}

	public double getCamvrdc() {
		return camvrdc;
	}

	public void setCamvrdc(double camvrdc) {
		this.camvrdc = camvrdc;
	}

	public double getProfitbrutrdc() {
		return profitbrutrdc;
	}

	public void setProfitbrutrdc(double profitbrutrdc) {
		this.profitbrutrdc = profitbrutrdc;
	}

	public double getDepenseoprdc() {
		return depenseoprdc;
	}

	public void setDepenseoprdc(double depenseoprdc) {
		this.depenseoprdc = depenseoprdc;
	}

	public double getProfitnetrdc() {
		return profitnetrdc;
	}

	public void setProfitnetrdc(double profitnetrdc) {
		this.profitnetrdc = profitnetrdc;
	}

	public double getAutrerevenunetrdc() {
		return autrerevenunetrdc;
	}

	public void setAutrerevenunetrdc(double autrerevenunetrdc) {
		this.autrerevenunetrdc = autrerevenunetrdc;
	}

	public double getTotaldepensepriverdc() {
		return totaldepensepriverdc;
	}

	public void setTotaldepensepriverdc(double totaldepensepriverdc) {
		this.totaldepensepriverdc = totaldepensepriverdc;
	}

	public double getCapacitepaiementrdc() {
		return capacitepaiementrdc;
	}

	public void setCapacitepaiementrdc(double capacitepaiementrdc) {
		this.capacitepaiementrdc = capacitepaiementrdc;
	}

	public double getActifcirculantrdc() {
		return actifcirculantrdc;
	}

	public void setActifcirculantrdc(double actifcirculantrdc) {
		this.actifcirculantrdc = actifcirculantrdc;
	}

	public double getCaissebmrdc() {
		return caissebmrdc;
	}

	public void setCaissebmrdc(double caissebmrdc) {
		this.caissebmrdc = caissebmrdc;
	}

	public double getBanquerdc() {
		return banquerdc;
	}

	public void setBanquerdc(double banquerdc) {
		this.banquerdc = banquerdc;
	}

	public double getCreanceprepayementrdc() {
		return creanceprepayementrdc;
	}

	public void setCreanceprepayementrdc(double creanceprepayementrdc) {
		this.creanceprepayementrdc = creanceprepayementrdc;
	}

	public double getStockrdc() {
		return stockrdc;
	}

	public void setStockrdc(double stockrdc) {
		this.stockrdc = stockrdc;
	}

	public double getActifimmobiliserdc() {
		return actifimmobiliserdc;
	}

	public void setActifimmobiliserdc(double actifimmobiliserdc) {
		this.actifimmobiliserdc = actifimmobiliserdc;
	}

	public double getMeublerdc() {
		return meublerdc;
	}

	public void setMeublerdc(double meublerdc) {
		this.meublerdc = meublerdc;
	}

	public double getEquipementoutilsrdc() {
		return equipementoutilsrdc;
	}

	public void setEquipementoutilsrdc(double equipementoutilsrdc) {
		this.equipementoutilsrdc = equipementoutilsrdc;
	}

	public double getVehiculerdc() {
		return vehiculerdc;
	}

	public void setVehiculerdc(double vehiculerdc) {
		this.vehiculerdc = vehiculerdc;
	}

	public double getLocalcommercialrdc() {
		return localcommercialrdc;
	}

	public void setLocalcommercialrdc(double localcommercialrdc) {
		this.localcommercialrdc = localcommercialrdc;
	}

	public double getAutregarantierdc() {
		return autregarantierdc;
	}

	public void setAutregarantierdc(double autregarantierdc) {
		this.autregarantierdc = autregarantierdc;
	}

	public double getTotalactifsrdc() {
		return totalactifsrdc;
	}

	public void setTotalactifsrdc(double totalactifsrdc) {
		this.totalactifsrdc = totalactifsrdc;
	}

	public double getTotalpassifsrdc() {
		return totalpassifsrdc;
	}

	public void setTotalpassifsrdc(double totalpassifsrdc) {
		this.totalpassifsrdc = totalpassifsrdc;
	}

	public double getCourttermerdc() {
		return courttermerdc;
	}

	public void setCourttermerdc(double courttermerdc) {
		this.courttermerdc = courttermerdc;
	}

	public double getLongtermerdc() {
		return longtermerdc;
	}

	public void setLongtermerdc(double longtermerdc) {
		this.longtermerdc = longtermerdc;
	}

	public double getCapitalproprerdc() {
		return capitalproprerdc;
	}

	public void setCapitalproprerdc(double capitalproprerdc) {
		this.capitalproprerdc = capitalproprerdc;
	}

	public double getDsrrdc() {
		return dsrrdc;
	}

	public void setDsrrdc(double dsrrdc) {
		this.dsrrdc = dsrrdc;
	}

	public double getRatiogrdc() {
		return ratiogrdc;
	}

	public void setRatiogrdc(double ratiogrdc) {
		this.ratiogrdc = ratiogrdc;
	}

	public double getRatioliqrdc() {
		return ratioliqrdc;
	}

	public void setRatioliqrdc(double ratioliqrdc) {
		this.ratioliqrdc = ratioliqrdc;
	}

	public double getLevierfrdc() {
		return levierfrdc;
	}

	public void setLevierfrdc(double levierfrdc) {
		this.levierfrdc = levierfrdc;
	}

	public double getRatioendtrdc() {
		return ratioendtrdc;
	}

	public void setRatioendtrdc(double ratioendtrdc) {
		this.ratioendtrdc = ratioendtrdc;
	}

	public double getRatiorotrdc() {
		return ratiorotrdc;
	}

	public void setRatiorotrdc(double ratiorotrdc) {
		this.ratiorotrdc = ratiorotrdc;
	}

	// POJO pour le rapport contrat individuel

	private String postnomcli;
	private String prenomcli;
	private String nom_complet;
	private String adressedomicilecli;
	private double montantcreditvalider;
	private int nbrecheanciervalide;
	private double caution;
	private double fraisdossier;
	private String description;

	public String getPostnomcli() {
		return postnomcli;
	}

	public void setPostnomcli(String postnomcli) {
		this.postnomcli = postnomcli;
	}

	public String getPrenomcli() {
		return prenomcli;
	}

	public void setPrenomcli(String prenomcli) {
		this.prenomcli = prenomcli;
	}

	public String getAdressedomicilecli() {
		return adressedomicilecli;
	}

	public void setAdressedomicilecli(String adressedomicilecli) {
		this.adressedomicilecli = adressedomicilecli;
	}

	public double getMontantcreditvalider() {
		return montantcreditvalider;
	}

	public void setMontantcreditvalider(double montantcreditvalider) {
		this.montantcreditvalider = montantcreditvalider;
	}

	public int getNbrecheanciervalide() {
		return nbrecheanciervalide;
	}

	public void setNbrecheanciervalide(int nbrecheanciervalide) {
		this.nbrecheanciervalide = nbrecheanciervalide;
	}

	public double getCaution() {
		return caution;
	}

	public void setCaution(double caution) {
		this.caution = caution;
	}

	public double getFraisdossier() {
		return fraisdossier;
	}

	public void setFraisdossier(double fraisdossier) {
		this.fraisdossier = fraisdossier;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getNomsconjoint() {
		return nomsconjoint;
	}

	public void setNomsconjoint(String nomsconjoint) {
		this.nomsconjoint = nomsconjoint;
	}

	public double getTauxinteretm() {
		return tauxinteretm;
	}

	public void setTauxinteretm(double tauxinteretm) {
		this.tauxinteretm = tauxinteretm;
	}

	private String province;
	private String nomsconjoint;
	private double tauxinteretm;
	private String raisonsocialpm;

	public String getRaisonsocialpm() {
		return raisonsocialpm;
	}

	public void setRaisonsocialpm(String raisonsocialpm) {
		this.raisonsocialpm = raisonsocialpm;
	}

	public String getNom_complet() {
		return nom_complet;
	}

	public void setNom_complet(String nom_complet) {
		this.nom_complet = nom_complet;
	}

	// POJO pour le rapport contrat Cautionnement
	private String nomcompletg;

	public String getNomcompletg() {
		return nomcompletg;
	}

	public void setNomcompletg(String nomcompletg) {
		this.nomcompletg = nomcompletg;
	}

	// POJO pour le rapport contrat Garantie deposer

	private String typegarantie;
	private int anneefabrication;
	private String etat;
	private double prixachat;
	private double valeurmarchande;
	private String clientgarant;
	private double sommevaleurmarchande;

	public String getTypegarantie() {
		return typegarantie;
	}

	public void setTypegarantie(String typegarantie) {
		this.typegarantie = typegarantie;
	}

	public int getAnneefabrication() {
		return anneefabrication;
	}

	public void setAnneefabrication(int anneefabrication) {
		this.anneefabrication = anneefabrication;
	}

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public double getPrixachat() {
		return prixachat;
	}

	public void setPrixachat(double prixachat) {
		this.prixachat = prixachat;
	}

	public double getValeurmarchande() {
		return valeurmarchande;
	}

	public void setValeurmarchande(double valeurmarchande) {
		this.valeurmarchande = valeurmarchande;
	}

	public String getClientgarant() {
		return clientgarant;
	}

	public void setClientgarant(String clientgarant) {
		this.clientgarant = clientgarant;
	}

	public double getSommevaleurmarchande() {
		return sommevaleurmarchande;
	}

	public void setSommevaleurmarchande(double sommevaleurmarchande) {
		this.sommevaleurmarchande = sommevaleurmarchande;
	}

	// POJO pour le rapport Lettre engagement
	private double montantdemande;
	private String datedossier;

	public double getMontantdemande() {
		return montantdemande;
	}

	public void setMontantdemande(double montantdemande) {
		this.montantdemande = montantdemande;
	}

	public String getDatedossier() {
		return datedossier;
	}

	public void setDatedossier(String datedossier) {
		this.datedossier = datedossier;
	}

}
