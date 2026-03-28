package dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;

import entite.WorkflowEntite;

public class WorkfloDAO {
	Statement st;
	ResultSet res;

	// ---------------- Module gestion de la demande crédit (onglet 1 du
	// worflow)---------------------
	public int enregistrementClientDemandeurCredit(int idCbsCli, int NbrCycle,
			String majeurquestion, String PropActivCom,
			String ExerceActuelActivite, String ActivZoneExclus,
			String CongolaisEtrangerPays, String ActiviteZoneOperation,
			String ActiviteExercePlusSixmois, String ActiviteEnregistreLegal,
			String NomCli, String PostnomCli, String PrenomCli,
			String DateNaissanceCli, String TypePieceIdentiteCli,
			String NumeroPieceIdentiteCli, String SexeCli,
			String NationaliteCli, String EtatCivilCli, String NomsConjoint,
			String DateNaissanceConjoint, String AdresseDomicileCli,
			String TelephoneCli, String emailCli, String TelephoneConjoint,
			String ReferenceAdresseClientValue, String UrlPhotos,
			int NumCbsPMCliValue, String RaisonSocialPM,
			String AdresseCbsPMCliValue, String NumTelCbsPMCliValue) {
		int nbrLigne = 0;
		try {
			String req = "insert into clientd(IdCbsCli,cycleCliCbs,AgeMajeurplus,PropActiviteCom,ExerceActuelActiv,ActivZoneExclus,CongolaisEtrangerPays,ActiviteZoneOperationel,ActiviteExerceplussixmois,ActiviteEnregLegal,NomCli,PostNomCli,PrenomCli,DateNaissanceCli,TypePieceIdentite,NumPieceIdentite,SexeCli,NationaliteCli,EtatCivilCli,NomsConjointCli,DateNaissanceConjointCli,AdresseDomicileCli,TelephoneCli,EmailCli,TelephoneConjointCli,ReferenceAdresseClient,photos,NumCbsPM,RaisonSocialPM,AdrsPM,TelPM) values('"
					+ idCbsCli
					+ "','"
					+ NbrCycle
					+ "','"
					+ majeurquestion
					+ "','"
					+ PropActivCom
					+ "','"
					+ ExerceActuelActivite
					+ "','"
					+ ActivZoneExclus
					+ "','"
					+ CongolaisEtrangerPays
					+ "','"
					+ ActiviteZoneOperation
					+ "','"
					+ ActiviteExercePlusSixmois
					+ "','"
					+ ActiviteEnregistreLegal
					+ "','"
					+ NomCli
					+ "','"
					+ PostnomCli
					+ "','"
					+ PrenomCli
					+ "','"
					+ DateNaissanceCli
					+ "','"
					+ TypePieceIdentiteCli
					+ "','"
					+ NumeroPieceIdentiteCli
					+ "','"
					+ SexeCli
					+ "','"
					+ NationaliteCli
					+ "','"
					+ EtatCivilCli
					+ "','"
					+ NomsConjoint
					+ "','"
					+ DateNaissanceConjoint
					+ "','"
					+ AdresseDomicileCli
					+ "','"
					+ TelephoneCli
					+ "','"
					+ emailCli
					+ "','"
					+ TelephoneConjoint
					+ "','"
					+ ReferenceAdresseClientValue
					+ "','"
					+ UrlPhotos
					+ "','"
					+ NumCbsPMCliValue
					+ "','"
					+ RaisonSocialPM
					+ "','"
					+ AdresseCbsPMCliValue + "','" + NumTelCbsPMCliValue + "')";
			st = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement stModClient;

	public int UpdateClientDemandeurCredit(int ID, int NbrCycle,
			String majeurquestion, String PropActivCom,
			String ExerceActuelActivite, String ActivZoneExclus,
			String CongolaisEtrangerPays, String ActiviteZoneOperation,
			String ActiviteExercePlusSixmois, String ActiviteEnregistreLegal,
			String NomCli, String PostnomCli, String PrenomCli,
			String DateNaissanceCli, String TypePieceIdentiteCli,
			String NumeroPieceIdentiteCli, String SexeCli,
			String NationaliteCli, String EtatCivilCli, String NomsConjoint,
			String DateNaissanceConjoint, String AdresseDomicileCli,
			String TelephoneCli, String emailCli, String TelephoneConjoint,
			String ReferenceAdresseClientValue, int NumCbsPMCliValue,
			String RaisonSocialPM, String AdresseCbsPMCliValue,
			String NumTelCbsPMCliValue) {
		int nbrLigne = 0;
		try {
			String req = "update clientd set cycleCliCbs='" + NbrCycle
					+ "',AgeMajeurplus='" + majeurquestion
					+ "',PropActiviteCom='" + PropActivCom
					+ "',ExerceActuelActiv='" + ExerceActuelActivite
					+ "',ActivZoneExclus='" + ActivZoneExclus
					+ "',CongolaisEtrangerPays='" + CongolaisEtrangerPays
					+ "',ActiviteZoneOperationel='" + ActiviteZoneOperation
					+ "',ActiviteExerceplussixmois='"
					+ ActiviteExercePlusSixmois + "',ActiviteEnregLegal='"
					+ ActiviteEnregistreLegal + "',NomCli='" + NomCli
					+ "',PostNomCli='" + PostnomCli + "',PrenomCli='"
					+ PrenomCli + "',DateNaissanceCli='" + DateNaissanceCli
					+ "',TypePieceIdentite='" + TypePieceIdentiteCli
					+ "',NumPieceIdentite='" + NumeroPieceIdentiteCli
					+ "',SexeCli='" + SexeCli + "',NationaliteCli='"
					+ NationaliteCli + "',EtatCivilCli='" + EtatCivilCli
					+ "',NomsConjointCli='" + NomsConjoint
					+ "',DateNaissanceConjointCli='" + DateNaissanceConjoint
					+ "',AdresseDomicileCli='" + AdresseDomicileCli
					+ "',TelephoneCli='" + TelephoneCli + "',EmailCli='"
					+ emailCli + "',TelephoneConjointCli='" + TelephoneConjoint
					+ "',ReferenceAdresseClient='"
					+ ReferenceAdresseClientValue + "',NumCbsPM='"
					+ NumCbsPMCliValue + "',RaisonSocialPM='" + RaisonSocialPM
					+ "',AdrsPM='" + AdresseCbsPMCliValue + "',TelPM='"
					+ NumTelCbsPMCliValue + "' where idclient='" + ID + "'";
			stModClient = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = stModClient.executeUpdate(req);
			// System.out.println("Requête exécutée : " + req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st2;
	ResultSet res2;

	public int GetIdClientDemandeurRecementEnregistrer(String noms,
			String postnom, String Prenom, String NumPieceIdentite) {
		int IdClientDemandeurRecementEnregistrer = 0;
		try {
			String req = "select idclient from clientd where NomCli='" + noms
					+ "' and PostNomCli='" + postnom + "' and PrenomCli='"
					+ Prenom + "' and NumPieceIdentite='" + NumPieceIdentite
					+ "'";
			st2 = ConnexionBDLocal.getConnexion().createStatement();
			res2 = st2.executeQuery(req);
			while (res2.next()) {
				IdClientDemandeurRecementEnregistrer = res2.getInt("idclient");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdClientDemandeurRecementEnregistrer;
	}

	Statement st3;
	ResultSet res3;

	public int enregistrementDossierCredit(String NumDossierCredit,
			String DateDemande, double MontantDemande, int dureePretDemande,
			int capacitepaiement, String ButInvestissement,
			String PrecisionSiAutre, String AvoirUnAutreCredit,
			String InstitutionPretAnterieur, String EtatDossier, int IdClientD,
			int DemandeInialiserPar) {
		int nbrLigne = 0;
		try {
			String req = "insert into dossiercredit(NumDossierCredit,DateDossier,MontantDemande,DureePret,CapacitePayementMensuel,ButInvestissment,PrecisionSiAutre,AvoirUnAutrePret,InstututionPretAnterieur,EtatDossierCredit,IdClientD,DossierinitiePar) values('"
					+ NumDossierCredit
					+ "','"
					+ DateDemande
					+ "','"
					+ MontantDemande
					+ "','"
					+ dureePretDemande
					+ "','"
					+ capacitepaiement
					+ "','"
					+ ButInvestissement
					+ "','"
					+ PrecisionSiAutre
					+ "','"
					+ AvoirUnAutreCredit
					+ "','"
					+ InstitutionPretAnterieur
					+ "','"
					+ EtatDossier
					+ "','"
					+ IdClientD + "','" + DemandeInialiserPar + "')";
			st3 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st3.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st3ModDos;

	public int UpdateDossierCredit(String NumDossierCredit,
			double MontantDemande, int dureePretDemande, int capacitepaiement,
			String ButInvestissement, String PrecisionSiAutre,
			String AvoirUnAutreCredit, String InstitutionPretAnterieur,
			int IdClientD) {
		int nbrLigne = 0;
		try {
			String req = "update dossiercredit set MontantDemande='"
					+ MontantDemande + "',DureePret='" + dureePretDemande
					+ "',CapacitePayementMensuel='" + capacitepaiement
					+ "',ButInvestissment='" + ButInvestissement
					+ "',PrecisionSiAutre='" + PrecisionSiAutre
					+ "',AvoirUnAutrePret='" + AvoirUnAutreCredit
					+ "',InstututionPretAnterieur='" + InstitutionPretAnterieur
					+ "',IdClientD='" + IdClientD
					+ "' where NumDossierCredit='" + NumDossierCredit + "'";
			st3ModDos = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st3ModDos.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st4;
	ResultSet res4;

	public String GetIdDossierDemandeurRecementEnregistrer(
			int idclientdemandeur, String DateDemnde, String etatDossier,
			int dossierInitierPar, int CapacitePaiement) {
		String IdDossierDemandeurRecementEnregistrer = "";
		try {
			String req = "select NumDossierCredit from dossiercredit where IdClientD='"
					+ idclientdemandeur
					+ "' and DateDossier='"
					+ DateDemnde
					+ "' and EtatDossierCredit='"
					+ etatDossier
					+ "' and DossierinitiePar='"
					+ dossierInitierPar
					+ "' and CapacitePayementMensuel='"
					+ CapacitePaiement
					+ "'";
			st4 = ConnexionBDLocal.getConnexion().createStatement();
			res4 = st4.executeQuery(req);
			while (res4.next()) {
				IdDossierDemandeurRecementEnregistrer = res4
						.getString("NumDossierCredit");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdDossierDemandeurRecementEnregistrer;
	}

	Statement st5;
	ResultSet res5;

	public int enregistrementBusinessClientDemandeur(
			String LibelleBusinessCliD, String Adresse,
			int DureeBusinessAdress, int DureeBusiness, String TypeBusiness,
			String FormeJuriduque, String SecteurActivite, int IdClientD,
			String NumDossierCredi, String DocAdmin) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessclient(Nombusiness,AdresseBusiness,DureeBussnessAdresse,DureeBussness,TypeBussness,FormJuridique,SecteurActivite,IdClientD,NumDossierCredit,DocAdmin) values('"
					+ LibelleBusinessCliD
					+ "','"
					+ Adresse
					+ "','"
					+ DureeBusinessAdress
					+ "','"
					+ DureeBusiness
					+ "','"
					+ TypeBusiness
					+ "','"
					+ FormeJuriduque
					+ "','"
					+ SecteurActivite
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCredi + "','" + DocAdmin + "')";
			st5 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st5.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st5ModBussness;

	public int UpdateBusinessClientDemandeur(int ID,
			String LibelleBusinessCliD, String Adresse,
			int DureeBusinessAdress, int DureeBusiness, String TypeBusiness,
			String FormeJuriduque, String SecteurActivite, int IdClientD,
			String NumDossierCredi, String DocAdmin) {
		int nbrLigne = 0;
		try {
			String req = "update businessclient set Nombusiness='"
					+ LibelleBusinessCliD + "',AdresseBusiness='" + Adresse
					+ "',DureeBussnessAdresse='" + DureeBusinessAdress
					+ "',DureeBussness='" + DureeBusiness + "',TypeBussness='"
					+ TypeBusiness + "',FormJuridique='" + FormeJuriduque
					+ "',SecteurActivite='" + SecteurActivite + "',IdClientD='"
					+ IdClientD + "',NumDossierCredit='" + NumDossierCredi
					+ "',DocAdmin='" + DocAdmin + "' where Id='" + ID + "'";
			st5ModBussness = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st5ModBussness.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st6;
	ResultSet res6;

	public int enregistrementPersonneRecommandationClientDemandeur(
			String NumDossierCre, String noms, String telephone,
			String Fonction, String AgentMcpop, String Adresse,
			String Relation, String noms2, String telephone2, String Fonction2,
			String AgentMcpop2, String Adresse2, String Relation2) {
		int nbrLigne = 0;
		try {
			String req = "insert into demandecreditrecommandepar(NumDossierCre,Noms,Telephone,FonctionR,AgentMcpop,AdresseR,Relation,Noms2,Telephone2,FonctionR2,AgentMcpop2,AdresseR2,Relation2) values('"
					+ NumDossierCre
					+ "','"
					+ noms
					+ "','"
					+ telephone
					+ "','"
					+ Fonction
					+ "','"
					+ AgentMcpop
					+ "','"
					+ Adresse
					+ "','"
					+ Relation
					+ "','"
					+ noms2
					+ "','"
					+ telephone2
					+ "','"
					+ Fonction2
					+ "','"
					+ AgentMcpop2
					+ "','"
					+ Adresse2
					+ "','" + Relation2 + "')";
			st6 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st6.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st6SS;

	public int UpdatePersonneRecommandationClientDemandeur(int ID,
			String NumDossierCre, String noms, String telephone,
			String Fonction, String AgentMcpop, String Adresse,
			String Relation, String noms2, String telephone2, String Fonction2,
			String AgentMcpop2, String Adresse2, String Relation2) {
		int nbrLigne = 0;
		try {
			String req = "update demandecreditrecommandepar set NumDossierCre='"
					+ NumDossierCre
					+ "',Noms='"
					+ noms
					+ "',Telephone='"
					+ telephone
					+ "',FonctionR='"
					+ Fonction
					+ "',AgentMcpop='"
					+ AgentMcpop
					+ "',AdresseR='"
					+ Adresse
					+ "',Relation='"
					+ Relation
					+ "',Noms2='"
					+ noms2
					+ "',Telephone2='"
					+ telephone2
					+ "',FonctionR2='"
					+ Fonction2
					+ "',AgentMcpop2='"
					+ AgentMcpop2
					+ "',AdresseR2='"
					+ Adresse2
					+ "',Relation2='"
					+ Relation2
					+ "' where Id='"
					+ ID + "'";
			st6SS = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st6SS.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st7;
	ResultSet res7;

	public String GetLibelleBrancheViaNumeroDossierSelectionnerEtapeCreation(
			String NumDossierCre) {
		String LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation = "";
		try {
			st7 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select br.LibelleBranche from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.NumDossierCredit='"
					+ NumDossierCre + "'";
			res7 = st7.executeQuery(req);
			while (res7.next()) {
				LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation = res7
						.getString("br.LibelleBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation;
	}

	Statement st8;
	ResultSet res8;

	public String GetLibelleProduitCreditViaNumeroDossierSelectionnerEtapeCreation(
			double montantdemande) {
		String LibelleProduitCreditViaNumeroDossierSelectionnerEtapeCreation = "";
		try {
			st = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Description from paramproduitcredit where MontantMin <= '"
					+ montantdemande
					+ "' and MontantMax >= '"
					+ montantdemande
					+ "'";
			res8 = st8.executeQuery(req);
			while (res8.next()) {
				LibelleProduitCreditViaNumeroDossierSelectionnerEtapeCreation = res8
						.getString("Description");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleProduitCreditViaNumeroDossierSelectionnerEtapeCreation;
	}

	Statement st9;
	ResultSet res9;

	public int enregistrementAssignationDossierCredit(int Branche,
			int IdSuperviseur, int IdProduitFinancier, int IdAnalysteCredit,
			int IdAssignateur, String NumDossierCre, int IdClientD) {
		int nbrLigne = 0;
		try {
			String req = "insert into assignationdossiercredit(IDBranche,IDsuperviseur,IDProduitCredit,IDAnalysteDossierCredit,IDAssignateur,NumDossierCre,IdClientD) values('"
					+ Branche
					+ "','"
					+ IdSuperviseur
					+ "','"
					+ IdProduitFinancier
					+ "','"
					+ IdAnalysteCredit
					+ "','"
					+ IdAssignateur
					+ "','"
					+ NumDossierCre
					+ "','"
					+ IdClientD
					+ "')";
			st9 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st9.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st9AssUpd;

	public int UpdateAssignationDossierCredit(int ID, int Branche,
			int IdSuperviseur, int IdProduitFinancier, int IdAnalysteCredit,
			int IdAssignateur, String NumDossierCre, int IdClientD) {
		int nbrLigne = 0;
		try {
			String req = "update assignationdossiercredit set IDBranche='"
					+ Branche + "',IDsuperviseur='" + IdSuperviseur
					+ "',IDProduitCredit='" + IdProduitFinancier
					+ "',IDAnalysteDossierCredit='" + IdAnalysteCredit
					+ "',IDAssignateur='" + IdAssignateur + "',NumDossierCre='"
					+ NumDossierCre + "',IdClientD='" + IdClientD
					+ "' where Id='" + ID + "'";
			st9AssUpd = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st9AssUpd.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st10;
	ResultSet res10;

	public int ModificationAssignationDossierCreditEnFonctionMontantValiderComite(
			int IdProduitFinancier, String NumDossierCre, int IdClientD) {
		int nbrLigne = 0;
		try {
			String req = "update assignationdossiercredit set IDProduitCredit='"
					+ IdProduitFinancier
					+ "' where NumDossierCre='"
					+ NumDossierCre + "' and IdClientD='" + IdClientD + "'";
			st10 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st10.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st11;
	ResultSet res11;

	public List<WorkflowEntite> ListeBrancheMicropop() {
		List<WorkflowEntite> ListeAgence = new ArrayList<>();
		try {
			String req = "select LibelleBranche from branche order by LibelleBranche asc";
			st11 = ConnexionBDLocal.getConnexion().createStatement();
			res11 = st11.executeQuery(req);
			while (res11.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibellebranche(res11.getString("LibelleBranche"));
				ListeAgence.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAgence;
	}

	Statement st12;
	ResultSet res12;

	public List<WorkflowEntite> ListeSuperviseurMicropop(
			int IdBrancheDossierCredit) {
		List<WorkflowEntite> ListeSuperviseur = new ArrayList<>();
		try {
			String ProfilSuperviseur = "SUP";
			String req = "select NomsUser from user where ProfilUser='"
					+ ProfilSuperviseur + "' and IdBranche='"
					+ IdBrancheDossierCredit
					+ "' and Statut='Actif' order by NomsUser asc";
			st12 = ConnexionBDLocal.getConnexion().createStatement();
			res12 = st12.executeQuery(req);
			while (res12.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res12.getString("NomsUser"));
				ListeSuperviseur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeSuperviseur;
	}

	Statement st13;
	ResultSet res13;

	public int GetIDBrancheMicropop(String LibelleBranche) {
		int IdBranche = 0;
		try {
			String req = "select IdBranche from branche where LibelleBranche='"
					+ LibelleBranche + "'";
			st13 = ConnexionBDLocal.getConnexion().createStatement();
			res13 = st13.executeQuery(req);
			while (res13.next()) {
				IdBranche = res13.getInt("IdBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdBranche;
	}

	Statement st14;
	ResultSet res14;

	public int GetIDBrancheMicropopviaNumDossierCredit(String NumDossierCredit) {
		int IdBranche = 0;
		try {
			String req = "select u.IdBranche from user as u inner join branche as br on u.IdBranche=br.IdBranche inner join dossiercredit as doss on u.Iduser=doss.DossierinitiePar where doss.NumDossierCredit='"
					+ NumDossierCredit + "'";
			st14 = ConnexionBDLocal.getConnexion().createStatement();
			res14 = st14.executeQuery(req);
			while (res14.next()) {
				IdBranche = res14.getInt("u.IdBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdBranche;
	}

	Statement st15;
	ResultSet res15;

	public int GetIDSuperviseur(String NomsSuperviseur) {
		int IDSuperviseur = 0;
		try {
			String req = "select Iduser from user where NomsUser='"
					+ NomsSuperviseur + "'";
			st15 = ConnexionBDLocal.getConnexion().createStatement();
			res15 = st15.executeQuery(req);
			while (res15.next()) {
				IDSuperviseur = res15.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDSuperviseur;
	}

	Statement st15buus;
	ResultSet res15buus;

	public int GetIDSuperviseur2(String NomsSuperviseur) {
		int IDSuperviseur = 0;
		try {
			String profil = "SUP";
			String req = "select Iduser from user where NomsUser='"
					+ NomsSuperviseur + "' and ProfilUser='" + profil + "'";
			st15buus = ConnexionBDLocal.getConnexion().createStatement();
			res15buus = st15buus.executeQuery(req);
			while (res15buus.next()) {
				IDSuperviseur = res15buus.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDSuperviseur;
	}

	Statement st16;
	ResultSet res16;

	public String GetNumeroTelephoneUserViaId(int IdUser) {
		String NumeroTelephoneUserViaId = "";
		try {
			String req = "select Telephone from user where Iduser='" + IdUser
					+ "'";
			st16 = ConnexionBDLocal.getConnexion().createStatement();
			res16 = st16.executeQuery(req);
			while (res16.next()) {
				NumeroTelephoneUserViaId = res16.getString("Telephone");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NumeroTelephoneUserViaId;
	}

	Statement st17;
	ResultSet res17;

	public String GetlibelleProduitCredit(double MontantDemande) {
		String LibelleProduitCredit = "";
		try {
			st17 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Description from paramproduitcredit where MontantMin <= '"
					+ MontantDemande
					+ "' and MontantMax >= '"
					+ MontantDemande
					+ "'";
			res17 = st17.executeQuery(req);
			while (res17.next()) {
				LibelleProduitCredit = res17.getString("Description");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleProduitCredit;
	}

	Statement st18;
	ResultSet res18;

	public double GetTauxInteretProduitCredit(int idproduitCredit) {
		double TauxInteret = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionBDLocal.getConnexion();
			st18 = cnx.createStatement();
			String req = "select TauxInteret from paramproduitcredit where Id='"
					+ idproduitCredit + "'";
			res18 = st18.executeQuery(req);
			while (res18.next()) {
				TauxInteret = res18.getDouble("TauxInteret");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res18 != null)
					res18.close();
			} catch (Exception e) {
			}
			try {
				if (st18 != null)
					st18.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return TauxInteret;
	}

	Statement st181995;
	ResultSet res181995;

	public double GetTauxInteretProduitCreditPourEcheance(int idproduitCredit) {
		double TauxInteret = 0;
		try {
			st181995 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TauxInteretM from paramproduitcredit where Id='"
					+ idproduitCredit + "'";
			res181995 = st181995.executeQuery(req);
			while (res181995.next()) {
				TauxInteret = res181995.getDouble("TauxInteretM");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TauxInteret;
	}

	/**
	 * Statement st19; ResultSet res19;
	 * 
	 * public double GetTauxInteretProduitCredit2(int idproduitCredit) { double
	 * TauxInteret = 0; try { st19 =
	 * ConnexionBDLocal.getConnexion().createStatement(); String req =
	 * "select TauxInteret from paramproduitcredit where Id='" + idproduitCredit
	 * + "'"; res19 = st19.executeQuery(req); while (res19.next()) { TauxInteret
	 * = res19.getDouble("TauxInteret"); } } catch (Exception ex) {
	 * ex.printStackTrace(); } return TauxInteret; }
	 **/
	Statement st20;
	ResultSet res20;

	public double GetFraisDossierProduitCredit(int idproduitCredit) {
		double FraisDossier = 0;
		try {
			st20 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FraisDossier from paramproduitcredit where Id='"
					+ idproduitCredit + "'";
			res20 = st20.executeQuery(req);
			while (res20.next()) {
				FraisDossier = res20.getDouble("FraisDossier");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return FraisDossier;
	}

	Statement st21;
	ResultSet res21;

	public double GetCautionProduitCredit(int idproduitCredit) {
		double Caution = 0;
		try {
			st21 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Caution from paramproduitcredit where Id='"
					+ idproduitCredit + "'";
			res21 = st21.executeQuery(req);
			while (res21.next()) {
				Caution = res21.getDouble("Caution");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return Caution;
	}

	Statement st22;
	ResultSet res22;

	public String GetDateNaissanceClientDemandeurProduitCredit(
			String NumDossierCredit, int idclientD) {
		String Datenaisse = "";
		try {
			st22 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.DateNaissanceCli from clientd as cli inner join dossiercredit as doscre on cli.idclient=doscre.IdClientD where doscre.NumDossierCredit='"
					+ NumDossierCredit
					+ "' and cli.idclient='"
					+ idclientD
					+ "'";
			res22 = st22.executeQuery(req);
			while (res22.next()) {
				Datenaisse = res22.getString("cli.DateNaissanceCli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return Datenaisse;
	}

	Statement st23;
	ResultSet res23;

	public int GetIDProduitCreditViaDescription(String LibelleProduitCredit) {
		int IDProduitCredit = 0;
		try {
			String req = "select Id from paramproduitcredit where Description='"
					+ LibelleProduitCredit + "'";
			st23 = ConnexionBDLocal.getConnexion().createStatement();
			res23 = st23.executeQuery(req);
			while (res23.next()) {
				IDProduitCredit = res23.getInt("Id");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDProduitCredit;
	}

	Statement st24;
	ResultSet res24;

	public List<WorkflowEntite> ListeACMicropop(int IdBrancheDossierCredit) {
		List<WorkflowEntite> ListePromoteur = new ArrayList<>();
		try {
			String ProfilAC = "CA";
			String req = "select NomsUser from user where ProfilUser='"
					+ ProfilAC + "' and IdBranche='" + IdBrancheDossierCredit
					+ "' and Statut='Actif' order by NomsUser asc";
			st24 = ConnexionBDLocal.getConnexion().createStatement();
			res24 = st24.executeQuery(req);
			while (res24.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res24.getString("NomsUser"));
				ListePromoteur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListePromoteur;
	}

	Statement st25;
	ResultSet res25;

	public int GetIDAC(String NomsAgentcredit) {
		int IDAgentcredit = 0;
		try {
			String req = "select Iduser from user where NomsUser='"
					+ NomsAgentcredit + "'";
			st25 = ConnexionBDLocal.getConnexion().createStatement();
			res25 = st25.executeQuery(req);
			while (res25.next()) {
				IDAgentcredit = res25.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDAgentcredit;
	}

	Statement st26;
	ResultSet res26;

	public List<WorkflowEntite> ListeAssignateurMicropop(
			int IdBrancheDossierCredit) {
		List<WorkflowEntite> ListeAssignateur = new ArrayList<>();
		try {
			String ProfilAssignateur = "BM";
			String req = "select NomsUser from user where ProfilUser='"
					+ ProfilAssignateur + "' and IdBranche='"
					+ IdBrancheDossierCredit
					+ "' and Statut='Actif' order by NomsUser asc";
			st26 = ConnexionBDLocal.getConnexion().createStatement();
			res26 = st26.executeQuery(req);
			while (res26.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res26.getString("NomsUser"));
				ListeAssignateur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAssignateur;
	}

	Statement st27;
	ResultSet res27;

	public String GetBrancheAgentInitieDemandeDossierCredit(String NumeroDossier) {
		String BrancheAgentInitieDemandeDossierCredit = "";
		try {
			String req = "select b.LibelleBranche from dossiercredit dosc inner join user u on dosc.DossierinitiePar=u.Iduser inner join branche b on b.IdBranche=u.IdBranche where dosc.NumDossierCredit='"
					+ NumeroDossier + "'";
			st27 = ConnexionBDLocal.getConnexion().createStatement();
			res27 = st27.executeQuery(req);
			while (res27.next()) {
				BrancheAgentInitieDemandeDossierCredit = res27
						.getString("b.LibelleBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return BrancheAgentInitieDemandeDossierCredit;
	}

	Statement st28;
	ResultSet res28;

	public int GetIDAssignateurViaNoms(String NomsAssignateur) {
		int IDAssignateur = 0;
		try {
			String req = "select Iduser from user where NomsUser='"
					+ NomsAssignateur + "'";
			st28 = ConnexionBDLocal.getConnexion().createStatement();
			res28 = st28.executeQuery(req);
			while (res28.next()) {
				IDAssignateur = res28.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDAssignateur;
	}

	Statement st28BUS;
	ResultSet res28BUS;

	public int GetIDAssignateurViaNomsBMOK(String NomsAssignateur) {
		int IDAssignateurBM = 0;
		try {
			String req = "select Iduser from user where NomsUser='"
					+ NomsAssignateur
					+ "' and ProfilUser='BM' and Statut='Actif'";
			st28BUS = ConnexionBDLocal.getConnexion().createStatement();
			res28BUS = st28BUS.executeQuery(req);
			while (res28BUS.next()) {
				IDAssignateurBM = res28BUS.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDAssignateurBM;
	}

	Statement st29;
	ResultSet res29;

	public int GetIDInitiateurDossier(String NomsInitiateurDossier) {
		int IDAgentInitiateurDossier = 0;
		try {
			String req = "select Iduser from user where NomsUser='"
					+ NomsInitiateurDossier
					+ "' and Statut='Actif' and (ProfilUser='SC' or ProfilUser='CA')";
			st29 = ConnexionBDLocal.getConnexion().createStatement();
			res29 = st29.executeQuery(req);
			while (res29.next()) {
				IDAgentInitiateurDossier = res29.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDAgentInitiateurDossier;
	}

	Statement st30;
	ResultSet res30;

	public String GetDescriptionProduitCreditViaIdProduitCredit(
			int IdProduitCredit) {
		String DescriptionProduitCredit = "";
		try {
			String req = "select Description from paramproduitcredit where Id='"
					+ IdProduitCredit + "'";
			st30 = ConnexionBDLocal.getConnexion().createStatement();
			res30 = st30.executeQuery(req);
			while (res30.next()) {
				DescriptionProduitCredit = res30.getString("Description");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DescriptionProduitCredit;
	}

	Statement st31;
	ResultSet res31;

	public String GetLibelleBrancheViaIdBranche(int IdBranche) {
		String LibelleBranche = "";
		try {
			String req = "select LibelleBranche from branche where IdBranche='"
					+ IdBranche + "'";
			st31 = ConnexionBDLocal.getConnexion().createStatement();
			res31 = st31.executeQuery(req);
			while (res31.next()) {
				LibelleBranche = res31.getString("LibelleBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleBranche;
	}

	Statement st32;
	ResultSet res32;

	public String GetNomsAgentCreditAnalyse(String NumDossierCre) {
		String NomsAgentCreditAnalyse = "";
		try {
			String req = "select u.NomsUser from user as u inner join assignationdossiercredit as ass on u.Iduser=ass.IDAnalysteDossierCredit inner join dossiercredit as doc on ass.NumDossierCre=doc.NumDossierCredit where ass.NumDossierCre='"
					+ NumDossierCre + "'";
			st32 = ConnexionBDLocal.getConnexion().createStatement();
			res32 = st32.executeQuery(req);
			while (res32.next()) {
				NomsAgentCreditAnalyse = res32.getString("u.NomsUser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NomsAgentCreditAnalyse;
	}

	// ---------------- Module gestion Information Famille (onglet 2 du
	// worflow)---------------------a coder à la date du 10 avril 2025
	Statement st33;
	ResultSet res33;

	public int enregistrementInformationResidenceClientD(int idclientD,
			int ResidenceActuelDepuis, String Propiete, String DateVisite,
			String HeureVisite, String NomsBailleurs, String NumDossier) {
		int nbrLigne = 0;
		try {
			String req = "insert into inforesidenceclientd(idclientD,ResidenceActueldepuis,Propriete,DateVisite,HeureVisite,NomsBailleurs,NumDossierCredit) values('"
					+ idclientD
					+ "','"
					+ ResidenceActuelDepuis
					+ "','"
					+ Propiete
					+ "','"
					+ DateVisite
					+ "','"
					+ HeureVisite
					+ "','" + NomsBailleurs + "','" + NumDossier + "')";
			st33 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st33.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st330;

	public int UpdateInformationResidenceClientD(int ID, int idclientD,
			int ResidenceActuelDepuis, String Propiete, String DateVisite,
			String HeureVisite, String NomsBailleurs, String NumDossier) {
		int nbrLigne = 0;
		try {
			String req = "update inforesidenceclientd set idclientD='"
					+ idclientD + "',ResidenceActueldepuis='"
					+ ResidenceActuelDepuis + "',Propriete='" + Propiete
					+ "',DateVisite='" + DateVisite + "',HeureVisite='"
					+ HeureVisite + "',NomsBailleurs='" + NomsBailleurs
					+ "',NumDossierCredit='" + NumDossier + "' where Id='" + ID
					+ "'";
			st330 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st330.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st34;
	ResultSet res34;

	public int enregistrementCompositionFamilialeClientD(int idclientD,
			String name, int age, String LienParente, String Localisation,
			String Profession, String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "insert into compositionfamiliale(IdclientD,Nom,Age,LienParente,localisation,Profession,NumDossierCredit) values('"
					+ idclientD
					+ "','"
					+ name
					+ "','"
					+ age
					+ "','"
					+ LienParente
					+ "','"
					+ Localisation
					+ "','"
					+ Profession
					+ "','" + NumDossierCredit + "')";
			st34 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st34.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st34CF;

	public int UpdateCompositionFamilialeClientD(int ID, int idclientD,
			String name, int age, String LienParente, String Localisation,
			String Profession, String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "update compositionfamiliale set IdclientD='"
					+ idclientD + "',Nom='" + name + "',Age='" + age
					+ "',LienParente='" + LienParente + "',localisation='"
					+ Localisation + "',Profession='" + Profession
					+ "',NumDossierCredit='" + NumDossierCredit
					+ "' where Id='" + ID + "'";
			st34CF = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st34CF.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st35;
	ResultSet res35;

	public int enregistrementRevenuConjointClientD(int idclientD,
			String LibelleSociete, String AdresseSociete, String Poste,
			String salareNet, String ancienete, String Commentaire,
			String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "insert into revenuconjoint(IdClientD,LibelleSociete,Adresse,Poste,SalaireNet,Ancienete,Commentaire,NumDossierCredit) values('"
					+ idclientD
					+ "','"
					+ LibelleSociete
					+ "','"
					+ AdresseSociete
					+ "','"
					+ Poste
					+ "','"
					+ salareNet
					+ "','"
					+ ancienete
					+ "','"
					+ Commentaire
					+ "','"
					+ NumDossierCredit + "')";
			st35 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st35.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st35KB;

	public int UpdateRevenuConjointClientD(int ID, int idclientD,
			String LibelleSociete, String AdresseSociete, String Poste,
			String salareNet, String ancienete, String Commentaire,
			String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "update revenuconjoint set IdClientD='" + idclientD
					+ "',LibelleSociete='" + LibelleSociete + "',Adresse='"
					+ AdresseSociete + "',Poste='" + Poste + "',SalaireNet='"
					+ salareNet + "',Ancienete='" + ancienete
					+ "',Commentaire='" + Commentaire + "',NumDossierCredit='"
					+ NumDossierCredit + "' where Id='" + ID + "'";
			st35KB = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st35KB.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st36;
	ResultSet res36;

	public int enregistrementReferencesResidenceClientD(String NomReferent,
			String telephoneReferent, String Relation, int idclientd,
			String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "insert into referenceresidence(NomsRR,TelephoneRR,RelationRR,IdClientD,NumDossierCredit) values('"
					+ NomReferent
					+ "','"
					+ telephoneReferent
					+ "','"
					+ Relation
					+ "','"
					+ idclientd
					+ "','"
					+ NumDossierCredit
					+ "')";
			st36 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st36.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st36RRR;

	public int UpdateReferencesResidenceClientD(int ID, String NomReferent,
			String telephoneReferent, String Relation, int idclientd,
			String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "update referenceresidence set NomsRR='" + NomReferent
					+ "',TelephoneRR='" + telephoneReferent + "',RelationRR='"
					+ Relation + "',IdClientD='" + idclientd
					+ "',NumDossierCredit='" + NumDossierCredit
					+ "' where Id='" + ID + "'";
			st36RRR = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st36RRR.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st37;
	ResultSet res37;

	public int enregistrementDepenseFamillialeClientD(int nourriture,
			int combustible, int loyer, int transport, int communication,
			int habillement, int education, int service, int soinMedicaux,
			int autresDepense, int imprevu, int loisir, int autreDepensePrive,
			int totalG, int idclientD, String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "insert into depensefamiliale(Nourriture,Combustiblecuisson,loyer,transport,communication,habillement,education,service,soinmedicaux,autresdepense,imprevu,loisir,autredepenseprive,TotalGeneralDF,IdClientD,NumDossierCredit) values('"
					+ nourriture
					+ "','"
					+ combustible
					+ "','"
					+ loyer
					+ "','"
					+ transport
					+ "','"
					+ communication
					+ "','"
					+ habillement
					+ "','"
					+ education
					+ "','"
					+ service
					+ "','"
					+ soinMedicaux
					+ "','"
					+ autresDepense
					+ "','"
					+ imprevu
					+ "','"
					+ loisir
					+ "','"
					+ autreDepensePrive
					+ "','"
					+ totalG
					+ "','"
					+ idclientD
					+ "','"
					+ NumDossierCredit
					+ "')";
			st37 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st37.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st37Modif;

	public int UpdateDepenseFamillialeClientD(int ID, int nourriture,
			int combustible, int loyer, int transport, int communication,
			int habillement, int education, int service, int soinMedicaux,
			int autresDepense, int imprevu, int loisir, int autreDepensePrive,
			int totalG, int idclientD, String NumDossierCredit) {
		int nbrLigne = 0;
		try {
			String req = "update depensefamiliale set Nourriture='"
					+ nourriture + "',Combustiblecuisson='" + combustible
					+ "',loyer='" + loyer + "',transport='" + transport
					+ "',communication='" + communication + "',habillement='"
					+ habillement + "',education='" + education + "',service='"
					+ service + "',soinmedicaux='" + soinMedicaux
					+ "',autresdepense='" + autresDepense + "',imprevu='"
					+ imprevu + "',loisir='" + loisir + "',autredepenseprive='"
					+ autreDepensePrive + "',TotalGeneralDF='" + totalG
					+ "',IdClientD='" + idclientD + "',NumDossierCredit='"
					+ NumDossierCredit + "' where Id='" + ID + "'";
			st37Modif = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st37Modif.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st37del;

	public int DeleteCompositionFamilleClientD(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from compositionfamiliale where Id='" + ID
					+ "'";
			st37del = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st37del.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st38;
	ResultSet res38;

	public List<WorkflowEntite> ListeCompositionFamillialeClientD(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeCompositionFamilliale = new ArrayList<>();
		try {
			String req = "select Id,Nom,Age,LienParente,localisation,Profession from compositionfamiliale where NumDossierCredit='"
					+ NumDossierCredit
					+ "' and IdclientD='"
					+ idcliend
					+ "' order by Nom asc";
			st38 = ConnexionBDLocal.getConnexion().createStatement();
			res38 = st38.executeQuery(req);
			while (res38.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdcompositionfamilliale(res38.getInt("Id"));
				wkentite.setNomcompositionfamilliale(res38.getString("Nom"));
				wkentite.setAge(res38.getInt("Age"));
				wkentite.setLienparente(res38.getString("LienParente"));
				wkentite.setLocalisation(res38.getString("localisation"));
				wkentite.setProfession(res38.getString("Profession"));
				ListeCompositionFamilliale.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompositionFamilliale;
	}

	Statement st38CCF;
	ResultSet res38CCF;

	public List<WorkflowEntite> ListeCompositionFamillialeClientDPourModification(
			int IDcompositionFamille) {
		List<WorkflowEntite> ListeCompositionFamillialeClientDPourModification = new ArrayList<>();
		try {
			String req = "select Id,Nom,Age,LienParente,localisation,Profession from compositionfamiliale where Id='"
					+ IDcompositionFamille + "'";
			st38CCF = ConnexionBDLocal.getConnexion().createStatement();
			res38CCF = st38CCF.executeQuery(req);
			while (res38CCF.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdcompositionfamilliale(res38CCF.getInt("Id"));
				wkentite.setNomcompositionfamilliale(res38CCF.getString("Nom"));
				wkentite.setAge(res38CCF.getInt("Age"));
				wkentite.setLienparente(res38CCF.getString("LienParente"));
				wkentite.setLocalisation(res38CCF.getString("localisation"));
				wkentite.setProfession(res38CCF.getString("Profession"));
				ListeCompositionFamillialeClientDPourModification.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompositionFamillialeClientDPourModification;
	}

	// ---------------- Module business 1 (onglet 3 du
	// worflow)---------------------
	Statement st39;
	ResultSet res39;

	public int enregistrementBusiness1ClientD(int activiteDepuis,
			int LieuDepuis, int NbrPointVente, String ProprieteLocaux,
			String NomsBailleurs, String DateVisite, String HeureVisite,
			int idclientd, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessoneclientd(ActiviteDepuis,LieuDepuis,NbrPointVente,ProprieteLocaux,NomBailleur,DateVisite,HeureVisite,IdClientd,NumDossiercredi) values('"
					+ activiteDepuis
					+ "','"
					+ LieuDepuis
					+ "','"
					+ NbrPointVente
					+ "','"
					+ ProprieteLocaux
					+ "','"
					+ NomsBailleurs
					+ "','"
					+ DateVisite
					+ "','"
					+ HeureVisite
					+ "','" + idclientd + "','" + NumDossierCre + "')";
			st39 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st39.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st39ABN;

	public int UpdateBusiness1ClientD(int ID, int activiteDepuis,
			int LieuDepuis, int NbrPointVente, String ProprieteLocaux,
			String NomsBailleurs, String DateVisite, String HeureVisite,
			int idclientd, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessoneclientd set ActiviteDepuis='"
					+ activiteDepuis + "',LieuDepuis='" + LieuDepuis
					+ "',NbrPointVente='" + NbrPointVente
					+ "',ProprieteLocaux='" + ProprieteLocaux
					+ "',NomBailleur='" + NomsBailleurs + "',DateVisite='"
					+ DateVisite + "',HeureVisite='" + HeureVisite
					+ "',IdClientd='" + idclientd + "',NumDossiercredi='"
					+ NumDossierCre + "' where Id='" + ID + "'";
			st39ABN = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st39ABN.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st40;
	ResultSet res40;

	public int enregistrementBusiness1SockPrincipalClientD(
			String Libelleproduit, int qteProduit, double PrixAchat,
			double prixvente, double marge, double valeurstock, int idclientd,
			String NumDossierCre, String Observation) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessonestockprincipal(LibelleProduit,QteProduit,PrixAchat,PrixVente,Marge,ValeurStock,IdClientD,NumDossierCre,Observation) values('"
					+ Libelleproduit
					+ "','"
					+ qteProduit
					+ "','"
					+ PrixAchat
					+ "','"
					+ prixvente
					+ "','"
					+ marge
					+ "','"
					+ valeurstock
					+ "','"
					+ idclientd
					+ "','"
					+ NumDossierCre
					+ "','"
					+ Observation + "')";
			st40 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st40.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st40UU;

	public int UpdateBusiness1SockPrincipalClientD(int ID,
			String Libelleproduit, int qteProduit, double PrixAchat,
			double prixvente, double marge, double valeurstock, int idclientd,
			String NumDossierCre, String Observation) {
		int nbrLigne = 0;
		try {
			String req = "update businessonestockprincipal set LibelleProduit='"
					+ Libelleproduit
					+ "',QteProduit='"
					+ qteProduit
					+ "',PrixAchat='"
					+ PrixAchat
					+ "',PrixVente='"
					+ prixvente
					+ "',Marge='"
					+ marge
					+ "',ValeurStock='"
					+ valeurstock
					+ "',IdClientD='"
					+ idclientd
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "',Observation='"
					+ Observation
					+ "' where Id='" + ID + "'";
			st40UU = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st40UU.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st40UUxx;

	public int DeleteBusiness1SockPrincipalClientD(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from businessonestockprincipal where Id='"
					+ ID + "'";
			st40UUxx = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st40UUxx.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st41;
	ResultSet res41;

	public List<WorkflowEntite> GetListeStockPrincipalBusiness1(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		try {
			String req = "select Id,LibelleProduit,QteProduit,PrixAchat,PrixVente,Marge,ValeurStock,Observation from businessonestockprincipal where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st41 = ConnexionBDLocal.getConnexion().createStatement();
			res41 = st41.executeQuery(req);
			while (res41.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdstockprincipal(res41.getInt("Id"));
				wkentite.setLibelleproduitstockprincipal(res41
						.getString("LibelleProduit"));
				wkentite.setQteproduitstockprincipal(res41.getInt("QteProduit"));
				wkentite.setPrixachatstockprincipal(res41
						.getDouble("PrixAchat"));
				wkentite.setPrixventestockprincipal(res41
						.getDouble("PrixVente"));
				wkentite.setMargestockprincipaux(res41.getDouble("Marge"));
				wkentite.setValeurstockprincipal(res41.getDouble("ValeurStock"));
				wkentite.setObservationstockprincipal(res41
						.getString("Observation"));
				ListeStockPrincipal.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeStockPrincipal;
	}

	Statement st41SP;
	ResultSet res41SP;

	public List<WorkflowEntite> GetListeStockPrincipalBusiness1PourModification(
			int idStock) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		try {
			String req = "select Id,LibelleProduit,QteProduit,PrixAchat,PrixVente,Marge,ValeurStock,Observation from businessonestockprincipal where Id='"
					+ idStock + "'";
			st41SP = ConnexionBDLocal.getConnexion().createStatement();
			res41SP = st41SP.executeQuery(req);
			while (res41SP.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdstockprincipal(res41SP.getInt("Id"));
				wkentite.setLibelleproduitstockprincipal(res41SP
						.getString("LibelleProduit"));
				wkentite.setQteproduitstockprincipal(res41SP
						.getInt("QteProduit"));
				wkentite.setPrixachatstockprincipal(res41SP
						.getDouble("PrixAchat"));
				wkentite.setPrixventestockprincipal(res41SP
						.getDouble("PrixVente"));
				wkentite.setMargestockprincipaux(res41SP.getDouble("Marge"));
				wkentite.setValeurstockprincipal(res41SP
						.getDouble("ValeurStock"));
				wkentite.setObservationstockprincipal(res41SP
						.getString("Observation"));
				ListeStockPrincipal.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeStockPrincipal;
	}

	Statement st42;
	ResultSet res42;

	public List<WorkflowEntite> GetListeAchatProduitPincipauxBusiness1(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeAchatProduitPincipaux = new ArrayList<>();
		try {
			String req = "select * from businessoneachatproduitprincipaux where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st42 = ConnexionBDLocal.getConnexion().createStatement();
			res42 = st42.executeQuery(req);
			while (res42.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdapp(res42.getInt("Id"));
				wkentite.setLibelleproduitprincipauxachat(res42
						.getString("LibelleProduitPrincipaux"));
				wkentite.setQteproduitprincipauxachat(res42
						.getInt("QteParAchat"));
				wkentite.setFrequenceproduitprincipauxachat(res42
						.getInt("FrequenceMensuelle"));
				wkentite.setAchatmensuelproduitprincipaux(res42
						.getDouble("AchatMensuel"));
				wkentite.setVentemensuelproduitprincipaux(res42
						.getDouble("VenteMensuel"));
				wkentite.setPapp(res42.getDouble("PA"));
				wkentite.setPvpp(res42.getDouble("PV"));
				ListeAchatProduitPincipaux.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAchatProduitPincipaux;
	}

	Statement st42APP;
	ResultSet res42APP;

	public List<WorkflowEntite> GetListeAchatProduitPincipauxBusiness1PourModification(
			int ID) {
		List<WorkflowEntite> ListeAchatProduitPincipaux = new ArrayList<>();
		try {
			String req = "select * from businessoneachatproduitprincipaux where Id='"
					+ ID + "'";
			st42APP = ConnexionBDLocal.getConnexion().createStatement();
			res42APP = st42APP.executeQuery(req);
			while (res42APP.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdapp(res42APP.getInt("Id"));
				wkentite.setLibelleproduitprincipauxachat(res42APP
						.getString("LibelleProduitPrincipaux"));
				wkentite.setQteproduitprincipauxachat(res42APP
						.getInt("QteParAchat"));
				wkentite.setFrequenceproduitprincipauxachat(res42APP
						.getInt("FrequenceMensuelle"));
				wkentite.setAchatmensuelproduitprincipaux(res42APP
						.getDouble("AchatMensuel"));
				wkentite.setVentemensuelproduitprincipaux(res42APP
						.getDouble("VenteMensuel"));
				wkentite.setPapp(res42APP.getDouble("PA"));
				wkentite.setPvpp(res42APP.getDouble("PV"));
				ListeAchatProduitPincipaux.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAchatProduitPincipaux;
	}

	Statement st43;
	ResultSet res43;

	public List<WorkflowEntite> GetListeAutreStockBusiness1(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		try {
			String req = "select Id,LibelleProduitAS,QteProduitAS,PrixAchatAS,PrixVenteAS,MargeAS,ValeurStockAS from businessoneautrestock where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st43 = ConnexionBDLocal.getConnexion().createStatement();
			DecimalFormat df = new DecimalFormat("0.00");
			res43 = st43.executeQuery(req);
			while (res43.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdstockprincipal(res43.getInt("Id"));
				wkentite.setLibelleproduitstockprincipal(res43
						.getString("LibelleProduitAS"));
				wkentite.setQteproduitstockprincipal(res43
						.getInt("QteProduitAS"));
				wkentite.setPrixachatstockprincipal(res43
						.getDouble("PrixAchatAS"));
				wkentite.setPrixventestockprincipal(res43
						.getDouble("PrixVenteAS"));
				double marge = res43.getDouble("MargeAS");
				marge = Double.parseDouble(df.format(marge));
				wkentite.setMargestockprincipaux(marge);
				wkentite.setValeurstockprincipal(res43
						.getDouble("ValeurStockAS"));
				ListeStockPrincipal.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeStockPrincipal;
	}

	Statement st43AS;
	ResultSet res43AS;

	public List<WorkflowEntite> GetListeAutreStockBusiness1PourModification(
			int IdAS) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		try {
			String req = "select Id,LibelleProduitAS,QteProduitAS,PrixAchatAS,PrixVenteAS,MargeAS,ValeurStockAS from businessoneautrestock where Id='"
					+ IdAS + "'";
			st43AS = ConnexionBDLocal.getConnexion().createStatement();
			DecimalFormat df = new DecimalFormat("0.00");
			res43AS = st43AS.executeQuery(req);
			while (res43AS.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdstockprincipal(res43AS.getInt("Id"));
				wkentite.setLibelleproduitstockprincipal(res43AS
						.getString("LibelleProduitAS"));
				wkentite.setQteproduitstockprincipal(res43AS
						.getInt("QteProduitAS"));
				wkentite.setPrixachatstockprincipal(res43AS
						.getDouble("PrixAchatAS"));
				wkentite.setPrixventestockprincipal(res43AS
						.getDouble("PrixVenteAS"));
				double marge = res43AS.getDouble("MargeAS");
				marge = Double.parseDouble(df.format(marge));
				wkentite.setMargestockprincipaux(marge);
				wkentite.setValeurstockprincipal(res43AS
						.getDouble("ValeurStockAS"));
				ListeStockPrincipal.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeStockPrincipal;
	}

	Statement st44;
	ResultSet res44;

	public List<WorkflowEntite> GetListeAchatVenteBusiness1(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeAchatVente = new ArrayList<>();
		try {
			String req = "select * from businessoneventeachat where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st44 = ConnexionBDLocal.getConnexion().createStatement();
			res44 = st44.executeQuery(req);
			while (res44.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdventeachatwf(res44.getInt("Id"));
				wkentite.setRegistrevente(res44.getString("RegistreVente"));
				wkentite.setNbrjourouvrableparmois(res44
						.getInt("NbrJourOuvrableParMois"));
				wkentite.setCategorievjlundi(res44
						.getString("CategorieVjLundi"));
				wkentite.setMontantvjlundi(res44.getInt("MontantVjLundi"));
				wkentite.setCategorievjmardi(res44
						.getString("CategorieVjMardi"));
				wkentite.setMontantvjmardi(res44.getInt("MontantVjMardi"));
				wkentite.setCategorievjmercredi(res44
						.getString("CategorieVjMercredi"));
				wkentite.setMontantvjmercredi(res44.getInt("MontantVjMercredi"));
				wkentite.setCategorievjjeudi(res44
						.getString("CategorieVjJeudi"));
				wkentite.setMontantvjjeudi(res44.getInt("MontantVjJeudi"));
				wkentite.setCategorievjvendredi(res44
						.getString("CategorieVjVendredi"));
				wkentite.setMontantvjvendredi(res44.getInt("MontantVjVendredi"));
				wkentite.setCategorievjsamedi(res44
						.getString("CategorieVjSamedi"));
				wkentite.setMontantvjsamedi(res44.getInt("MontantVjSamedi"));
				wkentite.setCategorievjdimanche(res44
						.getString("CategorieVjDimanche"));
				wkentite.setMontantvjdimanche(res44.getInt("MontantVjDimanche"));
				wkentite.setTotalsemaine(res44.getInt("TotalSemaine"));
				wkentite.setDernierjour1(res44.getString("dernierJour1"));
				wkentite.setDernierjour2(res44.getString("dernierJour2"));
				wkentite.setDernierjour3(res44.getString("dernierJour3"));

				wkentite.setVentedernierjour1(res44.getInt("VenteDernierJour1"));
				wkentite.setVentedernierjour2(res44.getInt("VenteDernierJour2"));
				wkentite.setVentedernierjour3(res44.getInt("VenteDernierJour3"));

				wkentite.setVentejourtodays(res44.getInt("VenteJourTOdays"));
				wkentite.setVentemensuelminmax(res44
						.getDouble("VenteMensuelMinMax"));
				wkentite.setVentemensueltroisdernierjours(res44
						.getDouble("VenteMensuelTroisDernierJours"));

				wkentite.setJour1(res44.getString("jour1"));
				wkentite.setJour2(res44.getString("jour2"));
				wkentite.setJour3(res44.getString("jour3"));
				wkentite.setMntjour1(res44.getDouble("mntjour1"));
				wkentite.setMntjour2(res44.getDouble("mntjour2"));
				wkentite.setMntjour3(res44.getDouble("mntjour3"));
				wkentite.setMntdays(res44.getDouble("mntToDaysJour"));
				wkentite.setVentetotaljour123(res44
						.getDouble("VenteTotalJourDernier"));
				wkentite.setCommentaiteva(res44.getString("CommentaireVA"));
				ListeAchatVente.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAchatVente;
	}

	Statement st45;
	ResultSet res45;

	public int enregistrementBusiness1AutreSockClientD(String Libelleproduit,
			int qteProduit, double PrixAchat, double prixvente, double marge,
			double valeurstock, int idclientd, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessoneautrestock(LibelleProduitAS,QteProduitAS,PrixAchatAS,PrixVenteAS,MargeAS,ValeurStockAS,IdClientD,NumDossierCre) values('"
					+ Libelleproduit
					+ "','"
					+ qteProduit
					+ "','"
					+ PrixAchat
					+ "','"
					+ prixvente
					+ "','"
					+ marge
					+ "','"
					+ valeurstock
					+ "','" + idclientd + "','" + NumDossierCre + "')";
			st45 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st45.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st45ASM;

	public int UpdateBusiness1AutreSockClientD(int ID, String Libelleproduit,
			int qteProduit, double PrixAchat, double prixvente, double marge,
			double valeurstock, int idclientd, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessoneautrestock set LibelleProduitAS='"
					+ Libelleproduit + "',QteProduitAS='" + qteProduit
					+ "',PrixAchatAS='" + PrixAchat + "',PrixVenteAS='"
					+ prixvente + "',MargeAS='" + marge + "',ValeurStockAS='"
					+ valeurstock + "',IdClientD='" + idclientd
					+ "',NumDossierCre='" + NumDossierCre + "' where Id='" + ID
					+ "'";
			st45ASM = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st45ASM.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st46;
	ResultSet res46;

	public int enregistrementBusiness1VenteEtAchatClientD(String RegistreVente,
			int NbrJourOuvrableParMois, String CategorieVjLundi,
			int MontantVjLundi, String CategorieVjMardi, int MontantVjMardi,
			String CategorieVjMercredi, int MontantVjMercredi,
			String CategorieVjJeudi, int MontantVjJeudi,
			String CategorieVjVendredi, int MontantVjVendredi,
			String CategorieVjSamedi, int MontantVjSamedi,
			String CategorieVjDimanche, int MontantVjDimanche,
			double TotalSemaine, String dernierJour1, double VenteDernierJour1,
			String dernierJour2, double VenteDernierJour2, String dernierJour3,
			double VenteDernierJour3, double VenteJourTOdays, int IdClientD,
			String NumDossierCre, double VenteMensuelMinMax,
			double VenteMensuelTroisDernierJours, String jour1, String jour2,
			String jour3, double mntjour1, double mntjour2, double mntjour3,
			double mntToDaysJour, double VenteTotalJourDernier,
			String commentaireVA) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessoneventeachat(RegistreVente,NbrJourOuvrableParMois,CategorieVjLundi,MontantVjLundi,CategorieVjMardi,MontantVjMardi,CategorieVjMercredi,MontantVjMercredi,CategorieVjJeudi,MontantVjJeudi,CategorieVjVendredi,MontantVjVendredi,CategorieVjSamedi,MontantVjSamedi,CategorieVjDimanche,MontantVjDimanche,TotalSemaine,dernierJour1,VenteDernierJour1,dernierJour2,VenteDernierJour2,dernierJour3,VenteDernierJour3,VenteJourTOdays,IdClientD,NumDossierCre,VenteMensuelMinMax,VenteMensuelTroisDernierJours,jour1,jour2,jour3,mntjour1,mntjour2,mntjour3,mntToDaysJour,VenteTotalJourDernier,CommentaireVA) values('"
					+ RegistreVente
					+ "','"
					+ NbrJourOuvrableParMois
					+ "','"
					+ CategorieVjLundi
					+ "','"
					+ MontantVjLundi
					+ "','"
					+ CategorieVjMardi
					+ "','"
					+ MontantVjMardi
					+ "','"
					+ CategorieVjMercredi
					+ "','"
					+ MontantVjMercredi
					+ "','"
					+ CategorieVjJeudi
					+ "','"
					+ MontantVjJeudi
					+ "','"
					+ CategorieVjVendredi
					+ "','"
					+ MontantVjVendredi
					+ "','"
					+ CategorieVjSamedi
					+ "','"
					+ MontantVjSamedi
					+ "','"
					+ CategorieVjDimanche
					+ "','"
					+ MontantVjDimanche
					+ "','"
					+ TotalSemaine
					+ "','"
					+ dernierJour1
					+ "','"
					+ VenteDernierJour1
					+ "','"
					+ dernierJour2
					+ "','"
					+ VenteDernierJour2
					+ "','"
					+ dernierJour3
					+ "','"
					+ VenteDernierJour3
					+ "','"
					+ VenteJourTOdays
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre
					+ "','"
					+ VenteMensuelMinMax
					+ "','"
					+ VenteMensuelTroisDernierJours
					+ "','"
					+ jour1
					+ "','"
					+ jour2
					+ "','"
					+ jour3
					+ "','"
					+ mntjour1
					+ "','"
					+ mntjour2
					+ "','"
					+ mntjour3
					+ "','"
					+ mntToDaysJour
					+ "','"
					+ VenteTotalJourDernier
					+ "','"
					+ commentaireVA
					+ "')";
			st46 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st46.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st46UDP;

	public int UpdateBusiness1VenteEtAchatClientD(int ID, String RegistreVente,
			int NbrJourOuvrableParMois, String CategorieVjLundi,
			int MontantVjLundi, String CategorieVjMardi, int MontantVjMardi,
			String CategorieVjMercredi, int MontantVjMercredi,
			String CategorieVjJeudi, int MontantVjJeudi,
			String CategorieVjVendredi, int MontantVjVendredi,
			String CategorieVjSamedi, int MontantVjSamedi,
			String CategorieVjDimanche, int MontantVjDimanche,
			double TotalSemaine, String dernierJour1, double VenteDernierJour1,
			String dernierJour2, double VenteDernierJour2, String dernierJour3,
			double VenteDernierJour3, double VenteJourTOdays, int IdClientD,
			String NumDossierCre, double VenteMensuelMinMax,
			double VenteMensuelTroisDernierJours, String jour1, String jour2,
			String jour3, double mntjour1, double mntjour2, double mntjour3,
			double mntToDaysJour, double VenteTotalJourDernier,
			String commentaireVA) {
		int nbrLigne = 0;
		try {
			String req = "update businessoneventeachat set RegistreVente='"
					+ RegistreVente + "',NbrJourOuvrableParMois='"
					+ NbrJourOuvrableParMois + "',CategorieVjLundi='"
					+ CategorieVjLundi + "',MontantVjLundi='" + MontantVjLundi
					+ "',CategorieVjMardi='" + CategorieVjMardi
					+ "',MontantVjMardi='" + MontantVjMardi
					+ "',CategorieVjMercredi='" + CategorieVjMercredi
					+ "',MontantVjMercredi='" + MontantVjMercredi
					+ "',CategorieVjJeudi='" + CategorieVjJeudi
					+ "',MontantVjJeudi='" + MontantVjJeudi
					+ "',CategorieVjVendredi='" + CategorieVjVendredi
					+ "',MontantVjVendredi='" + MontantVjVendredi
					+ "',CategorieVjSamedi='" + CategorieVjSamedi
					+ "',MontantVjSamedi='" + MontantVjSamedi
					+ "',CategorieVjDimanche='" + CategorieVjDimanche
					+ "',MontantVjDimanche='" + MontantVjDimanche
					+ "',TotalSemaine='" + TotalSemaine + "',dernierJour1='"
					+ dernierJour1 + "',VenteDernierJour1='"
					+ VenteDernierJour1 + "',dernierJour2='" + dernierJour2
					+ "',VenteDernierJour2='" + VenteDernierJour2
					+ "',dernierJour3='" + dernierJour3
					+ "',VenteDernierJour3='" + VenteDernierJour3
					+ "',VenteJourTOdays='" + VenteJourTOdays + "',IdClientD='"
					+ IdClientD + "',NumDossierCre='" + NumDossierCre
					+ "',VenteMensuelMinMax='" + VenteMensuelMinMax
					+ "',VenteMensuelTroisDernierJours='"
					+ VenteMensuelTroisDernierJours + "',jour1='" + jour1
					+ "',jour2='" + jour2 + "',jour3='" + jour3
					+ "',mntjour1='" + mntjour1 + "',mntjour2='" + mntjour2
					+ "',mntjour3='" + mntjour3 + "',mntToDaysJour='"
					+ mntToDaysJour + "',VenteTotalJourDernier='"
					+ VenteTotalJourDernier + "',CommentaireVA='"
					+ commentaireVA + "' where Id='" + ID + "'";
			st46UDP = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st46UDP.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st47;
	ResultSet res47;

	public int enregistrementBusiness1AchatProduitsPrincipauxClientD(
			String LibelleProduitPrincipaux, int FrequenceMensuelle,
			int QteParAchat, double AchatMensuel, double VenteMensuel,
			int IdClientD, String NumDossierCre, double PA, double PV) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessoneachatproduitprincipaux(LibelleProduitPrincipaux,FrequenceMensuelle,QteParAchat,AchatMensuel,VenteMensuel,IdClientD,NumDossierCre,PA,PV) values('"
					+ LibelleProduitPrincipaux
					+ "','"
					+ FrequenceMensuelle
					+ "','"
					+ QteParAchat
					+ "','"
					+ AchatMensuel
					+ "','"
					+ VenteMensuel
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre
					+ "','" + PA + "','" + PV + "')";
			st47 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st47.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st47APP;

	public int UpdateBusiness1AchatProduitsPrincipauxClientD(int ID,
			String LibelleProduitPrincipaux, int FrequenceMensuelle,
			int QteParAchat, double AchatMensuel, double VenteMensuel,
			int IdClientD, String NumDossierCre, double PA, double PV) {
		int nbrLigne = 0;
		try {
			String req = "update businessoneachatproduitprincipaux set LibelleProduitPrincipaux='"
					+ LibelleProduitPrincipaux
					+ "',FrequenceMensuelle='"
					+ FrequenceMensuelle
					+ "',QteParAchat='"
					+ QteParAchat
					+ "',AchatMensuel='"
					+ AchatMensuel
					+ "',VenteMensuel='"
					+ VenteMensuel
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "',PA='"
					+ PA
					+ "',PV='" + PV + "' where Id='" + ID + "'";
			st47APP = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st47APP.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st47APPDel;

	public int DeleteBusiness1AchatProduitsPrincipauxClientD(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from businessoneachatproduitprincipaux where Id='"
					+ ID + "'";
			st47APPDel = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st47APPDel.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st48;
	ResultSet res48;

	public int enregistrementBusiness1ActifDetteClientD(int CashBusiness,
			int CashBanque, int DetteCourTerme, int Meubles, int Vehicule,
			int Autres, int CashMaison, int Creances, int DetteLongTerme,
			int Equipementoutils, int LocalCommercial, int IdclientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessoneactifdette(CashBusiness,CashBanque,DetteCourTerme,Meubles,Vehicule,Autres,CashMaison,Creances,DetteLongTerme,Equipementoutils,LocalCommercial,IdclientD,NumDossierCre) values('"
					+ CashBusiness
					+ "','"
					+ CashBanque
					+ "','"
					+ DetteCourTerme
					+ "','"
					+ Meubles
					+ "','"
					+ Vehicule
					+ "','"
					+ Autres
					+ "','"
					+ CashMaison
					+ "','"
					+ Creances
					+ "','"
					+ DetteLongTerme
					+ "','"
					+ Equipementoutils
					+ "','"
					+ LocalCommercial
					+ "','"
					+ IdclientD
					+ "','"
					+ NumDossierCre + "')";
			st48 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st48.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st48NDK;

	public int UpdateBusiness1ActifDetteClientD(int ID, int CashBusiness,
			int CashBanque, int DetteCourTerme, int Meubles, int Vehicule,
			int Autres, int CashMaison, int Creances, int DetteLongTerme,
			int Equipementoutils, int LocalCommercial, int IdclientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessoneactifdette set CashBusiness='"
					+ CashBusiness + "',CashBanque='" + CashBanque
					+ "',DetteCourTerme='" + DetteCourTerme + "',Meubles='"
					+ Meubles + "',Vehicule='" + Vehicule + "',Autres='"
					+ Autres + "',CashMaison='" + CashMaison + "',Creances='"
					+ Creances + "',DetteLongTerme='" + DetteLongTerme
					+ "',Equipementoutils='" + Equipementoutils
					+ "',LocalCommercial='" + LocalCommercial + "',IdclientD='"
					+ IdclientD + "',NumDossierCre='" + NumDossierCre
					+ "' where Id='" + ID + "'";
			st48NDK = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st48NDK.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st49;
	ResultSet res49;

	public int enregistrementBusiness1RisquesPrincipaux(String LibelleRisque,
			String Mitigation, int IdclientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessonerisquesprincipaux(LibelleRisque,Mitigation,IdclientD,NumDossierCre) values('"
					+ LibelleRisque
					+ "','"
					+ Mitigation
					+ "','"
					+ IdclientD
					+ "','" + NumDossierCre + "')";
			st49 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st49.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st49SM;

	public int UpdateBusiness1RisquesPrincipaux(int ID, String LibelleRisque,
			String Mitigation, int IdclientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessonerisquesprincipaux set LibelleRisque='"
					+ LibelleRisque
					+ "',Mitigation='"
					+ Mitigation
					+ "',IdclientD='"
					+ IdclientD
					+ "',NumDossierCre='"
					+ NumDossierCre + "' where Id='" + ID + "'";
			st49SM = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st49SM.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	// ---------------- Module business 2(onglet 4 du
	// worflow)---------------------

	Statement st50;
	ResultSet res50;

	public int enregistrementBusiness2SaisonnaliteVente(
			double MontantJanvierSV, double MontantFevrierSV,
			double MontantMarsSV, double MontantAvrilSV, double MontantMaiSV,
			double MontantJuinSV, double MontantJuilletSV,
			double MontantAoutSV, double MontantSeptembreSV,
			double MontantOctobreSV, double MontantNovembreSV,
			double MontantDecembreSV, int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businesstwosaisonnalitevente(MontantJanvierSV,MontantFevrierSV,MontantMarsSV,MontantAvrilSV,MontantMaiSV,MontantJuinSV,MontantJuilletSV,MontantAoutSV,MontantSeptembreSV,MontantOctobreSV,MontantNovembreSV,MontantDecembreSV,IdClientD,NumDossierCre) values('"
					+ MontantJanvierSV
					+ "','"
					+ MontantFevrierSV
					+ "','"
					+ MontantMarsSV
					+ "','"
					+ MontantAvrilSV
					+ "','"
					+ MontantMaiSV
					+ "','"
					+ MontantJuinSV
					+ "','"
					+ MontantJuilletSV
					+ "','"
					+ MontantAoutSV
					+ "','"
					+ MontantSeptembreSV
					+ "','"
					+ MontantOctobreSV
					+ "','"
					+ MontantNovembreSV
					+ "','"
					+ MontantDecembreSV
					+ "','"
					+ IdClientD + "','" + NumDossierCre + "')";
			st50 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st50.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st50AZE;

	public int UpdateBusiness2SaisonnaliteVente(int ID,
			double MontantJanvierSV, double MontantFevrierSV,
			double MontantMarsSV, double MontantAvrilSV, double MontantMaiSV,
			double MontantJuinSV, double MontantJuilletSV,
			double MontantAoutSV, double MontantSeptembreSV,
			double MontantOctobreSV, double MontantNovembreSV,
			double MontantDecembreSV, int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businesstwosaisonnalitevente set MontantJanvierSV='"
					+ MontantJanvierSV
					+ "',MontantFevrierSV='"
					+ MontantFevrierSV
					+ "',MontantMarsSV='"
					+ MontantMarsSV
					+ "',MontantAvrilSV='"
					+ MontantAvrilSV
					+ "',MontantMaiSV='"
					+ MontantMaiSV
					+ "',MontantJuinSV='"
					+ MontantJuinSV
					+ "',MontantJuilletSV='"
					+ MontantJuilletSV
					+ "',MontantAoutSV='"
					+ MontantAoutSV
					+ "',MontantSeptembreSV='"
					+ MontantSeptembreSV
					+ "',MontantOctobreSV='"
					+ MontantOctobreSV
					+ "',MontantNovembreSV='"
					+ MontantNovembreSV
					+ "',MontantDecembreSV='"
					+ MontantDecembreSV
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre + "' where Id='" + ID + "'";
			st50AZE = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st50AZE.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st51;
	ResultSet res51;

	public int enregistrementBusiness2VenteMensuelMoyen(String LibelleMois,
			String Appreciation, double Montant, int IdClientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businesstwoventemensuellesmoyen(LibelleMois,Appreciation,Montant,IdClientD,NumDossierCre) values('"
					+ LibelleMois
					+ "','"
					+ Appreciation
					+ "','"
					+ Montant
					+ "','" + IdClientD + "','" + NumDossierCre + "')";
			st51 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st51.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st51VMM;

	public int UpdateBusiness2VenteMensuelMoyen(int ID, String LibelleMois,
			String Appreciation, double Montant, int IdClientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businesstwoventemensuellesmoyen set LibelleMois='"
					+ LibelleMois
					+ "',Appreciation='"
					+ Appreciation
					+ "',Montant='"
					+ Montant
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "' where Id='"
					+ ID
					+ "'";
			st51VMM = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st51VMM.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st51VMMDelete;

	public int UpdateBusiness2VenteMensuelMoyen(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from businesstwoventemensuellesmoyen where Id='"
					+ ID + "'";
			st51VMMDelete = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st51VMMDelete.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st52;
	ResultSet res52;

	public int enregistrementBusiness2DepenseOperationnel(
			double TransportJournalierLieuActivite,
			double TransportCoutVoyageAchat, double Loyer,
			double communication, double salaire, double services,
			double taxes, double autres, double depenseInvestsixmoisdernier,
			int IdClientD, String NumDossierCre, String CommentaireDop) {
		int nbrLigne = 0;
		try {
			String req = "insert into businesstwodepensesoperationnelles(TransportJournalierLieuActivite,TransportCoutVoyageAchat,Loyer,communication,salaire,services,taxes,autres,depenseInvestsixmoisdernier,IdClientD,NumDossierCre,commentaireDop) values('"
					+ TransportJournalierLieuActivite
					+ "','"
					+ TransportCoutVoyageAchat
					+ "','"
					+ Loyer
					+ "','"
					+ communication
					+ "','"
					+ salaire
					+ "','"
					+ services
					+ "','"
					+ taxes
					+ "','"
					+ autres
					+ "','"
					+ depenseInvestsixmoisdernier
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre + "','" + CommentaireDop + "')";
			st52 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st52.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st52UPD;

	public int UpdateBusiness2DepenseOperationnel(int ID,
			double TransportJournalierLieuActivite,
			double TransportCoutVoyageAchat, double Loyer,
			double communication, double salaire, double services,
			double taxes, double autres, double depenseInvestsixmoisdernier,
			int IdClientD, String NumDossierCre, String CommentaireDop) {
		int nbrLigne = 0;
		try {
			String req = "update businesstwodepensesoperationnelles set TransportJournalierLieuActivite='"
					+ TransportJournalierLieuActivite
					+ "',TransportCoutVoyageAchat='"
					+ TransportCoutVoyageAchat
					+ "',Loyer='"
					+ Loyer
					+ "',communication='"
					+ communication
					+ "',salaire='"
					+ salaire
					+ "',services='"
					+ services
					+ "',taxes='"
					+ taxes
					+ "',autres='"
					+ autres
					+ "',depenseInvestsixmoisdernier='"
					+ depenseInvestsixmoisdernier
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "',commentaireDop='"
					+ CommentaireDop
					+ "' where Id='"
					+ ID + "'";
			st52UPD = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st52UPD.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st53;
	ResultSet res53;

	public List<WorkflowEntite> ListeDepenseOperationnelleB2(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeDepenseOperationnelleB2 = new ArrayList<>();
		try {
			String req = "select * from businesstwodepensesoperationnelles where IdClientD='"
					+ idcliend
					+ "' && NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st53 = ConnexionBDLocal.getConnexion().createStatement();
			res53 = st53.executeQuery(req);
			while (res53.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIddepenseop(res53.getInt("Id"));
				wkentite.setTransportlieuactivite(res53
						.getDouble("TransportJournalierLieuActivite"));
				wkentite.setTransportcoutvoyageachat(res53
						.getDouble("TransportCoutVoyageAchat"));
				wkentite.setLoyer(res53.getDouble("Loyer"));
				wkentite.setCommunication(res53.getDouble("communication"));
				wkentite.setSalaire(res53.getDouble("salaire"));
				wkentite.setServices(res53.getDouble("services"));
				wkentite.setTaxes(res53.getDouble("taxes"));
				wkentite.setAutres(res53.getDouble("autres"));
				wkentite.setDepenseinvestsixmoisdernier(res53
						.getDouble("depenseInvestsixmoisdernier"));
				wkentite.setCommentairedepenseop(res53
						.getString("commentaireDop"));
				ListeDepenseOperationnelleB2.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDepenseOperationnelleB2;
	}

	Statement st54;
	ResultSet res54;

	public int enregistrementBusiness2AutreRevenu(String DescriptionActivite,
			int AnneeDepuis, double RevenuMensuel, int IdclientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businesstwoautresrevenu(DescriptionActivite,AnneeDepuis,RevenuMensuel,IdclientD,NumDossierCre) values('"
					+ DescriptionActivite
					+ "','"
					+ AnneeDepuis
					+ "','"
					+ RevenuMensuel
					+ "','"
					+ IdclientD
					+ "','"
					+ NumDossierCre
					+ "')";
			st54 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st54.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st54Upd;

	public int UpdateBusiness2AutreRevenu(int ID, String DescriptionActivite,
			int AnneeDepuis, double RevenuMensuel, int IdclientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businesstwoautresrevenu set DescriptionActivite='"
					+ DescriptionActivite
					+ "',AnneeDepuis='"
					+ AnneeDepuis
					+ "',RevenuMensuel='"
					+ RevenuMensuel
					+ "',IdclientD='"
					+ IdclientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "' where Id='" + ID + "'";
			st54Upd = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st54Upd.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st54de;

	public int DeleteBusiness2AutreRevenu(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from businesstwoautresrevenu where Id='" + ID
					+ "'";
			st54de = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st54de.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st55;
	ResultSet res55;

	public int enregistrementBusiness2Reference(String NomsReferenceB2,
			String TypeRelationB2, String Telephone, int IdClientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businesstworeference(NomsReferenceB2,TypeRelationB2,Telephone,IdClientD,NumDossierCre) values('"
					+ NomsReferenceB2
					+ "','"
					+ TypeRelationB2
					+ "','"
					+ Telephone
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre
					+ "')";
			st55 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st55.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st55PP;

	public int UpdateBusiness2Reference(int ID, String NomsReferenceB2,
			String TypeRelationB2, String Telephone, int IdClientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businesstworeference set NomsReferenceB2='"
					+ NomsReferenceB2 + "',TypeRelationB2='" + TypeRelationB2
					+ "',Telephone='" + Telephone + "',IdClientD='" + IdClientD
					+ "',NumDossierCre='" + NumDossierCre + "' where Id='" + ID
					+ "'";
			st55PP = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st55PP.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st56;
	ResultSet res56;

	public List<WorkflowEntite> ListeVenteMensuelMoyenClientD(
			String NumDossierCredit) {
		List<WorkflowEntite> ListeVenteMensuelMoyen = new ArrayList<>();
		try {
			String req = "select * from businesstwoventemensuellesmoyen where NumDossierCre='"
					+ NumDossierCredit + "'";
			st56 = ConnexionBDLocal.getConnexion().createStatement();
			res56 = st56.executeQuery(req);
			while (res56.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdventemensuelmoyen(res56.getInt("Id"));
				wkentite.setLibellemois(res56.getString("LibelleMois"));
				wkentite.setAppreciation(res56.getString("Appreciation"));
				wkentite.setMontantventemensuelmoyen(res56.getDouble("Montant"));
				ListeVenteMensuelMoyen.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeVenteMensuelMoyen;
	}

	Statement st56VM;
	ResultSet res56VM;

	public List<WorkflowEntite> ListeVenteMensuelMoyenClientDPourModification(
			int ID) {
		List<WorkflowEntite> ListeVenteMensuelMoyen = new ArrayList<>();
		try {
			String req = "select * from businesstwoventemensuellesmoyen where Id='"
					+ ID + "'";
			st56VM = ConnexionBDLocal.getConnexion().createStatement();
			res56VM = st56VM.executeQuery(req);
			while (res56VM.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdventemensuelmoyen(res56VM.getInt("Id"));
				wkentite.setLibellemois(res56VM.getString("LibelleMois"));
				wkentite.setAppreciation(res56VM.getString("Appreciation"));
				wkentite.setMontantventemensuelmoyen(res56VM
						.getDouble("Montant"));
				ListeVenteMensuelMoyen.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeVenteMensuelMoyen;
	}

	Statement st57;
	ResultSet res57;

	public List<WorkflowEntite> ListeAutresRevenuBusiness2ClientD(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeVenteMensuelMoyen = new ArrayList<>();
		try {
			String req = "select Id,DescriptionActivite,AnneeDepuis,RevenuMensuel from businesstwoautresrevenu where IdclientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st57 = ConnexionBDLocal.getConnexion().createStatement();
			res57 = st57.executeQuery(req);
			while (res57.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdautresrevenub2(res57.getInt("Id"));
				wkentite.setDescriptionactiviteb2(res57
						.getString("DescriptionActivite"));
				wkentite.setAnneedepuisb2(res57.getInt("AnneeDepuis"));
				wkentite.setRevenumensuelb2(res57.getDouble("RevenuMensuel"));
				ListeVenteMensuelMoyen.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeVenteMensuelMoyen;
	}

	Statement st57bus;
	ResultSet res57bus;

	public List<WorkflowEntite> ListeAutresRevenuBusiness2ClientDPourModification(
			int ID) {
		List<WorkflowEntite> ListeVenteMensuelMoyen = new ArrayList<>();
		try {
			String req = "select Id,DescriptionActivite,AnneeDepuis,RevenuMensuel from businesstwoautresrevenu where Id='"
					+ ID + "'";
			st57bus = ConnexionBDLocal.getConnexion().createStatement();
			res57bus = st57bus.executeQuery(req);
			while (res57bus.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdautresrevenub2(res57bus.getInt("Id"));
				wkentite.setDescriptionactiviteb2(res57bus
						.getString("DescriptionActivite"));
				wkentite.setAnneedepuisb2(res57bus.getInt("AnneeDepuis"));
				wkentite.setRevenumensuelb2(res57bus.getDouble("RevenuMensuel"));
				ListeVenteMensuelMoyen.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeVenteMensuelMoyen;
	}

	// ---------------- Module business 3 (onglet 5 du
	// worflow)---------------------
	Statement st58;
	ResultSet res58;

	public int enregistrementBusiness3CoutProduction(String LibelleProduit,
			int QteProductionMateriel, String LibelleMaterielUtilise,
			double PrixAchatParUnite, double CoutTotal, int NbrUniteProduit,
			int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessthreecoutproduction(LibelleProduit,QteProductionMateriel,LibelleMaterielUtilise,PrixAchatParUnite,CoutTotal,NbrUniteProduit,IdClientD,NumDossierCre) values('"
					+ LibelleProduit
					+ "','"
					+ QteProductionMateriel
					+ "','"
					+ LibelleMaterielUtilise
					+ "','"
					+ PrixAchatParUnite
					+ "','"
					+ CoutTotal
					+ "','"
					+ NbrUniteProduit
					+ "','"
					+ IdClientD + "','" + NumDossierCre + "')";
			st58 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st58.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st58P;

	public int UpdateBusiness3CoutProduction(int ID, String LibelleProduit,
			int QteProductionMateriel, String LibelleMaterielUtilise,
			double PrixAchatParUnite, double CoutTotal, int NbrUniteProduit,
			int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessthreecoutproduction set LibelleProduit='"
					+ LibelleProduit
					+ "',QteProductionMateriel='"
					+ QteProductionMateriel
					+ "',LibelleMaterielUtilise='"
					+ LibelleMaterielUtilise
					+ "',PrixAchatParUnite='"
					+ PrixAchatParUnite
					+ "',CoutTotal='"
					+ CoutTotal
					+ "',NbrUniteProduit='"
					+ NbrUniteProduit
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "' where IdProduction='" + ID + "'";
			st58P = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st58P.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st59;
	ResultSet res59;

	public int enregistrementBusiness3MargeBruteMoyennePonderee(
			String LibelleProduit, double CoutParUnite, double PrixVente,
			double MargeProduit, int QteVendueParMois, double CoutMensuel,
			double VenteMensuel, int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into businessthreemargebrutemoyennepondere(LibelleProduit,CoutParUnite,PrixVente,MargeProduit,QteVendueParMois,CoutMensuel,VenteMensuel,IdClientD,NumDossierCre) values('"
					+ LibelleProduit
					+ "','"
					+ CoutParUnite
					+ "','"
					+ PrixVente
					+ "','"
					+ MargeProduit
					+ "','"
					+ QteVendueParMois
					+ "','"
					+ CoutMensuel
					+ "','"
					+ VenteMensuel
					+ "','"
					+ IdClientD
					+ "','" + NumDossierCre + "')";
			st59 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st59.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st59UDPS;

	public int UpdateBusiness3MargeBruteMoyennePonderee(int ID,
			String LibelleProduit, double CoutParUnite, double PrixVente,
			double MargeProduit, int QteVendueParMois, double CoutMensuel,
			double VenteMensuel, int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update businessthreemargebrutemoyennepondere set LibelleProduit='"
					+ LibelleProduit
					+ "',CoutParUnite='"
					+ CoutParUnite
					+ "',PrixVente='"
					+ PrixVente
					+ "',MargeProduit='"
					+ MargeProduit
					+ "',QteVendueParMois='"
					+ QteVendueParMois
					+ "',CoutMensuel='"
					+ CoutMensuel
					+ "',VenteMensuel='"
					+ VenteMensuel
					+ "',IdClientD='"
					+ IdClientD
					+ "',NumDossierCre='"
					+ NumDossierCre
					+ "' where Id='"
					+ ID
					+ "'";
			st59UDPS = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st59UDPS.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st59DD;

	public int DeleteBusiness3MargeBruteMoyennePonderee(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from businessthreemargebrutemoyennepondere where Id='"
					+ ID + "'";
			st59DD = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st59DD.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st60;
	ResultSet res60;

	public List<WorkflowEntite> ListeCoutProductionBusiness3ClientD(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeCoutProduction = new ArrayList<>();
		try {
			String req = "select * from businessthreecoutproduction where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st60 = ConnexionBDLocal.getConnexion().createStatement();
			res60 = st60.executeQuery(req);
			while (res60.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdcoupproductioncp(res60.getInt("Id"));
				wkentite.setLibelleproduitcp(res60.getString("LibelleProduit"));
				wkentite.setQtematerielproductioncp(res60
						.getInt("QteProductionMateriel"));
				wkentite.setLibellematerielutilisecp(res60
						.getString("LibelleMaterielUtilise"));
				wkentite.setPrixachaparunitecp(res60
						.getDouble("PrixAchatParUnite"));
				wkentite.setCouttotalcp(res60.getDouble("CoutTotal"));
				wkentite.setNbruniteproduitcp(res60.getInt("NbrUniteProduit"));
				ListeCoutProduction.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCoutProduction;
	}

	Statement st60Prod;
	ResultSet res60Prod;

	public List<WorkflowEntite> ListeCoutProductionBusiness3ClientDPourModification(
			int ID) {
		List<WorkflowEntite> ListeCoutProduction = new ArrayList<>();
		try {
			String req = "select * from businessthreecoutproduction where IdProduction='"
					+ ID + "'";
			st60Prod = ConnexionBDLocal.getConnexion().createStatement();
			res60Prod = st60Prod.executeQuery(req);
			while (res60Prod.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdcoupproductioncp(res60Prod.getInt("Id"));
				wkentite.setLibelleproduitcp(res60Prod
						.getString("LibelleProduit"));
				wkentite.setQtematerielproductioncp(res60Prod
						.getInt("QteProductionMateriel"));
				wkentite.setLibellematerielutilisecp(res60Prod
						.getString("LibelleMaterielUtilise"));
				wkentite.setPrixachaparunitecp(res60Prod
						.getDouble("PrixAchatParUnite"));
				wkentite.setCouttotalcp(res60Prod.getDouble("CoutTotal"));
				wkentite.setNbruniteproduitcp(res60Prod
						.getInt("NbrUniteProduit"));
				ListeCoutProduction.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCoutProduction;
	}

	Statement st61;
	ResultSet res61;

	public List<WorkflowEntite> ListeMPMPBusiness3ClientD(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeMPMP = new ArrayList<>();
		try {
			String req = "select * from businessthreemargebrutemoyennepondere where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st61 = ConnexionBDLocal.getConnexion().createStatement();
			res61 = st61.executeQuery(req);
			while (res61.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdmbmp(res61.getInt("Id"));
				wkentite.setLibelleproduitmpmp(res61
						.getString("LibelleProduit"));
				wkentite.setCoutparunitempmp(res61.getDouble("CoutParUnite"));
				wkentite.setPrixventempmp(res61.getDouble("PrixVente"));
				wkentite.setMargeproduitmpmp(res61.getDouble("MargeProduit"));
				wkentite.setQtevendueparmoismpmp(res61
						.getInt("QteVendueParMois"));
				wkentite.setCoutmensuelmpmp(res61.getDouble("CoutMensuel"));
				wkentite.setVentemensuelmpmp(res61.getDouble("VenteMensuel"));
				ListeMPMP.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMPMP;
	}

	Statement st61AAA;
	ResultSet res61AAA;

	public List<WorkflowEntite> ListeMPMPBusiness3ClientDPourModification(int ID) {
		List<WorkflowEntite> ListeMPMP = new ArrayList<>();
		try {
			String req = "select * from businessthreemargebrutemoyennepondere where Id='"
					+ ID + "'";
			st61AAA = ConnexionBDLocal.getConnexion().createStatement();
			res61AAA = st61AAA.executeQuery(req);
			while (res61AAA.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdmbmp(res61AAA.getInt("Id"));
				wkentite.setLibelleproduitmpmp(res61AAA
						.getString("LibelleProduit"));
				wkentite.setCoutparunitempmp(res61AAA.getDouble("CoutParUnite"));
				wkentite.setPrixventempmp(res61AAA.getDouble("PrixVente"));
				wkentite.setMargeproduitmpmp(res61AAA.getDouble("MargeProduit"));
				wkentite.setQtevendueparmoismpmp(res61AAA
						.getInt("QteVendueParMois"));
				wkentite.setCoutmensuelmpmp(res61AAA.getDouble("CoutMensuel"));
				wkentite.setVentemensuelmpmp(res61AAA.getDouble("VenteMensuel"));
				ListeMPMP.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMPMP;
	}

	// ---------------- Module Garantie (onglet 6 du
	// worflow)---------------------
	Statement st62;
	ResultSet res62;

	public int enregistrementGarantClientIL(String NomG, String PostNomG,
			String PrenomG, String EtatCivilG, String SexeG,
			String DateNaissanceG, String TelephoneG, String EmailG,
			String TypePieceIdentite, String NumCartePieceIdentite,
			String NomsConjoint, String TelephoneConjoint,
			String RelationAvecClient, String ProprieteMaison,
			String ActiviteG, String RevenuG, String AdresseG, String Province,
			int IdClientD, String NumDossierCre, double ChiffreAffaireG,
			double CmvG, double ProfilBruteG, double TotDepenseOpG,
			double ProfilNetG, double TotalAutresRevenusG,
			double TotalDepensePriveG, double CapacitePaiementG,
			String ContratTravailG, String BulletinPaiG, String CarteServiceG,
			double SalaireM1G, double SalaireM2G, double SalaireM3G,
			double TotalAutresAvantagesG, double SalaireMoyenG, int numcbsG,
			String NomsConjointG, String AdresseActiviteG,
			String AdresseCodebiteur, String TelephoneCodebiteur) {
		int nbrLigne = 0;
		try {
			String req = "insert into garantcreditindividuel(NomG,PostNomG,PrenomG,EtatCivilG,SexeG,DateNaissanceG,TelephoneG,EmailG,TypePieceIdentite,NumCartePieceIdentite,NomsConjoint,TelephoneConjoint,RelationAvecClient,ProprieteMaison,ActiviteG,RevenuG,AdresseG,Province,IdClientD,NumDossierCre,ChiffreAffaireG,CmvG,ProfilBruteG,TotDepenseOpG,ProfilNetG,TotalAutresRevenusG,TotalDepensePriveG,CapacitePaiementG,ContratTravailG,BulletinPaiG,CarteServiceG,SalaireM1G,SalaireM2G,SalaireM3G,TotalAutresAvantagesG,SalaireMoyenG,NumCbsGarant,NomsConjointG,AdresseActiviteG,AdresseCodebiteur,TelephoneCodebiteur) values('"
					+ NomG
					+ "','"
					+ PostNomG
					+ "','"
					+ PrenomG
					+ "','"
					+ EtatCivilG
					+ "','"
					+ SexeG
					+ "','"
					+ DateNaissanceG
					+ "','"
					+ TelephoneG
					+ "','"
					+ EmailG
					+ "','"
					+ TypePieceIdentite
					+ "','"
					+ NumCartePieceIdentite
					+ "','"
					+ NomsConjoint
					+ "','"
					+ TelephoneConjoint
					+ "','"
					+ RelationAvecClient
					+ "','"
					+ ProprieteMaison
					+ "','"
					+ ActiviteG
					+ "','"
					+ RevenuG
					+ "','"
					+ AdresseG
					+ "','"
					+ Province
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre
					+ "','"
					+ ChiffreAffaireG
					+ "','"
					+ CmvG
					+ "','"
					+ ProfilBruteG
					+ "','"
					+ TotDepenseOpG
					+ "','"
					+ ProfilNetG
					+ "','"
					+ TotalAutresRevenusG
					+ "','"
					+ TotalDepensePriveG
					+ "','"
					+ CapacitePaiementG
					+ "','"
					+ ContratTravailG
					+ "','"
					+ BulletinPaiG
					+ "','"
					+ CarteServiceG
					+ "','"
					+ SalaireM1G
					+ "','"
					+ SalaireM2G
					+ "','"
					+ SalaireM3G
					+ "','"
					+ TotalAutresAvantagesG
					+ "','"
					+ SalaireMoyenG
					+ "','"
					+ numcbsG
					+ "','"
					+ NomsConjointG
					+ "','"
					+ AdresseActiviteG
					+ "','"
					+ AdresseCodebiteur
					+ "','"
					+ TelephoneCodebiteur + "')";

			st62 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st62.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st62GR;

	public int UpdateGarantClientIL(int ID, String NomG, String PostNomG,
			String PrenomG, String EtatCivilG, String SexeG,
			String DateNaissanceG, String TelephoneG, String EmailG,
			String TypePieceIdentite, String NumCartePieceIdentite,
			String NomsConjoint, String TelephoneConjoint,
			String RelationAvecClient, String ProprieteMaison,
			String ActiviteG, String RevenuG, String AdresseG, String Province,
			int IdClientD, String NumDossierCre, double ChiffreAffaireG,
			double CmvG, double ProfilBruteG, double TotDepenseOpG,
			double ProfilNetG, double TotalAutresRevenusG,
			double TotalDepensePriveG, double CapacitePaiementG,
			String ContratTravailG, String BulletinPaiG, String CarteServiceG,
			double SalaireM1G, double SalaireM2G, double SalaireM3G,
			double TotalAutresAvantagesG, double SalaireMoyenG, int numcbsG,
			String NomsConjointG, String AdresseActiviteG,
			String AdresseCodebiteur, String TelephoneCodebiteur) {
		int nbrLigne = 0;
		try {
			String req = "update garantcreditindividuel set NomG='" + NomG
					+ "',PostNomG='" + PostNomG + "',PrenomG='" + PrenomG
					+ "',EtatCivilG='" + EtatCivilG + "',SexeG='" + SexeG
					+ "',DateNaissanceG='" + DateNaissanceG + "',TelephoneG='"
					+ TelephoneG + "',EmailG='" + EmailG
					+ "',TypePieceIdentite='" + TypePieceIdentite
					+ "',NumCartePieceIdentite='" + NumCartePieceIdentite
					+ "',NomsConjoint='" + NomsConjoint
					+ "',TelephoneConjoint='" + TelephoneConjoint
					+ "',RelationAvecClient='" + RelationAvecClient
					+ "',ProprieteMaison='" + ProprieteMaison + "',ActiviteG='"
					+ ActiviteG + "',RevenuG='" + RevenuG + "',AdresseG='"
					+ AdresseG + "',Province='" + Province + "',IdClientD='"
					+ IdClientD + "',NumDossierCre='" + NumDossierCre
					+ "',ChiffreAffaireG='" + ChiffreAffaireG + "',CmvG='"
					+ CmvG + "',ProfilBruteG='" + ProfilBruteG
					+ "',TotDepenseOpG='" + TotDepenseOpG + "',ProfilNetG='"
					+ ProfilNetG + "',TotalAutresRevenusG='"
					+ TotalAutresRevenusG + "',TotalDepensePriveG='"
					+ TotalDepensePriveG + "',CapacitePaiementG='"
					+ CapacitePaiementG + "',ContratTravailG='"
					+ ContratTravailG + "',BulletinPaiG='" + BulletinPaiG
					+ "',CarteServiceG='" + CarteServiceG + "',SalaireM1G='"
					+ SalaireM1G + "',SalaireM2G='" + SalaireM2G
					+ "',SalaireM3G='" + SalaireM3G
					+ "',TotalAutresAvantagesG='" + TotalAutresAvantagesG
					+ "',SalaireMoyenG='" + SalaireMoyenG + "',NumCbsGarant='"
					+ numcbsG + "',NomsConjointG='" + NomsConjointG
					+ "',AdresseActiviteG='" + AdresseActiviteG
					+ "',AdresseCodebiteur='" + AdresseCodebiteur
					+ "',TelephoneCodebiteur='" + TelephoneCodebiteur
					+ "' where Id='" + ID + "'";

			st62GR = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st62GR.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st63;
	ResultSet res63;

	public int enregistrementGarantieClientIL(String TypeGarantie,
			String Description, int AnneeFabrication, String Etat,
			double PrixAchat, double ValeurMarchande, String ClientGarant,
			int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into garantiecreditindividuel(TypeGarantie,Description,AnneeFabrication,Etat,PrixAchat,ValeurMarchande,ClientGarant,IdClientD,NumDossierCre) values('"
					+ TypeGarantie
					+ "','"
					+ Description
					+ "','"
					+ AnneeFabrication
					+ "','"
					+ Etat
					+ "','"
					+ PrixAchat
					+ "','"
					+ ValeurMarchande
					+ "','"
					+ ClientGarant
					+ "','"
					+ IdClientD + "','" + NumDossierCre + "')";
			st63 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st63.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st63GG;

	public int UpdateGarantieClientIL(int ID, String TypeGarantie,
			String Description, int AnneeFabrication, String Etat,
			double PrixAchat, double ValeurMarchande, String ClientGarant,
			int IdClientD, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "update garantiecreditindividuel set TypeGarantie='"
					+ TypeGarantie + "',Description='" + Description
					+ "',AnneeFabrication='" + AnneeFabrication + "',Etat='"
					+ Etat + "',PrixAchat='" + PrixAchat
					+ "',ValeurMarchande='" + ValeurMarchande
					+ "',ClientGarant='" + ClientGarant + "',IdClientD='"
					+ IdClientD + "',NumDossierCre='" + NumDossierCre
					+ "' where Id='" + ID + "'";
			st63GG = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st63GG.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st63GGSUP;

	public int DeleteGarantieClientIL(int ID) {
		int nbrLigne = 0;
		try {
			String req = "delete from garantiecreditindividuel where Id='" + ID
					+ "'";
			st63GGSUP = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st63GGSUP.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st64;
	ResultSet res64;

	public List<WorkflowEntite> ListeGarntieDeposeClientD(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeGarntieDeposeClientIL = new ArrayList<>();
		try {
			String req = "select * from garantiecreditindividuel where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st64 = ConnexionBDLocal.getConnexion().createStatement();
			res64 = st64.executeQuery(req);
			while (res64.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdgarantiedeposer(res64.getInt("Id"));
				wkentite.setTypegarantiegg(res64.getString("TypeGarantie"));
				wkentite.setDescriptiongg(res64.getString("Description"));
				wkentite.setAnneefabricationgg(res64.getInt("AnneeFabrication"));
				wkentite.setEtatgg(res64.getString("Etat"));
				wkentite.setPrixachatgg(res64.getDouble("PrixAchat"));
				wkentite.setValeurmarchandegg(res64
						.getDouble("ValeurMarchande"));
				wkentite.setClientgarantgg(res64.getString("ClientGarant"));
				ListeGarntieDeposeClientIL.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeGarntieDeposeClientIL;
	}

	Statement st64GDP;
	ResultSet res64GDP;

	public List<WorkflowEntite> ListeGarntieDeposeClientDPourModification(int ID) {
		List<WorkflowEntite> ListeGarntieDeposeClientIL = new ArrayList<>();
		try {
			String req = "select * from garantiecreditindividuel where Id='"
					+ ID + "'";
			st64GDP = ConnexionBDLocal.getConnexion().createStatement();
			res64GDP = st64GDP.executeQuery(req);
			while (res64GDP.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdgarantiedeposer(res64GDP.getInt("Id"));
				wkentite.setTypegarantiegg(res64GDP.getString("TypeGarantie"));
				wkentite.setDescriptiongg(res64GDP.getString("Description"));
				wkentite.setAnneefabricationgg(res64GDP
						.getInt("AnneeFabrication"));
				wkentite.setEtatgg(res64GDP.getString("Etat"));
				wkentite.setPrixachatgg(res64GDP.getDouble("PrixAchat"));
				wkentite.setValeurmarchandegg(res64GDP
						.getDouble("ValeurMarchande"));
				wkentite.setClientgarantgg(res64GDP.getString("ClientGarant"));
				ListeGarntieDeposeClientIL.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeGarntieDeposeClientIL;
	}

	Statement st65;
	ResultSet res65;

	public int enregistrementDocumentIL(String DateEnregistrementDoc,
			String Description, String FichierUrl, int IdclientD,
			String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into documentbusiness(DateEnregistrementDoc,Description,FichierUrl,IdclientD,NumDossierCre) values('"
					+ DateEnregistrementDoc
					+ "','"
					+ Description
					+ "','"
					+ FichierUrl
					+ "','"
					+ IdclientD
					+ "','"
					+ NumDossierCre
					+ "')";
			st65 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st65.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st66;
	ResultSet res66;

	public int enregistrementDecisionComiteIL(String DateComiteCredit,
			String DecisionComite, double MontantCreditValider,
			int NbrEcheancierValide, String ButPret, double FraisSms,
			double Caution, double FraisDossier, double TauxInteret,
			double assurance, String MembreParticipe, int NbrMembreComite,
			int IdClientD, String NumDossierCre, int IdProdCre,
			String commentaireDecisionComite) {
		int nbrLigne = 0;
		try {
			double tauxModif = 0;
			String req = "insert into comite(DateComiteCredit,DecisionComite,MontantCreditValider,NbrEcheancierValide,ButPret,FraisSms,Caution,FraisDossier,TauxInteret,assurance,MembreParticipe,NbrMembreComite,IdClientD,NumDossierCre,IDProduitCreditComite,commentaireComite,TauxCautionModifier) values('"
					+ DateComiteCredit
					+ "','"
					+ DecisionComite
					+ "','"
					+ MontantCreditValider
					+ "','"
					+ NbrEcheancierValide
					+ "','"
					+ ButPret
					+ "','"
					+ FraisSms
					+ "','"
					+ Caution
					+ "','"
					+ FraisDossier
					+ "','"
					+ TauxInteret
					+ "','"
					+ assurance
					+ "','"
					+ MembreParticipe
					+ "','"
					+ NbrMembreComite
					+ "','"
					+ IdClientD
					+ "','"
					+ NumDossierCre
					+ "','"
					+ IdProdCre
					+ "','"
					+ commentaireDecisionComite + "','" + tauxModif + "')";
			st66 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st66.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st67;
	ResultSet res67;

	public int enregistrementBrancheMICROPOP(String LibelleBranche,
			String AdresseBranche, String Telephone, String Province,
			String NomResponsableAgence) {
		int nbrLigne = 0;
		try {
			String req = "insert into branche(LibelleBranche,AdresseBranche,Telephone,Province,NomResponsableAgence) values('"
					+ LibelleBranche
					+ "','"
					+ AdresseBranche
					+ "','"
					+ Telephone
					+ "','"
					+ Province
					+ "','"
					+ NomResponsableAgence + "')";
			st67 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st67.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st68;
	ResultSet res68;

	public int GetIdBrancheMICROPOPViaLibelle(String LibelleBranche) {
		int IdBranche = 0;
		try {
			String req = "select IdBranche from branche where LibelleBranche='"
					+ LibelleBranche + "'";
			st68 = ConnexionBDLocal.getConnexion().createStatement();
			res68 = st68.executeQuery(req);
			while (res68.next()) {
				IdBranche = res68.getInt("IdBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdBranche;
	}

	Statement st69;
	ResultSet res69;

	public String GetLibellerancheMICROPOPViaID(int IdBrancheUtilisateur) {
		String LibelleBranche = "";
		try {
			String req = "select LibelleBranche from branche where IdBranche='"
					+ IdBrancheUtilisateur + "'";
			st69 = ConnexionBDLocal.getConnexion().createStatement();
			res69 = st69.executeQuery(req);
			while (res69.next()) {
				LibelleBranche = res69.getString("LibelleBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleBranche;
	}

	Statement st70;
	ResultSet res70;

	public int enregistrementUser(String NomsUser, String Telephone,
			String Email, String StatutUser, String Login, String MotPass,
			int IdBranche, String ProfilUser, int connected) {
		int nbrLigne = 0;
		try {
			String req = "insert into user(NomsUser,Telephone,Email,Statut,Login,MotPass,IdBranche,ProfilUser,Connected) values('"
					+ NomsUser
					+ "','"
					+ Telephone
					+ "','"
					+ Email
					+ "','"
					+ StatutUser
					+ "','"
					+ Login
					+ "','"
					+ MotPass
					+ "','"
					+ IdBranche + "','" + ProfilUser + "','" + connected + "')";
			st70 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st70.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st71;
	ResultSet res71;

	public List<WorkflowEntite> ListeInformationUserSelectionner(
			int idUtilisateur) {
		List<WorkflowEntite> ListeInformationUser = new ArrayList<>();
		try {
			String req = "select Iduser,NomsUser,Telephone,Email,Statut,Login,IdBranche,ProfilUser from user where Iduser='"
					+ idUtilisateur + "'";
			st71 = ConnexionBDLocal.getConnexion().createStatement();
			res71 = st71.executeQuery(req);
			while (res71.next()) {
				int IdBranche = 0;
				String LibelleBranche = "";
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdutilisateur(res71.getInt("Iduser"));
				wkentite.setNomsutilisateur(res71.getString("NomsUser"));
				wkentite.setTelephoneutilisateur(res71.getString("Telephone"));
				wkentite.setEmailutilisateur(res71.getString("Email"));
				wkentite.setStatututilisateur(res71.getString("Statut"));
				wkentite.setLoginutilisateur(res71.getString("Login"));
				IdBranche = res71.getInt("IdBranche");
				LibelleBranche = GetLibellerancheMICROPOPViaID(IdBranche);
				wkentite.setLibellebrancheutilisateur(LibelleBranche);
				ListeInformationUser.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationUser;
	}

	Statement st72;
	ResultSet res72;

	public List<WorkflowEntite> ListeInformationTousUserCreate() {
		List<WorkflowEntite> ListeInformationTousUser = new ArrayList<>();
		try {
			String req = "select u.Iduser,u.NomsUser,u.Email,u.Statut,u.ProfilUser,b.LibelleBranche from user as u inner join branche as b on u.IdBranche=b.IdBranche order by u.NomsUser asc";
			st72 = ConnexionBDLocal.getConnexion().createStatement();
			res72 = st72.executeQuery(req);
			while (res72.next()) {
				int IdBranche = 0;
				String LibelleBranche = "";
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdutilisateur(res72.getInt("u.Iduser"));
				wkentite.setNomsutilisateur(res72.getString("u.NomsUser"));
				wkentite.setEmailutilisateur(res72.getString("u.Email"));
				wkentite.setStatututilisateur(res72.getString("u.Statut"));
				wkentite.setProfilutilisateur(res72.getString("u.ProfilUser"));
				wkentite.setBrancheuse(res72.getString("b.LibelleBranche"));
				ListeInformationTousUser.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationTousUser;
	}

	// ---------------- Module Résume et Proposition (onglet 8 du
	// worflow)---------------------

	// 1) partie Proposition
	Statement st73;
	ResultSet res73;

	public double GetMontantDemande(int idclientd, String NumDossierCre) {
		double MontantDemande = 0;
		try {
			String req = "select MontantDemande from dossiercredit where NumDossierCredit='"
					+ NumDossierCre + "' and IdClientD='" + idclientd + "'";
			st73 = ConnexionBDLocal.getConnexion().createStatement();
			res73 = st73.executeQuery(req);
			while (res73.next()) {
				MontantDemande = res73.getDouble("MontantDemande");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return MontantDemande;
	}

	Statement st730000000;
	ResultSet res73000000;

	public double GetMontantProposeAC(String NumDossierCre) {
		double MontantProposeAC = 0;
		try {
			String req = "select MontantProp from proposition where NumDossierCre='"
					+ NumDossierCre + "'";
			st730000000 = ConnexionBDLocal.getConnexion().createStatement();
			res73000000 = st730000000.executeQuery(req);
			while (res73000000.next()) {
				MontantProposeAC = res73000000.getDouble("MontantProp");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return MontantProposeAC;
	}

	Statement st74;
	ResultSet res74;

	public int GetNbrEcheanceDemande(int idclientd, String NumDossierCre) {
		int DureePret = 0;
		try {
			String req = "select DureePret from dossiercredit where NumDossierCredit='"
					+ NumDossierCre + "' and IdClientD='" + idclientd + "'";
			st74 = ConnexionBDLocal.getConnexion().createStatement();
			res74 = st74.executeQuery(req);
			while (res74.next()) {
				DureePret = res74.getInt("DureePret");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DureePret;
	}

	Statement st742025;
	ResultSet res742025;

	public int GetNbrEcheanceProposeAC(int idclientd, String NumDossierCre) {
		int DureePret = 0;
		try {
			String req = "select EcheanceProp from proposition where NumDossierCre='"
					+ NumDossierCre + "'";
			st742025 = ConnexionBDLocal.getConnexion().createStatement();
			res742025 = st742025.executeQuery(req);
			while (res742025.next()) {
				DureePret = res742025.getInt("EcheanceProp");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DureePret;
	}

	Statement st75;
	ResultSet res75;

	public int GetCapacitePayementDemande(int idclientd, String NumDossierCre) {
		int CapacitePayement = 0;
		try {
			String req = "select CapacitePayementMensuel from dossiercredit where NumDossierCredit='"
					+ NumDossierCre + "' and IdClientD='" + idclientd + "'";
			st75 = ConnexionBDLocal.getConnexion().createStatement();
			res75 = st75.executeQuery(req);
			while (res75.next()) {
				CapacitePayement = res75.getInt("CapacitePayementMensuel");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CapacitePayement;
	}

	Statement st76;
	ResultSet res76;

	public String GetProduitCreditDemande(int idclientd, String NumDossierCre) {
		String ProduitCreditDemande = "";
		try {
			String req = "select prodcre.Description as proCredit from paramproduitcredit as prodcre inner join assignationdossiercredit as ass on prodcre.Id=ass.IDProduitCredit inner join dossiercredit as dos on dos.NumDossierCredit=ass.NumDossierCre inner join clientd as cl on cl.idclient=ass.IdClientD where ass.IdClientD='"
					+ idclientd
					+ "' and ass.NumDossierCre='"
					+ NumDossierCre
					+ "'";
			st76 = ConnexionBDLocal.getConnexion().createStatement();
			res76 = st76.executeQuery(req);
			while (res76.next()) {
				ProduitCreditDemande = res76.getString("proCredit");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ProduitCreditDemande;
	}

	// 2) partie Sur le CashFlow
	Statement st77;
	ResultSet res77;

	public double CalculChiffreAffairesVentes(int idclientd,
			String NumDossierCre) {
		double ChiffreAffairesVentes = 0;
		try {
			String req = "select VenteTotalJourDernier from businessoneventeachat where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st77 = ConnexionBDLocal.getConnexion().createStatement();
			res77 = st77.executeQuery(req);
			while (res77.next()) {
				ChiffreAffairesVentes = res77
						.getDouble("VenteTotalJourDernier");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ChiffreAffairesVentes;
	}

	Statement st7788;
	ResultSet res7788;

	public double CalculChiffreAffairesVentesMensuel(int idclientd,
			String NumDossierCre) {
		double ChiffreAffairesVentesMensuel = 0;
		try {
			String req = "select VenteMensuelTroisDernierJours from businessoneventeachat where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st7788 = ConnexionBDLocal.getConnexion().createStatement();
			res7788 = st7788.executeQuery(req);
			while (res7788.next()) {
				ChiffreAffairesVentesMensuel = res7788
						.getDouble("VenteMensuelTroisDernierJours");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ChiffreAffairesVentesMensuel;
	}

	Statement st77880;
	ResultSet res77880;

	public double CalculChiffreAffairesVentesMinMax(int idclientd,
			String NumDossierCre) {
		double ChiffreAffairesVentesMensuel = 0;
		try {
			String req = "select VenteMensuelMinMax from businessoneventeachat where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st77880 = ConnexionBDLocal.getConnexion().createStatement();
			res77880 = st77880.executeQuery(req);
			while (res77880.next()) {
				ChiffreAffairesVentesMensuel = res77880
						.getDouble("VenteMensuelMinMax");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ChiffreAffairesVentesMensuel;
	}

	Statement st78;
	ResultSet res78;

	public List<WorkflowEntite> ListeStockPrincipalBusiness1(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		try {
			String req = "select Marge from businessonestockprincipal where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st78 = ConnexionBDLocal.getConnexion().createStatement();
			res78 = st78.executeQuery(req);
			while (res78.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setMargestockprincipaux(res78.getDouble("Marge"));
				ListeStockPrincipal.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeStockPrincipal;
	}

	public double CalculCoutMarchandiseVendue(int idclientd,
			String NumDossierCre) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		double CoutMarchandiseVendue = 0;
		double ChiffreAffairesVentes = 0;
		double B = 0;
		double sommeMarge = 0;
		int nbr = 0;
		try {
			ListeStockPrincipal = ListeStockPrincipalBusiness1(NumDossierCre,
					idclientd);
			nbr = ListeStockPrincipal.size();

			if (nbr > 0) {

				for (WorkflowEntite wf : ListeStockPrincipal) {
					sommeMarge = sommeMarge + wf.getMargestockprincipaux();
				}
				B = sommeMarge / nbr;
				ChiffreAffairesVentes = CalculChiffreAffairesVentes(idclientd,
						NumDossierCre);
				CoutMarchandiseVendue = ChiffreAffairesVentes * (1 - B);
			} else {
				// ChiffreAffairesVentes =
				// CalculChiffreAffairesVentes(idclientd,
				// NumDossierCre);
				// CoutMarchandiseVendue = ChiffreAffairesVentes;
				CoutMarchandiseVendue = 0;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CoutMarchandiseVendue;
	}

	public double CalculCoutMarchandiseVendueMinMax(int idclientd,
			String NumDossierCre) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		double CoutMarchandiseVendue = 0;
		double ChiffreAffairesVentes = 0;
		double B = 0;
		double sommeMarge = 0;
		int nbr = 0;
		try {
			ListeStockPrincipal = ListeStockPrincipalBusiness1(NumDossierCre,
					idclientd);
			nbr = ListeStockPrincipal.size();

			if (nbr > 0) {

				for (WorkflowEntite wf : ListeStockPrincipal) {
					sommeMarge = sommeMarge + wf.getMargestockprincipaux();
				}
				B = sommeMarge / nbr;
				ChiffreAffairesVentes = CalculChiffreAffairesVentesMinMax(
						idclientd, NumDossierCre);
				CoutMarchandiseVendue = ChiffreAffairesVentes * (1 - B);
			} else {
				// ChiffreAffairesVentes =
				// CalculChiffreAffairesVentes(idclientd,
				// NumDossierCre);
				// CoutMarchandiseVendue = ChiffreAffairesVentes;
				CoutMarchandiseVendue = 0;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CoutMarchandiseVendue;
	}

	public double CalculCoutMarchandiseVendueMensuel(int idclientd,
			String NumDossierCre) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		double CoutMarchandiseVendue = 0;
		double ChiffreAffairesVentes = 0;
		double B = 0;
		double sommeMarge = 0;
		int nbr = 0;
		try {
			ListeStockPrincipal = ListeStockPrincipalBusiness1(NumDossierCre,
					idclientd);
			nbr = ListeStockPrincipal.size();

			if (nbr > 0) {

				for (WorkflowEntite wf : ListeStockPrincipal) {
					sommeMarge = sommeMarge + wf.getMargestockprincipaux();
				}
				B = sommeMarge / nbr;
				ChiffreAffairesVentes = CalculChiffreAffairesVentesMensuel(
						idclientd, NumDossierCre);
				CoutMarchandiseVendue = ChiffreAffairesVentes * (1 - B);
			} else {
				// ChiffreAffairesVentes =
				// CalculChiffreAffairesVentes(idclientd,
				// NumDossierCre);
				// CoutMarchandiseVendue = ChiffreAffairesVentes;
				CoutMarchandiseVendue = 0;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CoutMarchandiseVendue;
	}

	Statement st79;
	ResultSet res79;

	public List<WorkflowEntite> ListeDepenseOperationnelleBusiness2(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeDepenseOperationnelle = new ArrayList<>();
		try {
			String req = "select TransportJournalierLieuActivite,TransportCoutVoyageAchat,Loyer,communication,salaire,services,taxes,autres,depenseInvestsixmoisdernier from businesstwodepensesoperationnelles where IdClientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st79 = ConnexionBDLocal.getConnexion().createStatement();
			res79 = st79.executeQuery(req);
			while (res79.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setTransportlieuactivite(res79
						.getDouble("TransportJournalierLieuActivite"));
				wkentite.setTransportcoutvoyageachat(res79
						.getDouble("TransportCoutVoyageAchat"));
				wkentite.setLoyer(res79.getDouble("Loyer"));
				wkentite.setCommunication(res79.getDouble("communication"));
				wkentite.setSalaire(res79.getDouble("salaire"));
				wkentite.setServices(res79.getDouble("services"));
				wkentite.setTaxes(res79.getDouble("taxes"));
				wkentite.setAutres(res79.getDouble("autres"));
				wkentite.setDepenseinvestsixmoisdernier(res79
						.getDouble("depenseInvestsixmoisdernier"));
				ListeDepenseOperationnelle.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDepenseOperationnelle;
	}

	public double CalculDepenseOperationnelle(int idclientd,
			String NumDossierCre) {
		double DepenseOperationnelle = 0;
		double transportlieuactivite = 0;
		double transportcoutvoyageachat = 0;
		double loyer = 0;
		double communication = 0;
		double salaire = 0;
		double services = 0;
		double taxes = 0;
		double autres = 0;
		double depenseinvestsixmoisdernier = 0;
		List<WorkflowEntite> ListeDepenseOperationnelle = new ArrayList<>();
		try {
			ListeDepenseOperationnelle = ListeDepenseOperationnelleBusiness2(
					NumDossierCre, idclientd);

			for (WorkflowEntite wf : ListeDepenseOperationnelle) {
				DepenseOperationnelle = wf.getTransportlieuactivite()
						+ wf.getTransportcoutvoyageachat() + wf.getLoyer()
						+ wf.getCommunication() + wf.getSalaire()
						+ wf.getServices() + wf.getTaxes() + wf.getAutres()
						+ wf.getDepenseinvestsixmoisdernier();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DepenseOperationnelle;
	}

	Statement st80;
	ResultSet res80;

	public double CalculTotalAutreRevenuNet(int idclientd, String NumDossierCre) {
		double TotalAutreRevenuNet = 0;
		try {
			String req = "select sum(RevenuMensuel) as som from businesstwoautresrevenu where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st80 = ConnexionBDLocal.getConnexion().createStatement();
			res80 = st80.executeQuery(req);
			while (res80.next()) {
				TotalAutreRevenuNet = res80.getDouble("som");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalAutreRevenuNet;
	}

	Statement st81;
	ResultSet res81;

	public int CalculTotalDepensePrive(int idclientd, String NumDossierCre) {
		int TotalDepensePrive = 0;
		try {
			String req = "select TotalGeneralDF from depensefamiliale where IdClientD='"
					+ idclientd
					+ "' and NumDossierCredit='"
					+ NumDossierCre
					+ "'";
			st81 = ConnexionBDLocal.getConnexion().createStatement();
			res81 = st81.executeQuery(req);
			while (res81.next()) {
				TotalDepensePrive = res81.getInt("TotalGeneralDF");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalDepensePrive;
	}

	Statement st81TT;
	ResultSet res81TT;

	public int GetContributionClientDF(int idclientd, String NumDossierCre) {
		int ContributionClientDF = 0;
		try {
			String req = "select ContributionDFClientD from depensefamiliale where IdClientD='"
					+ idclientd
					+ "' and NumDossierCredit='"
					+ NumDossierCre
					+ "'";
			st81TT = ConnexionBDLocal.getConnexion().createStatement();
			res81TT = st81TT.executeQuery(req);
			while (res81TT.next()) {
				ContributionClientDF = res81TT.getInt("ContributionDFClientD");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ContributionClientDF;
	}

	// 3) partie Sur le bilan

	Statement st82;
	ResultSet res82;

	public int CalculCashAlaMaison(int idclientd, String NumDossierCre) {
		int TotalCashAlaMaison = 0;
		try {
			String req = "select CashMaison from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st82 = ConnexionBDLocal.getConnexion().createStatement();
			res82 = st82.executeQuery(req);
			while (res82.next()) {
				TotalCashAlaMaison = res82.getInt("CashMaison");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalCashAlaMaison;
	}

	Statement st827888700;
	ResultSet res8227888700;

	public int CalculCashBussness(int idclientd, String NumDossierCre) {
		int TotalCashAlaBussness = 0;
		try {
			String req = "select CashBusiness from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st827888700 = ConnexionBDLocal.getConnexion().createStatement();
			res8227888700 = st827888700.executeQuery(req);
			while (res8227888700.next()) {
				TotalCashAlaBussness = res8227888700.getInt("CashBusiness");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalCashAlaBussness;
	}

	Statement st83;
	ResultSet res83;

	public int CalculCashEnBanque(int idclientd, String NumDossierCre) {
		int TotalCashEnBanque = 0;
		try {
			String req = "select CashBanque from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st83 = ConnexionBDLocal.getConnexion().createStatement();
			res83 = st83.executeQuery(req);
			while (res83.next()) {
				TotalCashEnBanque = res83.getInt("CashBanque");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalCashEnBanque;
	}

	Statement st84;
	ResultSet res84;

	public int CalculCreance(int idclientd, String NumDossierCre) {
		int TotalCreance = 0;
		try {
			String req = "select Creances from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st84 = ConnexionBDLocal.getConnexion().createStatement();
			res84 = st84.executeQuery(req);
			while (res84.next()) {
				TotalCreance = res84.getInt("Creances");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalCreance;
	}

	Statement st85;
	ResultSet res85;

	public int CalculStock(int idclientd, String NumDossierCre) {
		int TotalStock = 0;
		try {
			String req = "select sum(ValeurStock) as so from businessonestockprincipal where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st85 = ConnexionBDLocal.getConnexion().createStatement();
			res85 = st85.executeQuery(req);
			while (res85.next()) {
				TotalStock = res85.getInt("so");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalStock;
	}

	Statement st854888;
	ResultSet res854888;

	public int CalculAutresStock(int idclientd, String NumDossierCre) {
		int TotalAuStock = 0;
		try {
			String req = "select sum(ValeurStockAS) as so from businessoneautrestock where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st854888 = ConnexionBDLocal.getConnexion().createStatement();
			res854888 = st854888.executeQuery(req);
			while (res854888.next()) {
				TotalAuStock = res854888.getInt("so");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalAuStock;
	}

	Statement st86;
	ResultSet res86;

	public int CalculMeuble(int idclientd, String NumDossierCre) {
		int TotalMeuble = 0;
		try {
			String req = "select Meubles from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st86 = ConnexionBDLocal.getConnexion().createStatement();
			res86 = st86.executeQuery(req);
			while (res86.next()) {
				TotalMeuble = res86.getInt("Meubles");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalMeuble;
	}

	Statement st87;
	ResultSet res87;

	public int CalculEquipementOutils(int idclientd, String NumDossierCre) {
		int TotalMeuble = 0;
		try {
			String req = "select Equipementoutils from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st87 = ConnexionBDLocal.getConnexion().createStatement();
			res87 = st87.executeQuery(req);
			while (res87.next()) {
				TotalMeuble = res87.getInt("Equipementoutils");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalMeuble;
	}

	Statement st88;
	ResultSet res88;

	public int CalculVehicule(int idclientd, String NumDossierCre) {
		int TotalVehicule = 0;
		try {
			String req = "select Vehicule from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st88 = ConnexionBDLocal.getConnexion().createStatement();
			res88 = st88.executeQuery(req);
			while (res88.next()) {
				TotalVehicule = res88.getInt("Vehicule");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalVehicule;
	}

	Statement st89;
	ResultSet res89;

	public int CalculLocalCommercial(int idclientd, String NumDossierCre) {
		int TotalLocalCommercial = 0;
		try {
			String req = "select LocalCommercial from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st89 = ConnexionBDLocal.getConnexion().createStatement();
			res89 = st89.executeQuery(req);
			while (res89.next()) {
				TotalLocalCommercial = res89.getInt("LocalCommercial");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalLocalCommercial;
	}

	Statement st90;
	ResultSet res90;

	public int CalculAutres(int idclientd, String NumDossierCre) {
		int TotalLocalAutres = 0;
		try {
			String req = "select Autres from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st90 = ConnexionBDLocal.getConnexion().createStatement();
			res90 = st90.executeQuery(req);
			while (res90.next()) {
				TotalLocalAutres = res90.getInt("Autres");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalLocalAutres;
	}

	Statement st91;
	ResultSet res91;

	public int CalculLongTerme(int idclientd, String NumDossierCre) {
		int TotalLongTerme = 0;
		try {
			String req = "select DetteLongTerme from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st91 = ConnexionBDLocal.getConnexion().createStatement();
			res91 = st91.executeQuery(req);
			while (res91.next()) {
				TotalLongTerme = res91.getInt("DetteLongTerme");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalLongTerme;
	}

	Statement st92;
	ResultSet res92;

	public int CalculCourtTerme(int idclientd, String NumDossierCre) {
		int TotalCourtTerme = 0;
		try {
			String req = "select DetteCourTerme from businessoneactifdette where IdclientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			st92 = ConnexionBDLocal.getConnexion().createStatement();
			res92 = st92.executeQuery(req);
			while (res92.next()) {
				TotalCourtTerme = res92.getInt("DetteCourTerme");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalCourtTerme;
	}

	// 4) partie Sur le risques principaux
	Statement st93;
	ResultSet res93;

	public List<WorkflowEntite> ListeRisquesPrincipauxMitigationBusiness1Resume(
			String NumDossierCredit, int idcliend) {
		List<WorkflowEntite> ListeRisquesPrincipauxMitigationBusiness1Resume = new ArrayList<>();
		try {
			String req = "select LibelleRisque,Mitigation from businessonerisquesprincipaux where IdclientD='"
					+ idcliend
					+ "' and NumDossierCre='"
					+ NumDossierCredit
					+ "'";
			st93 = ConnexionBDLocal.getConnexion().createStatement();
			res93 = st93.executeQuery(req);
			while (res93.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibellerisquesprincipauxb1(res93
						.getString("LibelleRisque"));
				wkentite.setMitigation(res93.getString("Mitigation"));
				ListeRisquesPrincipauxMitigationBusiness1Resume.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeRisquesPrincipauxMitigationBusiness1Resume;
	}

	// 4) partie Sur le ratio
	// 4.1 calcul DSR
	Statement st94;
	ResultSet res94;

	public double GetTauxInteretlibelleProduitCredit2(String numDossierCre) {
		double TauxInteret = 0;
		try {
			st94 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select pro.TauxInteretM as tx from paramproduitcredit as pro inner join proposition as prop on prop.ProduitCreditProp=pro.Description inner join dossiercredit as doss on doss.NumDossierCredit=prop.NumDossierCre where prop.NumDossierCre='"
					+ numDossierCre + "'";
			res94 = st94.executeQuery(req);
			while (res94.next()) {
				TauxInteret = res94.getDouble("tx");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TauxInteret;
	}

	public double GetA(int idclientd, String NumDossierCre) {
		double AA = 0;
		try {
			int NbrECh = GetNbrEcheanceProposeAC(idclientd, NumDossierCre);
			// double MontantDemande = GetMontantDemande(idclientd,
			// NumDossierCre);
			double MontantProposeAC = 0;
			MontantProposeAC = GetMontantProposeAC(NumDossierCre);
			if (MontantProposeAC == 0) {
				AA = 0;
			} else {
				double tauxInteret = GetTauxInteretlibelleProduitCredit2(NumDossierCre) / 100;
				// AA = (MontantProposeAC * (Math.pow(1 + tauxInteret, NbrECh))
				// * NbrECh)
				// / (Math.pow(1 + tauxInteret, NbrECh) - 1);
				AA = MontantProposeAC
						* (tauxInteret * Math.pow(1 + tauxInteret, NbrECh))
						/ (Math.pow(1 + tauxInteret, NbrECh) - 1);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return AA;
	}

	public double CalculDSR(int idclientd, String NumDossierCre,
			double capacitepayment) {
		double DSR = 0;
		try {
			// DSR = GetA(idclientd, NumDossierCre)
			// / GetCapacitePayementDemande(idclientd, NumDossierCre);
			if (capacitepayment == 0) {
				DSR = 0;
			} else {
				DSR = GetA(idclientd, NumDossierCre) / capacitepayment;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DSR * 100;
	}

	Statement st95;
	ResultSet res95;

	public double GetTotalValaurMarchandeGarantie(int idclientd,
			String NumDossierCre) {
		double TotalValaurMarchandeGarantie = 0;
		try {
			st95 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select sum(ValeurMarchande) as sss from garantiecreditindividuel where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			res95 = st95.executeQuery(req);
			while (res95.next()) {
				TotalValaurMarchandeGarantie = res95.getDouble("sss");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalValaurMarchandeGarantie;
	}

	public double CalculRatioGarantie(int idclientd, String NumDossierCre) {
		double RatioGarantie = 0;
		try {
			if (GetMontantProposeAC(NumDossierCre) == 0) {
				RatioGarantie = 0;
			} else {
				RatioGarantie = GetTotalValaurMarchandeGarantie(idclientd,
						NumDossierCre) / GetMontantProposeAC(NumDossierCre);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return RatioGarantie * 100;
	}

	public double CalculRatioLiquite(int idclientd, String NumDossierCre,
			int TotalActifCirculan) {
		double RatioLiquite = 0;
		double Dette = 0;
		try {
			if (GetA(idclientd, NumDossierCre) == 0) {
				RatioLiquite = 0;
			} else {
				Dette = GetDetteCourtTermeClientVIaNumDossier(NumDossierCre);
				RatioLiquite = TotalActifCirculan
						/ ((GetA(idclientd, NumDossierCre) * 3) + Dette);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return RatioLiquite;
	}

	public double CalculLevierFinancier(int idclientd, String NumDossierCre,
			int TotalActifCirculan) {
		double LevierFinancier = 0;
		try {

			// LevierFinancier = GetMontantDemande(idclientd, NumDossierCre)
			// / TotalActifCirculan;
			LevierFinancier = GetMontantProposeAC(NumDossierCre)
					/ TotalActifCirculan;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LevierFinancier;
	}

	public double CalculRotationStock(double coutMarchandiseVendue,
			int TotalActifCirculant) {
		double RotationStock = 0;
		try {
			if (TotalActifCirculant == 0) {
				RotationStock = 0;
			} else {
				RotationStock = coutMarchandiseVendue / TotalActifCirculant;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return RotationStock;
	}

	public double CalculRatioEndettement(int idclientd, String NumDossierCre,
			double CapitalPropreResumeProposition) {
		double RatioEndettement = 0;
		try {

			RatioEndettement = GetMontantProposeAC(NumDossierCre)
					/ CapitalPropreResumeProposition;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return RatioEndettement;
	}

	// Calcul des differentes marge dans le resume et proposition / Cfr Business
	// 2

	Statement st98;
	ResultSet res98;

	public List<WorkflowEntite> GetListeAchatMensuelProduitPrincipaux(
			int idclientd, String NumDossierCre) {
		List<WorkflowEntite> ListeAchatMensuelProduitPrincipaux = new ArrayList<>();
		try {
			st98 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select AchatMensuel from businessoneachatproduitprincipaux where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			res98 = st98.executeQuery(req);
			while (res98.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setAchatmensuel(res98.getDouble("AchatMensuel"));
				ListeAchatMensuelProduitPrincipaux.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeAchatMensuelProduitPrincipaux;
	}

	Statement st9800;
	ResultSet res9800;

	public double GetTotalAchatMensuelProduitPrincipaux(int idclientd,
			String NumDossierCre) {
		double TotalAchatMensuelProduitPrincipaux = 0;
		try {
			st9800 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select sum(AchatMensuel)from businessoneachatproduitprincipaux where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			res9800 = st9800.executeQuery(req);
			while (res9800.next()) {
				TotalAchatMensuelProduitPrincipaux = res9800
						.getDouble("sum(AchatMensuel)");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalAchatMensuelProduitPrincipaux;
	}

	Statement st99;
	ResultSet res99;

	public List<WorkflowEntite> GetListeVenteMensuelProduitPrincipaux(
			int idclientd, String NumDossierCre) {
		List<WorkflowEntite> ListeVenteMensuelProduitPrincipaux = new ArrayList<>();
		try {
			st99 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select VenteMensuel from businessoneachatproduitprincipaux where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			res99 = st99.executeQuery(req);
			while (res99.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setVentemensuel(res99.getDouble("VenteMensuel"));
				ListeVenteMensuelProduitPrincipaux.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeVenteMensuelProduitPrincipaux;
	}

	Statement st9900;
	ResultSet res9900;

	public double GetTotalVenteMensuelProduitPrincipaux(int idclientd,
			String NumDossierCre) {
		double TotalVenteMensuelProduitPrincipaux = 0;
		try {
			st9900 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select sum(VenteMensuel) from businessoneachatproduitprincipaux where IdClientD='"
					+ idclientd + "' and NumDossierCre='" + NumDossierCre + "'";
			res9900 = st9900.executeQuery(req);
			while (res9900.next()) {
				TotalVenteMensuelProduitPrincipaux = res9900
						.getDouble("sum(VenteMensuel)");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalVenteMensuelProduitPrincipaux;
	}

	public double CalculMargeBruteMoyennePonderee(int idclientd,
			String NumDossierCre) {
		double MargeBruteMoyennePonderee = 0;
		// List<WorkflowEntite> ListeVenteMensuelProduitPrincipaux = new
		// ArrayList<>();
		// List<WorkflowEntite> ListeAchatMensuelProduitPrincipaux = new
		// ArrayList<>();
		try {
			// ListeAchatMensuelProduitPrincipaux =
			// GetListeAchatMensuelProduitPrincipaux(
			// idclientd, NumDossierCre);
			double TotalAchat = this.GetTotalAchatMensuelProduitPrincipaux(
					idclientd, NumDossierCre);
			// ListeVenteMensuelProduitPrincipaux =
			// GetListeVenteMensuelProduitPrincipaux(
			// idclientd, NumDossierCre);

			double TotalVente = this.GetTotalVenteMensuelProduitPrincipaux(
					idclientd, NumDossierCre);

			if (TotalAchat == 0 || TotalVente == 0) {
				MargeBruteMoyennePonderee = 0;
			} else {
				// double totalAchatMensuelProduit = 0;
				// for (WorkflowEntite wf1 : ListeAchatMensuelProduitPrincipaux)
				// {
				// totalAchatMensuelProduit = totalAchatMensuelProduit
				// + wf1.getAchatmensuel();
				// }
				// double totalVenteMensuelProduit = 0;
				// for (WorkflowEntite wf : ListeVenteMensuelProduitPrincipaux)
				// {
				// totalVenteMensuelProduit = totalVenteMensuelProduit
				// + wf.getVentemensuel();
				// }
				MargeBruteMoyennePonderee = 1 - (TotalAchat / TotalVente);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return (MargeBruteMoyennePonderee * 100);
	}

	Statement st100;
	ResultSet res100;

	public List<WorkflowEntite> GetListeMargePartielleStockProduitPrincipaux(
			int idclientd, String NumDossierCre) {
		List<WorkflowEntite> ListeMargePartielleStockProduitPrincipaux = new ArrayList<>();
		try {
			String observ = "principal";
			st100 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Marge from businessonestockprincipal where IdClientD='"
					+ idclientd
					+ "' and NumDossierCre='"
					+ NumDossierCre
					+ "' and Observation='" + observ + "'";
			res100 = st100.executeQuery(req);
			while (res100.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setMargestockprincipaux(res100.getDouble("Marge"));
				ListeMargePartielleStockProduitPrincipaux.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMargePartielleStockProduitPrincipaux;
	}

	public double CalculMargeBruteMoyenneProduitPrincipaux(int idclientd,
			String NumDossierCre) {
		double MargeBruteMoyenneProduitPrincipaux = 0;
		List<WorkflowEntite> ListeMargePartielleStockProduitPrincipaux = new ArrayList<>();
		try {
			int nbr = 0;
			ListeMargePartielleStockProduitPrincipaux = GetListeMargePartielleStockProduitPrincipaux(
					idclientd, NumDossierCre);
			nbr = ListeMargePartielleStockProduitPrincipaux.size();
			if (nbr == 0) {
				MargeBruteMoyenneProduitPrincipaux = 0;
			} else {

				double totalMarge = 0;
				for (WorkflowEntite wf : ListeMargePartielleStockProduitPrincipaux) {
					totalMarge = totalMarge + wf.getMargestockprincipaux();
				}
				MargeBruteMoyenneProduitPrincipaux = totalMarge / nbr;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return (MargeBruteMoyenneProduitPrincipaux * 100);
	}

	public double CalculMargeBruteMoyenneTousProduitPrincipaux(int idclientd,
			String NumDossierCre) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();

		double MargeBruteMoyenneTousProduitPrincipaux = 0;
		double sommeMarge = 0;
		int nbr = 0;
		try {
			ListeStockPrincipal = ListeStockPrincipalBusiness1(NumDossierCre,
					idclientd);
			nbr = ListeStockPrincipal.size();

			if (nbr == 0) {
				MargeBruteMoyenneTousProduitPrincipaux = 0;
			} else {
				for (WorkflowEntite wf : ListeStockPrincipal) {
					sommeMarge = sommeMarge + wf.getMargestockprincipaux();
				}
				MargeBruteMoyenneTousProduitPrincipaux = sommeMarge / nbr;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return (MargeBruteMoyenneTousProduitPrincipaux * 100);
	}

	Statement st103;
	ResultSet res103;

	public List<WorkflowEntite> ListeDossierCreditIndividuelEnFonctionStatutEtProfilUtilisateurMenuCreditIndividuel(
			String Requete) {
		List<WorkflowEntite> ListeDossierCreditIndividuelFonctionStatutEtProfilUtilisateur = new ArrayList<>();
		try {
			st103 = ConnexionBDLocal.getConnexion().createStatement();
			res103 = st103.executeQuery(Requete);
			while (res103.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res103.getInt("cli.idclient"));
				wk.setNumerodossieril(res103.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res103.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res103.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res103.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res103.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res103.getString("br.LibelleBranche"));
				String NomsDemandeur = res103.getString("cli.NomCli");
				String PostNomDemandeur = res103.getString("cli.PostNomCli");
				String PrenomDemandeur = res103.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res103
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelFonctionStatutEtProfilUtilisateur
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelFonctionStatutEtProfilUtilisateur;
	}

	// Taille de l'OTP (par exemple 8 chiffres)
	private final int OTP_LENGTH = 8;

	// Méthode pour générer un OTP aléatoire
	public String generateOTP() {
		SecureRandom random = new SecureRandom();
		StringBuilder otp = new StringBuilder(OTP_LENGTH);
		for (int i = 0; i < OTP_LENGTH; i++) {
			otp.append(random.nextInt(10)); // Génère un chiffre entre 0 et 9
		}
		return otp.toString();
	}

	Statement st100id;
	ResultSet res100id;

	public List<WorkflowEntite> GetListeNumeroDossier() {
		List<WorkflowEntite> ListeNumeroDossier = new ArrayList<>();
		try {
			st100id = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NumDossierCredit from dossiercredit";
			res100id = st100id.executeQuery(req);
			while (res100id.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIddossokkkkkk(res100id.getString("NumDossierCredit"));
				ListeNumeroDossier.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeNumeroDossier;
	}

	Statement st100idGL;
	ResultSet res100idGL;

	public List<WorkflowEntite> GetListeNumeroDossierGL() {
		List<WorkflowEntite> ListeNumeroDossierGL = new ArrayList<>();
		try {
			st100idGL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NumDossierGL from dossiercreditgl";
			res100idGL = st100idGL.executeQuery(req);
			while (res100idGL.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIddossokkkkkk(res100idGL.getString("NumDossierGL"));
				ListeNumeroDossierGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeNumeroDossierGL;
	}

	Statement st100idGLM;
	ResultSet res100idGLM;

	public List<WorkflowEntite> GetListeNumeroDossierGLMembre() {
		List<WorkflowEntite> ListeNumeroDossierGLMembre = new ArrayList<>();
		try {
			st100idGLM = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdClientMembre from membregroupe";
			res100idGLM = st100idGLM.executeQuery(req);
			while (res100idGLM.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIddossokkkkkk(res100idGLM.getString("IdClientMembre"));
				ListeNumeroDossierGLMembre.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeNumeroDossierGLMembre;
	}

	Statement st100idGLMG;
	ResultSet res100idGLMG;

	public List<WorkflowEntite> GetListeNumeroDossierGLGroupeLisanga() {
		List<WorkflowEntite> ListeNumeroDossierGLGroupeLisanga = new ArrayList<>();
		try {
			st100idGLMG = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id from groupegl";
			res100idGLMG = st100idGLMG.executeQuery(req);
			while (res100idGLMG.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIddossokkkkkk(res100idGLMG.getString("Id"));
				ListeNumeroDossierGLGroupeLisanga.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeNumeroDossierGLGroupeLisanga;
	}

	public String generateUniqueOTP() {
		List<WorkflowEntite> dossiers = new ArrayList<>();
		dossiers = GetListeNumeroDossier();
		String otp;
		boolean exists;
		do {
			otp = generateOTP();
			exists = false;
			for (WorkflowEntite d : dossiers) {
				if (otp.equals(d.getIddossokkkkkk())) {
					exists = true;
					break;
				}
			}
		} while (exists);
		return otp;
	}

	public String generateUniqueOTPGL() {
		List<WorkflowEntite> dossiers = new ArrayList<>();
		dossiers = GetListeNumeroDossierGL();
		String otp;
		boolean exists;
		do {
			otp = generateOTP4();
			exists = false;
			for (WorkflowEntite d : dossiers) {
				if (otp.equals(d.getIddossokkkkkk())) {
					exists = true;
					break;
				}
			}
		} while (exists);
		return otp;
	}

	public String generateUniqueOTPGLMembre() {
		List<WorkflowEntite> dossiers = new ArrayList<>();
		dossiers = GetListeNumeroDossierGLMembre();
		String otp;
		boolean exists;
		do {
			otp = generateOTP3();
			exists = false;
			for (WorkflowEntite d : dossiers) {
				if (otp.equals(d.getIddossokkkkkk())) {
					exists = true;
					break;
				}
			}
		} while (exists);
		return otp;
	}

	public String generateUniqueOTPGLGroupeLisanga() {
		List<WorkflowEntite> dossiers = new ArrayList<>();
		dossiers = GetListeNumeroDossierGLGroupeLisanga();
		String otp;
		boolean exists;
		do {
			otp = generateOTP2();
			exists = false;
			for (WorkflowEntite d : dossiers) {
				if (otp.equals(d.getIddossokkkkkk())) {
					exists = true;
					break;
				}
			}
		} while (exists);
		return otp;
	}

	// Taille de l'OTP (par exemple 8 chiffres) pour generer le numero du groupe
	// dans kwikloan
	private final int OTP_LENGTH2 = 8;

	// Méthode pour générer un OTP aléatoire
	public String generateOTP2() {
		SecureRandom random = new SecureRandom();
		StringBuilder otp = new StringBuilder(OTP_LENGTH2);
		for (int i = 0; i < OTP_LENGTH2; i++) {
			otp.append(random.nextInt(10)); // Génère un chiffre entre 0 et 9
		}
		return otp.toString();
	}

	// Taille de l'OTP (par exemple 7 chiffres)
	private final int OTP_LENGTH3 = 7;

	// Méthode pour générer un OTP aléatoire
	public String generateOTP3() {
		SecureRandom random = new SecureRandom();
		StringBuilder otp = new StringBuilder(OTP_LENGTH3);
		for (int i = 0; i < OTP_LENGTH3; i++) {
			otp.append(random.nextInt(10)); // Génère un chiffre entre 0 et 9
		}
		return otp.toString();
	}

	// Taille de l'OTP (par exemple 8 chiffres)pour generer le dossier du membre
	// GL
	private final int OTP_LENGTH4 = 8;

	// Méthode pour générer un OTP aléatoire
	public String generateOTP4() {
		SecureRandom random = new SecureRandom();
		StringBuilder otp = new StringBuilder(OTP_LENGTH4);
		for (int i = 0; i < OTP_LENGTH4; i++) {
			otp.append(random.nextInt(10)); // Génère un chiffre entre 0 et 9
		}
		return otp.toString();
	}

	Statement st105;
	ResultSet res105;

	public List<WorkflowEntite> GETListeIdentifiantsAccesUser(String login,
			String MotPass) {
		List<WorkflowEntite> ListeIdentifiantsAccesUser = new ArrayList<>();
		try {
			String req = "select * from user where Login='" + login
					+ "' and MotPass='" + MotPass + "'";
			st105 = ConnexionBDLocal.getConnexion().createStatement();
			res105 = st105.executeQuery(req);
			while (res105.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIduser(res105.getInt("Iduser"));
				wkentite.setStatututilisateur(res105.getString("Statut"));
				wkentite.setNomsuser(res105.getString("NomsUser"));
				wkentite.setProfiluser(res105.getString("ProfilUser"));
				int Ibranche = res105.getInt("IdBranche");
				String agenceUser = this
						.GetLibellerancheMICROPOPViaID(Ibranche);
				wkentite.setBrancheuse(agenceUser);
				wkentite.setConnecteduser(res105.getInt("Connected"));

				ListeIdentifiantsAccesUser.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeIdentifiantsAccesUser;
	}

	Statement st106;
	ResultSet res106;

	public int GetIdClientDemandeurViaNumDossier(String NumDossierCre) {
		int IdClientDemandeurViaNumDossier = 0;
		try {
			String req = "select IdClientD from dossiercredit where NumDossierCredit='"
					+ NumDossierCre + "'";
			st106 = ConnexionBDLocal.getConnexion().createStatement();
			res106 = st106.executeQuery(req);
			while (res106.next()) {
				IdClientDemandeurViaNumDossier = res106.getInt("IdClientD");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdClientDemandeurViaNumDossier;
	}

	Statement st107;
	ResultSet res107;

	public List<WorkflowEntite> GetListeCompleteInformationsClientDemandeur(
			int idclientd) {
		List<WorkflowEntite> ListeCompleteInformationClientDemandeur = new ArrayList<>();
		try {
			st107 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from clientd where idclient='" + idclientd
					+ "'";
			res107 = st107.executeQuery(req);
			while (res107.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdcbsclisession(res107.getInt("IdCbsCli"));
				wk.setIdcbsclipmsession(res107.getInt("NumCbsPM"));
				wk.setCycleclicbssession(res107.getInt("cycleCliCbs"));
				wk.setAgemajeurplussession(res107.getString("AgeMajeurplus"));
				wk.setPropactivitecomsession(res107
						.getString("PropActiviteCom"));
				wk.setExerceactuelactivsession(res107
						.getString("ExerceActuelActiv"));
				wk.setActivzoneexclussession(res107
						.getString("ActivZoneExclus"));
				wk.setCongolaisetrangerpayssession(res107
						.getString("CongolaisEtrangerPays"));
				wk.setActivitezoneoperationelsession(res107
						.getString("ActiviteZoneOperationel"));
				wk.setActiviteexerceplussixmoissession(res107
						.getString("ActiviteExerceplussixmois"));
				wk.setActiviteenreglegalsession(res107
						.getString("ActiviteEnregLegal"));
				wk.setNomclisession(res107.getString("NomCli"));
				wk.setPostnomclisession(res107.getString("PostNomCli"));
				wk.setPrenomclisession(res107.getString("PrenomCli"));
				wk.setDatenaissanceclisession(res107
						.getString("DateNaissanceCli"));
				wk.setTypepieceidentitesession(res107
						.getString("TypePieceIdentite"));
				wk.setNumpieceidentitesession(res107
						.getString("NumPieceIdentite"));
				wk.setSexeclisession(res107.getString("SexeCli"));
				wk.setNationaliteclisession(res107.getString("NationaliteCli"));
				wk.setEtatcivilclisession(res107.getString("EtatCivilCli"));
				wk.setNomsconjointclisession(res107
						.getString("NomsConjointCli"));
				wk.setDatenaissanceconjointclisession(res107
						.getString("DateNaissanceConjointCli"));
				wk.setAdressedomicileclisession(res107
						.getString("AdresseDomicileCli"));
				wk.setTelephoneclisession(res107.getString("TelephoneCli"));
				wk.setEmailclisession(res107.getString("EmailCli"));
				wk.setTelephoneconjointclisession(res107
						.getString("TelephoneConjointCli"));
				wk.setReferenceadresseclientsession(res107
						.getString("ReferenceAdresseClient"));
				// wk.setPhotosclientdsession(res107.getString("photos"));
				wk.setIdclid(res107.getInt("idclient"));
				wk.setRaisonsocialpm(res107.getString("RaisonSocialPM"));
				wk.setAdressepm(res107.getString("AdrsPM"));
				wk.setNumtelpm(res107.getString("TelPM"));
				ListeCompleteInformationClientDemandeur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationClientDemandeur;
	}

	Statement st10700;
	ResultSet res10700;

	public List<WorkflowEntite> GetListeCompleteInformationsClientDemandeur2(
			int numCycle, String nom, String postnom, String prenom) {
		List<WorkflowEntite> ListeCompleteInformationClientDemandeur = new ArrayList<>();
		try {
			st10700 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from clientd where cycleCliCbs='" + numCycle
					+ "' and NomCli='" + nom.replace("'", "''")
					+ "' and PostNomCli='" + postnom.replace("'", "''")
					+ "' and PrenomCli='" + prenom.replace("'", "''") + "'";
			res10700 = st10700.executeQuery(req);
			while (res10700.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdcbsclisession(res10700.getInt("IdCbsCli"));
				wk.setCycleclicbssession(res10700.getInt("cycleCliCbs"));
				wk.setAgemajeurplussession(res10700.getString("AgeMajeurplus"));
				wk.setPropactivitecomsession(res10700
						.getString("PropActiviteCom"));
				wk.setExerceactuelactivsession(res10700
						.getString("ExerceActuelActiv"));
				wk.setActivzoneexclussession(res10700
						.getString("ActivZoneExclus"));
				wk.setCongolaisetrangerpayssession(res10700
						.getString("CongolaisEtrangerPays"));
				wk.setActivitezoneoperationelsession(res10700
						.getString("ActiviteZoneOperationel"));
				wk.setActiviteexerceplussixmoissession(res10700
						.getString("ActiviteExerceplussixmois"));
				wk.setActiviteenreglegalsession(res10700
						.getString("ActiviteEnregLegal"));
				wk.setNomclisession(res10700.getString("NomCli"));
				wk.setPostnomclisession(res10700.getString("PostNomCli"));
				wk.setPrenomclisession(res10700.getString("PrenomCli"));
				wk.setDatenaissanceclisession(res10700
						.getString("DateNaissanceCli"));
				wk.setTypepieceidentitesession(res10700
						.getString("TypePieceIdentite"));
				wk.setNumpieceidentitesession(res10700
						.getString("NumPieceIdentite"));
				wk.setSexeclisession(res10700.getString("SexeCli"));
				wk.setNationaliteclisession(res10700
						.getString("NationaliteCli"));
				wk.setEtatcivilclisession(res10700.getString("EtatCivilCli"));
				wk.setNomsconjointclisession(res10700
						.getString("NomsConjointCli"));
				wk.setDatenaissanceconjointclisession(res10700
						.getString("DateNaissanceConjointCli"));
				wk.setAdressedomicileclisession(res10700
						.getString("AdresseDomicileCli"));
				wk.setTelephoneclisession(res10700.getString("TelephoneCli"));
				wk.setEmailclisession(res10700.getString("EmailCli"));
				wk.setTelephoneconjointclisession(res10700
						.getString("TelephoneConjointCli"));
				wk.setReferenceadresseclientsession(res10700
						.getString("ReferenceAdresseClient"));
				// wk.setPhotosclientdsession(res10700.getString("photos"));
				wk.setIdclid(res10700.getInt("idclient"));
				ListeCompleteInformationClientDemandeur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationClientDemandeur;
	}

	Statement st10700checkpourmodif;
	ResultSet res10700checkpourmodif;

	public List<WorkflowEntite> GetListeCompleteInformationsClientDemandeur2checkpourmodif(
			int IdCbsClient) {
		List<WorkflowEntite> ListeCompleteInformationClientDemandeurcheckpourmodif = new ArrayList<>();
		try {
			st10700checkpourmodif = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select cli.idclient from clientd as cli inner join dossiercredit as doss on doss.IdClientD=cli.idclient where cli.IdCbsCli='"
					+ IdCbsClient
					+ "' and (doss.EtatDossierCredit='Analyse' or doss.EtatDossierCredit='Verification')";
			res10700checkpourmodif = st10700checkpourmodif.executeQuery(req);
			while (res10700checkpourmodif.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdclid(res10700checkpourmodif.getInt("cli.idclient"));
				ListeCompleteInformationClientDemandeurcheckpourmodif.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationClientDemandeurcheckpourmodif;
	}

	Statement st108;
	ResultSet res108;

	public List<WorkflowEntite> GetListeCompleteInformationsBussnessClientDemandeur(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsBussnessClientDemandeur = new ArrayList<>();
		try {
			st108 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businessclient where NumDossierCredit='"
					+ numdossierCre + "'";
			res108 = st108.executeQuery(req);
			while (res108.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessclientildemande(res108.getInt("Id"));
				wk.setNombusinesssession(res108.getString("Nombusiness"));
				wk.setAdressebusinesssession(res108
						.getString("AdresseBusiness"));
				wk.setDureebussnessadressesession(res108
						.getInt("DureeBussnessAdresse"));
				wk.setDureebussnesssession(res108.getInt("DureeBussness"));
				wk.setTypebussnesssession(res108.getString("TypeBussness"));
				wk.setFormjuridiquesession(res108.getString("FormJuridique"));
				wk.setSecteuractivitesession(res108
						.getString("SecteurActivite"));
				wk.setDocadminsession(res108.getString("DocAdmin"));
				ListeCompleteInformationsBussnessClientDemandeur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsBussnessClientDemandeur;
	}

	Statement st109;
	ResultSet res109;

	public List<WorkflowEntite> GetListeCompleteInformationsDossierCreditDemandeur(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsDossierCreditDemandeur = new ArrayList<>();
		try {
			st109 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from dossiercredit where NumDossierCredit='"
					+ numdossierCre + "'";
			res109 = st109.executeQuery(req);
			while (res109.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDatedossiersession(res109.getString("DateDossier"));
				wk.setMontantdemandesession(res109.getDouble("MontantDemande"));
				wk.setDureepretsession(res109.getInt("DureePret"));
				wk.setCapacitepayementmensuelsession(res109
						.getInt("CapacitePayementMensuel"));
				wk.setButInvestissmentsession(res109
						.getString("ButInvestissment"));
				wk.setPrecisionsiautresession(res109
						.getString("PrecisionSiAutre"));
				wk.setAvoirunautrepretsession(res109
						.getString("AvoirUnAutrePret"));
				wk.setInstututionpretanterieursession(res109
						.getString("InstututionPretAnterieur"));
				wk.setEtatdossiercreditsession(res109
						.getString("EtatDossierCredit"));
				int idDossierInitierPar = res109.getInt("DossierinitiePar");
				String initiateur = this.GetNomsUserViaId(idDossierInitierPar);
				wk.setDossierinitiePar(initiateur);
				ListeCompleteInformationsDossierCreditDemandeur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDossierCreditDemandeur;
	}

	Statement st110;
	ResultSet res110;

	public String GetNomsUserViaId(int IdClientD) {
		String NomsUserViaId = "";
		try {
			String req = "select NomsUser from user where Iduser='" + IdClientD
					+ "'";
			st110 = ConnexionBDLocal.getConnexion().createStatement();
			res110 = st110.executeQuery(req);
			while (res110.next()) {
				NomsUserViaId = res110.getString("NomsUser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NomsUserViaId;
	}

	Statement st111;
	ResultSet res111;

	public List<WorkflowEntite> GetListeCompleteInformationsRecommanderPar(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsRecommanderPar = new ArrayList<>();
		try {
			st111 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from demandecreditrecommandepar where NumDossierCre='"
					+ numdossierCre + "'";
			res111 = st111.executeQuery(req);
			while (res111.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdreco(res111.getInt("Id"));
				wk.setNomsdrsession(res111.getString("Noms"));
				wk.setTelephonedrsession(res111.getString("Telephone"));
				wk.setFonctionrdrsession(res111.getString("FonctionR"));
				wk.setAgentmcpopsession(res111.getString("AgentMcpop"));
				wk.setAdressedrsession(res111.getString("AdresseR"));
				wk.setRelationdrsession(res111.getString("Relation"));

				wk.setNomsdrsession2(res111.getString("Noms2"));
				wk.setTelephonedrsession2(res111.getString("Telephone2"));
				wk.setFonctionrdrsession2(res111.getString("FonctionR2"));
				wk.setAgentmcpopsession2(res111.getString("AgentMcpop2"));
				wk.setAdressedrsession2(res111.getString("AdresseR2"));
				wk.setRelationdrsession2(res111.getString("Relation2"));

				ListeCompleteInformationsRecommanderPar.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsRecommanderPar;
	}

	Statement st112;
	ResultSet res112;

	public List<WorkflowEntite> GetListeCompleteInformationsAssignation(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsAssignation = new ArrayList<>();
		try {
			st112 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from assignationdossiercredit where NumDossierCre='"
					+ numdossierCre + "'";
			res112 = st112.executeQuery(req);
			while (res112.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdassignation(res112.getInt("Id"));
				int IDBranche = res112.getInt("IDBranche");
				int IDsuperviseur = res112.getInt("IDsuperviseur");
				int IDProduitCredit = res112.getInt("IDProduitCredit");
				int IDAnalysteDossierCredit = res112
						.getInt("IDAnalysteDossierCredit");
				int IDAssignateur = res112.getInt("IDAssignateur");

				String LibelleBranche = GetLibelleBrancheViaIdBranche(IDBranche);
				String NomsSuperviseur = GetNomsUserViaId(IDsuperviseur);
				String LibelleProduitCredit = GetDescriptionProduitCreditViaIdProduitCredit(IDProduitCredit);
				String AnalysteCredit = GetNomsUserViaId(IDAnalysteDossierCredit);
				String NomsAssignateur = GetNomsUserViaId(IDAssignateur);
				wk.setAssbranchesession(LibelleBranche);
				wk.setAsssuperviseursession(NomsSuperviseur);
				wk.setAssproduitcreditsession(LibelleProduitCredit);
				wk.setAssanalystedossiercreditsession(AnalysteCredit);
				wk.setAssignateursession(NomsAssignateur);

				ListeCompleteInformationsAssignation.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsAssignation;
	}

	Statement st113;
	ResultSet res113;

	public List<WorkflowEntite> GetListeCompleteInformationsResidenceFamiliale(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsResidenceFamiliale = new ArrayList<>();
		try {
			st113 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from inforesidenceclientd where NumDossierCredit='"
					+ numdossierCre + "'";
			res113 = st113.executeQuery(req);
			while (res113.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdresidencefamilliallesession(res113.getInt("Id"));
				wk.setFresidenceactueldepuissession(res113
						.getInt("ResidenceActueldepuis"));
				wk.setFproprietesession(res113.getString("Propriete"));
				wk.setFdatevisitesession(res113.getString("DateVisite"));
				wk.setHeurevisitesession(res113.getString("HeureVisite"));
				wk.setFnomsbailleurssession(res113.getString("NomsBailleurs"));
				ListeCompleteInformationsResidenceFamiliale.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsResidenceFamiliale;
	}

	Statement st114;
	ResultSet res114;

	public List<WorkflowEntite> GetListeCompleteInformationsRevenuConjoint(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsRevenuConjoint = new ArrayList<>();
		try {
			st114 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from revenuconjoint where NumDossierCredit='"
					+ numdossierCre + "'";
			res114 = st114.executeQuery(req);
			while (res114.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdrevenuconjointsession(res114.getInt("Id"));
				wk.setLibellesocietercsession(res114
						.getString("LibelleSociete"));
				wk.setAdressercsession(res114.getString("Adresse"));
				wk.setPostercsession(res114.getString("Poste"));
				wk.setSalairenetrcsession(res114.getString("SalaireNet"));
				wk.setAncienetercsession(res114.getString("Ancienete"));
				wk.setCommentairercsession(res114.getString("Commentaire"));
				ListeCompleteInformationsRevenuConjoint.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsRevenuConjoint;
	}

	Statement st115;
	ResultSet res115;

	public List<WorkflowEntite> GetListeCompleteInformationsReferenceAlaResidence(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsReferenceAlaResidence = new ArrayList<>();
		try {
			st115 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id,NomsRR,TelephoneRR,RelationRR from referenceresidence where NumDossierCredit='"
					+ numdossierCre + "'";
			res115 = st115.executeQuery(req);
			while (res115.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdrr(res115.getInt("Id"));
				wk.setNomsrr(res115.getString("NomsRR"));
				wk.setTelephonerr(res115.getString("TelephoneRR"));
				wk.setRelationrr(res115.getString("RelationRR"));
				ListeCompleteInformationsReferenceAlaResidence.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsReferenceAlaResidence;
	}

	Statement st116;
	ResultSet res116;

	public List<WorkflowEntite> GetListeCompleteInformationsDepenseFamilliale(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsDepenseFamilliale = new ArrayList<>();
		try {
			st116 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from depensefamiliale where NumDossierCredit='"
					+ numdossierCre + "'";
			res116 = st116.executeQuery(req);
			while (res116.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIddepensefamilliale(res116.getInt("Id"));
				wk.setNourriturevalue(res116.getInt("Nourriture"));
				wk.setCombustiblevalue(res116.getInt("Combustiblecuisson"));
				wk.setLoyervalue(res116.getInt("loyer"));
				wk.setTransportvalue(res116.getInt("transport"));
				wk.setCommunicationvalue(res116.getInt("communication"));
				wk.setHabillementvalue(res116.getInt("habillement"));
				wk.setEducationvalue(res116.getInt("education"));
				wk.setServicesvalue(res116.getInt("service"));
				wk.setSoinsvalue(res116.getInt("soinmedicaux"));
				wk.setAutresdepensevalue(res116.getInt("autresdepense"));
				wk.setImprevusvalue(res116.getInt("imprevu"));
				wk.setLoisirsvalue(res116.getInt("loisir"));
				wk.setAutresdepenseprivevalue(res116
						.getInt("autredepenseprive"));
				// wk.setContributionclientdemandeurvalue(res116
				// .getInt("ContributionDFClientD"));
				ListeCompleteInformationsDepenseFamilliale.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDepenseFamilliale;
	}

	Statement st117;
	ResultSet res117;

	public List<WorkflowEntite> GetListeCompleteInformationsBussness1ClientDemandeur(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsBussness1ClientDemandeur = new ArrayList<>();
		try {
			st117 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businessoneclientd where NumDossiercredi='"
					+ numdossierCre + "'";
			res117 = st117.executeQuery(req);
			while (res117.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessclientb1(res117.getInt("Id"));
				wk.setActivitedepuisb1(res117.getInt("ActiviteDepuis"));
				wk.setLieudepuisb1(res117.getInt("LieuDepuis"));
				wk.setNbrpointventeb1(res117.getInt("NbrPointVente"));
				wk.setProprietelocauxb1(res117.getString("ProprieteLocaux"));
				wk.setNombailleurb1(res117.getString("NomBailleur"));
				wk.setDatevisiteb1(res117.getString("DateVisite"));
				wk.setHeurevisiteb1(res117.getString("HeureVisite"));
				ListeCompleteInformationsBussness1ClientDemandeur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsBussness1ClientDemandeur;
	}

	Statement st118;
	ResultSet res118;

	public List<WorkflowEntite> GetListeCompleteInformationsActifEtDette(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsActifEtDette = new ArrayList<>();
		try {
			st118 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businessoneactifdette where NumDossierCre='"
					+ numdossierCre + "'";
			res118 = st118.executeQuery(req);
			while (res118.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdactifdette(res118.getInt("Id"));
				wk.setCashbusiness(res118.getInt("CashBusiness"));
				wk.setCashbanque(res118.getInt("CashBanque"));
				wk.setDettecourterme(res118.getInt("DetteCourTerme"));
				wk.setDettlongterme(res118.getInt("DetteLongTerme"));
				wk.setMeubles(res118.getInt("Meubles"));
				wk.setVehicule(res118.getInt("Vehicule"));
				wk.setAutresactifetdette(res118.getInt("Autres"));
				wk.setCashmaison(res118.getInt("CashMaison"));
				wk.setCreances(res118.getInt("Creances"));
				wk.setEquipementoutils(res118.getInt("Equipementoutils"));
				wk.setLocalcommercial(res118.getInt("LocalCommercial"));
				ListeCompleteInformationsActifEtDette.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsActifEtDette;
	}

	Statement st119;
	ResultSet res119;

	public List<WorkflowEntite> GetListeCompleteInformationsRisquesPrincipauxB1(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsRisquesPrincipauxB1 = new ArrayList<>();
		try {
			st119 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businessonerisquesprincipaux where NumDossierCre='"
					+ numdossierCre + "'";
			res119 = st119.executeQuery(req);
			while (res119.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdrisquesprincipauxb11(res119.getInt("Id"));
				wk.setLibellerisqueprincipauxb11(res119
						.getString("LibelleRisque"));
				wk.setMitigationrisquesprincipaux(res119
						.getString("Mitigation"));
				ListeCompleteInformationsRisquesPrincipauxB1.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsRisquesPrincipauxB1;
	}

	Statement st120;
	ResultSet res120;

	public List<WorkflowEntite> GetListeCompleteInformationsVenteEtAchatB1(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsVenteEtAchatB1 = new ArrayList<>();
		try {
			st120 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businessoneventeachat where NumDossierCre='"
					+ numdossierCre + "'";
			res120 = st120.executeQuery(req);
			while (res120.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdventeachatwf(res120.getInt("Id"));
				wk.setCommentaiteva(res120.getString("CommentaireVA"));
				wk.setRegistreventevariableav(res120.getString("RegistreVente"));
				wk.setNbrjourouvrableparmoisvariableav(res120
						.getInt("NbrJourOuvrableParMois"));
				wk.setCategorievjlundivariableav(res120
						.getString("CategorieVjLundi"));
				wk.setCategorievjmardivariableav(res120
						.getString("CategorieVjMardi"));
				wk.setCategorievjmercredivariableav(res120
						.getString("CategorieVjMercredi"));
				wk.setCategorievjjeudivariableav(res120
						.getString("CategorieVjJeudi"));
				wk.setCategorievjvendredivariableav(res120
						.getString("CategorieVjVendredi"));
				wk.setCategorievjsamedivariableav(res120
						.getString("CategorieVjSamedi"));
				wk.setCategorievjdimanchevariableav(res120
						.getString("CategorieVjDimanche"));

				wk.setMontantvjlundivariableav(res120.getInt("MontantVjLundi"));
				wk.setMontantvjmardivariableav(res120.getInt("MontantVjMardi"));
				wk.setMontantvjmercredivariableav(res120
						.getInt("MontantVjMercredi"));
				wk.setMontantvjjeudivariableav(res120.getInt("MontantVjJeudi"));
				wk.setMontantvjvendredivariableav(res120
						.getInt("MontantVjVendredi"));
				wk.setMontantvjsamedivariableav(res120
						.getInt("MontantVjSamedi"));
				wk.setMontantvjdimanchevariableav(res120
						.getInt("MontantVjDimanche"));

				wk.setTotalsemainevariableav(res120.getInt("TotalSemaine"));
				wk.setDernierjour1variableav(res120.getString("dernierJour1"));
				wk.setDernierjour2variableav(res120.getString("dernierJour2"));
				wk.setDernierjour3variableav(res120.getString("dernierJour3"));

				wk.setVentedernierjour1variableav(res120
						.getInt("VenteDernierJour1"));
				wk.setVentedernierjour2variableav(res120
						.getInt("VenteDernierJour2"));
				wk.setVentedernierjour3variableav(res120
						.getInt("VenteDernierJour3"));
				wk.setVentejourTodaysvariableav(res120
						.getInt("VenteJourTOdays"));
				wk.setVentemensuelminmaxvariableav(res120
						.getDouble("VenteMensuelMinMax"));
				wk.setVentemensueltroisdernierjoursvariableav(res120
						.getDouble("VenteMensuelTroisDernierJours"));
				wk.setJour1(res120.getString("jour1"));
				wk.setJour2(res120.getString("jour2"));
				wk.setJour3(res120.getString("jour3"));
				wk.setMntjour1(res120.getInt("mntjour1"));
				wk.setMntjour2(res120.getInt("mntjour2"));
				wk.setMntjour3(res120.getInt("mntjour3"));
				wk.setMntdays(res120.getInt("mntToDaysJour"));
				wk.setVentetotaljour123(res120
						.getDouble("VenteTotalJourDernier"));
				ListeCompleteInformationsVenteEtAchatB1.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsVenteEtAchatB1;
	}

	Statement st121;
	ResultSet res121;

	public List<WorkflowEntite> GetListeCompleteInformationsSaisonnaliteB2(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsSaisonnaliteB2 = new ArrayList<>();
		try {
			st121 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businesstwosaisonnalitevente where NumDossierCre='"
					+ numdossierCre + "'";
			res121 = st121.executeQuery(req);
			while (res121.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdsv(res121.getInt("Id"));
				wk.setMontantjanviersv(res121.getDouble("MontantJanvierSV"));
				wk.setMontantfevriersv(res121.getDouble("MontantFevrierSV"));
				wk.setMontantmarssv(res121.getDouble("MontantMarsSV"));
				wk.setMontantavrilsv(res121.getDouble("MontantAvrilSV"));
				wk.setMontantmaisv(res121.getDouble("MontantMaiSV"));
				wk.setMontantjuinsv(res121.getDouble("MontantJuinSV"));
				wk.setMontantjuilletsv(res121.getDouble("MontantJuilletSV"));
				wk.setMontantaoutsv(res121.getDouble("MontantAoutSV"));
				wk.setMontantseptembresv(res121.getDouble("MontantSeptembreSV"));
				wk.setMontantoctobresv(res121.getDouble("MontantOctobreSV"));
				wk.setMontantnovembresv(res121.getDouble("MontantNovembreSV"));
				wk.setMontantdecembresv(res121.getDouble("MontantDecembreSV"));

				ListeCompleteInformationsSaisonnaliteB2.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsSaisonnaliteB2;
	}

	Statement st122;
	ResultSet res122;

	public List<WorkflowEntite> GetListeCompleteInformationsReferenceBussnessB2(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsReferenceBussnessB2 = new ArrayList<>();
		try {
			st122 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from businesstworeference where NumDossierCre='"
					+ numdossierCre + "'";
			res122 = st122.executeQuery(req);
			while (res122.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdrefb2(res122.getInt("Id"));
				wk.setNomsreferenceb2(res122.getString("NomsReferenceB2"));
				wk.setTyperelationb2(res122.getString("TypeRelationB2"));
				wk.setTelephoneb2(res122.getString("Telephone"));
				ListeCompleteInformationsReferenceBussnessB2.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsReferenceBussnessB2;
	}

	Statement st123;
	ResultSet res123;

	public List<WorkflowEntite> GetListeCompleteInformationsGarant(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsGarant = new ArrayList<>();
		try {
			st123 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from garantcreditindividuel where NumDossierCre='"
					+ numdossierCre + "'";
			res123 = st123.executeQuery(req);
			while (res123.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgarant(res123.getInt("Id"));
				wk.setNomg(res123.getString("NomG"));
				wk.setPostnomg(res123.getString("PostNomG"));
				wk.setPrenomg(res123.getString("PrenomG"));
				wk.setEtatcivilg(res123.getString("EtatCivilG"));
				wk.setSexeg(res123.getString("SexeG"));
				wk.setDatenaissanceg(res123.getString("DateNaissanceG"));
				wk.setTelephoneg(res123.getString("TelephoneG"));
				wk.setEmailg(res123.getString("EmailG"));
				wk.setTypepieceidentiteg(res123.getString("TypePieceIdentite"));
				wk.setNumcartepieceidentiteg(res123
						.getString("NumCartePieceIdentite"));
				wk.setNomsconjointg(res123.getString("NomsConjoint"));
				wk.setTelephoneconjointg(res123.getString("TelephoneConjoint"));
				wk.setRelationavecclientg(res123
						.getString("RelationAvecClient"));
				wk.setProprietemaisong(res123.getString("ProprieteMaison"));
				wk.setActiviteg(res123.getString("ActiviteG"));
				wk.setRevenug(res123.getString("RevenuG"));
				wk.setAdresseg(res123.getString("AdresseG"));
				wk.setProvinceg(res123.getString("Province"));
				wk.setChiffreaffaireg(res123.getDouble("ChiffreAffaireG"));
				wk.setCmvg(res123.getDouble("CmvG"));
				wk.setProfilbruteg(res123.getDouble("ProfilBruteG"));
				wk.setTotdepenseopg(res123.getDouble("TotDepenseOpG"));
				wk.setProfilnetg(res123.getDouble("ProfilNetG"));
				wk.setTotalautresrevenusg(res123
						.getDouble("TotalAutresRevenusG"));
				wk.setTotaldepensepriveg(res123.getDouble("TotalDepensePriveG"));
				wk.setCapacitepaiementg(res123.getDouble("CapacitePaiementG"));
				wk.setContrattravailg(res123.getString("ContratTravailG"));
				wk.setBulletinpaig(res123.getString("BulletinPaiG"));
				wk.setCarteserviceg(res123.getString("CarteServiceG"));
				wk.setSalairem1g(res123.getDouble("SalaireM1G"));
				wk.setSalairem2g(res123.getDouble("SalaireM2G"));
				wk.setSalairem3g(res123.getDouble("SalaireM3G"));
				wk.setTotalautresavantagesg(res123
						.getDouble("TotalAutresAvantagesG"));
				wk.setSalairemoyeng(res123.getDouble("SalaireMoyenG"));
				wk.setNumcbsg(res123.getInt("NumCbsGarant"));
				wk.setNomsconjointgarantg(res123.getString("NomsConjointG"));
				wk.setAdresseactivitegarantg(res123
						.getString("AdresseActiviteG"));
				wk.setAdressecodebiteur(res123.getString("AdresseCodebiteur"));
				wk.setTelephonecodebiteur(res123
						.getString("TelephoneCodebiteur"));

				ListeCompleteInformationsGarant.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsGarant;
	}

	Statement st124;
	ResultSet res124;

	public int PassageEtatDossierCredit(String NouveauEtat, String NumDossier) {
		int nbrLigne = 0;
		try {
			String req = "update dossiercredit set EtatDossierCredit='"
					+ NouveauEtat + "' where NumDossierCredit='" + NumDossier
					+ "'";
			st124 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st124.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st1242525;

	public int PassageEtatGroupeGL(String NouveauEtat, String NumGroupeLisanga,
			int cycle) {
		int nbrLigne = 0;
		try {
			String req = "update groupegl set EtatGroupGL='" + NouveauEtat
					+ "' where Id='" + NumGroupeLisanga
					+ "' and NbrCycleGroupe='" + cycle + "'";
			st1242525 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st1242525.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st12425205;

	public int PassageEtatDossierCreditGL(String NouveauEtat, int NumMembreGrp,
			int cycle) {
		int nbrLigne = 0;
		try {
			String req = "update dossiercreditgl set EtatDossierGL='"
					+ NouveauEtat + "' where IdMembreGL='" + NumMembreGrp
					+ "' and CycleGL='" + cycle + "'";
			st12425205 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st12425205.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st12525;
	ResultSet res12525;

	public List<WorkflowEntite> GetListeNumClientGroupeLisanga(String numGroupe) {
		List<WorkflowEntite> ListeNumClientGroupeLisanga = new ArrayList<>();
		try {
			st12525 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdClientMembre from membregroupe where IdGroupeLisanga='"
					+ numGroupe + "'";
			res12525 = st12525.executeQuery(req);
			while (res12525.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumcligroupeokokokok(res12525.getInt("IdClientMembre"));
				ListeNumClientGroupeLisanga.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeNumClientGroupeLisanga;
	}

	Statement st125;
	ResultSet res125;

	public List<WorkflowEntite> GetListeCompleteInformationsDecisionComite(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsDecisionComite = new ArrayList<>();
		try {
			st125 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from comite where NumDossierCre='"
					+ numdossierCre + "'";
			res125 = st125.executeQuery(req);
			while (res125.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDatecomitecreditcc(res125.getString("DateComiteCredit"));
				wk.setDecisioncomitecc(res125.getString("DecisionComite"));
				wk.setMontantcreditvalidercc(res125
						.getDouble("MontantCreditValider"));
				wk.setNbrecheanciervalidecc(res125
						.getInt("NbrEcheancierValide"));
				wk.setButpretcc(res125.getString("ButPret"));
				wk.setFraissmscc(res125.getDouble("FraisSms"));
				wk.setCautioncc(res125.getDouble("Caution"));
				wk.setFraisdossiercc(res125.getDouble("FraisDossier"));
				wk.setTauxinteretcc(res125.getDouble("TauxInteret"));
				wk.setAssurancecc(res125.getDouble("assurance"));
				wk.setMembreparticipecc(res125.getString("MembreParticipe"));
				wk.setNbrmembrecomitecc(res125.getInt("NbrMembreComite"));
				int idprod = res125.getInt("IDProduitCreditComite");
				String libelp = this.GetlibelleProduitCreditViaID(idprod);
				wk.setLibelleproduitcreditdecisionokkk(libelp);
				wk.setCommentairecomitedecision(res125
						.getString("commentaireComite"));
				wk.setTauxcautionmodif(res125.getDouble("TauxCautionModifier"));
				ListeCompleteInformationsDecisionComite.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDecisionComite;
	}

	Statement st126;
	ResultSet res126;

	public List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitement(
			int iduser) {
		List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitement = new ArrayList<>();
		try {
			st126 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join assignationdossiercredit as ass on ass.NumDossierCre=dcr.NumDossierCredit where dcr.EtatDossierCredit='Analyse' and ass.IDAnalysteDossierCredit='"
					+ iduser + "'order by cli.NomCli asc ";
			res126 = st126.executeQuery(req);
			while (res126.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerodossieril(res126.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res126.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res126.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res126.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res126.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res126.getString("br.LibelleBranche"));
				String NomsDemandeur = res126.getString("cli.NomCli");
				String PostNomDemandeur = res126.getString("cli.PostNomCli");
				String PrenomDemandeur = res126.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res126
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelRequierVotreTraitement.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelRequierVotreTraitement;
	}

	Statement st127;
	ResultSet res127;

	public List<WorkflowEntite> StatistiqueDossierILTraiter() {
		List<WorkflowEntite> StatistiqueDossierILEtapeTermine = new ArrayList<>();
		try {
			st127 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select br.LibelleBranche,count(dcr.NumDossierCredit) from dossiercredit as dcr inner join user as u on u.Iduser=dcr.DossierinitiePar inner join branche as br on br.IdBranche=u.IdBranche where dcr.EtatDossierCredit='Terminer' group by br.LibelleBranche order by br.LibelleBranche asc";
			res127 = st127.executeQuery(req);
			while (res127.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setLibellebranchestat(res127.getString("br.LibelleBranche"));
				wk.setNbrdossierterminebranche(res127
						.getInt("count(dcr.NumDossierCredit)"));
				StatistiqueDossierILEtapeTermine.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return StatistiqueDossierILEtapeTermine;
	}

	// Méthode pour envoyer un SMS via Juhugroup

	public void sendSMS(String telephoneDestinateur, String nomsCli) {
		String API_KEY = "ZckC33ZfRxknr8zICqFB2TkGJcS4OsE4fwTcd7y3Rks=";
		String API_URL = "https://sms.juhudigroup.net/api/v2/SendSMS?";
		try {
			// Créez l'URL de la requête API
			URL url = new URL(API_URL);
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			// Configurer la connexion HTTP
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json");
			connection.setRequestProperty("Authorization", "Bearer " + API_KEY);
			connection.setDoOutput(true);

			String Message = "Bonjour,vous avez reussi un dossier du client : "
					+ nomsCli
					+ " pour analyse dans KWIKLOAN,merci pour son traitement !!!";
			// Créez le corps de la requête JSON
			String jsonPayload = "{'SenderId':'MICROPOP SA','Message':'"
					+ Message
					+ "','MobileNumbers':'"
					+ telephoneDestinateur
					+ "','ApiKey':'ZckC33ZfRxknr8zICqFB2TkGJcS4OsE4fwTcd7y3Rks=','ClientId':'5ab638df-1458-4577-b2b6-de7f6a6ed5c5'}";
			JsonObject jsonObject = (JsonObject) JsonParser
					.parseString(jsonPayload);
			// Écrire les données dans le corps de la requête
			try (OutputStream os = connection.getOutputStream()) {
				byte[] input = jsonPayload.getBytes("utf-8");
				os.write(input, 0, input.length);
			}
			// Lire la réponse de l'API
			try (BufferedReader br = new BufferedReader(new InputStreamReader(
					connection.getInputStream(), "utf-8"))) {
				StringBuilder response = new StringBuilder();
				String responseLine;
				while ((responseLine = br.readLine()) != null) {
					response.append(responseLine.trim());
				}
				System.out.println("Réponse de l'API: " + response.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	Statement st128;
	ResultSet res128;

	public List<WorkflowEntite> GetListeCompleteInformationsDocument(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsDocument = new ArrayList<>();
		try {
			st128 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from documentbusiness where NumDossierCre='"
					+ numdossierCre + "'";
			res128 = st128.executeQuery(req);
			while (res128.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdfichierdoc(res128.getInt("Id"));
				wk.setDescriptionfichierdoc(res128.getString("Description"));
				wk.setFichierdoc(res128.getString("FichierUrl"));
				wk.setDateenrfichierdoc(res128
						.getString("DateEnregistrementDoc"));
				ListeCompleteInformationsDocument.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDocument;
	}

	Statement st129;
	ResultSet res129;

	public String GetnomDocumentviaID(int IDDocumentIL) {
		String nomDocumentviaID = "";
		try {
			st129 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FichierUrl from documentbusiness where Id='"
					+ IDDocumentIL + "'";
			res129 = st129.executeQuery(req);
			while (res129.next()) {
				nomDocumentviaID = res129.getString("FichierUrl");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomDocumentviaID;
	}

	Statement st130;
	ResultSet res130;

	public void DtFluxCreation(String DatePassageFluxCreation, String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxCreation='"
					+ DatePassageFluxCreation + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st130 = ConnexionBDLocal.getConnexion().createStatement();
			st130.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st131;
	ResultSet res131;

	public void DtFluxAssignation(String DatePassageFluxAssignation,
			String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxAssignation='"
					+ DatePassageFluxAssignation + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st131 = ConnexionBDLocal.getConnexion().createStatement();
			st131.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st132;
	ResultSet res132;

	public void DtFluxAnalyse(String DatePassageFluxAnalyse, String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxAnalyse='"
					+ DatePassageFluxAnalyse + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st132 = ConnexionBDLocal.getConnexion().createStatement();
			st132.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st133;
	ResultSet res133;

	public void DtFluxComite(String DatePassageFluxComite, String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxComite='"
					+ DatePassageFluxComite + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st133 = ConnexionBDLocal.getConnexion().createStatement();
			st133.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st134;
	ResultSet res134;

	public void DtFluxVerification(String DatePassageFluxVerification,
			String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxVerification='"
					+ DatePassageFluxVerification
					+ "' where NumDossierCredit='" + NumDossier + "'";
			st134 = ConnexionBDLocal.getConnexion().createStatement();
			st134.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st135;
	ResultSet res135;

	public void DtFluxPostage(String DatePassageFluxPostage, String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxPostage='"
					+ DatePassageFluxPostage + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st135 = ConnexionBDLocal.getConnexion().createStatement();
			st135.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st138;
	ResultSet res138;

	public void DtFluxTermine(String DatePassageFluxTermine, String NumDossier) {
		try {
			String req = "update dossiercredit set DtFluxTermine='"
					+ DatePassageFluxTermine + "' where NumDossierCredit='"
					+ NumDossier + "'";
			st138 = ConnexionBDLocal.getConnexion().createStatement();
			st138.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st139;
	ResultSet res139;

	public List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatTerminer(
			int iduser) {
		List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatTerminer = new ArrayList<>();
		try {
			st139 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,com.MontantCreditValider,com.NbrEcheancierValide from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join assignationdossiercredit as ass on ass.NumDossierCre=dcr.NumDossierCredit inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where dcr.EtatDossierCredit='Terminer' and ass.IDAnalysteDossierCredit='"
					+ iduser + "'order by cli.NomCli asc ";
			res139 = st139.executeQuery(req);
			while (res139.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerodossieril(res139.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res139.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res139
						.getDouble("com.MontantCreditValider"));
				wk.setEcheancedossieril(res139
						.getInt("com.NbrEcheancierValide"));
				wk.setStatutdossieril(res139.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res139.getString("br.LibelleBranche"));
				String NomsDemandeur = res139.getString("cli.NomCli");
				String PostNomDemandeur = res139.getString("cli.PostNomCli");
				String PrenomDemandeur = res139.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res139
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatTerminer
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatTerminer;
	}

	Statement st140;
	ResultSet res140;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingCreation(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st140 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.EtatDossierCredit='Creation' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res140 = st140.executeQuery(req);
			while (res140.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res140.getInt("cli.idclient"));
				wk.setNumerodossieril(res140.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res140.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res140.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res140.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res140.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res140.getString("br.LibelleBranche"));
				String NomsDemandeur = res140.getString("cli.NomCli");
				String PostNomDemandeur = res140.getString("cli.PostNomCli");
				String PrenomDemandeur = res140.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res140
						.getString("us.NomsUser"));
				wk.setDatefluxcreationdossieril(res140
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res140
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res140
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res140
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res140
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res140
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res140
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st141;
	ResultSet res141;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingAssignation(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st141 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.EtatDossierCredit='"
					+ EtatDossier
					+ "' and br.LibelleBranche='"
					+ Branche
					+ "'order by cli.NomCli asc ";
			res141 = st141.executeQuery(req);
			while (res141.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res141.getInt("cli.idclient"));
				wk.setNumerodossieril(res141.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res141.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res141.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res141.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res141.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res141.getString("br.LibelleBranche"));
				String NomsDemandeur = res141.getString("cli.NomCli");
				String PostNomDemandeur = res141.getString("cli.PostNomCli");
				String PrenomDemandeur = res141.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res141
						.getString("us.NomsUser"));
				wk.setDatefluxcreationdossieril(res141
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res141
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res141
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res141
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res141
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res141
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res141
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st142;
	ResultSet res142;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingAnalyse(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st142 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.EtatDossierCredit='Analyse' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res142 = st142.executeQuery(req);
			while (res142.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res142.getInt("cli.idclient"));
				wk.setNumerodossieril(res142.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res142.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res142.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res142.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res142.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res142.getString("br.LibelleBranche"));
				String NomsDemandeur = res142.getString("cli.NomCli");
				String PostNomDemandeur = res142.getString("cli.PostNomCli");
				String PrenomDemandeur = res142.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res142
						.getString("us.NomsUser"));

				wk.setNomscompletanalystedossieril(res142
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res142
						.getString("dcr.DtFluxCreation"));

				wk.setDatefluxassignationdossieril(res142
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res142
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res142
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res142
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res142
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res142
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st143;
	ResultSet res143;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingComite(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st143 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.EtatDossierCredit='Comite' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res143 = st143.executeQuery(req);
			while (res143.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res143.getInt("cli.idclient"));
				wk.setNumerodossieril(res143.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res143.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res143.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res143.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res143.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res143.getString("br.LibelleBranche"));
				String NomsDemandeur = res143.getString("cli.NomCli");
				String PostNomDemandeur = res143.getString("cli.PostNomCli");
				String PrenomDemandeur = res143.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res143
						.getString("us.NomsUser"));

				wk.setNomscompletanalystedossieril(res143
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res143
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res143
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res143
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res143
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res143
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res143
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res143
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st144;
	ResultSet res144;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingVerification(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st144 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste,cm.MontantCreditValider,cm.NbrEcheancierValide from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as cm on dcr.NumDossierCredit=cm.NumDossierCre where dcr.EtatDossierCredit='Verification' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res144 = st144.executeQuery(req);
			while (res144.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res144.getInt("cli.idclient"));
				wk.setNumerodossieril(res144.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res144.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res144.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res144.getInt("dcr.DureePret"));
				wk.setEcheanceapprouverdossieril(res144
						.getInt("cm.NbrEcheancierValide"));
				wk.setStatutdossieril(res144.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res144.getString("br.LibelleBranche"));
				String NomsDemandeur = res144.getString("cli.NomCli");
				String PostNomDemandeur = res144.getString("cli.PostNomCli");
				String PrenomDemandeur = res144.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res144
						.getString("us.NomsUser"));

				wk.setMontantapprouvedossieril(res144
						.getDouble("cm.MontantCreditValider"));

				wk.setNomscompletanalystedossieril(res144
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res144
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res144
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res144
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res144
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res144
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res144
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res144
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st145;
	ResultSet res145;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingPostage(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st145 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste,cm.MontantCreditValider,cm.NbrEcheancierValide from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as cm on dcr.NumDossierCredit=cm.NumDossierCre where dcr.EtatDossierCredit='Postage' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res145 = st145.executeQuery(req);
			while (res145.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res145.getInt("cli.idclient"));
				wk.setNumerodossieril(res145.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res145.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res145.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res145.getInt("dcr.DureePret"));
				wk.setEcheanceapprouverdossieril(res145
						.getInt("cm.NbrEcheancierValide"));

				wk.setStatutdossieril(res145.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res145.getString("br.LibelleBranche"));
				String NomsDemandeur = res145.getString("cli.NomCli");
				String PostNomDemandeur = res145.getString("cli.PostNomCli");
				String PrenomDemandeur = res145.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res145
						.getString("us.NomsUser"));

				wk.setMontantapprouvedossieril(res145
						.getDouble("cm.MontantCreditValider"));

				wk.setNomscompletanalystedossieril(res145
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res145
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res145
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res145
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res145
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res145
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res145
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res145
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st146;
	ResultSet res146;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingTermine(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st146 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste,cm.MontantCreditValider,cm.NbrEcheancierValide from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as cm on dcr.NumDossierCredit=cm.NumDossierCre where dcr.EtatDossierCredit='Terminer' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res146 = st146.executeQuery(req);
			while (res146.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res146.getInt("cli.idclient"));
				wk.setNumerodossieril(res146.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res146.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res146.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res146.getInt("dcr.DureePret"));
				wk.setEcheanceapprouverdossieril(res146
						.getInt("cm.NbrEcheancierValide"));
				wk.setStatutdossieril(res146.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res146.getString("br.LibelleBranche"));
				String NomsDemandeur = res146.getString("cli.NomCli");
				String PostNomDemandeur = res146.getString("cli.PostNomCli");
				String PrenomDemandeur = res146.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res146
						.getString("us.NomsUser"));

				wk.setMontantapprouvedossieril(res146
						.getDouble("cm.MontantCreditValider"));

				wk.setNomscompletanalystedossieril(res146
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res146
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res146
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res146
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res146
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res146
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res146
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res146
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st147;
	ResultSet res147;

	public List<WorkflowEntite> ListeDossierCreditIndividuelReportingRejetter(
			String EtatDossier, String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelReporting = new ArrayList<>();
		try {
			st147 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser,dcr.DtFluxCreation,dcr.DtFluxAssignation,dcr.DtFluxAnalyse,dcr.DtFluxComite,dcr.DtFluxVerification,dcr.DtFluxPostage,dcr.DtFluxTermine,dcr.analyste,cm.MontantCreditValider,cm.NbrEcheancierValide from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as cm on dcr.NumDossierCredit=cm.NumDossierCre where dcr.EtatDossierCredit='Rejeter' and br.LibelleBranche='"
					+ Branche + "'order by cli.NomCli asc ";
			res147 = st147.executeQuery(req);
			while (res147.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res147.getInt("cli.idclient"));
				wk.setNumerodossieril(res147.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res147.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res147.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res147.getInt("dcr.DureePret"));
				wk.setEcheanceapprouverdossieril(res147
						.getInt("cm.NbrEcheancierValide"));
				wk.setStatutdossieril(res147.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res147.getString("br.LibelleBranche"));
				String NomsDemandeur = res147.getString("cli.NomCli");
				String PostNomDemandeur = res147.getString("cli.PostNomCli");
				String PrenomDemandeur = res147.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res147
						.getString("us.NomsUser"));

				wk.setMontantapprouvedossieril(res147
						.getDouble("cm.MontantCreditValider"));

				wk.setNomscompletanalystedossieril(res147
						.getString("dcr.analyste"));

				wk.setDatefluxcreationdossieril(res147
						.getString("dcr.DtFluxCreation"));
				wk.setDatefluxassignationdossieril(res147
						.getString("dcr.DtFluxAssignation"));
				wk.setDatefluxanalysedossieril(res147
						.getString("dcr.DtFluxAnalyse"));
				wk.setDatefluxcomitedossieril(res147
						.getString("dcr.DtFluxComite"));
				wk.setDatefluxverificationdossieril(res147
						.getString("dcr.DtFluxVerification"));
				wk.setDatefluxpostagedossieril(res147
						.getString("dcr.DtFluxPostage"));
				wk.setDatefluxterminerdossieril(res147
						.getString("dcr.DtFluxTermine"));
				ListeDossierCreditIndividuelReporting.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelReporting;
	}

	Statement st148;
	ResultSet res148;

	public String GetNomCliDansADbanking(int idclient) {
		String NomCliDansADbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st148 = cnx.createStatement();
			String req = "select pp_nom from ad_cli where id_client='"
					+ idclient + "'";
			res148 = st148.executeQuery(req);
			while (res148.next()) {
				NomCliDansADbanking = res148.getString("pp_nom");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res148 != null)
					res148.close();
			} catch (Exception e) {
			}
			try {
				if (st148 != null)
					st148.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return NomCliDansADbanking;
	}

	Statement st148255;
	ResultSet res148255;

	public String GetLibelleGpLisangaDansADbanking(int NumGroupe) {
		String LibelleGpLisangaDansADbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st148255 = cnx.createStatement();
			String req = "SELECT CASE statut_juridique WHEN 3 THEN gi_nom  WHEN 4 THEN gi_nom END AS Nom FROM ad_cli WHERE id_client='"
					+ NumGroupe + "'";
			res148255 = st148255.executeQuery(req);
			while (res148255.next()) {
				LibelleGpLisangaDansADbanking = res148255.getString("Nom");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res148255 != null)
					res148255.close();
			} catch (Exception e) {
			}
			try {
				if (st148255 != null)
					st148255.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return LibelleGpLisangaDansADbanking;
	}

	Statement st149;
	ResultSet res149;

	public String GetPreNomCliDansADbanking(int idclient) {
		String PreNomCliDansADbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st149 = cnx.createStatement();
			String req = "select pp_prenom from ad_cli where id_client='"
					+ idclient + "'";
			res149 = st149.executeQuery(req);
			while (res149.next()) {
				PreNomCliDansADbanking = res149.getString("pp_prenom");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		// finally {
		// try {
		// if (res149 != null)
		// res149.close();
		// } catch (Exception e) {
		// }
		// try {
		// if (st149 != null)
		// st149.close();
		// } catch (Exception e) {
		// } // <-- ICI
		// try {
		// if (cnx != null)
		// cnx.close();
		// } catch (Exception e) {
		// } // <-- ICI
		// }

		return PreNomCliDansADbanking;
	}

	Statement st149400;
	ResultSet res149400;

	public String GetDateNaissanceCliDansADbanking(int idclient) {
		String DateNaissanceCliDansADbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st149400 = cnx.createStatement();
			String req = "select pp_date_naissance dn from ad_cli where id_client='"
					+ idclient + "'";
			res149400 = st149400.executeQuery(req);
			while (res149400.next()) {
				DateNaissanceCliDansADbanking = res149400.getString("dn");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res149400 != null)
					res149400.close();
			} catch (Exception e) {
			}
			try {
				if (st149400 != null)
					st149400.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return DateNaissanceCliDansADbanking;
	}

	Statement st14940011;
	ResultSet res14940011;

	public int GetSexeCliDansADbanking(int idclient) {
		int SexeCli = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st14940011 = cnx.createStatement();
			String req = "select pp_sexe sx from ad_cli where id_client='"
					+ idclient + "'";
			res14940011 = st14940011.executeQuery(req);
			while (res14940011.next()) {
				SexeCli = res14940011.getInt("sx");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res14940011 != null)
					res14940011.close();
			} catch (Exception e) {
			}
			try {
				if (st14940011 != null)
					st14940011.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return SexeCli;
	}

	Statement st149400111;
	ResultSet res149400111;

	public String GetAdresseCliDansADbanking(int idclient) {
		String Adresse = "NA";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st149400111 = cnx.createStatement();
			String req = "select adresse adrs from ad_cli where id_client='"
					+ idclient + "'";
			res149400111 = st149400111.executeQuery(req);
			while (res149400111.next()) {
				Adresse = res149400111.getString("adrs");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res149400111 != null)
					res149400111.close();
			} catch (Exception e) {
			}
			try {
				if (st149400111 != null)
					st149400111.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return Adresse;
	}

	Statement st1494001111;
	ResultSet res1494001111;

	public String GetTelephoneCliDansADbanking(int idclient) {
		String Telephone = "NA";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st1494001111 = cnx.createStatement();
			String req = "select num_tel numtelephone from ad_cli where id_client='"
					+ idclient + "'";
			res1494001111 = st1494001111.executeQuery(req);
			while (res1494001111.next()) {
				Telephone = res1494001111.getString("numtelephone");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res1494001111 != null)
					res1494001111.close();
			} catch (Exception e) {
			}
			try {
				if (st1494001111 != null)
					st1494001111.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return Telephone;
	}

	Statement st14940011111;
	ResultSet res14940011111;

	public String GetNumPieceIdentiteCliDansADbanking(int idclient) {
		String NumPieceIdentite = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st14940011111 = cnx.createStatement();
			String req = "select pp_nm_piece_id numpi from ad_cli where id_client='"
					+ idclient + "'";
			res14940011111 = st14940011111.executeQuery(req);
			while (res14940011111.next()) {
				NumPieceIdentite = res14940011111.getString("numpi");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res14940011111 != null)
					res14940011111.close();
			} catch (Exception e) {
			}
			try {
				if (st14940011111 != null)
					st14940011111.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return NumPieceIdentite;
	}

	Statement st149400111112;
	ResultSet res149400111112;

	public String GetNationaliteCliDansADbanking(int idclient) {
		String Nationalite = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st149400111112 = cnx.createStatement();
			String req = "select paysN.libel_nationalite nationali from adsys_pays paysN inner join ad_cli cli on paysN.id_pays=cli.pp_nationalite where cli.id_client='"
					+ idclient + "'";
			res149400111112 = st149400111112.executeQuery(req);
			while (res149400111112.next()) {
				Nationalite = res149400111112.getString("nationali");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res149400111112 != null)
					res149400111112.close();
			} catch (Exception e) {
			}
			try {
				if (st149400111112 != null)
					st149400111112.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return Nationalite;
	}

	Statement st1494001111122;
	ResultSet res1494001111122;

	public int GetEtatCivilCliDansADbanking(int idclient) {
		int EtatCivil = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st1494001111122 = cnx.createStatement();
			String req = "select pp_etat_civil etatciv from ad_cli where id_client='"
					+ idclient + "'";
			res1494001111122 = st1494001111122.executeQuery(req);
			while (res1494001111122.next()) {
				EtatCivil = res1494001111122.getInt("etatciv");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res1494001111122 != null)
					res1494001111122.close();
			} catch (Exception e) {
			}
			try {
				if (st1494001111122 != null)
					st1494001111122.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return EtatCivil;
	}

	Statement st14940011111222;
	ResultSet res14940011111222;

	public int GetTypePieceIdentiteCliDansADbanking(int idclient) {
		int TypePieceIdentite = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st14940011111222 = cnx.createStatement();
			String req = "select pp_type_piece_id typepiece from ad_cli where id_client='"
					+ idclient + "'";
			res14940011111222 = st14940011111222.executeQuery(req);
			while (res14940011111222.next()) {
				TypePieceIdentite = res14940011111222.getInt("typepiece");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res14940011111222 != null)
					res14940011111222.close();
			} catch (Exception e) {
			}
			try {
				if (st14940011111222 != null)
					st14940011111222.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return TypePieceIdentite;
	}

	Statement st150;
	ResultSet res150;

	public List<WorkflowEntite> ListeDossierCreditIndividuelCAetapeCreation(
			int IduserC) {
		List<WorkflowEntite> ListeDossierCreditIndividuelCAetapeCreation = new ArrayList<>();
		try {
			st150 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select distinct dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where dcr.DossierinitiePar='"
					+ IduserC
					+ "' and dcr.EtatDossierCredit='Creation' order by dcr.DateDossier desc";
			res150 = st150.executeQuery(req);
			while (res150.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res150.getInt("cli.idclient"));
				wk.setNumerodossieril(res150.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res150.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res150.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res150.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res150.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res150.getString("br.LibelleBranche"));
				String NomsDemandeur = res150.getString("cli.NomCli");
				String PostNomDemandeur = res150.getString("cli.PostNomCli");
				String PrenomDemandeur = res150.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res150
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelCAetapeCreation.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelCAetapeCreation;
	}

	Statement st151;
	ResultSet res151;

	public List<WorkflowEntite> ListeDossierCreditIndividuelCAetapeAnalyse(
			int IduserC) {
		List<WorkflowEntite> ListeDossierCreditIndividuelCAetapeAnalyse = new ArrayList<>();
		try {
			st151 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select distinct dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join assignationdossiercredit as ass on ass.NumDossierCre=dcr.NumDossierCredit where ass.IDAnalysteDossierCredit='"
					+ IduserC
					+ "' and dcr.EtatDossierCredit='Analyse' order by dcr.DateDossier desc";
			res151 = st151.executeQuery(req);
			while (res151.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res151.getInt("cli.idclient"));
				wk.setNumerodossieril(res151.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res151.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res151.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res151.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res151.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res151.getString("br.LibelleBranche"));
				String NomsDemandeur = res151.getString("cli.NomCli");
				String PostNomDemandeur = res151.getString("cli.PostNomCli");
				String PrenomDemandeur = res151.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res151
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelCAetapeAnalyse.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelCAetapeAnalyse;
	}

	Statement st152;
	ResultSet res152;

	public void UpdateAnalysteDansDossierCre(String Analyste, String NumDossier) {
		try {
			String req = "update dossiercredit set analyste='" + Analyste
					+ "' where NumDossierCredit='" + NumDossier + "'";
			st152 = ConnexionBDLocal.getConnexion().createStatement();
			st152.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	// pour integration postage dans le coreBanking systeme
	// A: pour insertion dans la table ad_dcr
	Statement st200;
	ResultSet res200;

	public int GetIdProduitCreditViaLibelleProduitCredit(
			String LibelleProduitCredit) {
		int IdProduitCredit = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st200 = cnx.createStatement();
			String req = "select id from adsys_produit_credit where libel='"
					+ LibelleProduitCredit.replace("'", "") + "'";
			res200 = st200.executeQuery(req);
			while (res200.next()) {
				IdProduitCredit = res200.getInt("id");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res200 != null)
					res200.close();
			} catch (Exception e) {
			}
			try {
				if (st200 != null)
					st200.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return IdProduitCredit;
	}

	Statement st201;
	ResultSet res201;

	public int GetNum_Cre(int idclient) {
		int Num_Cre = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st201 = cnx.createStatement();
			String req = "SELECT max(num_cre) mx FROM ad_dcr WHERE id_client ='"
					+ idclient + "' and id_ag=1";
			res201 = st201.executeQuery(req);
			while (res201.next()) {
				Num_Cre = res201.getInt("mx");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res201 != null)
					res201.close();
			} catch (Exception e) {
			}
			try {
				if (st201 != null)
					st201.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return Num_Cre;
	}

	Statement st202;
	ResultSet res202;

	public int GetIdClientCbsWorkflow(String numDossierCredit) {
		int IdClientCbsWorkflow = 0;
		try {
			st202 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.IdCbsCli from clientd as cli inner join dossiercredit as doss on cli.idclient=doss.IdClientD where doss.NumDossierCredit='"
					+ numDossierCredit + "'";
			res202 = st202.executeQuery(req);
			while (res202.next()) {
				IdClientCbsWorkflow = res202.getInt("cli.IdCbsCli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdClientCbsWorkflow;
	}

	Statement st203;
	ResultSet res203;

	public int GetIdCpteClientCbs(int idclientcbs) {
		int IdCpteClientCbs = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st203 = cnx.createStatement();
			String req = "select id_cpte from ad_cpt where id_titulaire='"
					+ idclientcbs + "' and id_prod=1";
			res203 = st203.executeQuery(req);
			while (res203.next()) {
				IdCpteClientCbs = res203.getInt("id_cpte");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res203 != null)
					res203.close();
			} catch (Exception e) {
			}
			try {
				if (st203 != null)
					st203.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return IdCpteClientCbs;
	}

	Statement st203bus;
	ResultSet res203bus;

	public int GetIdCpteClientCbsBus(int idclientcbs) {
		int IdCpteClientCbs = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st203bus = cnx.createStatement();
			String req = "select id_cpte from ad_cpt where id_titulaire='"
					+ idclientcbs + "'and id_prod=17";
			res203bus = st203bus.executeQuery(req);
			while (res203bus.next()) {
				IdCpteClientCbs = res203bus.getInt("id_cpte");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res203bus != null)
					res203bus.close();
			} catch (Exception e) {
			}
			try {
				if (st203bus != null)
					st203bus.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return IdCpteClientCbs;
	}

	Statement st204;
	ResultSet res204;

	public double GetMontantCreditApprouverComite(String NumDossierCredit) {
		double MontantCreditApprouverComite = 0;
		try {
			st204 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cm.MontantCreditValider from comite as cm inner join dossiercredit as doss on cm.NumDossierCre=doss.NumDossierCredit where doss.NumDossierCredit='"
					+ NumDossierCredit + "'";
			res204 = st204.executeQuery(req);
			while (res204.next()) {
				MontantCreditApprouverComite = res204
						.getDouble("cm.MontantCreditValider");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return MontantCreditApprouverComite;
	}

	Statement st205;
	ResultSet res205;

	public int GetNbrEchApprouverComite(String NumDossierCredit) {
		int NbrEchApprouverComite = 0;
		try {
			st205 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cm.NbrEcheancierValide from comite as cm inner join dossiercredit as doss on cm.NumDossierCre=doss.NumDossierCredit where doss.NumDossierCredit='"
					+ NumDossierCredit + "'";
			res205 = st205.executeQuery(req);
			while (res205.next()) {
				NbrEchApprouverComite = res205.getInt("cm.NbrEcheancierValide");
			}
		} catch (Exception ex) {
		}
		return NbrEchApprouverComite;
	}

	Statement st206;
	ResultSet res206;

	public String GetButDemandeCredit(String NumDossierCredit) {
		String ButDemandeCredit = "";
		try {
			st206 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select ButInvestissment from dossiercredit where NumDossierCredit='"
					+ NumDossierCredit + "'";
			res206 = st206.executeQuery(req);
			while (res206.next()) {
				ButDemandeCredit = res206.getString("ButInvestissment");
			}
		} catch (Exception ex) {
		}
		return ButDemandeCredit;
	}

	Statement st207;
	ResultSet res207;

	public String GetNomsAgentGestionnaire(String NumDossierCredit) {
		String NomsAgentGestionnaire = "";
		try {
			st207 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select u.NomsUser from user as u inner join assignationdossiercredit as ass on u.Iduser=ass.IDAnalysteDossierCredit inner join dossiercredit as doss on doss.NumDossierCredit=ass.NumDossierCre where doss.NumDossierCredit='"
					+ NumDossierCredit + "'";
			res207 = st207.executeQuery(req);
			while (res207.next()) {
				NomsAgentGestionnaire = res207.getString("u.NomsUser");
			}
		} catch (Exception ex) {
		}
		return NomsAgentGestionnaire;
	}

	Statement st208;
	ResultSet res208;

	public double GetFraisAssuranceApresComite(String NumDossierCredit) {
		double FraisAssuranceApresComite = 0;
		try {
			st208 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select assurance from comite where NumDossierCre='"
					+ NumDossierCredit + "'";
			res208 = st208.executeQuery(req);
			while (res208.next()) {
				FraisAssuranceApresComite = res208.getDouble("assurance");
			}
		} catch (Exception ex) {
		}
		return FraisAssuranceApresComite;
	}

	Statement st209;

	public int EnregistrementDossierCreditDansADbanking(int idprod,
			String isExtended, String DateDemande, int etatdossier,
			int idGestionnaire, int dureeMois, String PrelevCommission,
			String AssuranceCre, double GarNum, int terme, int idclient,
			int cpteLiaison, double montantDemande, int objDemande,
			String detailObjDemande, int PrelevAutomatique,
			double mon_frais_doss, double mnt_assurance, int numCre,
			String SuspensionPenalite, int cptPrelevFrais) {
		int nbr = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_dcr(id_dcr_grp_sol, id_prod, is_extended, differe_jours,differe_ech, date_dem, cre_date_debloc, etat, id_agent_gest, duree_mois,delai_grac, nb_jr_bloq_cre_avant_ech, prelev_commission, assurances_cre, gar_num,gar_num_encours, gar_mat, gar_tot, terme, id_client, cpt_liaison, cpt_remb, mnt_dem,id_bailleur, obj_dem, detail_obj_dem, detail_obj_dem_2, prelev_auto, mnt_frais_doss,mnt_assurance, cre_nbre_reech, num_cre, suspension_pen, gs_cat, cpt_prelev_frais, id_ag) VALUES(NULL, '"
					+ idprod
					+ "', '"
					+ isExtended
					+ "', NULL, NULL, '"
					+ DateDemande
					+ "', NULL, '"
					+ etatdossier
					+ "', '"
					+ idGestionnaire
					+ "', '"
					+ dureeMois
					+ "',NULL, NULL, '"
					+ PrelevCommission
					+ "', '"
					+ AssuranceCre
					+ "', '"
					+ GarNum
					+ "', 0, 0, '"
					+ GarNum
					+ "', '"
					+ terme
					+ "', '"
					+ idclient
					+ "', '"
					+ cpteLiaison
					+ "', NULL,'"
					+ montantDemande
					+ "', NULL, '"
					+ objDemande
					+ "', '"
					+ detailObjDemande
					+ "', 0, '"
					+ PrelevAutomatique
					+ "','"
					+ mon_frais_doss
					+ "', '"
					+ mnt_assurance
					+ "', 0, '"
					+ numCre
					+ "', '"
					+ SuspensionPenalite
					+ "', 0, '"
					+ cptPrelevFrais + "', 1)";
			st209 = cnx.createStatement();
			nbr = st209.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st209 != null)
					st209.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbr;
	}

	// B : pour insertion dans la table ad_dcr_ext

	Statement st210;
	ResultSet res210;

	public int GetMaxIddossier(String NumDossierCredit) {
		int MaxIddossier = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st210 = cnx.createStatement();
			String req = "SELECT max(id_doss) mx1 from ad_dcr where id_ag=1";
			res210 = st210.executeQuery(req);
			while (res210.next()) {
				MaxIddossier = res210.getInt("mx1");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res210 != null)
					res210.close();
			} catch (Exception e) {
			}
			try {
				if (st210 != null)
					st210.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return MaxIddossier;
	}

	Statement st211;

	public int EnregistrementDossierCreditEXTDansADbanking(int idDoss,
			double tx_interet, double mnt_assurance, double mnt_frais,
			double prc_commission, double prc_gar_num) {
		int nbrSaveok = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_dcr_ext(id_doss, tx_interet, periodicite, gs_cat, mnt_assurance,prc_assurance, mnt_frais, prc_frais, mnt_commission, prc_commission, prc_gar_num, id_ag)VALUES('"
					+ idDoss
					+ "', '"
					+ tx_interet
					+ "', 1, 0, '"
					+ mnt_assurance
					+ "', 0, '"
					+ mnt_frais
					+ "', 0, 0, '"
					+ prc_commission + "', '" + prc_gar_num + "', 1)";
			st211 = cnx.createStatement();
			nbrSaveok = st211.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st211 != null)
					st211.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbrSaveok;
	}

	// C : pour insertion dans la table ad_gar
	Statement st212;

	public int EnregistrementDossierCreditGarntieDansADbanking(int idDossier,
			int gar_num_id_cpte_prelev, double montant_vente) {
		int nbrSaveokok = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_gar(id_doss, type_gar, gar_mat_id_bien, gar_num_id_cpte_prelev, gar_num_id_cpte_nantie,etat_gar, montant_vente, devise_vente, id_ag)VALUES ('"
					+ idDossier
					+ "', 1, NULL, '"
					+ gar_num_id_cpte_prelev
					+ "', NULL, 2, '" + montant_vente + "', 'USD', 1)";
			st212 = cnx.createStatement();
			nbrSaveokok = st212.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st212 != null)
					st212.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbrSaveokok;
	}

	Statement st213;
	ResultSet res213;

	public String GetLibelleProduitCreditDossierCredit(String NumDossierCredit) {
		String LibelleProduitCreditDossierCredit = "";
		try {
			st213 = ConnexionBDLocal.getConnexion().createStatement();
			// String req =
			// "select param.Description from paramproduitcredit as param inner join assignationdossiercredit as ass on param.Id=ass.IDProduitCredit inner join dossiercredit as doss on ass.NumDossierCre=doss.NumDossierCredit where doss.NumDossierCredit='"
			// + NumDossierCredit + "'";
			String req = "select param.Description from paramproduitcredit as param inner join comite as com on param.Id=com.IDProduitCreditComite inner join dossiercredit as doss on com.NumDossierCre=doss.NumDossierCredit where doss.NumDossierCredit='"
					+ NumDossierCredit + "'";
			res213 = st213.executeQuery(req);
			while (res213.next()) {
				LibelleProduitCreditDossierCredit = res213
						.getString("param.Description");
			}
		} catch (Exception ex) {
		}
		return LibelleProduitCreditDossierCredit;
	}

	// D : pour insertion dans la table ad_his
	Statement st214;
	ResultSet res214;

	public int GetNextVal() {
		int NextValHis = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st214 = cnx.createStatement();
			String req = "SELECT nextval('ad_his_id_his_seq') nxt";
			res214 = st214.executeQuery(req);
			while (res214.next()) {
				NextValHis = res214.getInt("nxt");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res214 != null)
					res214.close();
			} catch (Exception e) {
			}
			try {
				if (st214 != null)
					st214.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return NextValHis;
	}

	Statement st215;

	public int EnregistrementDossierCreditHistoriqueDansADbanking(int id_his,
			int id_client, String date, String Login) {
		int nbrSaveokok = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_his(id_his,id_ag, type_fonction, infos, id_client, login, date, id_his_ext)VALUES('"
					+ id_his
					+ "',1, 105, 'Workflow', '"
					+ id_client
					+ "', '"
					+ Login + "', '" + date + "', NULL)";
			st215 = cnx.createStatement();
			nbrSaveokok = st215.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st215 != null)
					st215.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbrSaveokok;
	}

	Statement st216;
	ResultSet res216;

	public int GetIdGestionnaire(String nomGestionnaire, String prenom) {
		int id_utilis = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st216 = cnx.createStatement();
			String req = "select id_utilis from ad_uti where nom='"
					+ nomGestionnaire.trim() + "'";
			res216 = st216.executeQuery(req);
			while (res216.next()) {
				id_utilis = res216.getInt("id_utilis");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res216 != null)
					res216.close();
			} catch (Exception e) {
			}
			try {
				if (st216 != null)
					st216.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return id_utilis;
	}

	Statement st217;

	public void UpdateNumClientCbs(int numclientCbs, String NumDossierCredit) {
		try {
			int idclidemandeur = GetIdClientDemandeurViaNumDossier(NumDossierCredit);
			String req = "update clientd set IdCbsCli='" + numclientCbs
					+ "' where idclient='" + idclidemandeur + "'";
			st217 = ConnexionBDLocal.getConnexion().createStatement();
			st217.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st218;
	ResultSet res218;

	public String GetNomsUtilInAdbanking(int idclientcbs) {
		String NomsUtilInAdbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st218 = cnx.createStatement();
			String req = "select pp_nom nomcli from ad_cli where id_client='"
					+ idclientcbs + "'";
			res218 = st218.executeQuery(req);
			while (res218.next()) {
				NomsUtilInAdbanking = res218.getString("nomcli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res218 != null)
					res218.close();
			} catch (Exception e) {
			}
			try {
				if (st218 != null)
					st218.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return NomsUtilInAdbanking;
	}

	Statement st219;
	ResultSet res219;

	public String GetPrenomUtilInAdbanking(int idclientcbs) {
		String PrenomUtilInAdbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st219 = cnx.createStatement();
			String req = "select pp_prenom prenomcli from ad_cli where id_client='"
					+ idclientcbs + "'";
			res219 = st219.executeQuery(req);
			while (res219.next()) {
				PrenomUtilInAdbanking = res219.getString("prenomcli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res219 != null)
					res219.close();
			} catch (Exception e) {
			}
			try {
				if (st219 != null)
					st219.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return PrenomUtilInAdbanking;
	}

	Statement st220;
	ResultSet res220;

	public int GetLoginAgentOdpDansAdbanking(String nomODP, String prenomODP) {
		int LoginAgentOdp = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st220 = cnx.createStatement();
			String req = "select login from ad_uti where nom='" + nomODP
					+ "' and prenom= '" + prenomODP + "'";
			res220 = st220.executeQuery(req);
			while (res220.next()) {
				LoginAgentOdp = res220.getInt("login");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res220 != null)
					res220.close();
			} catch (Exception e) {
			}
			try {
				if (st220 != null)
					st220.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return LoginAgentOdp;
	}

	Statement st221;
	ResultSet res221;

	public List<WorkflowEntite> GetListeProduitPrincipauxStock(String NumDossier) {
		List<WorkflowEntite> ListeProduitPrincipauxStock = new ArrayList<>();
		try {
			ListeProduitPrincipauxStock.clear();
			String observation = "Principal";
			st221 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select pp.LibelleProduit from businessonestockprincipal as pp inner join dossiercredit as doss on pp.NumDossierCre=doss.NumDossierCredit where pp.NumDossierCre='"
					+ NumDossier
					+ "' and pp.Observation='"
					+ observation
					+ "'order by pp.LibelleProduit asc";
			res221 = st221.executeQuery(req);
			while (res221.next()) {
				WorkflowEntite w = new WorkflowEntite();
				w.setLibelleproduitprincipauxpp(res221
						.getString("pp.LibelleProduit"));
				ListeProduitPrincipauxStock.add(w);
			}
		} catch (Exception ex) {
		}
		return ListeProduitPrincipauxStock;
	}

	Statement st222;
	ResultSet res222;

	public double GetPAProduitPrincipauxStock(String NumDossier,
			String LibelleProduit) {
		double PAProduitPrincipauxStock = 0;
		try {
			String observation = "Principal";
			st222 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select pp.PrixAchat from businessonestockprincipal as pp inner join dossiercredit as doss on pp.NumDossierCre=doss.NumDossierCredit where pp.NumDossierCre='"
					+ NumDossier
					+ "' and pp.Observation='"
					+ observation
					+ "' and pp.LibelleProduit='" + LibelleProduit + "'";
			res222 = st222.executeQuery(req);
			while (res222.next()) {
				PAProduitPrincipauxStock = res222.getDouble("pp.PrixAchat");
			}
		} catch (Exception ex) {
		}
		return PAProduitPrincipauxStock;
	}

	Statement st223;
	ResultSet res223;

	public double GetPVProduitPrincipauxStock(String NumDossier,
			String LibelleProduit) {
		double PVProduitPrincipauxStock = 0;
		try {
			String observation = "Principal";
			st223 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select pp.PrixVente from businessonestockprincipal as pp inner join dossiercredit as doss on pp.NumDossierCre=doss.NumDossierCredit where pp.NumDossierCre='"
					+ NumDossier
					+ "' and pp.Observation='"
					+ observation
					+ "' and pp.LibelleProduit='" + LibelleProduit + "'";
			res223 = st223.executeQuery(req);
			while (res223.next()) {
				PVProduitPrincipauxStock = res223.getDouble("pp.PrixVente");
			}
		} catch (Exception ex) {
		}
		return PVProduitPrincipauxStock;
	}

	Statement st225;
	ResultSet res225;

	public int EnregistrementProposition(String LibelleProduitCreditProp,
			int MontantProp, int echeanceProp, String NumDossierCre,
			String commentaireProp, double Mensualitee) {
		int nbrLigne = 0;
		try {
			String req = "insert into proposition(ProduitCreditProp,MontantProp,EcheanceProp,NumDossierCre,commentaireProp,MensualiteProp) values('"
					+ LibelleProduitCreditProp
					+ "','"
					+ MontantProp
					+ "','"
					+ echeanceProp
					+ "','"
					+ NumDossierCre
					+ "','"
					+ commentaireProp + "','" + Mensualitee + "')";
			st225 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st225.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st226;
	ResultSet res226;

	public List<WorkflowEntite> GetListeProposiion(String NumDossier) {
		List<WorkflowEntite> ListeProposiion = new ArrayList<>();
		try {
			st226 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from proposition where NumDossierCre='"
					+ NumDossier + "'";
			res226 = st226.executeQuery(req);
			while (res226.next()) {
				WorkflowEntite w = new WorkflowEntite();
				w.setProduitcreditproposition(res226
						.getString("ProduitCreditProp"));
				w.setNumdossiercreproposition(res226.getString("NumDossierCre"));
				w.setMontantproposition(res226.getInt("MontantProp"));
				w.setEcheanceproposition(res226.getInt("EcheanceProp"));
				w.setCommentaireprop(res226.getString("commentaireProp"));
				w.setMensualite(res226.getDouble("MensualiteProp"));
				ListeProposiion.add(w);
			}
		} catch (Exception ex) {
		}
		return ListeProposiion;
	}

	Statement st230;
	ResultSet res230;

	public String GetlibelleProduitCreditViaID(int id) {
		String LibelleProduitCredit = "";
		try {
			st230 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Description from paramproduitcredit where Id='"
					+ id + "'";
			res230 = st230.executeQuery(req);
			while (res230.next()) {
				LibelleProduitCredit = res230.getString("Description");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleProduitCredit;
	}

	Statement st231;
	ResultSet res231;

	public int enregistrementDocumentPVComiteIL(String DateEnregistrementDoc,
			String Description, String FichierUrl, String NumDossierCre) {
		int nbrLigne = 0;
		try {
			String req = "insert into documentpvcomite(DateEnregistrementDoc,Description,FichierUrl,NumDossierCre) values('"
					+ DateEnregistrementDoc
					+ "','"
					+ Description
					+ "','"
					+ FichierUrl + "','" + NumDossierCre + "')";
			st231 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st231.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st231GL;
	ResultSet res231GL;

	public int enregistrementDocumentPVComiteGL(String DateEnregistrementDoc,
			String Description, String FichierUrl, String NumGrpCreGL,
			int cycleGrp) {
		int nbrLigne = 0;
		try {
			String req = "insert into documentpvcomitegl(DateEnregistrementDoc,Description,FichierUrl,NumGrpCregl,NumCycleGrpCregl) values('"
					+ DateEnregistrementDoc
					+ "','"
					+ Description
					+ "','"
					+ FichierUrl
					+ "','"
					+ NumGrpCreGL
					+ "','"
					+ cycleGrp
					+ "')";
			st231GL = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st231GL.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st232;
	ResultSet res232;

	public List<WorkflowEntite> GetListeCompleteInformationsDocumentPV(
			String numdossierCre) {
		List<WorkflowEntite> ListeCompleteInformationsDocumentPV = new ArrayList<>();
		try {
			st232 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from documentpvcomite where NumDossierCre='"
					+ numdossierCre + "'";
			res232 = st232.executeQuery(req);
			while (res232.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdfichierdoc(res232.getInt("Id"));
				wk.setDescriptionfichierdoc(res232.getString("Description"));
				wk.setFichierdoc(res232.getString("FichierUrl"));
				wk.setDateenrfichierdoc(res232
						.getString("DateEnregistrementDoc"));
				ListeCompleteInformationsDocumentPV.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDocumentPV;
	}

	Statement st23200GL;
	ResultSet res23200GL;

	public List<WorkflowEntite> GetListeCompleteInformationsDocumentPVGL(
			String numGrpCreGL, int cycleGrpGL) {
		List<WorkflowEntite> ListeCompleteInformationsDocumentPVgl = new ArrayList<>();
		try {
			st23200GL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from documentpvcomitegl where NumGrpCregl='"
					+ numGrpCreGL + "' and NumCycleGrpCregl='" + cycleGrpGL
					+ "'";
			res23200GL = st23200GL.executeQuery(req);
			while (res23200GL.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdfichierdoc(res23200GL.getInt("Id"));
				wk.setDescriptionfichierdoc(res23200GL.getString("Description"));
				wk.setFichierdoc(res23200GL.getString("FichierUrl"));
				wk.setDateenrfichierdoc(res23200GL
						.getString("DateEnregistrementDoc"));
				ListeCompleteInformationsDocumentPVgl.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDocumentPVgl;
	}

	Statement st233;
	ResultSet res233;

	public String GetnomDocumentPVviaID(int IDDocumentIL) {
		String nomDocumentviaID = "";
		try {
			st233 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FichierUrl from documentpvcomite where Id='"
					+ IDDocumentIL + "'";
			res233 = st233.executeQuery(req);
			while (res233.next()) {
				nomDocumentviaID = res233.getString("FichierUrl");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomDocumentviaID;
	}

	Statement st233GL;
	ResultSet res233GLS;

	public String GetnomDocumentPVGLviaID(int ID) {
		String nomDocumentviaID = "";
		try {
			st233GL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FichierUrl from documentpvcomitegl where Id='"
					+ ID + "'";
			res233GLS = st233GL.executeQuery(req);
			while (res233GLS.next()) {
				nomDocumentviaID = res233GLS.getString("FichierUrl");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomDocumentviaID;
	}

	Statement st15200;
	ResultSet res15200;

	public int EnregistrementCommentaireResume(String com1, String com2,
			String com3, String NumDossier) {
		int nbr = 0;
		try {
			String req = "insert into commentairerp(commentaire1,commentaire2,commentaire3,NumDossierCre) values( '"
					+ com1
					+ "','"
					+ com2
					+ "','"
					+ com3
					+ "','"
					+ NumDossier
					+ "'    )";
			st15200 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st15200.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st15200Mod;

	public int UpdateCommentaireResume(int ID, String com1, String com2,
			String com3, String NumDossier) {
		int nbr = 0;
		try {
			String req = "update commentairerp set commentaire1='" + com1
					+ "',commentaire2='" + com2 + "',commentaire3='" + com3
					+ "',NumDossierCre='" + NumDossier + "' where id='" + ID
					+ "'";
			st15200Mod = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st15200Mod.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st22600;
	ResultSet res22600;

	public List<WorkflowEntite> GetListeCommentaire(String NumDossier) {
		List<WorkflowEntite> ListeCommentaire = new ArrayList<>();
		try {
			st22600 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from commentairerp where NumDossierCre='"
					+ NumDossier + "'";
			res22600 = st22600.executeQuery(req);
			while (res22600.next()) {
				WorkflowEntite w = new WorkflowEntite();
				w.setIdcommentairerp(res22600.getInt("id"));
				w.setCommentaire1(res22600.getString("commentaire1"));
				w.setCommentaire2(res22600.getString("commentaire2"));
				w.setCommentaire3(res22600.getString("commentaire3"));
				ListeCommentaire.add(w);
			}
		} catch (Exception ex) {
		}
		return ListeCommentaire;
	}

	Statement st13900;
	ResultSet res13900;

	public List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatRejeter(
			int iduser) {
		List<WorkflowEntite> ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatRejeter = new ArrayList<>();
		try {
			st13900 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join assignationdossiercredit as ass on ass.NumDossierCre=dcr.NumDossierCredit where dcr.EtatDossierCredit='Rejeter' and ass.IDAnalysteDossierCredit='"
					+ iduser + "'order by cli.NomCli asc ";
			res13900 = st13900.executeQuery(req);
			while (res13900.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerodossieril(res13900
						.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res13900.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res13900.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res13900.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res13900
						.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res13900.getString("br.LibelleBranche"));
				String NomsDemandeur = res13900.getString("cli.NomCli");
				String PostNomDemandeur = res13900.getString("cli.PostNomCli");
				String PrenomDemandeur = res13900.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res13900
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatRejeter
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelRequierVotreTraitementMaisEnEtatRejeter;
	}

	Statement st2230000;
	ResultSet res2230000;

	public String GetPhotosClientD(int idclient) {
		String PhotosClientD = "";
		try {
			st2230000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select photos from clientd where idclient='"
					+ idclient + "'";
			res2230000 = st2230000.executeQuery(req);
			while (res2230000.next()) {
				PhotosClientD = res2230000.getString("photos");
			}
		} catch (Exception ex) {
		}
		return PhotosClientD;
	}

	Statement st22300001;
	ResultSet res22300001;

	public String GetPhotosClientD2(int idclient) {
		String PhotosClientD = "";
		try {
			st22300001 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select PhotoMembreGroupe from membregroupe where 	IdClientMembre='"
					+ idclient + "'";
			res22300001 = st22300001.executeQuery(req);
			while (res22300001.next()) {
				PhotosClientD = res22300001.getString("PhotoMembreGroupe");
			}
		} catch (Exception ex) {
		}
		return PhotosClientD;
	}

	Statement st15200000;

	public int EnregistrementPropositionRisque(String NomsResponsableRisque,
			String AppreciationRisque, String CommentaireRisque,
			String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "insert into risque(NumDossierCre,NomsResponsable,AppreciationRisque,CommentaireRisque) values('"
					+ NumDossierCre
					+ "','"
					+ NomsResponsableRisque
					+ "','"
					+ AppreciationRisque + "','" + CommentaireRisque + "')";
			st15200000 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st15200000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st15200000999;

	public int EnregistrementPropositionConformite(
			String NomsResponsableRisque, String AppreciationRisque,
			String CommentaireRisque, String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "insert into conformite(NumDossierCre,NomsResponsableC,AppreciationC,CommentaireC) values('"
					+ NumDossierCre
					+ "','"
					+ NomsResponsableRisque
					+ "','"
					+ AppreciationRisque + "','" + CommentaireRisque + "')";
			st15200000999 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st15200000999.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st1390077777;
	ResultSet res1390077777;

	public List<WorkflowEntite> ListeInformationPropositionRisque(
			String NumDossierCredit) {
		List<WorkflowEntite> InformationPropositionRisque = new ArrayList<>();
		try {
			st1390077777 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from risque where NumDossierCre='"
					+ NumDossierCredit + "'";
			res1390077777 = st1390077777.executeQuery(req);
			while (res1390077777.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsresponsablerisque(res1390077777
						.getString("NomsResponsable"));
				wk.setAppreciationrisque(res1390077777
						.getString("AppreciationRisque"));
				wk.setCommentairerisque(res1390077777
						.getString("CommentaireRisque"));
				InformationPropositionRisque.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return InformationPropositionRisque;
	}

	Statement st139007777794;
	ResultSet res139007777794;

	public List<WorkflowEntite> ListeInformationPropositionConformite(
			String NumDossierCredit) {
		List<WorkflowEntite> ListeInformationPropositionConformite = new ArrayList<>();
		try {
			st139007777794 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from conformite where NumDossierCre='"
					+ NumDossierCredit + "'";
			res139007777794 = st139007777794.executeQuery(req);
			while (res139007777794.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsresponsablerisque(res139007777794
						.getString("NomsResponsableC"));
				wk.setAppreciationrisque(res139007777794
						.getString("AppreciationC"));
				wk.setCommentairerisque(res139007777794
						.getString("CommentaireC"));
				ListeInformationPropositionConformite.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationPropositionConformite;
	}

	Statement st1994;

	public int ModificationApprobationComite(String NumDossier,
			String Decision, String DateComiteCredit,
			double MontantCreditValider, int NbrEcheancierValide,
			String ButPret, double FraisSms, double Caution,
			double FraisDossier, double TauxInteret, double assurance,
			String MembreParticipe, int NbrMembreComite, int IdClientD,
			int IdProdCre, String commentaireDecisionComite) {
		int nbrLigne = 0;
		try {
			double tauxModif = 0;
			String req = "update comite set DecisionComite='" + Decision
					+ "',DateComiteCredit='" + DateComiteCredit
					+ "',MontantCreditValider='" + MontantCreditValider
					+ "',NbrEcheancierValide='" + NbrEcheancierValide
					+ "',ButPret='" + ButPret + "',FraisSms='" + FraisSms
					+ "',Caution='" + Caution + "',FraisDossier='"
					+ FraisDossier + "',TauxInteret='" + TauxInteret
					+ "',assurance='" + assurance + "',MembreParticipe='"
					+ MembreParticipe + "',NbrMembreComite='" + NbrMembreComite
					+ "',IDProduitCreditComite='" + IdProdCre + "',IdClientD='"
					+ IdClientD + "',commentaireComite='"
					+ commentaireDecisionComite + "',TauxCautionModifier='"
					+ tauxModif + "'where NumDossierCre='" + NumDossier + "'";
			st1994 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st1994.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st1390077777000;
	ResultSet res1390077777000;

	public String GetDecisionActuelleComite(String NumDossierCredit) {
		String DecisionActuelleComite = "";
		try {
			st1390077777000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select DecisionComite from comite where NumDossierCre='"
					+ NumDossierCredit + "'";
			res1390077777000 = st1390077777000.executeQuery(req);
			while (res1390077777000.next()) {
				DecisionActuelleComite = res1390077777000
						.getString("DecisionComite");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DecisionActuelleComite;
	}

	Statement st10347;
	ResultSet res10347;

	public List<WorkflowEntite> ListeDossierCreditIndividuelEnPrecomite(
			String LibelleBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelEnPrecomite = new ArrayList<>();
		try {
			String req = "select distinct dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit where dcr.EtatDossierCredit='Comite' and br.LibelleBranche='"
					+ LibelleBranche
					+ "' and (prop.MontantProp <=2000 or prop.MontantProp > 5000) order by cli.NomCli asc";
			st10347 = ConnexionBDLocal.getConnexion().createStatement();
			res10347 = st10347.executeQuery(req);
			while (res10347.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerodossieril(res10347
						.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res10347.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res10347.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res10347.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res10347
						.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res10347.getString("br.LibelleBranche"));
				String NomsDemandeur = res10347.getString("cli.NomCli");
				String PostNomDemandeur = res10347.getString("cli.PostNomCli");
				String PrenomDemandeur = res10347.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res10347
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelEnPrecomite.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelEnPrecomite;
	}

	Statement st103470;
	ResultSet res103470;

	public List<WorkflowEntite> ListeDossierCreditIndividuelAgence(
			String LibelleBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelAgence = new ArrayList<>();
		try {
			String req = "select distinct dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche  where br.LibelleBranche='"
					+ LibelleBranche + "' order by cli.NomCli asc";
			st103470 = ConnexionBDLocal.getConnexion().createStatement();
			res103470 = st103470.executeQuery(req);
			while (res103470.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerodossieril(res103470
						.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res103470.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res103470
						.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res103470.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res103470
						.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res103470.getString("br.LibelleBranche"));
				String NomsDemandeur = res103470.getString("cli.NomCli");
				String PostNomDemandeur = res103470.getString("cli.PostNomCli");
				String PrenomDemandeur = res103470.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res103470
						.getString("us.NomsUser"));
				ListeDossierCreditIndividuelAgence.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelAgence;
	}

	Statement st152002024;

	public int EnregistrementPrecomite(String NomsBm, String AppreciationBM,
			String commentaireBm, String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "insert into precomite(NomsResponsableBM,AppreciationBMPrecomite,commentaireBMPrecomite,NumDossierCre) values( '"
					+ NomsBm
					+ "','"
					+ AppreciationBM
					+ "','"
					+ commentaireBm
					+ "','" + NumDossierCre + "')";
			st152002024 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st152002024.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152002024Mod;

	public int ModificationPrecomite(int ID, String NomsBm,
			String AppreciationBM, String commentaireBm, String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "update precomite set NomsResponsableBM='" + NomsBm
					+ "',AppreciationBMPrecomite='" + AppreciationBM
					+ "',commentaireBMPrecomite='" + commentaireBm
					+ "',NumDossierCre='" + NumDossierCre + "' where id='" + ID
					+ "'";
			st152002024Mod = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st152002024Mod.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st10347098;
	ResultSet res10347098;

	public List<WorkflowEntite> GetPrecomite(String NumDossier) {
		List<WorkflowEntite> Precomite = new ArrayList<>();
		try {
			String req = "select * from precomite where NumDossierCre='"
					+ NumDossier + "'";
			st10347098 = ConnexionBDLocal.getConnexion().createStatement();
			res10347098 = st10347098.executeQuery(req);
			while (res10347098.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsbmprecomite(res10347098
						.getString("NomsResponsableBM"));
				wk.setAppreciationbmprecomite(res10347098
						.getString("AppreciationBMPrecomite"));
				wk.setCommentaireprecomite(res10347098
						.getString("commentaireBMPrecomite"));
				wk.setIdprecomitebm(res10347098.getInt("id"));
				Precomite.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return Precomite;
	}

	Statement st25990000;

	public int CreationGroupeLisanga(String ID, int NumeroGroupeCBS,
			String NomGroupe, String AdresseGroupe, String ProvinceGroupe,
			String JourReunionGroupe, String HeureReunionGroupe,
			String NumeroTelephoneGroupe, int NbrHommeGroupe,
			int NbrFemmeGroupe, int NbrCycleGroupe,
			String CategorieRisqueGroupe, int PromoteurGroupe,
			int SuperviseurGL, String BrancheGroupGL, String etatGroupGL,
			String NomsChefAgenceMcpop) {
		int NbrLgne = 0;
		try {
			st25990000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into groupegl(Id,NumeroGroupeCBS,NomGroupe,AdresseGroupe,ProvinceGroupe,JourReunionGroupe,HeureReunionGroupe,NumeroTelephoneGroupe,NbrHommeGroupe,NbrFemmeGroupe,NbrCycleGroupe,CategorieRisqueGroupe,PromoteurGroupe,SuperviseurGL,BrancheGroupe,EtatGroupGL,ChefAgence) values('"
					+ ID
					+ "','"
					+ NumeroGroupeCBS
					+ "','"
					+ NomGroupe.replace("'", "''")
					+ "','"
					+ AdresseGroupe.replace("'", "''")
					+ "','"
					+ ProvinceGroupe
					+ "','"
					+ JourReunionGroupe.replace("'", "''")
					+ "','"
					+ HeureReunionGroupe
					+ "','"
					+ NumeroTelephoneGroupe
					+ "','"
					+ NbrHommeGroupe
					+ "','"
					+ NbrFemmeGroupe
					+ "','"
					+ NbrCycleGroupe
					+ "','"
					+ CategorieRisqueGroupe.replace("'", "''")
					+ "','"
					+ PromoteurGroupe
					+ "','"
					+ SuperviseurGL
					+ "','"
					+ BrancheGroupGL
					+ "','"
					+ etatGroupGL
					+ "','"
					+ NomsChefAgenceMcpop + "')";
			NbrLgne = st25990000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st2599000045;

	public int CreationMembreDuGroupeLisanga(int Idcli, int NumClientMembreCbs,
			String NomMembreGroupe, String PostNomMembreGroupe,
			String PreNomMembreGroupe, String TelephoneMembreGroupe,
			String SexeMembreGroupe, String AdresseMembreGroupe,
			String CategorieMembreGroupe, String PhotoMembreGroupe,
			String IdGroupeLisanga, String etatCivilCliLisanga,
			String DateNaissanceMembreGroupe, String Transfert,
			String GroupeTransfert, int priorityMembre, String NomsConjoint,
			String TelephoneConjoint, String SocieteMembre,
			String FonctionSocieteM, String AdresseSocieteM, String Salaire) {
		int NbrLgne = 0;
		try {
			st2599000045 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into membregroupe(IdClientMembre,NumClientMembreCbs,NomMembreGroupe,PostNomMembreGroupe,PreNomMembreGroupe,TelephoneMembreGroupe,SexeMembreGroupe,AdresseMembreGroupe,CategorieMembreGroupe,PhotoMembreGroupe,IdGroupeLisanga,etatCivilCliLisanga,DateNaissanceMembreGroupe,Transfert,GroupeTransfert,priority,NomsConjoint,TelephoneConjoint,SocieteMembre,FonctionSocieteM,AdresseSocieteM,Salaire) values('"
					+ Idcli
					+ "','"
					+ NumClientMembreCbs
					+ "','"
					+ NomMembreGroupe.replace("'", "''")
					+ "','"
					+ PostNomMembreGroupe.replace("'", "''")
					+ "','"
					+ PreNomMembreGroupe.replace("'", "''")
					+ "','"
					+ TelephoneMembreGroupe
					+ "','"
					+ SexeMembreGroupe
					+ "','"
					+ AdresseMembreGroupe.replace("'", "''")
					+ "','"
					+ CategorieMembreGroupe.replace("'", "''")
					+ "','"
					+ PhotoMembreGroupe
					+ "','"
					+ IdGroupeLisanga
					+ "','"
					+ etatCivilCliLisanga
					+ "','"
					+ DateNaissanceMembreGroupe
					+ "','"
					+ Transfert
					+ "','"
					+ GroupeTransfert
					+ "','"
					+ priorityMembre
					+ "','"
					+ NomsConjoint
					+ "','"
					+ TelephoneConjoint
					+ "','"
					+ SocieteMembre
					+ "','"
					+ FonctionSocieteM
					+ "','"
					+ AdresseSocieteM
					+ "','"
					+ Salaire + "')";
			NbrLgne = st2599000045.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st23278888;
	ResultSet res23278888;

	public List<WorkflowEntite> GetListeMembreGroupeGL(String IdGroupe) {
		List<WorkflowEntite> ListeMembreGroupeGL = new ArrayList<>();
		try {

			st23278888 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membregroupe where IdGroupeLisanga='"
					+ IdGroupe + "'";
			res23278888 = st23278888.executeQuery(req);
			while (res23278888.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdclientmembregl(res23278888.getInt("IdClientMembre"));
				wk.setNumclientmembrecbs(res23278888
						.getInt("NumClientMembreCbs"));

				String NomMembreGroupe = res23278888
						.getString("NomMembreGroupe");
				String PostNomMembreGroupe = res23278888
						.getString("PostNomMembreGroupe");
				String PreNomMembreGroupe = res23278888
						.getString("PreNomMembreGroupe");
				String NomsCompletClientLisanga = NomMembreGroupe + " "
						+ PostNomMembreGroupe + " " + PreNomMembreGroupe;
				wk.setNomscompletclientlisanga(NomsCompletClientLisanga);

				wk.setTelephonemembregroupe(res23278888
						.getString("TelephoneMembreGroupe"));
				wk.setSexemembregroupe(res23278888
						.getString("SexeMembreGroupe"));
				wk.setAdressemembregroupe(res23278888
						.getString("AdresseMembreGroupe"));
				wk.setCategoriemembregroupe(res23278888
						.getString("CategorieMembreGroupe"));
				wk.setPhotomembregroupe(res23278888
						.getString("PhotoMembreGroupe"));
				wk.setEtatcivilclilisanga(res23278888
						.getString("etatCivilCliLisanga"));
				wk.setDatenaissancemembregroupe(res23278888
						.getString("DateNaissanceMembreGroupe"));
				wk.setTransfertgl(res23278888.getString("Transfert"));
				wk.setGroupeprovenancegl(res23278888
						.getString("GroupeTransfert"));
				wk.setNomsconjointmembregl(res23278888
						.getString("NomsConjoint"));
				wk.setTelconjointmembregl(res23278888
						.getString("TelephoneConjoint"));
				wk.setSocietemembregl(res23278888.getString("SocieteMembre"));
				wk.setFonctionsocietemembreg(res23278888
						.getString("FonctionSocieteM"));
				wk.setAdressesocietemembregl(res23278888
						.getString("AdresseSocieteM"));
				wk.setSalairemembregl(res23278888.getString("Salaire"));
				ListeMembreGroupeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupeGL;
	}

	Statement st23278888M;
	ResultSet res23278888M;

	public List<WorkflowEntite> GetListeMembreGroupeGLPourModification(
			int IdMembre) {
		List<WorkflowEntite> ListeMembreGroupeGL = new ArrayList<>();
		try {
			st23278888M = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membregroupe where IdClientMembre='"
					+ IdMembre + "'";
			res23278888M = st23278888M.executeQuery(req);
			while (res23278888M.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdclientmembregl(res23278888M.getInt("IdClientMembre"));
				wk.setNumclientmembrecbs(res23278888M
						.getInt("NumClientMembreCbs"));
				String NomMembreGroupe = res23278888M
						.getString("NomMembreGroupe");
				String PostNomMembreGroupe = res23278888M
						.getString("PostNomMembreGroupe");
				String PreNomMembreGroupe = res23278888M
						.getString("PreNomMembreGroupe");
				wk.setNomsmembregroupe(NomMembreGroupe);
				wk.setPostnommembregroupe(PostNomMembreGroupe);
				wk.setPrenommembregroupe(PreNomMembreGroupe);
				wk.setTelephonemembregroupe(res23278888M
						.getString("TelephoneMembreGroupe"));
				wk.setSexemembregroupe(res23278888M
						.getString("SexeMembreGroupe"));
				wk.setAdressemembregroupe(res23278888M
						.getString("AdresseMembreGroupe"));
				wk.setCategoriemembregroupe(res23278888M
						.getString("CategorieMembreGroupe"));
				wk.setPhotomembregroupe(res23278888M
						.getString("PhotoMembreGroupe"));
				wk.setEtatcivilclilisanga(res23278888M
						.getString("etatCivilCliLisanga"));
				wk.setDatenaissancemembregroupe(res23278888M
						.getString("DateNaissanceMembreGroupe"));
				wk.setTransfertgl(res23278888M.getString("Transfert"));
				wk.setGroupeprovenancegl(res23278888M
						.getString("GroupeTransfert"));
				wk.setNomsconjointmembregl(res23278888M
						.getString("NomsConjoint"));
				wk.setTelconjointmembregl(res23278888M
						.getString("TelephoneConjoint"));
				wk.setSocietemembregl(res23278888M.getString("SocieteMembre"));
				wk.setFonctionsocietemembreg(res23278888M
						.getString("FonctionSocieteM"));
				wk.setAdressesocietemembregl(res23278888M
						.getString("AdresseSocieteM"));
				wk.setSalairemembregl(res23278888M.getString("Salaire"));
				ListeMembreGroupeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupeGL;
	}

	Statement st142025;
	ResultSet res142025;

	public int GetIDBrancheMicropopviaNumUserConnecter(int iduser) {
		int IdBranche = 0;
		try {
			String req = "select u.IdBranche from user as u inner join branche as br on u.IdBranche=br.IdBranche where u.Iduser='"
					+ iduser + "'";
			st142025 = ConnexionBDLocal.getConnexion().createStatement();
			res142025 = st142025.executeQuery(req);
			while (res142025.next()) {
				IdBranche = res142025.getInt("u.IdBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdBranche;
	}

	Statement st72025;
	ResultSet res72025;

	public String GetLibelleBrancheViaIdUserConnecter(int idUserConnecter) {
		String LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation = "";
		try {
			st72025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select br.LibelleBranche from user as u inner join branche as br on u.IdBranche=br.IdBranche where u.Iduser='"
					+ idUserConnecter + "'";
			res72025 = st72025.executeQuery(req);
			while (res72025.next()) {
				LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation = res72025
						.getString("br.LibelleBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleBrancheViaNumeroDossierSelectionnerEtapeCreation;
	}

	Statement st1502025;
	ResultSet res1502025;

	public List<WorkflowEntite> ListeDossierCreditGLCAetapeCreation(int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLCAetapeCreation = new ArrayList<>();
		try {
			st1502025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser where Us.Iduser='"
					+ IduserC
					+ "' and Gp.EtatGroupGL='Creation' order by Gp.NomGroupe asc";
			res1502025 = st1502025.executeQuery(req);
			while (res1502025.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1502025.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res1502025
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res1502025.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res1502025
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res1502025
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res1502025.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res1502025
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLCAetapeCreation.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLCAetapeCreation;
	}

	Statement st15020250;
	ResultSet res15020250;

	public List<WorkflowEntite> ListeDossierCreditGLCAetapeAnalyse(int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLCAetapeAnalyse = new ArrayList<>();
		try {
			st15020250 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser where Gp.PromoteurGroupe='"
					+ IduserC
					+ "' and Gp.EtatGroupGL='Analyse' order by Gp.NomGroupe asc";
			res15020250 = st15020250.executeQuery(req);
			while (res15020250.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLCAetapeAnalyse.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLCAetapeAnalyse;
	}

	Statement st912025;
	ResultSet res912025;

	public String GetNomsCompletClient(int idclientd) {
		String NomsCompletClient = "";
		try {
			String req = "select NomCli,PostNomCli,PrenomCli from clientd where idclient='"
					+ idclientd + "'";
			st912025 = ConnexionBDLocal.getConnexion().createStatement();
			res912025 = st912025.executeQuery(req);
			while (res912025.next()) {
				String Noms = res912025.getString("NomCli").trim();
				String PostNoms = res912025.getString("PostNomCli").trim();
				String PreNoms = res912025.getString("PrenomCli").toString()
						.trim();
				NomsCompletClient = Noms + " " + PostNoms + " " + PreNoms;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NomsCompletClient;
	}

	Statement st2327888825;
	ResultSet res2327888825;

	public List<WorkflowEntite> GetListeInformationGroupeGL(String IdGroupe) {
		List<WorkflowEntite> ListeInformationGroupeGL = new ArrayList<>();
		try {
			st23278888 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from groupegl where Id='" + IdGroupe + "'";
			res23278888 = st23278888.executeQuery(req);
			while (res23278888.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerogroupecbslisanga(res23278888
						.getInt("NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res23278888.getString("NomGroupe"));
				wk.setAdressegroupelisanga(res23278888
						.getString("AdresseGroupe"));
				wk.setProvincegroupelisanga(res23278888
						.getString("ProvinceGroupe"));
				wk.setJourreuniongroupelisanga(res23278888
						.getString("JourReunionGroupe"));
				wk.setHeurereuniongroupelisanga(res23278888
						.getString("HeureReunionGroupe"));
				wk.setNumerotelephonegroupelisanga(res23278888
						.getString("NumeroTelephoneGroupe"));
				wk.setNbrhommegroupelisanga(res23278888
						.getInt("NbrHommeGroupe"));
				wk.setNbrfemmegroupelisanga(res23278888
						.getInt("NbrFemmeGroupe"));
				wk.setNbrcyclegroupelisanga(res23278888
						.getInt("NbrCycleGroupe"));
				wk.setCategorierisquegroupelisanga(res23278888
						.getString("CategorieRisqueGroupe"));
				String promo = this.GetNomsUserViaId(res23278888
						.getInt("PromoteurGroupe"));
				String sup = this.GetNomsUserViaId(res23278888
						.getInt("SuperviseurGL"));
				wk.setPromoteurgroupelisanga(promo);
				wk.setSuperviseurgllisanga(sup);
				wk.setBranchegroupelisanga(res23278888
						.getString("BrancheGroupe"));
				wk.setEtatgroupgllisanga(res23278888.getString("EtatGroupGL"));
				wk.setNomchefagencemv(res23278888.getString("ChefAgence"));
				ListeInformationGroupeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationGroupeGL;
	}

	Statement st2327888825Recap;
	ResultSet res2327888825Recap;

	public List<WorkflowEntite> GetListeInformationGroupeGLRecap(int IdGroupeCBS) {
		List<WorkflowEntite> ListeInformationGroupeGL = new ArrayList<>();
		try {
			st2327888825Recap = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from groupegl where NumeroGroupeCBS='"
					+ IdGroupeCBS + "'";
			res2327888825Recap = st2327888825Recap.executeQuery(req);
			while (res2327888825Recap.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumerogroupecbslisanga(res2327888825Recap
						.getInt("NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res2327888825Recap
						.getString("NomGroupe"));
				wk.setAdressegroupelisanga(res2327888825Recap
						.getString("AdresseGroupe"));
				wk.setProvincegroupelisanga(res2327888825Recap
						.getString("ProvinceGroupe"));
				wk.setJourreuniongroupelisanga(res2327888825Recap
						.getString("JourReunionGroupe"));
				wk.setHeurereuniongroupelisanga(res2327888825Recap
						.getString("HeureReunionGroupe"));
				wk.setNumerotelephonegroupelisanga(res2327888825Recap
						.getString("NumeroTelephoneGroupe"));
				wk.setNbrhommegroupelisanga(res2327888825Recap
						.getInt("NbrHommeGroupe"));
				wk.setNbrfemmegroupelisanga(res2327888825Recap
						.getInt("NbrFemmeGroupe"));
				wk.setNbrcyclegroupelisanga(res2327888825Recap
						.getInt("NbrCycleGroupe"));
				wk.setCategorierisquegroupelisanga(res2327888825Recap
						.getString("CategorieRisqueGroupe"));
				String promo = this.GetNomsUserViaId(res2327888825Recap
						.getInt("PromoteurGroupe"));
				String sup = this.GetNomsUserViaId(res2327888825Recap
						.getInt("SuperviseurGL"));
				wk.setPromoteurgroupelisanga(promo);
				wk.setSuperviseurgllisanga(sup);
				wk.setBranchegroupelisanga(res2327888825Recap
						.getString("BrancheGroupe"));
				wk.setEtatgroupgllisanga(res2327888825Recap
						.getString("EtatGroupGL"));
				wk.setNomchefagencemv(res2327888825Recap
						.getString("ChefAgence"));
				ListeInformationGroupeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationGroupeGL;
	}

	Statement st223000010;
	ResultSet res223000010;

	public int GetIDClientGL(String NomsCompletMembreGL) {
		int IDClientGL = 0;
		try {
			String[] parts = NomsCompletMembreGL.trim().split("\\s+");
			String nom = "";
			String postnom = "";
			String prenom = "";
			if (parts.length > 0) {
				nom = parts[0];
			}
			if (parts.length == 2) {
				postnom = parts[1];
			} else if (parts.length == 3) {
				postnom = parts[1];
				prenom = parts[2];
			} else if (parts.length >= 4) {
				String last = parts[parts.length - 1];
				String beforeLast = parts[parts.length - 2];
				String prenom2mots = beforeLast + " " + last;
				// String prenom1mot = last;
				prenom = prenom2mots;
				StringBuilder sb = new StringBuilder();
				for (int i = 1; i < parts.length - 2; i++) {
					sb.append(parts[i]).append(" ");
				}
				postnom = sb.toString().trim();
			}
			st223000010 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdClientMembre from membregroupe where NomMembreGroupe='"
					+ nom
					+ "' and PostNomMembreGroupe='"
					+ postnom
					+ "' and PreNomMembreGroupe='" + prenom + "'";
			res223000010 = st223000010.executeQuery(req);
			while (res223000010.next()) {
				IDClientGL = res223000010.getInt("IdClientMembre");
			}
		} catch (Exception ex) {
		}
		return IDClientGL;
	}

	Statement st223000010GG;
	ResultSet res223000010GG;

	public int GetIDClientGL2(String NomMembreGL, String Prenoms) {
		int IDClientGL = 0;
		try {
			st223000010GG = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdClientMembre from membregroupe where NomMembreGroupe='"
					+ NomMembreGL
					+ "' and PreNomMembreGroupe='"
					+ Prenoms
					+ "'";
			res223000010GG = st223000010GG.executeQuery(req);
			while (res223000010GG.next()) {
				IDClientGL = res223000010GG.getInt("IdClientMembre");
			}
		} catch (Exception ex) {
		}
		return IDClientGL;
	}

	Statement st223000010GGA;
	ResultSet res223000010GGA;

	public int GetIDClientGLuCoreBanking(String NomMembreGL, String Prenoms) {
		int IDClientGLuCoreBanking = 0;
		try {
			st223000010GGA = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NumClientMembreCbs from membregroupe where NomMembreGroupe='"
					+ NomMembreGL
					+ "' and PreNomMembreGroupe='"
					+ Prenoms
					+ "'";
			res223000010GGA = st223000010GGA.executeQuery(req);
			while (res223000010GGA.next()) {
				IDClientGLuCoreBanking = res223000010GGA
						.getInt("NumClientMembreCbs");
			}
		} catch (Exception ex) {
		}
		return IDClientGLuCoreBanking;
	}

	Statement st223000010GGG;
	ResultSet res223000010GGG;

	public double GetMontantEpargneClientGL(int IdClientMembre, int cycle) {
		double MontantEpargneClientGL = 0;
		try {
			st223000010GGG = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select EpargneGL from informationfinanciereclientgl where IdClientGL='"
					+ IdClientMembre + "' and cycleGL='" + cycle + "'";
			res223000010GGG = st223000010GGG.executeQuery(req);
			while (res223000010GGG.next()) {
				MontantEpargneClientGL = res223000010GGG.getDouble("EpargneGL");
			}
		} catch (Exception ex) {
		}
		return MontantEpargneClientGL;
	}

	Statement st2475;

	public int CreationDossieMembreDuGroupeLisanga(int NumDossierGL,
			String DateDossierGL, String EtatDossierGL, double DepotAvue,
			double CautionFinanciere, double TotalEpargne, double DernierPret,
			double PretSollicite, double PretAccorder, double FraisDossierTVA,
			double AssuranceGL, double SmsGl, double CarnetLivre,
			double TotalFraisGL, String CycleGL, int IdMembreGL,
			String CategorisationM) {
		int NbrLgne = 0;
		try {
			st2475 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into dossiercreditgl(NumDossierGL,DateDossierGL,EtatDossierGL,DepotAvue,CautionFinanciere,TotalEpargne,DernierPret,PretSollicite,PretAccorder,FraisDossierTVA,AssuranceGL,SmsGl,CarnetLivre,TotalFraisGL,CycleGL,IdMembreGL,CategorisationM) values('"
					+ NumDossierGL
					+ "','"
					+ DateDossierGL
					+ "','"
					+ EtatDossierGL
					+ "','"
					+ DepotAvue
					+ "','"
					+ CautionFinanciere
					+ "','"
					+ TotalEpargne
					+ "','"
					+ DernierPret
					+ "','"
					+ PretSollicite
					+ "','"
					+ PretAccorder
					+ "','"
					+ FraisDossierTVA
					+ "','"
					+ AssuranceGL
					+ "','"
					+ SmsGl
					+ "','"
					+ CarnetLivre
					+ "','"
					+ TotalFraisGL
					+ "','"
					+ CycleGL
					+ "','"
					+ IdMembreGL
					+ "','" + CategorisationM + "')";
			NbrLgne = st2475.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st2475DM;

	public int UpdateDossieMembreDuGroupeLisanga(int NumDossierGL,
			double DepotAvue, double CautionFinanciere, double TotalEpargne,
			double DernierPret, double PretSollicite, double PretAccorder,
			double FraisDossierTVA, double AssuranceGL, double TotalFraisGL,
			int IdMembreGL) {
		int NbrLgne = 0;
		try {
			st2475DM = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update dossiercreditgl set DepotAvue='" + DepotAvue
					+ "',CautionFinanciere='" + CautionFinanciere
					+ "',TotalEpargne='" + TotalEpargne + "',DernierPret='"
					+ DernierPret + "',PretSollicite='" + PretSollicite
					+ "',PretAccorder='" + PretAccorder + "',FraisDossierTVA='"
					+ FraisDossierTVA + "',AssuranceGL='" + AssuranceGL
					+ "',TotalFraisGL='" + TotalFraisGL + "',IdMembreGL='"
					+ IdMembreGL + "' where NumDossierGL='" + NumDossierGL
					+ "'";
			NbrLgne = st2475DM.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st232788882525;
	ResultSet res232788882525;

	public List<WorkflowEntite> GetListeInformationDossierGL(String IdGroupe,
			int cycle) {
		List<WorkflowEntite> ListeInformationDossierGL = new ArrayList<>();
		try {
			st232788882525 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NumClientMembreCbs,cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,dossGL.NumDossierGL,dossGL.DateDossierGL,dossGL.EtatDossierGL,dossGL.DepotAvue,dossGL.CautionFinanciere,dossGL.TotalEpargne,dossGL.DernierPret,dossGL.PretSollicite,dossGL.PretAccorder,dossGL.FraisDossierTVA,dossGL.AssuranceGL,dossGL.SmsGl,dossGL.CarnetLivre,dossGL.TotalFraisGL,dossGL.CycleGL,dossGL.CategorisationM from dossiercreditgl as dossGL inner join membregroupe as cli on cli.IdClientMembre=dossGL.IdMembreGL inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where dossGL.CycleGL='"
					+ cycle + "' and gp.Id='" + IdGroupe + "'";
			res232788882525 = st232788882525.executeQuery(req);
			while (res232788882525.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumcbsclientgl(res232788882525
						.getInt("cli.NumClientMembreCbs"));
				wk.setNumdossierglgl(res232788882525.getInt("NumDossierGL"));
				wk.setDatedossierglgl(res232788882525
						.getString("DateDossierGL"));
				wk.setEtatdossierglgl(res232788882525
						.getString("EtatDossierGL"));
				wk.setDepotavuegl(res232788882525.getDouble("DepotAvue"));
				wk.setCautionfinancieregl(res232788882525
						.getDouble("CautionFinanciere"));
				wk.setTotalepargnegl(res232788882525.getDouble("TotalEpargne"));
				wk.setDernierpretgl(res232788882525.getDouble("DernierPret"));
				wk.setPretsollicitegl(res232788882525
						.getDouble("PretSollicite"));
				wk.setPretaccordergl(res232788882525.getDouble("PretAccorder"));
				wk.setFraisdossiertvagl(res232788882525
						.getDouble("FraisDossierTVA"));
				wk.setAssuranceglgl(res232788882525.getDouble("AssuranceGL"));
				wk.setSmsglgl(res232788882525.getDouble("SmsGl"));
				wk.setCarnetlivregl(res232788882525.getDouble("CarnetLivre"));
				wk.setTotalfraisglgl(res232788882525.getDouble("TotalFraisGL"));
				wk.setCycleglgl(res232788882525.getInt("CycleGL"));
				String Nomsclientmembredosgl = res232788882525
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res232788882525.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res232788882525.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);
				wk.setCategotisationm(res232788882525
						.getString("dossGL.CategorisationM"));
				ListeInformationDossierGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationDossierGL;
	}

	Statement st232788882525DD;
	ResultSet res232788882525DD;

	public List<WorkflowEntite> GetListeInformationDossierGLPourModification(
			int NumDossierGL) {
		List<WorkflowEntite> ListeInformationDossierGLPourModification = new ArrayList<>();
		try {
			st232788882525DD = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select cli.NumClientMembreCbs,cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,dossGL.NumDossierGL,dossGL.DateDossierGL,dossGL.EtatDossierGL,dossGL.DepotAvue,dossGL.CautionFinanciere,dossGL.TotalEpargne,dossGL.DernierPret,dossGL.PretSollicite,dossGL.PretAccorder,dossGL.FraisDossierTVA,dossGL.AssuranceGL,dossGL.SmsGl,dossGL.CarnetLivre,dossGL.TotalFraisGL,dossGL.CycleGL,dossGL.CategorisationM from dossiercreditgl as dossGL inner join membregroupe as cli on cli.IdClientMembre=dossGL.IdMembreGL inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where gp.NbrCycleGroupe=dossGL.CycleGL and dossGL.NumDossierGL='"
					+ NumDossierGL
					+ "' and gp.EtatGroupGL=dossGL.EtatDossierGL";
			res232788882525DD = st232788882525DD.executeQuery(req);
			while (res232788882525DD.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumcbsclientgl(res232788882525DD
						.getInt("cli.NumClientMembreCbs"));
				wk.setNumdossierglgl(res232788882525DD.getInt("NumDossierGL"));
				wk.setDatedossierglgl(res232788882525DD
						.getString("DateDossierGL"));
				wk.setEtatdossierglgl(res232788882525DD
						.getString("EtatDossierGL"));
				wk.setDepotavuegl(res232788882525DD.getDouble("DepotAvue"));
				wk.setCautionfinancieregl(res232788882525DD
						.getDouble("CautionFinanciere"));
				wk.setTotalepargnegl(res232788882525DD
						.getDouble("TotalEpargne"));
				wk.setDernierpretgl(res232788882525DD.getDouble("DernierPret"));
				wk.setPretsollicitegl(res232788882525DD
						.getDouble("PretSollicite"));
				wk.setPretaccordergl(res232788882525DD
						.getDouble("PretAccorder"));
				wk.setFraisdossiertvagl(res232788882525DD
						.getDouble("FraisDossierTVA"));
				wk.setAssuranceglgl(res232788882525DD.getDouble("AssuranceGL"));
				wk.setSmsglgl(res232788882525DD.getDouble("SmsGl"));
				wk.setCarnetlivregl(res232788882525DD.getDouble("CarnetLivre"));
				wk.setTotalfraisglgl(res232788882525DD
						.getDouble("TotalFraisGL"));
				wk.setCycleglgl(res232788882525DD.getInt("CycleGL"));
				String Nomsclientmembredosgl = res232788882525DD
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res232788882525DD
								.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res232788882525DD.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);
				wk.setCategotisationm(res232788882525DD
						.getString("dossGL.CategorisationM"));
				ListeInformationDossierGLPourModification.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationDossierGLPourModification;
	}

	Statement st232788882525R;
	ResultSet res232788882525R;

	public List<WorkflowEntite> GetListeInformationDossierGL2(String IdGroupe,
			int cycle) {
		List<WorkflowEntite> ListeInformationDossierGL = new ArrayList<>();
		try {
			st232788882525R = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NumClientMembreCbs,cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,dossGL.NumDossierGL,dossGL.DateDossierGL,dossGL.EtatDossierGL,dossGL.DepotAvue,dossGL.CautionFinanciere,dossGL.TotalEpargne,dossGL.DernierPret,dossGL.PretSollicite,dossGL.PretAccorder,dossGL.FraisDossierTVA,dossGL.AssuranceGL,dossGL.SmsGl,dossGL.CarnetLivre,dossGL.TotalFraisGL,dossGL.CycleGL,dossGL.CategorisationM from dossiercreditgl as dossGL inner join membregroupe as cli on cli.IdClientMembre=dossGL.IdMembreGL inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where gp.Id='"
					+ IdGroupe + "' and dossGL.CycleGL='" + cycle + "'";
			res232788882525R = st232788882525R.executeQuery(req);
			while (res232788882525R.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumcbsclientgl(res232788882525R
						.getInt("cli.NumClientMembreCbs"));
				wk.setNumdossierglgl(res232788882525R.getInt("NumDossierGL"));
				wk.setDatedossierglgl(res232788882525R
						.getString("DateDossierGL"));
				wk.setEtatdossierglgl(res232788882525R
						.getString("EtatDossierGL"));
				wk.setDepotavuegl(res232788882525R.getDouble("DepotAvue"));
				wk.setCautionfinancieregl(res232788882525R
						.getDouble("CautionFinanciere"));
				wk.setTotalepargnegl(res232788882525R.getDouble("TotalEpargne"));
				wk.setDernierpretgl(res232788882525R.getDouble("DernierPret"));
				wk.setPretsollicitegl(res232788882525R
						.getDouble("PretSollicite"));
				wk.setPretaccordergl(res232788882525R.getDouble("PretAccorder"));
				wk.setFraisdossiertvagl(res232788882525R
						.getDouble("FraisDossierTVA"));
				wk.setAssuranceglgl(res232788882525R.getDouble("AssuranceGL"));
				wk.setSmsglgl(res232788882525R.getDouble("SmsGl"));
				wk.setCarnetlivregl(res232788882525R.getDouble("CarnetLivre"));
				wk.setTotalfraisglgl(res232788882525R.getDouble("TotalFraisGL"));
				wk.setCycleglgl(res232788882525R.getInt("CycleGL"));
				String Nomsclientmembredosgl = res232788882525R
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res232788882525R.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res232788882525R.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);
				wk.setCategotisationm(res232788882525R
						.getString("dossGL.CategorisationM"));
				ListeInformationDossierGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationDossierGL;
	}

	Statement st2327888800;
	ResultSet res2327888800;

	public List<WorkflowEntite> GetListeMembreGroupeGLPourAffichageDossier(
			String IdGroupe) {
		List<WorkflowEntite> ListeMembreGroupe = new ArrayList<>();
		try {

			st2327888800 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select distinct * from membregroupe as m inner join dossiercreditgl as doc on doc.IdMembreGL=m.IdClientMembre where m.IdGroupeLisanga='"
					+ IdGroupe
					+ "' group by m.NomMembreGroupe,m.PostNomMembreGroupe,m.PreNomMembreGroupe";
			res2327888800 = st2327888800.executeQuery(req);
			while (res2327888800.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				String NomMembreGroupe = res2327888800
						.getString("m.NomMembreGroupe");
				String PostNomMembreGroupe = res2327888800
						.getString("m.PostNomMembreGroupe");
				String PreNomMembreGroupe = res2327888800
						.getString("m.PreNomMembreGroupe");
				String NomsCompletClientLisanga = NomMembreGroupe + " "
						+ PostNomMembreGroupe + " " + PreNomMembreGroupe;
				wk.setNomscompletclientlisanga(NomsCompletClientLisanga);

				ListeMembreGroupe.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupe;
	}

	Statement st23278888000;
	ResultSet res23278888000;

	public List<WorkflowEntite> GetListeMembreGroupeGLPourCheker(String IdGroupe) {
		List<WorkflowEntite> ListeMembreGroupe = new ArrayList<>();
		try {

			st23278888000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membregroupe where IdGroupeLisanga='"
					+ IdGroupe + "'";
			res23278888000 = st23278888000.executeQuery(req);
			while (res23278888000.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				String NomMembreGroupe = res23278888000
						.getString("NomMembreGroupe");
				String PostNomMembreGroupe = res23278888000
						.getString("PostNomMembreGroupe");
				String PreNomMembreGroupe = res23278888000
						.getString("PreNomMembreGroupe");
				String NomsCompletClientLisanga = NomMembreGroupe + " "
						+ PostNomMembreGroupe + " " + PreNomMembreGroupe;
				wk.setNomscompletclientlisanga(NomsCompletClientLisanga);

				ListeMembreGroupe.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupe;
	}

	Statement st2327888800KAO;
	ResultSet res2327888800KAO;

	public List<WorkflowEntite> GetListeMembreGroupeGLcombo(String IdGroupe) {
		List<WorkflowEntite> ListeMembreGroupe = new ArrayList<>();
		try {

			st2327888800KAO = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membregroupe where IdGroupeLisanga='"
					+ IdGroupe + "'";
			res2327888800KAO = st2327888800KAO.executeQuery(req);
			while (res2327888800KAO.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				String NomMembreGroupe = res2327888800KAO
						.getString("NomMembreGroupe");
				String PostNomMembreGroupe = res2327888800KAO
						.getString("PostNomMembreGroupe");
				String PreNomMembreGroupe = res2327888800KAO
						.getString("PreNomMembreGroupe");
				String NomsCompletClientLisanga = NomMembreGroupe + " "
						+ PostNomMembreGroupe + " " + PreNomMembreGroupe;
				wk.setNomscompletclientlisanga(NomsCompletClientLisanga);

				ListeMembreGroupe.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupe;
	}

	Statement st2327888800P;
	ResultSet res2327888800P;

	public List<WorkflowEntite> GetListeMembreGroupeGLPourAffichageDossierReunion(
			String IdGroupe) {
		List<WorkflowEntite> ListeMembreGroupePresentReunion = new ArrayList<>();
		try {
			st2327888800P = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select DISTINCT m.NomMembreGroupe,m.PostNomMembreGroupe,m.PreNomMembreGroupe from membregroupe as m inner join dossiercreditgl as doc on doc.IdMembreGL=m.IdClientMembre inner join groupegl as grp on m.IdGroupeLisanga=grp.Id inner join reuniongl as rn on rn.IdGroupeLisanga=grp.Id inner join presencereuniongl as pres on pres.IdMembreGl=m.IdClientMembre where m.IdGroupeLisanga='"
					+ IdGroupe + "'";
			res2327888800P = st2327888800P.executeQuery(req);
			while (res2327888800P.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				String NomMembreGroupe = res2327888800P
						.getString("m.NomMembreGroupe");
				String PostNomMembreGroupe = res2327888800P
						.getString("m.PostNomMembreGroupe");
				String PreNomMembreGroupe = res2327888800P
						.getString("m.PreNomMembreGroupe");
				String NomsCompletClientLisanga = NomMembreGroupe + " "
						+ PostNomMembreGroupe + " " + PreNomMembreGroupe;
				wk.setNomscompletclientlisanga(NomsCompletClientLisanga);
				ListeMembreGroupePresentReunion.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeMembreGroupePresentReunion;
	}

	Statement st2327888800Pp;
	ResultSet res2327888800Pp;

	public int VerificationPresenceReunionPourEviterDuplication(int Idreunion,
			int IdMembre) {
		int IdPresence = 0;
		try {
			st2327888800Pp = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdPresenceR from presencereuniongl where IdMembreGl='"
					+ IdMembre + "' and IdReunionGl='" + Idreunion + "'";
			res2327888800Pp = st2327888800Pp.executeQuery(req);
			while (res2327888800Pp.next()) {
				IdPresence = res2327888800Pp.getInt("IdPresenceR");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdPresence;
	}

	Statement st2475200;

	public int EnregistrementBussnessClientGL(String ActiviteGL,
			String AdresseBusinessGL, String ExperienceBussnessGL,
			int RotationHebdoGL, double CapitalBussnessGL,
			double BeneficesHebdoGL, String NumTelephoneBussnessGL,
			String CommentaireBussnessGL, int IdClientGL,
			String UrlPhotosBussness) {
		int NbrLgne = 0;
		try {
			st2475200 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into bussnessmembregl(ActiviteGL,AdresseBusinessGL,ExperienceBussnessGL,RotationHebdoGL,CapitalBussnessGL,BeneficesHebdoGL,NumTelephoneBussnessGL,CommentaireBussnessGL,IdClientGL,photosBussnessM) values('"
					+ ActiviteGL
					+ "','"
					+ AdresseBusinessGL
					+ "','"
					+ ExperienceBussnessGL
					+ "','"
					+ RotationHebdoGL
					+ "','"
					+ CapitalBussnessGL
					+ "','"
					+ BeneficesHebdoGL
					+ "','"
					+ NumTelephoneBussnessGL
					+ "','"
					+ CommentaireBussnessGL
					+ "','" + IdClientGL + "','" + UrlPhotosBussness + "')";
			NbrLgne = st2475200.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st2475200DS;

	public int UpdateBussnessClientGL(int idBussness, String ActiviteGL,
			String AdresseBusinessGL, String ExperienceBussnessGL,
			int RotationHebdoGL, double CapitalBussnessGL,
			double BeneficesHebdoGL, String NumTelephoneBussnessGL,
			String CommentaireBussnessGL, int IdClientGL) {
		int NbrLgne = 0;
		try {
			st2475200DS = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update bussnessmembregl set ActiviteGL='"
					+ ActiviteGL + "',AdresseBusinessGL='" + AdresseBusinessGL
					+ "',ExperienceBussnessGL='" + ExperienceBussnessGL
					+ "',RotationHebdoGL='" + RotationHebdoGL
					+ "',CapitalBussnessGL='" + CapitalBussnessGL
					+ "',BeneficesHebdoGL='" + BeneficesHebdoGL
					+ "',NumTelephoneBussnessGL='" + NumTelephoneBussnessGL
					+ "',CommentaireBussnessGL='" + CommentaireBussnessGL
					+ "',IdClientGL='" + IdClientGL + "' where ID='"
					+ idBussness + "'";
			NbrLgne = st2475200DS.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st8820;
	ResultSet res880;

	public List<WorkflowEntite> GetListeInformationBussenessClientGL(
			String IdGroupe) {
		List<WorkflowEntite> ListeInformationBussenessClientGL = new ArrayList<>();
		try {
			st8820 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,buss.ID,buss.ActiviteGL,buss.AdresseBusinessGL,buss.ExperienceBussnessGL,buss.RotationHebdoGL,buss.CapitalBussnessGL,buss.BeneficesHebdoGL,buss.NumTelephoneBussnessGL,buss.CommentaireBussnessGL from bussnessmembregl as buss inner join membregroupe as cli on buss.IdClientGL=cli.IdClientMembre inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where gp.Id='"
					+ IdGroupe + "'";
			res880 = st8820.executeQuery(req);
			while (res880.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessglb(res880.getInt("ID"));
				wk.setActivitebussnessglb(res880.getString("ActiviteGL"));
				wk.setAdressebussnessglb(res880.getString("AdresseBusinessGL"));
				wk.setExperiencebussnessglb(res880
						.getString("ExperienceBussnessGL"));
				wk.setRotationhebdoglb(res880.getInt("RotationHebdoGL"));
				wk.setCapitalbussnessglb(res880.getDouble("CapitalBussnessGL"));
				wk.setBeneficeshebdoglb(res880.getDouble("BeneficesHebdoGL"));
				wk.setNumtelephoneglb(res880
						.getString("NumTelephoneBussnessGL"));
				wk.setCommentairebussnessglb(res880
						.getString("CommentaireBussnessGL"));
				String Nomsclientmembredosgl = res880
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);

				ListeInformationBussenessClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationBussenessClientGL;
	}

	Statement st8820BB;
	ResultSet res880BB;

	public List<WorkflowEntite> GetListeInformationBussenessClientGLPourModification(
			int idbussness) {
		List<WorkflowEntite> ListeInformationBussenessClientGLPourModification = new ArrayList<>();
		try {
			st8820BB = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,buss.ID,buss.ActiviteGL,buss.AdresseBusinessGL,buss.ExperienceBussnessGL,buss.RotationHebdoGL,buss.CapitalBussnessGL,buss.BeneficesHebdoGL,buss.NumTelephoneBussnessGL,buss.CommentaireBussnessGL as com from bussnessmembregl as buss inner join membregroupe as cli on buss.IdClientGL=cli.IdClientMembre inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where buss.ID='"
					+ idbussness + "'";
			res880BB = st8820BB.executeQuery(req);
			while (res880BB.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessglb(res880BB.getInt("ID"));
				wk.setActivitebussnessglb(res880BB.getString("ActiviteGL"));
				wk.setAdressebussnessglb(res880BB
						.getString("AdresseBusinessGL"));
				wk.setExperiencebussnessglb(res880BB
						.getString("ExperienceBussnessGL"));
				wk.setRotationhebdoglb(res880BB.getInt("RotationHebdoGL"));
				wk.setCapitalbussnessglb(res880BB
						.getDouble("CapitalBussnessGL"));
				wk.setBeneficeshebdoglb(res880BB.getDouble("BeneficesHebdoGL"));
				wk.setNumtelephoneglb(res880BB
						.getString("NumTelephoneBussnessGL"));
				wk.setCommentairebussnessglb(res880BB.getString("com"));
				String Nomsclientmembredosgl = res880BB
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880BB.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880BB.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);

				ListeInformationBussenessClientGLPourModification.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationBussenessClientGLPourModification;
	}

	Statement st8820R;
	ResultSet res880R;

	public List<WorkflowEntite> GetListeInformationBussenessClientGL2(
			String IdGroupe) {
		List<WorkflowEntite> ListeInformationBussenessClientGL = new ArrayList<>();
		try {
			st8820R = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,buss.ID,buss.ActiviteGL,buss.AdresseBusinessGL,buss.ExperienceBussnessGL,buss.RotationHebdoGL,buss.CapitalBussnessGL,buss.BeneficesHebdoGL,buss.NumTelephoneBussnessGL,buss.CommentaireBussnessGL from bussnessmembregl as buss inner join membregroupe as cli on buss.IdClientGL=cli.IdClientMembre inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga where gp.Id='"
					+ IdGroupe + "'";
			res880R = st8820R.executeQuery(req);
			while (res880R.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessglb(res880R.getInt("ID"));
				wk.setActivitebussnessglb(res880R.getString("ActiviteGL"));
				wk.setAdressebussnessglb(res880R.getString("AdresseBusinessGL"));
				wk.setExperiencebussnessglb(res880R
						.getString("ExperienceBussnessGL"));
				wk.setRotationhebdoglb(res880R.getInt("RotationHebdoGL"));
				wk.setCapitalbussnessglb(res880R.getDouble("CapitalBussnessGL"));
				wk.setBeneficeshebdoglb(res880R.getDouble("BeneficesHebdoGL"));
				wk.setNumtelephoneglb(res880R
						.getString("NumTelephoneBussnessGL"));
				wk.setCommentairebussnessglb(res880R
						.getString("CommentaireBussnessGL"));
				String Nomsclientmembredosgl = res880R
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880R.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880R.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);

				ListeInformationBussenessClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationBussenessClientGL;
	}

	Statement st24752000;

	public int EnregistrementInfoFinancireClientGL(int IdClientGL,
			int IdDossierClientGL, double TotalApayerGL, double EpargneGL,
			double RemboursementGL, double TotalRemboursementGL,
			double EpargneBruteGL, double MontantPretGL,
			String CommentaireInfoFGL, int cycle) {
		int NbrLgne = 0;
		try {
			st24752000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into informationfinanciereclientgl(IdClientGL,IdDossierClientGL,TotalApayerGL,EpargneGL,RemboursementGL,TotalRemboursementGL,EpargneBruteGL,MontantPretGL,CommentaireInfoFGL,cycleGL) values('"
					+ IdClientGL
					+ "','"
					+ IdDossierClientGL
					+ "','"
					+ TotalApayerGL
					+ "','"
					+ EpargneGL
					+ "','"
					+ RemboursementGL
					+ "','"
					+ TotalRemboursementGL
					+ "','"
					+ EpargneBruteGL
					+ "','"
					+ MontantPretGL
					+ "','"
					+ CommentaireInfoFGL + "','" + cycle + "')";
			NbrLgne = st24752000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st24752000Modif;

	public int UpdateInfoFinancireClientGL(int ID, int IdClientGL,
			int IdDossierClientGL, double TotalApayerGL, double EpargneGL,
			double RemboursementGL, double TotalRemboursementGL,
			double EpargneBruteGL, double MontantPretGL,
			String CommentaireInfoFGL, int cycle) {
		int NbrLgne = 0;
		try {
			st24752000Modif = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update informationfinanciereclientgl set IdClientGL='"
					+ IdClientGL
					+ "',IdDossierClientGL='"
					+ IdDossierClientGL
					+ "',TotalApayerGL='"
					+ TotalApayerGL
					+ "',EpargneGL='"
					+ EpargneGL
					+ "',RemboursementGL='"
					+ RemboursementGL
					+ "',TotalRemboursementGL='"
					+ TotalRemboursementGL
					+ "',EpargneBruteGL='"
					+ EpargneBruteGL
					+ "',MontantPretGL='"
					+ MontantPretGL
					+ "',CommentaireInfoFGL='"
					+ CommentaireInfoFGL
					+ "',cycleGL='" + cycle + "' where Id='" + ID + "'";
			NbrLgne = st24752000Modif.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st88202025;
	ResultSet res8802025;

	public double GetEpargneBruteClientGL(String IdGroupe, int idDossierGL,
			int IdClient, int cycle) {
		double EpargneBruteClientGL = 0;
		try {
			st88202025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select doss.TotalEpargne from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre where gp.Id='"
					+ IdGroupe
					+ "' and gp.NbrCycleGroupe='"
					+ cycle
					+ "' and doss.CycleGL='"
					+ cycle
					+ "' and cli.IdClientMembre='"
					+ IdClient
					+ "' and doss.NumDossierGL='" + idDossierGL + "'";
			res8802025 = st88202025.executeQuery(req);
			while (res8802025.next()) {
				EpargneBruteClientGL = res8802025
						.getDouble("doss.TotalEpargne");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return EpargneBruteClientGL;
	}

	Statement st882020250;
	ResultSet res88020250;

	public double GetMontantPretClientGL(String IdGroupe, int idDossierGL,
			int IdClient, int cycle) {
		double MontantPretClientGL = 0;
		try {
			st882020250 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select doss.PretAccorder from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre where gp.Id='"
					+ IdGroupe
					+ "' and gp.NbrCycleGroupe='"
					+ cycle
					+ "' and doss.CycleGL='"
					+ cycle
					+ "' and cli.IdClientMembre='"
					+ IdClient
					+ "' and doss.NumDossierGL='" + idDossierGL + "'";
			res88020250 = st882020250.executeQuery(req);
			while (res88020250.next()) {
				MontantPretClientGL = res88020250
						.getDouble("doss.PretAccorder");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return MontantPretClientGL;
	}

	Statement st8820202501;
	ResultSet res880202501;

	public int GetIDdossierClientGL(String IdGroupe, int IdClient, int cycle) {
		int IDdossierClientGL = 0;
		try {
			st8820202501 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select doss.NumDossierGL from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre where gp.Id='"
					+ IdGroupe
					+ "' and gp.NbrCycleGroupe='"
					+ cycle
					+ "' and doss.CycleGL='"
					+ cycle
					+ "' and cli.IdClientMembre='" + IdClient + "'";
			res880202501 = st8820202501.executeQuery(req);
			while (res880202501.next()) {
				IDdossierClientGL = res880202501.getInt("doss.NumDossierGL");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDdossierClientGL;
	}

	Statement st88202025012;
	ResultSet res8802025012;

	public int GetCycleActuelGroupGL(String IdGroupe) {
		int CycleActuelGroupGL = 0;
		try {
			st88202025012 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NbrCycleGroupe from groupegl where Id='"
					+ IdGroupe + "'";
			res8802025012 = st88202025012.executeQuery(req);
			while (res8802025012.next()) {
				CycleActuelGroupGL = res8802025012.getInt("NbrCycleGroupe");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CycleActuelGroupGL;
	}

	Statement st8820101010;
	ResultSet res880101010;

	public List<WorkflowEntite> GetListeInformationFinancireClientGL(
			String IdGroupe, int cycle) {
		List<WorkflowEntite> ListeInformationFinancireClientGL = new ArrayList<>();
		try {
			st8820101010 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,f.Id,f.TotalApayerGL,f.EpargneGL,f.RemboursementGL,f.TotalRemboursementGL,f.EpargneBruteGL,f.MontantPretGL,f.CommentaireInfoFGL from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre inner join informationfinanciereclientgl as f on f.IdDossierClientGL=doss.NumDossierGL where gp.Id='"
					+ IdGroupe + "' and doss.CycleGL='" + cycle + "'";
			res880101010 = st8820101010.executeQuery(req);
			while (res880101010.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdinfofinanciereglglgl(res880101010.getInt("f.Id"));
				wk.setTotalapayerglglgl(res880101010
						.getDouble("f.TotalApayerGL"));
				wk.setEpargneglglgl(res880101010.getDouble("f.EpargneGL"));
				wk.setRemboursementglglgl(res880101010
						.getDouble("f.RemboursementGL"));
				wk.setTotalremboursementglglgl(res880101010
						.getDouble("f.TotalRemboursementGL"));
				wk.setEpargnebruteglglgl(res880101010
						.getDouble("f.EpargneBruteGL"));
				wk.setMontantpretglglgl(res880101010
						.getDouble("f.MontantPretGL"));
				wk.setCommentaireinfofinancireglglgl(res880101010
						.getString("f.CommentaireInfoFGL"));

				String Nomsclientmembredosgl = res880101010
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880101010.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880101010.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);

				ListeInformationFinancireClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationFinancireClientGL;
	}

	Statement st8820101010FF;
	ResultSet res880101010FF;

	public List<WorkflowEntite> GetListeInformationFinancireClientGLPourModification(
			int IdInfoFinanciere, int cycle) {
		List<WorkflowEntite> ListeInformationFinancireClientGL = new ArrayList<>();
		try {
			st8820101010FF = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,f.Id,f.TotalApayerGL,f.EpargneGL,f.RemboursementGL,f.TotalRemboursementGL,f.EpargneBruteGL,f.MontantPretGL,f.CommentaireInfoFGL from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre inner join informationfinanciereclientgl as f on f.IdDossierClientGL=doss.NumDossierGL where f.Id='"
					+ IdInfoFinanciere + "' and doss.CycleGL='" + cycle + "'";
			res880101010FF = st8820101010FF.executeQuery(req);
			while (res880101010FF.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdinfofinanciereglglgl(res880101010FF.getInt("f.Id"));
				wk.setTotalapayerglglgl(res880101010FF
						.getDouble("f.TotalApayerGL"));
				wk.setEpargneglglgl(res880101010FF.getDouble("f.EpargneGL"));
				wk.setRemboursementglglgl(res880101010FF
						.getDouble("f.RemboursementGL"));
				wk.setTotalremboursementglglgl(res880101010FF
						.getDouble("f.TotalRemboursementGL"));
				wk.setEpargnebruteglglgl(res880101010FF
						.getDouble("f.EpargneBruteGL"));
				wk.setMontantpretglglgl(res880101010FF
						.getDouble("f.MontantPretGL"));
				wk.setCommentaireinfofinancireglglgl(res880101010FF
						.getString("f.CommentaireInfoFGL"));
				String Nomsclientmembredosgl = res880101010FF
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880101010FF.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880101010FF.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);
				ListeInformationFinancireClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationFinancireClientGL;
	}

	Statement st8820101010RR;
	ResultSet res880101010RR;

	public List<WorkflowEntite> GetListeInformationFinancireClientGL2(
			String IdGroupe, int cycle) {
		List<WorkflowEntite> ListeInformationFinancireClientGL = new ArrayList<>();
		try {
			st8820101010 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select cli.NomMembreGroupe,cli.PostNomMembreGroupe,cli.PreNomMembreGroupe,f.Id,f.TotalApayerGL,f.EpargneGL,f.RemboursementGL,f.TotalRemboursementGL,f.EpargneBruteGL,f.MontantPretGL,f.CommentaireInfoFGL from membregroupe as cli inner join groupegl as gp on gp.Id=cli.IdGroupeLisanga inner join dossiercreditgl as doss on doss.IdMembreGL=cli.IdClientMembre inner join informationfinanciereclientgl as f on f.IdDossierClientGL=doss.NumDossierGL where gp.Id='"
					+ IdGroupe + "' and doss.CycleGL='" + cycle + "'";
			res880101010 = st8820101010.executeQuery(req);
			while (res880101010.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdinfofinanciereglglgl(res880101010.getInt("f.Id"));
				wk.setTotalapayerglglgl(res880101010
						.getDouble("f.TotalApayerGL"));
				wk.setEpargneglglgl(res880101010.getDouble("f.EpargneGL"));
				wk.setRemboursementglglgl(res880101010
						.getDouble("f.RemboursementGL"));
				wk.setTotalremboursementglglgl(res880101010
						.getDouble("f.TotalRemboursementGL"));
				wk.setEpargnebruteglglgl(res880101010
						.getDouble("f.EpargneBruteGL"));
				wk.setMontantpretglglgl(res880101010
						.getDouble("f.MontantPretGL"));
				wk.setCommentaireinfofinancireglglgl(res880101010
						.getString("f.CommentaireInfoFGL"));

				String Nomsclientmembredosgl = res880101010
						.getString("cli.NomMembreGroupe")
						+ " "
						+ res880101010.getString("cli.PostNomMembreGroupe")
						+ " "
						+ res880101010.getString("cli.PreNomMembreGroupe");
				wk.setNomsclientmembredosgl(Nomsclientmembredosgl);

				ListeInformationFinancireClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationFinancireClientGL;
	}

	Statement st150202500;
	ResultSet res150202500;

	public List<WorkflowEntite> ListeDossierCreditIndividueletapeAssignation(
			String LibelleBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividueletapeAssignation = new ArrayList<>();
		try {
			st150202500 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select distinct dcr.NumDossierCredit,dcr.DateDossier,dcr.MontantDemande,dcr.DureePret,dcr.EtatDossierCredit,br.LibelleBranche,cli.idclient,cli.NomCli,cli.PostNomCli,cli.PrenomCli,us.NomsUser from dossiercredit as dcr inner join clientd as cli on dcr.IdClientD=cli.idclient inner join user as us on dcr.DossierinitiePar=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where (dcr.EtatDossierCredit='Assignation' and br.LibelleBranche='"
					+ LibelleBranche + "') order by dcr.DateDossier desc";
			res150202500 = st150202500.executeQuery(req);
			while (res150202500.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientil(res150202500.getInt("cli.idclient"));
				wk.setNumerodossieril(res150202500
						.getString("dcr.NumDossierCredit"));
				wk.setDatedossieril(res150202500.getString("dcr.DateDossier"));
				wk.setMontantdossieril(res150202500
						.getDouble("dcr.MontantDemande"));
				wk.setEcheancedossieril(res150202500.getInt("dcr.DureePret"));
				wk.setStatutdossieril(res150202500
						.getString("dcr.EtatDossierCredit"));
				wk.setAgencedossieril(res150202500
						.getString("br.LibelleBranche"));
				String NomsDemandeur = res150202500.getString("cli.NomCli");
				String PostNomDemandeur = res150202500
						.getString("cli.PostNomCli");
				String PrenomDemandeur = res150202500
						.getString("cli.PrenomCli");
				String NomsCompletDemandeur = NomsDemandeur + " "
						+ PostNomDemandeur + " " + PrenomDemandeur;
				wk.setNomscompletclientdemandeurdossieril(NomsCompletDemandeur);
				wk.setNomscompletinitiateurdemandedossieril(res150202500
						.getString("us.NomsUser"));
				ListeDossierCreditIndividueletapeAssignation.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividueletapeAssignation;
	}

	Statement st1502025002027;
	ResultSet res1502025002027;

	public String GetDecisionRisque(String IDdossierIL) {
		String DecisionRisque = "";
		try {
			st1502025002027 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select AppreciationRisque from risque where NumDossierCre='"
					+ IDdossierIL + "'";
			res1502025002027 = st1502025002027.executeQuery(req);
			while (res1502025002027.next()) {
				DecisionRisque = res1502025002027
						.getString("AppreciationRisque");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DecisionRisque;
	}

	Statement st1502025002027C;
	ResultSet res1502025002027C;

	public String GetDecisionConformite(String IDdossierIL) {
		String DecisionConformite = "";
		try {
			st1502025002027C = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select AppreciationC from conformite where NumDossierCre='"
					+ IDdossierIL + "'";
			res1502025002027C = st1502025002027C.executeQuery(req);
			while (res1502025002027C.next()) {
				DecisionConformite = res1502025002027C
						.getString("AppreciationC");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DecisionConformite;
	}

	Statement st1520000027;

	public int ModificationPropositionRisque(String NomsResponsableRisque,
			String AppreciationRisque, String CommentaireRisque,
			String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "update risque set NomsResponsable='"
					+ NomsResponsableRisque + "',AppreciationRisque='"
					+ AppreciationRisque + "',CommentaireRisque='"
					+ CommentaireRisque + "' where NumDossierCre='"
					+ NumDossierCre + "'";
			st1520000027 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st1520000027.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st1520000027confort;

	public int ModificationPropositionConformite(String NomsResponsableRisque,
			String AppreciationRisque, String CommentaireRisque,
			String NumDossierCre) {
		int nbr = 0;
		try {
			String req = "update conformite set NomsResponsableC='"
					+ NomsResponsableRisque + "',AppreciationC='"
					+ AppreciationRisque + "',CommentaireC='"
					+ CommentaireRisque + "' where NumDossierCre='"
					+ NumDossierCre + "'";
			st1520000027confort = ConnexionBDLocal.getConnexion()
					.createStatement();
			nbr = st1520000027confort.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152000002700;

	public void EnregistrementMembreQuitte(String DateQuitte,
			String NomsClientGLQuite, int CycleQuitte, double MontantEpargneM,
			String RaisonSocial, String NumGroupeGL, int idclient,
			String Statut, String CommentaireStatut) {
		try {
			String req = "insert into membreglquitte(DateQuitte,NomsClientGLQuite,CycleQuitte,MontantEpargneM,RaisonSocial,NumGroupeGL,NumMembre,StatutMQ,CommentaireStatut) values('"
					+ DateQuitte
					+ "','"
					+ NomsClientGLQuite
					+ "','"
					+ CycleQuitte
					+ "','"
					+ MontantEpargneM
					+ "','"
					+ RaisonSocial
					+ "','"
					+ NumGroupeGL
					+ "','"
					+ idclient
					+ "','" + Statut + "','" + CommentaireStatut + "')";
			st152000002700 = ConnexionBDLocal.getConnexion().createStatement();
			st152000002700.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st1230;
	ResultSet res1230;

	public double GetMontantEpargneClientQuitte(int IDClientGL, int cycle) {
		double MontantEpargneClientQuitte = 0;
		try {
			st1230 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dossgl.TotalEpargne from dossiercreditgl as dossgl inner join membregroupe as cli on dossgl.IdMembreGL=cli.IdClientMembre where dossgl.CycleGL='"
					+ cycle + "' and cli.IdClientMembre='" + IDClientGL + "'";
			res1230 = st1230.executeQuery(req);
			while (res1230.next()) {
				MontantEpargneClientQuitte = res1230
						.getDouble("dossgl.TotalEpargne");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return MontantEpargneClientQuitte;
	}

	Statement st23278888205;
	ResultSet res23278888205;

	public List<WorkflowEntite> GetListeInformationClientQuitteGroupeCycle(
			String IdGroupe, int cycle) {
		List<WorkflowEntite> ListetListeInformationClientQuitteGroupeCycle = new ArrayList<>();
		try {
			st23278888205 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membreglquitte where NumGroupeGL='"
					+ IdGroupe + "'";
			res23278888205 = st23278888205.executeQuery(req);
			while (res23278888205.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdquitte(res23278888205.getInt("Id"));
				wk.setNumclientquitte(res23278888205.getInt("NumMembre"));
				wk.setDatequitte(res23278888205.getString("DateQuitte"));
				wk.setNomsclientglquite(res23278888205
						.getString("NomsClientGLQuite"));
				wk.setCyclequitte(res23278888205.getInt("CycleQuitte"));
				wk.setMontantepargnemquitte(res23278888205
						.getDouble("MontantEpargneM"));
				wk.setRaisonsocialquitte(res23278888205
						.getString("RaisonSocial"));
				wk.setStatutquitte(res23278888205.getString("StatutMQ"));
				wk.setCommquitte(res23278888205.getString("CommentaireStatut"));
				ListetListeInformationClientQuitteGroupeCycle.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListetListeInformationClientQuitteGroupeCycle;
	}

	Statement st150000;

	public void ModificationIdGroupeClientQuitte(int IdClientQuitte) {

		try {
			// String valdossier = "0";
			String req = "update membregroupe set IdGroupeLisanga='0' where IdClientMembre='"
					+ IdClientQuitte + "'";
			st150000 = ConnexionBDLocal.getConnexion().createStatement();
			st150000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st15000020;

	public void SuprimerDossierClientQuitte(int IdClientQuitte, int cycleActuel) {

		try {
			String req = "delete from dossiercreditgl where IdMembreGL='"
					+ IdClientQuitte + "' and CycleGL='" + cycleActuel + "'";
			st15000020 = ConnexionBDLocal.getConnexion().createStatement();
			st15000020.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st1500002025;

	public void SuprimerInfoFinanciereClientQuitte(int IdClientQuitte, int cycle) {

		try {
			String req = "delete from informationfinanciereclientgl where IdClientGL='"
					+ IdClientQuitte + "' and cycleGL='" + cycle + "'";
			st1500002025 = ConnexionBDLocal.getConnexion().createStatement();
			st1500002025.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st652026;

	public int enregistrementDocumentGL(String DateEnregistrementDoc,
			String Description, String FichierUrl, String NumGroupeLisanga) {
		int nbrLigne = 0;
		try {
			String req = "insert into documentbusinessgl(DateEnregistrementDoc,Description,FichierUrl,NumGroupeGL) values('"
					+ DateEnregistrementDoc
					+ "','"
					+ Description
					+ "','"
					+ FichierUrl + "','" + NumGroupeLisanga + "')";
			st652026 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st652026.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st12800;
	ResultSet res12800;

	public List<WorkflowEntite> GetListeCompleteInformationsDocumentGL(
			String numGroupe) {
		List<WorkflowEntite> ListeCompleteInformationsDocumentGL = new ArrayList<>();
		try {
			st12800 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from documentbusinessgl where NumGroupeGL='"
					+ numGroupe + "'";
			res12800 = st12800.executeQuery(req);
			while (res12800.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdfichierdoc(res12800.getInt("Id"));
				wk.setDescriptionfichierdoc(res12800.getString("Description"));
				wk.setFichierdoc(res12800.getString("FichierUrl"));
				wk.setDateenrfichierdoc(res12800
						.getString("DateEnregistrementDoc"));
				ListeCompleteInformationsDocumentGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeCompleteInformationsDocumentGL;
	}

	Statement st12925;
	ResultSet res12925;

	public String GetnomDocumentGLviaID(int IDDocumentGL) {
		String nomDocumentGLviaID = "";
		try {
			st12925 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FichierUrl from documentbusinessgl where Id='"
					+ IDDocumentGL + "'";
			res12925 = st12925.executeQuery(req);
			while (res12925.next()) {
				nomDocumentGLviaID = res12925.getString("FichierUrl");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomDocumentGLviaID;
	}

	Statement st129251994;
	ResultSet res129251994;

	public String GetnomDocumentBussnessGLviaID(int IDBussnessGL) {
		String nomDocumentBussnessGL = "";
		try {
			st129251994 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select photosBussnessM from bussnessmembregl where ID='"
					+ IDBussnessGL + "'";
			res129251994 = st129251994.executeQuery(req);
			while (res129251994.next()) {
				nomDocumentBussnessGL = res129251994
						.getString("photosBussnessM");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomDocumentBussnessGL;
	}

	Statement st1292519940;
	ResultSet res1292519940;

	public String GetnomMembreViaIDBussnessGL(int IDBussnessGL) {
		String nomMembreViaIDBussnessGL = "";
		try {
			st1292519940 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select M.NomMembreGroupe,M.PostNomMembreGroupe,M.PreNomMembreGroupe from bussnessmembregl as B inner join membregroupe as M on M.IdClientMembre=B.IdClientGL where B.ID='"
					+ IDBussnessGL + "'";
			res1292519940 = st1292519940.executeQuery(req);
			while (res1292519940.next()) {
				nomMembreViaIDBussnessGL = res1292519940
						.getString("M.NomMembreGroupe")
						+ " "
						+ res1292519940.getString("M.PostNomMembreGroupe")
						+ " " + res1292519940.getString("M.PreNomMembreGroupe");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nomMembreViaIDBussnessGL;
	}

	Statement st1292520;
	ResultSet res1292520;

	public double GetTotalEpargneCliGL(int IDDocumentGL) {
		double TotalEpargneCliGL = 0;
		try {
			st1292520 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TotalEpargne from dossiercreditgl where NumDossierGL='"
					+ IDDocumentGL + "'";
			res1292520 = st1292520.executeQuery(req);
			while (res1292520.next()) {
				TotalEpargneCliGL = res1292520.getDouble("TotalEpargne");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return TotalEpargneCliGL;
	}

	Statement st12925201;
	ResultSet res12925201;

	public double GetFraisAssuanceCliGL(int IDDocumentGL) {
		double FraisAssuanceCliGL = 0;
		try {
			st12925201 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select AssuranceGL from dossiercreditgl where NumDossierGL='"
					+ IDDocumentGL + "'";
			res12925201 = st12925201.executeQuery(req);
			while (res12925201.next()) {
				FraisAssuanceCliGL = res12925201.getDouble("AssuranceGL");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return FraisAssuanceCliGL;
	}

	Statement st6520260;

	public void sauvegardeMontantApprouverDossierGL(int IdDossierAModifier,
			double MontantApprouvercomite, double CautionFinanciereGl,
			double DepotAvueGL, double FraisDossierGL, double TotalFraisGL) {

		try {
			String req = "update dossiercreditgl set PretAccorder='"
					+ MontantApprouvercomite + "',CautionFinanciere='"
					+ CautionFinanciereGl + "',DepotAvue='" + DepotAvueGL
					+ "',FraisDossierTVA='" + FraisDossierGL
					+ "',TotalFraisGL='" + TotalFraisGL
					+ "' where NumDossierGL='" + IdDossierAModifier + "'";
			st6520260 = ConnexionBDLocal.getConnexion().createStatement();
			st6520260.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement st65202600;

	public int EnregistrementComiteGL(String DateComiteGL, int CycleGroupeGL,
			String DecisionComiteGL, String CommentaireComiteGL,
			String NumeroGroupeLisanga, String DecideurComiteGL) {
		int nbrComiteSave = 0;
		try {
			String req = "insert into comitegl(DateComiteGL,CycleGroupeGL,DecisionComiteGL,CommentaireComiteGL,NumeroGroupeLisanga,DecideurComiteGL) values('"
					+ DateComiteGL
					+ "','"
					+ CycleGroupeGL
					+ "','"
					+ DecisionComiteGL
					+ "','"
					+ CommentaireComiteGL
					+ "','"
					+ NumeroGroupeLisanga + "','" + DecideurComiteGL + "')";
			st65202600 = ConnexionBDLocal.getConnexion().createStatement();
			nbrComiteSave = st65202600.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrComiteSave;
	}

	Statement st652026000;

	public int ModificationComiteGL(String DateComiteGL, int CycleGroupeGL,
			String DecisionComiteGL, String CommentaireComiteGL,
			String NumeroGroupeLisanga, String DecideurComiteGL, int IdComGL) {
		int nbrComiteSave = 0;
		try {
			String req = "update comitegl set DateComiteGL='" + DateComiteGL
					+ "',CycleGroupeGL='" + CycleGroupeGL
					+ "',DecisionComiteGL='" + DecisionComiteGL
					+ "',CommentaireComiteGL='" + CommentaireComiteGL
					+ "',NumeroGroupeLisanga='" + NumeroGroupeLisanga
					+ "',DecideurComiteGL='" + DecideurComiteGL
					+ "' where IdComiteGL='" + IdComGL + "'";
			st652026000 = ConnexionBDLocal.getConnexion().createStatement();
			nbrComiteSave = st652026000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrComiteSave;
	}

	Statement st2327888825250;
	ResultSet res2327888825250;

	public List<WorkflowEntite> GetListeInformationDecisionComiteDossierGL(
			String IdGroupe, int cycle) {
		List<WorkflowEntite> ListeInformationDecisionComiteDossierGL = new ArrayList<>();
		try {
			st2327888825250 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from comitegl where NumeroGroupeLisanga='"
					+ IdGroupe + "' and CycleGroupeGL='" + cycle + "'";
			res2327888825250 = st2327888825250.executeQuery(req);
			while (res2327888825250.next()) {

				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdComiteGLCom(res2327888825250.getInt("IdComiteGL"));
				wk.setDateComiteGLCom(res2327888825250
						.getString("DateComiteGL"));
				wk.setCycleGroupeGLCom(res2327888825250.getInt("CycleGroupeGL"));
				wk.setDecisionComiteGLCom(res2327888825250
						.getString("DecisionComiteGL"));
				wk.setCommentaireComiteGLCom(res2327888825250
						.getString("CommentaireComiteGL"));
				wk.setDecideurComiteGLCom(res2327888825250
						.getString("DecideurComiteGL"));

				ListeInformationDecisionComiteDossierGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationDecisionComiteDossierGL;
	}

	Statement st1502025005;
	ResultSet res1502025005;

	public List<WorkflowEntite> ListeDossierCreditGLPourComiteSuperviseur(
			int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLPourComiteSuperviseur = new ArrayList<>();
		try {
			st1502025005 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL where (Gp.SuperviseurGL='"
					+ IduserC
					+ "' and Gp.EtatGroupGL='Comite') group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe having somme <=2000 order by Gp.NomGroupe asc";
			res1502025005 = st1502025005.executeQuery(req);
			while (res1502025005.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1502025005.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res1502025005
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res1502025005.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res1502025005
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res1502025005
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res1502025005
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res1502025005
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourComiteSuperviseur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourComiteSuperviseur;
	}

	Statement st1502025005AA;
	ResultSet res1502025005AA;

	public List<WorkflowEntite> ListeDossierCreditGLPourEvaluationSuperviseur(
			int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLPourEvaluationSuperviseur = new ArrayList<>();
		try {
			st1502025005AA = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL where (Gp.SuperviseurGL='"
					+ IduserC
					+ "' and Gp.EtatGroupGL='Evaluation') group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res1502025005AA = st1502025005AA.executeQuery(req);
			while (res1502025005AA.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1502025005AA.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res1502025005AA
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res1502025005AA
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res1502025005AA
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res1502025005AA
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res1502025005AA
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res1502025005AA
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourEvaluationSuperviseur.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourEvaluationSuperviseur;
	}

	Statement st15020250050;
	ResultSet res15020250050;

	public List<WorkflowEntite> ListeDossierCreditGLPourComiteBM(
			String LibelleAgenceDossierBM) {
		List<WorkflowEntite> ListeDossierCreditGLPourComiteBM = new ArrayList<>();
		try {
			st15020250050 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where br.LibelleBranche='"
					+ LibelleAgenceDossierBM
					+ "' and Gp.EtatGroupGL='Comite' group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe having somme >2000 and somme <=5000 order by Gp.NomGroupe asc";
			res15020250050 = st15020250050.executeQuery(req);
			while (res15020250050.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250050.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250050
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250050.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250050
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250050
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250050
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250050
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourComiteBM.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourComiteBM;
	}

	Statement st150202500500;
	ResultSet res150202500500;

	public List<WorkflowEntite> ListeDossierCreditGLPourComiteDirection() {
		List<WorkflowEntite> ListeDossierCreditGLPourComiteDirection = new ArrayList<>();
		try {
			st150202500500 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where Gp.EtatGroupGL='Comite' group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe having somme >5000 order by Gp.NomGroupe asc";
			res150202500500 = st150202500500.executeQuery(req);
			while (res150202500500.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res150202500500.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res150202500500
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res150202500500
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res150202500500
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res150202500500
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res150202500500
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res150202500500
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourComiteDirection.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourComiteDirection;
	}

	Statement st1502025005002;
	ResultSet res1502025005002;

	public List<WorkflowEntite> ListeDossierCreditGLVerificationPourCI() {
		List<WorkflowEntite> ListeDossierCreditGLVerificationPourCI = new ArrayList<>();
		try {
			st1502025005002 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where Gp.EtatGroupGL='Terminer' or Gp.EtatGroupGL='Analyse' group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res1502025005002 = st1502025005002.executeQuery(req);
			while (res1502025005002.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1502025005002.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res1502025005002
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res1502025005002
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res1502025005002
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res1502025005002
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res1502025005002
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res1502025005002
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLVerificationPourCI.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLVerificationPourCI;
	}

	Statement st1502025005023;
	ResultSet res1502025005023;

	public List<WorkflowEntite> ListeDossierCreditGLPourODP(
			String LibelleAgenceDossierBM) {
		List<WorkflowEntite> ListeDossierCreditGLPourODP = new ArrayList<>();
		try {
			st1502025005023 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where br.LibelleBranche='"
					+ LibelleAgenceDossierBM
					+ "' and (Gp.EtatGroupGL='Verification' or Gp.EtatGroupGL='Postage') group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res1502025005023 = st1502025005023.executeQuery(req);
			while (res1502025005023.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1502025005023.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res1502025005023
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res1502025005023
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res1502025005023
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res1502025005023
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res1502025005023
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res1502025005023
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourODP.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourODP;
	}

	Statement st139007777700;
	ResultSet res139007777700;

	public List<WorkflowEntite> ListeInformationPropositionRisquegl(
			String NumGroupeCreditGL, int Cycle) {
		List<WorkflowEntite> ListeInformationPropositionRisquegl = new ArrayList<>();
		try {
			st139007777700 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from risquegl where NumGroupeLisanga='"
					+ NumGroupeCreditGL + "' and CycleGroupeGL='" + Cycle + "'";
			res139007777700 = st139007777700.executeQuery(req);
			while (res139007777700.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsresponsablerisque(res139007777700
						.getString("NomsResponsablegl"));
				wk.setAppreciationrisque(res139007777700
						.getString("AppreciationRisquegl"));
				wk.setCommentairerisque(res139007777700
						.getString("CommentaireRisquegl"));
				ListeInformationPropositionRisquegl.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationPropositionRisquegl;
	}

	Statement st1520000025;

	public int EnregistrementPropositionRisqueGL(
			String NomsResponsableRisqueGL, String AppreciationRisqueGL,
			String CommentaireRisqueGL, String NumGroupeLisanga, int cycle) {
		int nbr = 0;
		try {
			String req = "insert into risquegl(NumGroupeLisanga,NomsResponsablegl,AppreciationRisquegl,CommentaireRisquegl,CycleGroupeGL) values('"
					+ NumGroupeLisanga
					+ "','"
					+ NomsResponsableRisqueGL
					+ "','"
					+ AppreciationRisqueGL
					+ "','"
					+ CommentaireRisqueGL + "','" + cycle + "')";
			st1520000025 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st1520000025.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152000002725;

	public int ModificationPropositionRisqueGL(String NomsResponsableRisque,
			String AppreciationRisque, String CommentaireRisque,
			String NumGroupeLisanga, int cycle) {
		int nbr = 0;
		try {
			String req = "update risquegl set NomsResponsablegl='"
					+ NomsResponsableRisque + "',AppreciationRisquegl='"
					+ AppreciationRisque + "',CommentaireRisquegl='"
					+ CommentaireRisque + "' where NumGroupeLisanga='"
					+ NumGroupeLisanga + "' and CycleGroupeGL='" + cycle + "'";
			st152000002725 = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st152000002725.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st1242520500;

	public int ModificationNumCBsGroupeLisanga(int NumGrpCBS,
			String numgroupLisangaWF) {
		int nbrLigne = 0;
		try {
			String req = "update groupegl set NumeroGroupeCBS='" + NumGrpCBS
					+ "' where Id='" + numgroupLisangaWF + "'";
			st1242520500 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st1242520500.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st12425205002;

	public int ModificationNumCBsMembreGroupeLisangaDansWF(int NumMembreGrpCBS,
			int numgMembreroupLisangaWF) {
		int nbrLigne = 0;
		try {
			String req = "update membregroupe set NumClientMembreCbs='"
					+ NumMembreGrpCBS + "' where IdClientMembre='"
					+ numgMembreroupLisangaWF + "'";
			st12425205002 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st12425205002.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st13900777770001;
	ResultSet res13900777770001;

	public String GetNumGroupeWFViaLibelleGroupeLisanga(
			String LibelleGroupeLisanga) {
		String NumGroupeWF = "";
		try {
			st13900777770001 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select Id from groupegl where NomGroupe='"
					+ LibelleGroupeLisanga + "'";
			res13900777770001 = st13900777770001.executeQuery(req);
			while (res13900777770001.next()) {
				NumGroupeWF = res13900777770001.getString("Id");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NumGroupeWF;
	}

	Statement st150202500502300;
	ResultSet res150202500502300;

	public int GetNumCliGLWF(String Nomclient, String Prenom,
			String numGroupeLisanga) {
		int ID = 0;
		try {
			st150202500502300 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select IdClientMembre from membregroupe where NomMembreGroupe='"
					+ Nomclient
					+ "' and PreNomMembreGroupe='"
					+ Prenom
					+ "' and IdGroupeLisanga='" + numGroupeLisanga + "'";
			res150202500502300 = st150202500502300.executeQuery(req);
			while (res150202500502300.next()) {
				ID = res150202500502300.getInt("IdClientMembre");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ID;
	}

	Statement st1502025005023000;
	ResultSet res1502025005023000;

	public List<WorkflowEntite> ListeInformationMembreGroupeCBS(
			int IdGroupeLisanga) {
		List<WorkflowEntite> ListeInformationMembreGroupeCBS = new ArrayList<>();
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st1502025005023000 = cnx.createStatement();
			String req = "SELECT a.id_client numcli,a.pp_nom nomcli,a.pp_prenom prenomcli FROM ad_grp_sol b JOIN ad_cli a ON a.id_client= b.id_membre WHERE b.id_grp_sol ='"
					+ IdGroupeLisanga + "' ORDER BY b.id_membre";
			res1502025005023000 = st1502025005023000.executeQuery(req);
			while (res1502025005023000.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientglcbs(res1502025005023000.getInt("numcli"));
				wk.setNomclientglcbs(res1502025005023000.getString("nomcli")
						.split(" ")[0].trim());
				wk.setPrenomclientglcbs(res1502025005023000.getString(
						"prenomcli").trim());
				ListeInformationMembreGroupeCBS.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res1502025005023000 != null)
					res1502025005023000.close();
			} catch (Exception e) {
			}
			try {
				if (st1502025005023000 != null)
					st1502025005023000.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return ListeInformationMembreGroupeCBS;
	}

	Statement st15020250T;
	ResultSet res15020250T;

	public List<WorkflowEntite> ListeDossierCreditGLCAetapeTerminer(int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLCAetapeTerminer = new ArrayList<>();
		try {
			st15020250T = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,stt.Cycle from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join statdossierglterminer as stt on stt.NumGroupeGL=Gp.Id where Gp.PromoteurGroupe='"
					+ IduserC + "' order by Gp.NomGroupe asc";
			res15020250T = st15020250T.executeQuery(req);
			while (res15020250T.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250T.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250T
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250T.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250T
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250T
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga("Terminer");
				wk.setNbrcyclegroupelisanga(res15020250T.getInt("stt.Cycle"));
				ListeDossierCreditGLCAetapeTerminer.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLCAetapeTerminer;
	}

	Statement st15020250R;
	ResultSet res15020250R;

	public List<WorkflowEntite> ListeDossierCreditGLCAetapeRejeter(int IduserC) {
		List<WorkflowEntite> ListeDossierCreditGLCAetapeRejeter = new ArrayList<>();
		try {
			st15020250R = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser where Gp.PromoteurGroupe='"
					+ IduserC
					+ "' and Gp.EtatGroupGL='Rejeter' order by Gp.NomGroupe asc";
			res15020250R = st15020250R.executeQuery(req);
			while (res15020250R.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250R.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250R
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250R.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250R
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250R
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250R
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250R
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLCAetapeRejeter.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLCAetapeRejeter;
	}

	Statement st15020250050H;
	ResultSet res15020250050H;

	public List<WorkflowEntite> ListeDossierCreditGLPourHistoriqueBM(
			String LibelleAgenceDossierBM) {
		List<WorkflowEntite> ListeDossierCreditGLPourHistoriqueBM = new ArrayList<>();
		try {
			st15020250050H = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where br.LibelleBranche='"
					+ LibelleAgenceDossierBM
					+ "' and (Gp.EtatGroupGL='Comite'or Gp.EtatGroupGL='Analyse' or Gp.EtatGroupGL='Terminer')group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe,Gp.EtatGroupGL asc";
			res15020250050H = st15020250050H.executeQuery(req);
			while (res15020250050H.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250050H.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250050H
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250050H
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250050H
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250050H
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250050H
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250050H
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLPourHistoriqueBM.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLPourHistoriqueBM;
	}

	Statement st127S;
	ResultSet res127S;

	public List<WorkflowEntite> StatistiqueDossierGLTraiter() {
		List<WorkflowEntite> StatistiqueDossierGLTraiter = new ArrayList<>();
		try {
			st127S = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select br.LibelleBranche,count(dcr.NumDossierGL) from dossiercreditgl as dcr inner join membregroupe as m on dcr.IdMembreGL=m.IdClientMembre inner join groupegl as grp on m.IdGroupeLisanga=grp.Id inner join user as u on u.Iduser=grp.PromoteurGroupe inner join branche as br on br.IdBranche=u.IdBranche where dcr.EtatDossierGL='Terminer' group by br.LibelleBranche order by br.LibelleBranche asc";
			res127S = st127S.executeQuery(req);
			while (res127S.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setLibellebranchestat(res127S.getString("br.LibelleBranche"));
				wk.setNbrdossierterminebranche(res127S
						.getInt("count(dcr.NumDossierGL)"));
				StatistiqueDossierGLTraiter.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return StatistiqueDossierGLTraiter;
	}

	Statement st15020250RECHERCHE;
	ResultSet res15020250RECHERCHE;

	public List<WorkflowEntite> ListeDossierCreditGLRechercheParBranche(
			String BrancheMCPOP, String EtatDossier) {
		List<WorkflowEntite> ListeDossierCreditGLRechercheParBranche = new ArrayList<>();
		try {
			st15020250RECHERCHE = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where br.LibelleBranche='"
					+ BrancheMCPOP
					+ "' and Gp.EtatGroupGL='"
					+ EtatDossier
					+ "' group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res15020250RECHERCHE = st15020250RECHERCHE.executeQuery(req);
			while (res15020250RECHERCHE.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250RECHERCHE.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250RECHERCHE
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250RECHERCHE
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250RECHERCHE
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250RECHERCHE
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250RECHERCHE
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250RECHERCHE
						.getInt("Gp.NbrCycleGroupe"));
				ListeDossierCreditGLRechercheParBranche.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLRechercheParBranche;
	}

	Statement st19940;

	public int PostageDossierGLdansADBANKING(int id_dcr_grp_sol, int id_prod,
			String is_extended, String differe_jours, String differe_ech,
			String date_dem, String cre_date_debloc, int etat,
			int id_agent_gest, int duree_mois, String delai_grac,
			String nb_jr_bloq_cre_avant_ech, String prelev_commission,
			String assurances_cre, double gar_num, double gar_num_encours,
			double gar_mat, double gar_tot, int terme, int id_client,
			int cpt_liaison, String cpt_remb, double mnt_dem,
			String id_bailleur, int obj_dem, String detail_obj_dem,
			int detail_obj_dem_2, int prelev_auto, double mnt_frais_doss,
			double mnt_assurance, int cre_nbre_reech, int num_cre,
			String suspension_pen, int gs_cat, int cpt_prelev_frais, int id_ag) {
		int nbrLigne = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_dcr(id_dcr_grp_sol,id_prod,is_extended,differe_jours,differe_ech,date_dem,cre_date_debloc,etat,id_agent_gest,duree_mois,delai_grac,nb_jr_bloq_cre_avant_ech,prelev_commission,assurances_cre,gar_num,gar_num_encours,gar_mat,gar_tot,terme,id_client,cpt_liaison,cpt_remb,mnt_dem,id_bailleur,obj_dem,detail_obj_dem,detail_obj_dem_2,prelev_auto,mnt_frais_doss,mnt_assurance,cre_nbre_reech,num_cre,suspension_pen,gs_cat,cpt_prelev_frais,id_ag) values('"
					+ id_dcr_grp_sol
					+ "','"
					+ id_prod
					+ "','"
					+ is_extended
					+ "',NULL,NULL,'"
					+ date_dem
					+ "',NULL,'"
					+ etat
					+ "','"
					+ id_agent_gest
					+ "','"
					+ duree_mois
					+ "',NULL,NULL,'"
					+ prelev_commission
					+ "','"
					+ assurances_cre
					+ "','"
					+ gar_num
					+ "','"
					+ gar_num_encours
					+ "','"
					+ gar_mat
					+ "','"
					+ gar_tot
					+ "','"
					+ terme
					+ "','"
					+ id_client
					+ "','"
					+ cpt_liaison
					+ "',NULL,'"
					+ mnt_dem
					+ "',NULL,'"
					+ obj_dem
					+ "','"
					+ detail_obj_dem
					+ "','"
					+ detail_obj_dem_2
					+ "','"
					+ prelev_auto
					+ "','"
					+ mnt_frais_doss
					+ "','"
					+ mnt_assurance
					+ "','"
					+ cre_nbre_reech
					+ "','"
					+ num_cre
					+ "','"
					+ suspension_pen
					+ "','"
					+ gs_cat
					+ "','"
					+ cpt_prelev_frais
					+ "','"
					+ id_ag
					+ "')";
			st19940 = cnx.createStatement();
			nbrLigne = st19940.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st19940 != null)
					st19940.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbrLigne;
	}

	Statement stGL;
	ResultSet resGL;

	public int Getid_dcr_grp_solNext() {
		int id_dcr_grp_solNext = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			stGL = cnx.createStatement();
			String req = "SELECT nextval('ad_dcr_grp_sol_id_seq') idgroupsol";
			resGL = stGL.executeQuery(req);
			while (resGL.next()) {
				id_dcr_grp_solNext = resGL.getInt("idgroupsol");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (resGL != null)
					resGL.close();
			} catch (Exception e) {
			}
			try {
				if (stGL != null)
					stGL.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}
		return id_dcr_grp_solNext;
	}

	Statement stGL1;
	ResultSet resGL1;

	public int Getid_dcr_grp_RecemmentEnregistrer() {
		int id_dcr_grp_RecemmentEnregistrer = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			stGL1 = cnx.createStatement();
			String req = "SELECT max(id_doss) idDos from ad_dcr where id_ag=1";
			resGL1 = stGL1.executeQuery(req);
			while (resGL1.next()) {
				id_dcr_grp_RecemmentEnregistrer = resGL1.getInt("idDos");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (resGL1 != null)
					resGL1.close();
			} catch (Exception e) {
			}
			try {
				if (stGL1 != null)
					stGL1.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return id_dcr_grp_RecemmentEnregistrer;
	}

	Statement st1994000;

	public int InsertionGarantieGL(int id_doss, int type_gar,
			String gar_mat_id_bien, int gar_num_id_cpte_prelev,
			String gar_num_id_cpte_nantie, int etat_gar, double montant_vente,
			String devise_vente, int id_ag) {
		int nbr = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_gar(id_doss,type_gar,gar_mat_id_bien,gar_num_id_cpte_prelev,gar_num_id_cpte_nantie,etat_gar,montant_vente,devise_vente,id_ag) values('"
					+ id_doss
					+ "','"
					+ type_gar
					+ "',NULL,'"
					+ gar_num_id_cpte_prelev
					+ "',NULL,'"
					+ etat_gar
					+ "','"
					+ montant_vente
					+ "','"
					+ devise_vente
					+ "','"
					+ id_ag
					+ "')";
			st1994000 = cnx.createStatement();
			nbr = st1994000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st1994000 != null)
					st1994000.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbr;
	}

	Statement stGLH;
	ResultSet resGLH;

	public int GetIDHistoriqueCReGLNEXT() {
		int IDHistoriqueCReGLNEXT = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			stGLH = cnx.createStatement();
			String req = "SELECT nextval('ad_his_id_his_seq') idhsto";
			resGLH = stGLH.executeQuery(req);
			while (resGLH.next()) {
				IDHistoriqueCReGLNEXT = resGLH.getInt("idhsto");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (resGLH != null)
					resGLH.close();
			} catch (Exception e) {
			}
			try {
				if (stGLH != null)
					stGLH.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return IDHistoriqueCReGLNEXT;
	}

	Statement st1994000Histo;

	public int InsertionHistoriqueDossierCreditGL(int id_his, int id_ag,
			int type_fonction, int infos, int id_client, String login,
			String date, String id_his_ext) {
		int nbr = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_his(id_his,id_ag,type_fonction,infos,id_client,login,date,id_his_ext) values('"
					+ id_his
					+ "','"
					+ id_ag
					+ "','"
					+ type_fonction
					+ "','"
					+ infos
					+ "','"
					+ id_client
					+ "','"
					+ login
					+ "','"
					+ date
					+ "',NULL)";
			st1994000Histo = cnx.createStatement();
			nbr = st1994000Histo.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st1994000Histo != null)
					st1994000Histo.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbr;
	}

	Statement st1994000M;

	public int InsertionMembreDansGroupeSolidaireDossierCreditGL(int gs_cat,
			int id_membre, double mnt_dem, String id_bailleur, String obj_dem,
			String detail_obj_dem, String detail_obj_dem_2, int id, int id_ag) {
		int nbr = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			String req = "INSERT INTO ad_dcr_grp_sol(gs_cat,id_membre,mnt_dem,id_bailleur,obj_dem,detail_obj_dem,detail_obj_dem_2,id,id_ag) values('"
					+ gs_cat
					+ "','"
					+ id_membre
					+ "','"
					+ mnt_dem
					+ "',NULL,NULL,NULL,NULL,'" + id + "','" + id_ag + "')";
			st1994000M = cnx.createStatement();
			nbr = st1994000M.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (st1994000M != null)
					st1994000M.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return nbr;
	}

	Statement st207Promo;
	ResultSet res207Promo;

	public String GetNomsGestionnaireGL(String IdGroupe) {
		String NomsGestionnaireGL = "";
		try {
			st207Promo = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select u.NomsUser from user as u inner join groupegl as gl on u.Iduser=gl.PromoteurGroupe where gl.Id='"
					+ IdGroupe + "'";
			res207Promo = st207Promo.executeQuery(req);
			while (res207Promo.next()) {
				NomsGestionnaireGL = res207Promo.getString("u.NomsUser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NomsGestionnaireGL;
	}

	Statement st139007777700EV;
	ResultSet res139007777700EV;

	public List<WorkflowEntite> ListeInformationEvaluationgl(
			String NumGroupeCreditGL, int Cycle) {
		List<WorkflowEntite> ListeInformationEvaluationgl = new ArrayList<>();
		try {
			st139007777700EV = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from evaluationgl where NumGroupeLisanga='"
					+ NumGroupeCreditGL + "' and CycleGroupeGL='" + Cycle + "'";
			res139007777700EV = st139007777700EV.executeQuery(req);
			while (res139007777700EV.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomssupeva(res139007777700EV.getString("NomsSupgl"));
				wk.setAppreciationeva(res139007777700EV
						.getString("AppreciationSupgl"));
				wk.setCommentaireeva(res139007777700EV
						.getString("CommentaireEvaluationgl"));
				ListeInformationEvaluationgl.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationEvaluationgl;
	}

	Statement st1520000025ev;

	public int EnregistrementEvaluationGL(String NomsSupGL,
			String AppreciationEvaluationGL, String CommentaireEvaluationGL,
			String NumGroupeLisanga, int cycle) {
		int nbr = 0;
		try {
			String req = "insert into evaluationgl(NumGroupeLisanga,NomsSupgl,AppreciationSupgl,CommentaireEvaluationgl,CycleGroupeGL) values('"
					+ NumGroupeLisanga
					+ "','"
					+ NomsSupGL
					+ "','"
					+ AppreciationEvaluationGL
					+ "','"
					+ CommentaireEvaluationGL + "','" + cycle + "')";
			st1520000025ev = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st1520000025ev.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152000002725E;

	public int ModificationEvaluation(String NomsSup, String AppreciationSup,
			String CommentaireSup, String NumGroupeLisanga, int cycle) {
		int nbr = 0;
		try {
			String req = "update evaluationgl set NomsSupgl='" + NomsSup
					+ "',AppreciationSupgl='" + AppreciationSup
					+ "',CommentaireEvaluationgl='" + CommentaireSup
					+ "' where NumGroupeLisanga='" + NumGroupeLisanga
					+ "' and CycleGroupeGL='" + cycle + "'";
			st152000002725E = ConnexionBDLocal.getConnexion().createStatement();
			nbr = st152000002725E.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152000002725EE;

	public int ReintegrationMembreGroupe(String NumGroupeLisanga, int idMembre) {
		int nbr = 0;
		try {
			String req = "update membregroupe set IdGroupeLisanga='"
					+ NumGroupeLisanga + "' where IdClientMembre='" + idMembre
					+ "'";
			st152000002725EE = ConnexionBDLocal.getConnexion()
					.createStatement();
			nbr = st152000002725EE.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st152000002725RR;

	public int UpdateApresReintegration(int idTableMembreQuitte, String Statut,
			String CommentaireStatut) {
		int nbr = 0;
		try {
			String req = "update membreglquitte set StatutMQ='" + Statut
					+ "',CommentaireStatut='" + CommentaireStatut
					+ "' where Id='" + idTableMembreQuitte + "'";
			st152000002725RR = ConnexionBDLocal.getConnexion()
					.createStatement();
			nbr = st152000002725RR.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st139007777700EVvv;
	ResultSet res139007777700EVvv;

	public List<WorkflowEntite> ListeInformationGrpglCA(int PromoteurID) {
		List<WorkflowEntite> ListeInformationGrpglCA = new ArrayList<>();
		try {
			st139007777700EVvv = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select distinct NomGroupe from groupegl where PromoteurGroupe='"
					+ PromoteurID + "' order by NomGroupe asc";
			res139007777700EVvv = st139007777700EVvv.executeQuery(req);
			while (res139007777700EVvv.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomgroupelisanga(res139007777700EVvv
						.getString("NomGroupe"));
				ListeInformationGrpglCA.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationGrpglCA;
	}

	Statement st15020250RECHERCHE01;
	ResultSet res15020250RECHERCHE01;

	public List<WorkflowEntite> ListeGL(int PromoteurID, String NomGroupe) {
		List<WorkflowEntite> ListeGL = new ArrayList<>();
		try {
			st15020250RECHERCHE01 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where Gp.PromoteurGroupe='"
					+ PromoteurID
					+ "' and Gp.NomGroupe='"
					+ NomGroupe
					+ "' group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res15020250RECHERCHE01 = st15020250RECHERCHE01.executeQuery(req);
			while (res15020250RECHERCHE01.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250RECHERCHE01.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250RECHERCHE01
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250RECHERCHE01
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250RECHERCHE01
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250RECHERCHE01
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250RECHERCHE01
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250RECHERCHE01
						.getInt("Gp.NbrCycleGroupe"));
				ListeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeGL;
	}

	Statement st15020250RECHERCHE012;
	ResultSet res15020250RECHERCHE012;

	public List<WorkflowEntite> ListeGL2(String nomgrp) {
		List<WorkflowEntite> ListeGL = new ArrayList<>();
		try {
			st15020250RECHERCHE012 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe,sum(Doc.PretAccorder) as somme from groupegl as Gp inner join user as Us on Gp.PromoteurGroupe=Us.Iduser inner join membregroupe as mg on Gp.Id=mg.IdGroupeLisanga inner join dossiercreditgl as Doc on mg.IdClientMembre=Doc.IdMembreGL inner join branche as br on br.IdBranche=Us.IdBranche where Gp.NomGroupe='"
					+ nomgrp
					+ "'group by Gp.Id,Gp.NumeroGroupeCBS,Gp.NomGroupe,Gp.BrancheGroupe,Us.NomsUser,Gp.EtatGroupGL,Gp.NbrCycleGroupe order by Gp.NomGroupe asc";
			res15020250RECHERCHE012 = st15020250RECHERCHE012.executeQuery(req);
			while (res15020250RECHERCHE012.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res15020250RECHERCHE012
						.getString("Gp.Id"));
				wk.setNumerogroupecbslisanga(res15020250RECHERCHE012
						.getInt("Gp.NumeroGroupeCBS"));
				wk.setNomgroupelisanga(res15020250RECHERCHE012
						.getString("Gp.NomGroupe"));
				wk.setBranchegroupelisanga(res15020250RECHERCHE012
						.getString("Gp.BrancheGroupe"));
				wk.setPromoteurgroupelisanga(res15020250RECHERCHE012
						.getString("Us.NomsUser"));
				wk.setEtatgroupgllisanga(res15020250RECHERCHE012
						.getString("Gp.EtatGroupGL"));
				wk.setNbrcyclegroupelisanga(res15020250RECHERCHE012
						.getInt("Gp.NbrCycleGroupe"));
				ListeGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeGL;
	}

	Statement st139007777700EVvv0;
	ResultSet res139007777700EVvv0;

	public List<WorkflowEntite> ListeInformationGrpglCA2() {
		List<WorkflowEntite> ListeInformationGrpglCA = new ArrayList<>();
		try {
			st139007777700EVvv0 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select distinct NomGroupe from groupegl order by NomGroupe asc";
			res139007777700EVvv0 = st139007777700EVvv0.executeQuery(req);
			while (res139007777700EVvv0.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomgroupelisanga(res139007777700EVvv0
						.getString("NomGroupe"));
				ListeInformationGrpglCA.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationGrpglCA;
	}

	Statement st8820101010RRR;
	ResultSet res880101010RRR;

	public List<WorkflowEntite> GetMontantcheancierClientGL(int IdClient,
			String DateReunion) {
		List<WorkflowEntite> ListecheancierClientGL = new ArrayList<>();
		// double MontantcheancierClientGL = 0;
		Connection cnx = null;
		try {
			// etr.date_ech as date_prevu_remboursement,
			cnx = ConnexionADbanking.getConnexion();
			st8820101010RRR = cnx.createStatement();
			String req = "SELECT etr.mnt_cap+etr.mnt_int as montant_a_rembourser FROM ad_etr etr JOIN ad_dcr dcr ON dcr.id_ag = etr.id_ag AND dcr.id_doss = etr.id_doss LEFT JOIN ad_grp_sol grp ON grp.id_ag = dcr.id_ag AND grp.id_grp_sol= dcr.id_client JOIN adsys_produit_credit pc ON pc.id_ag = dcr.id_ag AND pc.id= dcr.id_prod WHERE dcr.id_client='"
					+ IdClient
					+ "' and etr.date_ech >= '"
					+ DateReunion
					+ "' order by etr.date_ech asc";
			res880101010RRR = st8820101010RRR.executeQuery(req);
			while (res880101010RRR.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				// wk.setDateecheancierclientgl(res880101010RRR
				// .getString("date_prevu_remboursement"));
				// MontantcheancierClientGL = res880101010RRR
				// .getDouble("montant_a_rembourser");
				wk.setMontanttotrembourserecheanceclientgl(res880101010RRR
						.getInt("montant_a_rembourser"));
				ListecheancierClientGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res880101010RRR != null)
					res880101010RRR.close();
			} catch (Exception e) {
			}
			try {
				if (st8820101010RRR != null)
					st8820101010RRR.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return ListecheancierClientGL;
	}

	Statement st4R;
	ResultSet res4R;

	public List<WorkflowEntite> GetListeInfoReunionGL(String IdGroupLisanga,
			int cycleGL) {
		List<WorkflowEntite> ListeInfoReunionGL = new ArrayList<>();
		try {
			st4R = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from reuniongl where CycleGl= '" + cycleGL
					+ "' and IdGroupeLisanga= '" + IdGroupLisanga
					+ "' order by DateReunion asc";
			res4R = st4R.executeQuery(req);
			while (res4R.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDatereuniongl(res4R.getString("DateReunion"));
				wk.setLieureuniongl(res4R.getString("LieuR"));
				wk.setHeuredebutreuniongl(res4R.getString("HeureDebutR"));
				wk.setHeurefinreuniongl(res4R.getString("HeureFinR"));
				wk.setCyclegrpreunion(res4R.getInt("CycleGl"));
				String LibelGrp = this.GetLibelleGrpViaID(res4R
						.getString("IdGroupeLisanga"));
				wk.setLibellegrpforreuniongl(LibelGrp);
				wk.setIdreuniongl(res4R.getInt("IdReunion"));
				ListeInfoReunionGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInfoReunionGL;
	}

	Statement st4Reu;
	ResultSet res4Reu;

	public List<WorkflowEntite> GetListeInfoReunionGLPourcheckingEviteDoublons(
			String IdGroupLisanga, String DatereunionDuJours) {
		List<WorkflowEntite> ListeInfoReunionGL = new ArrayList<>();
		try {
			st4Reu = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from reuniongl where DateReunion= '"
					+ DatereunionDuJours + "' and IdGroupeLisanga= '"
					+ IdGroupLisanga + "' order by DateReunion asc";
			res4Reu = st4Reu.executeQuery(req);
			while (res4Reu.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDatereuniongl(res4Reu.getString("DateReunion"));
				wk.setLieureuniongl(res4Reu.getString("LieuR"));
				wk.setHeuredebutreuniongl(res4Reu.getString("HeureDebutR"));
				wk.setHeurefinreuniongl(res4Reu.getString("HeureFinR"));
				wk.setCyclegrpreunion(res4Reu.getInt("CycleGl"));
				String LibelGrp = this.GetLibelleGrpViaID(res4Reu
						.getString("IdGroupeLisanga"));
				wk.setLibellegrpforreuniongl(LibelGrp);
				wk.setIdreuniongl(res4Reu.getInt("IdReunion"));
				ListeInfoReunionGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInfoReunionGL;
	}

	Statement st4R0;
	ResultSet res4R0;

	public String GetLibelleGrpViaID(String IdGroupLisanga) {
		String LibelleGrpViaID = "";
		try {
			st4R0 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NomGroupe from groupegl where Id='"
					+ IdGroupLisanga + "'";
			res4R0 = st4R0.executeQuery(req);
			while (res4R0.next()) {
				LibelleGrpViaID = res4R0.getString("NomGroupe");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return LibelleGrpViaID;
	}

	Statement st6520260025;

	public int EnregistrementReunionGL(String DateReunion, String LieuR,
			String HeureDebutR, String HeureFinR, int CycleGl,
			String IdGroupeLisanga) {
		int nbrComiteSave = 0;
		try {
			String req = "insert into reuniongl(DateReunion,LieuR,HeureDebutR,HeureFinR,CycleGl,IdGroupeLisanga) values('"
					+ DateReunion
					+ "','"
					+ LieuR
					+ "','"
					+ HeureDebutR
					+ "','"
					+ HeureFinR
					+ "','"
					+ CycleGl
					+ "','"
					+ IdGroupeLisanga
					+ "')";
			st6520260025 = ConnexionBDLocal.getConnexion().createStatement();
			nbrComiteSave = st6520260025.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrComiteSave;
	}

	Statement st8820101010RRRC;
	ResultSet res880101010RRRC;

	public double GetData() {
		double dataa = 0;
		try {
			st8820101010RRRC = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select MontantEch from adbanking";
			res880101010RRRC = st8820101010RRRC.executeQuery(req);
			while (res880101010RRRC.next()) {
				dataa = res880101010RRRC.getDouble("MontantEch");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return dataa;
	}

	Statement st152000002725Ey;

	public int EnregistrementPresenceRunionGL(double MontantRemboursEspere,
			double MontantRemboursReunion, double MontantEpargneEspere,
			double MontantEpargneReunion, String StatutRemboursement,
			String StatutEpargne, int IdMembreGl, int IdReunionGl,
			String Delegation) {
		int nbr = 0;
		try {
			String req = "insert into presencereuniongl(MontantRemboursEspere,MontantRemboursReunion,MontantEpargneEspere,MontantEpargneReunion,StatutRemboursement,StatutEpargne,IdMembreGl,IdReunionGl,delegation) values('"
					+ MontantRemboursEspere
					+ "','"
					+ MontantRemboursReunion
					+ "','"
					+ MontantEpargneEspere
					+ "','"
					+ MontantEpargneReunion
					+ "','"
					+ StatutRemboursement
					+ "','"
					+ StatutEpargne
					+ "','"
					+ IdMembreGl
					+ "','"
					+ IdReunionGl + "','" + Delegation + "')";
			st152000002725Ey = ConnexionBDLocal.getConnexion()
					.createStatement();
			nbr = st152000002725Ey.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st15020250RECHERCHE0120;
	ResultSet res15020250RECHERCHE0120;

	public List<WorkflowEntite> ListeInformationPresenceReunionGL(int IdReunion) {
		List<WorkflowEntite> ListeInformationPresenceReunionGL = new ArrayList<>();
		try {
			st15020250RECHERCHE0120 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select M.NomMembreGroupe,M.PostNomMembreGroupe,M.PreNomMembreGroupe,R.DateReunion,R.CycleGl,P.MontantRemboursEspere,P.MontantRemboursReunion,P.MontantEpargneEspere,P.MontantEpargneReunion,P.StatutRemboursement,P.StatutEpargne,P.delegation from reuniongl as R inner join presencereuniongl as P on R.IdReunion=P.IdReunionGl inner join membregroupe as M on M.IdClientMembre=P.IdMembreGl where P.IdReunionGl='"
					+ IdReunion + "' order by M.NomMembreGroupe asc";
			res15020250RECHERCHE0120 = st15020250RECHERCHE0120
					.executeQuery(req);
			while (res15020250RECHERCHE0120.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDatereunionpresencegl(res15020250RECHERCHE0120
						.getString("R.DateReunion"));
				wk.setMontantremboursesperegl(res15020250RECHERCHE0120
						.getDouble("P.MontantRemboursEspere"));
				wk.setMontantepargneesperegl(res15020250RECHERCHE0120
						.getDouble("P.MontantEpargneEspere"));
				wk.setMontantremboursreuniongl(res15020250RECHERCHE0120
						.getDouble("P.MontantRemboursReunion"));
				wk.setMontantepargnereuniongl(res15020250RECHERCHE0120
						.getDouble("P.MontantEpargneReunion"));
				wk.setStatutremboursementgl(res15020250RECHERCHE0120
						.getString("P.StatutRemboursement"));
				wk.setStatutepargnegl(res15020250RECHERCHE0120
						.getString("P.StatutEpargne"));
				wk.setNomsmgl(res15020250RECHERCHE0120
						.getString("M.NomMembreGroupe")
						+ " "
						+ res15020250RECHERCHE0120
								.getString("M.PostNomMembreGroupe")
						+ " "
						+ res15020250RECHERCHE0120
								.getString("M.PreNomMembreGroupe"));
				wk.setCyclegprreuniongl(res15020250RECHERCHE0120
						.getInt("R.CycleGl"));
				wk.setDelegationreuniongl(res15020250RECHERCHE0120
						.getString("P.delegation"));
				ListeInformationPresenceReunionGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationPresenceReunionGL;
	}

	Statement stRR;
	ResultSet resRR;

	public int NbrRemboursementRater(int IdMembreGl, int cycle) {
		int NbrRemboursementRater = 0;
		try {
			String val = "0";
			stRR = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(*) as nbr1 from presencereuniongl as pres inner join reuniongl as re on re.IdReunion=pres.IdReunionGl where re.CycleGl='"
					+ cycle
					+ "' and pres.IdMembreGl='"
					+ IdMembreGl
					+ "' and pres.StatutRemboursement='" + val + "'";
			resRR = stRR.executeQuery(req);
			while (resRR.next()) {
				NbrRemboursementRater = resRR.getInt("nbr1");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrRemboursementRater;
	}

	Statement stRR02;
	ResultSet resRR02;

	public int NbrRemboursementEpargneRater(int IdMembreGl, int cycle) {
		int NbrRemboursementEpargneRater = 0;
		try {
			String val = "0";
			stRR02 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(*) as nbr2 from presencereuniongl as pres inner join reuniongl as re on re.IdReunion=pres.IdReunionGl where re.CycleGl='"
					+ cycle
					+ "' and pres.IdMembreGl='"
					+ IdMembreGl
					+ "' and pres.StatutEpargne='" + val + "'";
			resRR02 = stRR02.executeQuery(req);
			while (resRR02.next()) {
				NbrRemboursementEpargneRater = resRR02.getInt("nbr2");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrRemboursementEpargneRater;
	}

	Statement stRR03;
	ResultSet resRR03;

	public int NbrReunionPourCeGroupe(String IDgroupeLisanga, int cycle) {
		int NbrReunionPourCeGroupe = 0;
		try {
			stRR03 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(*) as tot from reuniongl as re where re.CycleGl='"
					+ cycle
					+ "' and re.IdGroupeLisanga='"
					+ IDgroupeLisanga
					+ "'";
			resRR03 = stRR03.executeQuery(req);
			while (resRR03.next()) {
				NbrReunionPourCeGroupe = resRR03.getInt("tot");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrReunionPourCeGroupe;
	}

	Statement stRR04;
	ResultSet resRR04;

	public int NbrAbscenceReunionMembreGL(int IdMembreGl, int cycle) {
		int NbrPresenceReunionMembreGL = 0;
		try {
			stRR04 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(*) as nbrPresence from presencereuniongl as pres inner join reuniongl as re on re.IdReunion=pres.IdReunionGl where re.CycleGl='"
					+ cycle
					+ "' and pres.IdMembreGl='"
					+ IdMembreGl
					+ "' and (pres.delegation='Oui' or pres.delegation='Aucun')";
			resRR04 = stRR04.executeQuery(req);
			while (resRR04.next()) {
				NbrPresenceReunionMembreGL = resRR04.getInt("nbrPresence");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrPresenceReunionMembreGL;
	}

	Statement st1421994;
	ResultSet res1421994;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyse(
			String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyse = new ArrayList<>();
		try {
			st1421994 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(dcr.MontantDemande)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxAnalyse)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where br.LibelleBranche='"
					+ Branche
					+ "' and dcr.EtatDossierCredit='Analyse' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994 = st1421994.executeQuery(req);
			while (res1421994.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994
						.getString("us.NomsUser"));
				wk.setNombre(res1421994.getLong("nbr"));
				wk.setVolume(res1421994.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyse
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyse;
	}

	Statement st1421994b;
	ResultSet res1421994b;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComite(
			String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComite = new ArrayList<>();
		try {
			st1421994b = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(prop.MontantProp)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxComite)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit where br.LibelleBranche='"
					+ Branche
					+ "' and dcr.EtatDossierCredit='Comite' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994b = st1421994b.executeQuery(req);
			while (res1421994b.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994b
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994b
						.getString("us.NomsUser"));
				wk.setNombre(res1421994b.getLong("nbr"));
				wk.setVolume(res1421994b.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994b
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComite
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComite;
	}

	Statement st1421994bb;
	ResultSet res1421994bb;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminer(
			String Branche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminer = new ArrayList<>();
		try {
			st1421994bb = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(com.MontantCreditValider)as vol,AVG(DATEDIFF(dcr.DtFluxTermine,dcr.DtFluxCreation)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where br.LibelleBranche='"
					+ Branche
					+ "' and dcr.EtatDossierCredit='Terminer' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994bb = st1421994bb.executeQuery(req);
			while (res1421994bb.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bb
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994bb
						.getString("us.NomsUser"));
				wk.setNombre(res1421994bb.getLong("nbr"));
				wk.setVolume(res1421994bb.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994bb
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminer
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminer;
	}

	Statement st1421994bbb;
	ResultSet res1421994bbb;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceDureeTraitementMoyen() {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceDureeTraitementMoyen = new ArrayList<>();
		try {
			st1421994bbb = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select br.LibelleBranche,count(us.NomsUser) as nbr,sum(com.MontantCreditValider)as vol,AVG(DATEDIFF(dcr.DtFluxTermine,dcr.DtFluxCreation)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where dcr.EtatDossierCredit='Terminer' group by br.LibelleBranche order by br.LibelleBranche asc";
			res1421994bbb = st1421994bbb.executeQuery(req);
			while (res1421994bbb.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setAgencedossieril(res1421994bbb
						.getString("br.LibelleBranche"));
				wk.setNombre(res1421994bbb.getLong("nbr"));
				wk.setVolume(res1421994bbb.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994bbb
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceDureeTraitementMoyen
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceDureeTraitementMoyen;
	}

	Statement st3600;

	public int ModificationCautionDansComiteIL(String NumDossierCreditIL,
			double NouvelleValeurCaution) {
		int nbrLigne = 0;
		try {
			String req = "update comite set Caution='" + NouvelleValeurCaution
					+ "' where NumDossierCre='" + NumDossierCreditIL + "'";
			st3600 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st3600.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st36000;

	public int ModificationTauxCautionModifierDansComiteIL(
			String NumDossierCreditIL, double NouvelleValeurTauxCaution) {
		int nbrLigne = 0;
		try {
			String req = "update comite set TauxCautionModifier='"
					+ NouvelleValeurTauxCaution + "' where NumDossierCre='"
					+ NumDossierCreditIL + "'";
			st36000 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st36000.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st2400;
	ResultSet res2400;

	public List<WorkflowEntite> ListeSCMicropopAll() {
		List<WorkflowEntite> ListePromoteur = new ArrayList<>();
		try {
			String ProfilAC = "SC";
			String req = "select distinct NomsUser from user where ProfilUser='"
					+ ProfilAC + "' and Statut='Actif' order by NomsUser asc";
			st2400 = ConnexionBDLocal.getConnexion().createStatement();
			res2400 = st2400.executeQuery(req);
			while (res2400.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res2400.getString("NomsUser"));
				ListePromoteur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListePromoteur;
	}

	Statement st12000;
	ResultSet res12000;

	public List<WorkflowEntite> ListeSuperviseurMicropopAll() {
		List<WorkflowEntite> ListeSuperviseur = new ArrayList<>();
		try {
			String ProfilSuperviseur = "SUP";
			String req = "select distinct NomsUser from user where ProfilUser='"
					+ ProfilSuperviseur
					+ "' and Statut='Actif' order by NomsUser asc";
			st12000 = ConnexionBDLocal.getConnexion().createStatement();
			res12000 = st12000.executeQuery(req);
			while (res12000.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res12000.getString("NomsUser"));
				ListeSuperviseur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeSuperviseur;
	}

	Statement st24000;
	ResultSet res24000;

	public List<WorkflowEntite> ListeBMMicropopAll() {
		List<WorkflowEntite> ListePromoteur = new ArrayList<>();
		try {
			String ProfilAC = "BM";
			String req = "select distinct NomsUser from user where ProfilUser='"
					+ ProfilAC + "' and Statut='Actif' order by NomsUser asc";
			st24000 = ConnexionBDLocal.getConnexion().createStatement();
			res24000 = st24000.executeQuery(req);
			while (res24000.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLibelleuser(res24000.getString("NomsUser"));
				ListePromoteur.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListePromoteur;
	}

	Statement st29000;
	ResultSet res29000;

	public int GetIDUserViaNomsUser(String NomsUsers) {
		int IDUserViaNomsUser = 0;
		try {
			String req = "select Iduser from user where NomsUser='" + NomsUsers
					+ "'";
			st29000 = ConnexionBDLocal.getConnexion().createStatement();
			res29000 = st29000.executeQuery(req);
			while (res29000.next()) {
				IDUserViaNomsUser = res29000.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IDUserViaNomsUser;
	}

	Statement st1994X;
	ResultSet res19940X;

	public List<String> GetListeNumDossierAnalyse(int IdUserATransferer) {
		List<String> ListeNumDossierAnalyse = new ArrayList<>();
		try {
			st1994X = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit from dossiercredit as dcr inner join assignationdossiercredit as aff on dcr.NumDossierCredit=aff.NumDossierCre inner join user as us on us.Iduser=aff.IDAnalysteDossierCredit where dcr.EtatDossierCredit='Analyse' and us.Iduser='"
					+ IdUserATransferer + "' order by us.Iduser asc";
			res19940X = st1994X.executeQuery(req);
			while (res19940X.next()) {
				String doss = new String();
				doss = res19940X.getString("dcr.NumDossierCredit");
				ListeNumDossierAnalyse.add(doss);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeNumDossierAnalyse;
	}

	Statement st1994XX;

	public void TransfererDossier(int IdUserDestination,
			String numDossierAtransferer, int idbranche, int idSup, int idbm) {
		try {
			st1994XX = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update assignationdossiercredit set IDAnalysteDossierCredit='"
					+ IdUserDestination
					+ "',IDBranche='"
					+ idbranche
					+ "',IDsuperviseur='"
					+ idSup
					+ "',IDAssignateur='"
					+ idbm
					+ "' where NumDossierCre='" + numDossierAtransferer + "'";
			st1994XX.execute(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	Statement st1994XXx10;

	public void UpdateInitialisateurDossierIL(String numDossierAtransferer,
			int idInitialisateur, String ACDestination) {
		try {
			st1994XXx10 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update dossiercredit set DossierinitiePar='"
					+ idInitialisateur + "',analyste='" + ACDestination
					+ "' where NumDossierCredit='" + numDossierAtransferer
					+ "'";
			st1994XXx10.execute(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	Statement st1994XXx100;

	public void UpdateStatutUserTransfert(int IdUserQuiTransfert) {
		try {
			st1994XXx100 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update user set Statut='Non-Actif' where Iduser='"
					+ IdUserQuiTransfert + "'";
			st1994XXx100.execute(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	Statement st1994XK;
	ResultSet res19940XK;

	public String GetStatutUser(int IdUser) {
		String StatutUser = "";
		try {
			st1994XK = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Statut from user where Iduser='" + IdUser
					+ "'";
			res19940XK = st1994XK.executeQuery(req);
			while (res19940XK.next()) {
				StatutUser = res19940XK.getString("Statut");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return StatutUser;
	}

	Statement st1994XXx2025;

	public int EnregistrementProduitCreditIL(String Description,
			double MontantMin, double MontantMax, double TauxInteret,
			double FraisDossier, double Caution, double TauxInteretM) {
		int nbr = 0;
		try {
			st1994XXx2025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into paramproduitcredit(Description,MontantMin,MontantMax,TauxInteret,FraisDossier,Caution,TauxInteretM) values( '"
					+ Description
					+ "','"
					+ MontantMin
					+ "','"
					+ MontantMax
					+ "','"
					+ TauxInteret
					+ "','"
					+ FraisDossier
					+ "','"
					+ Caution + "','" + TauxInteretM + "')";
			nbr = st1994XXx2025.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XKA;
	ResultSet rest1994XKA;

	public List<WorkflowEntite> GetListeProduitCreditValider() {
		List<WorkflowEntite> ListeProduitCreditValider = new ArrayList<>();
		try {
			st1994XKA = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from paramproduitcredit order by Id asc";
			rest1994XKA = st1994XKA.executeQuery(req);
			while (rest1994XKA.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdproduitcreditvalide(rest1994XKA.getInt("Id"));
				wk.setDescriptionproduitcreditvalide(rest1994XKA
						.getString("Description"));
				wk.setMontantminproduitcreditvalider(rest1994XKA
						.getDouble("MontantMin"));
				wk.setMontantmaxproduitcreditvalider(rest1994XKA
						.getDouble("MontantMax"));
				wk.setTauxinteretmproduitcreditvaliderok(rest1994XKA
						.getDouble("TauxInteret"));
				wk.setTauxinteretproduitcreditvalider(rest1994XKA
						.getDouble("TauxInteretM"));
				wk.setFraisdossierproduitcreditvalider(rest1994XKA
						.getDouble("FraisDossier"));
				wk.setCautionproduitcreditvalider(rest1994XKA
						.getDouble("Caution"));
				ListeProduitCreditValider.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeProduitCreditValider;
	}

	Statement st1994XKA0;
	ResultSet rest1994XKA0;

	public List<WorkflowEntite> GetListeProduitCreditValiderViaID(int id) {
		List<WorkflowEntite> ListeProduitCreditValider = new ArrayList<>();
		try {
			st1994XKA0 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from paramproduitcredit where Id='" + id
					+ "'";
			rest1994XKA0 = st1994XKA0.executeQuery(req);
			while (rest1994XKA0.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdproduitcreditvalide(rest1994XKA0.getInt("Id"));
				wk.setDescriptionproduitcreditvalide(rest1994XKA0
						.getString("Description"));
				wk.setMontantminproduitcreditvalider(rest1994XKA0
						.getDouble("MontantMin"));
				wk.setMontantmaxproduitcreditvalider(rest1994XKA0
						.getDouble("MontantMax"));
				wk.setTauxinteretmproduitcreditvaliderok(rest1994XKA0
						.getDouble("TauxInteret"));
				wk.setTauxinteretproduitcreditvalider(rest1994XKA0
						.getDouble("TauxInteretM"));
				wk.setFraisdossierproduitcreditvalider(rest1994XKA0
						.getDouble("FraisDossier"));
				wk.setCautionproduitcreditvalider(rest1994XKA0
						.getDouble("Caution"));
				ListeProduitCreditValider.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeProduitCreditValider;
	}

	Statement st1994XXx10025;

	public int UpdateProduitCredit(int id, String Description,
			double MontantMin, double MontantMax, double TauxInteret,
			double FraisDossier, double Caution, double TauxInteretM) {
		int nbr = 0;
		try {
			st1994XXx10025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update paramproduitcredit set Description='"
					+ Description + "',MontantMin='" + MontantMin
					+ "',MontantMax='" + MontantMax + "',TauxInteret='"
					+ TauxInteret + "',FraisDossier='" + FraisDossier
					+ "',Caution='" + Caution + "',TauxInteretM='"
					+ TauxInteretM + "' where Id='" + id + "'";
			nbr = st1994XXx10025.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XXx1000;

	public int EnregistrementBrancheMicropopSA(String LibelleBranche,
			String AdresseBranche, String Telephone, String Province,
			String ResponsableAgence) {
		int nbr = 0;
		try {
			st1994XXx1000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into branche(LibelleBranche,AdresseBranche,Telephone,Province,ResponsableAgence) values('"
					+ LibelleBranche
					+ "','"
					+ AdresseBranche
					+ "','"
					+ Telephone
					+ "','"
					+ Province
					+ "','"
					+ ResponsableAgence
					+ "')";
			nbr = st1994XXx1000.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XXx10000;

	public int UpdateBrancheMicropopSA(int IdBranche, String LibelleBranche,
			String AdresseBranche, String Telephone, String Province,
			String ResponsableAgence) {
		int nbr = 0;
		try {
			st1994XXx10000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update branche set LibelleBranche='" + LibelleBranche
					+ "',AdresseBranche='" + AdresseBranche + "',Telephone='"
					+ Telephone + "',Province='" + Province
					+ "',ResponsableAgence='" + ResponsableAgence
					+ "' where IdBranche='" + IdBranche + "'";
			nbr = st1994XXx10000.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XKA00;
	ResultSet rest1994XKA00;

	public List<WorkflowEntite> GetListeListeBrancheMCPOPAll() {
		List<WorkflowEntite> ListeListeBrancheMCPOPAll = new ArrayList<>();
		try {
			st1994XKA00 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from branche order by LibelleBranche asc";
			rest1994XKA00 = st1994XKA00.executeQuery(req);
			while (rest1994XKA00.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbranchemcpop2025(rest1994XKA00.getInt("IdBranche"));
				wk.setLibellebranchemcpop2025(rest1994XKA00
						.getString("LibelleBranche"));
				wk.setAdressebranchemcpop2025(rest1994XKA00
						.getString("AdresseBranche"));
				wk.setTelephonemcpop2025(rest1994XKA00.getString("Telephone"));
				wk.setProvincemcpop2025(rest1994XKA00.getString("Province"));
				wk.setResponsableagencemcpop2025(rest1994XKA00
						.getString("ResponsableAgence"));
				ListeListeBrancheMCPOPAll.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeListeBrancheMCPOPAll;
	}

	Statement st1994XKA0000;
	ResultSet rest1994XKA0000;

	public List<WorkflowEntite> GetListeListeBrancheMCPOPViaIDBranche(int id) {
		List<WorkflowEntite> ListeListeBrancheMCPOPAll = new ArrayList<>();
		try {
			st1994XKA0000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from branche where IdBranche='" + id + "'";
			rest1994XKA0000 = st1994XKA0000.executeQuery(req);
			while (rest1994XKA0000.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbranchemcpop2025(rest1994XKA0000.getInt("IdBranche"));
				wk.setLibellebranchemcpop2025(rest1994XKA0000
						.getString("LibelleBranche"));
				wk.setAdressebranchemcpop2025(rest1994XKA0000
						.getString("AdresseBranche"));
				wk.setTelephonemcpop2025(rest1994XKA0000.getString("Telephone"));
				wk.setProvincemcpop2025(rest1994XKA0000.getString("Province"));
				wk.setResponsableagencemcpop2025(rest1994XKA0000
						.getString("ResponsableAgence"));
				ListeListeBrancheMCPOPAll.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeListeBrancheMCPOPAll;
	}

	Statement st1994XXx10027;

	public int EnregistrementAssuranceCredit(double tauxAfriSur,
			double tauxRawSur) {
		int nbr = 0;
		try {
			st1994XXx10027 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into parametrageassurance(TauxAssuranceAfrisur,TauxAssuranceRawSur) values('"
					+ tauxAfriSur + "','" + tauxRawSur + "')";
			nbr = st1994XXx10027.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XXx100270;

	public int UpdateAssuranceCredit(int id, double tauxAfriSur,
			double tauxRawSur) {
		int nbr = 0;
		try {
			st1994XXx100270 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update parametrageassurance set TauxAssuranceAfrisur='"
					+ tauxAfriSur
					+ "',TauxAssuranceRawSur='"
					+ tauxRawSur
					+ "' where ID='" + id + "'";
			nbr = st1994XXx100270.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XKA004;
	ResultSet rest1994XKA004;

	public List<WorkflowEntite> GetListeAssuranceAll() {
		List<WorkflowEntite> ListeAssuranceAll = new ArrayList<>();
		try {
			st1994XKA004 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from parametrageassurance";
			rest1994XKA004 = st1994XKA004.executeQuery(req);
			while (rest1994XKA004.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdassurancetaux(rest1994XKA004.getInt("ID"));
				wk.setTauxassuranceafrisur(rest1994XKA004
						.getDouble("TauxAssuranceAfrisur"));
				wk.setTauxassurancerawsur(rest1994XKA004
						.getDouble("TauxAssuranceRawSur"));
				ListeAssuranceAll.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeAssuranceAll;
	}

	Statement st1994XKA0041;
	ResultSet rest1994XKA0041;

	public List<WorkflowEntite> GetListeAssuranceViaID(int ID) {
		List<WorkflowEntite> ListeAssuranceAll = new ArrayList<>();
		try {
			st1994XKA0041 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from parametrageassurance where ID='" + ID
					+ "'";
			rest1994XKA0041 = st1994XKA0041.executeQuery(req);
			while (rest1994XKA0041.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdassurancetaux(rest1994XKA0041.getInt("ID"));
				wk.setTauxassuranceafrisur(rest1994XKA0041
						.getDouble("TauxAssuranceAfrisur"));
				wk.setTauxassurancerawsur(rest1994XKA0041
						.getDouble("TauxAssuranceRawSur"));
				ListeAssuranceAll.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeAssuranceAll;
	}

	Statement st1994XKA0041A;
	ResultSet rest1994XKA0041A;

	public double GetTauxAfriSur() {
		double TauxAfriSur = 0;
		try {
			st1994XKA0041A = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TauxAssuranceAfrisur from parametrageassurance";
			rest1994XKA0041A = st1994XKA0041A.executeQuery(req);
			while (rest1994XKA0041A.next()) {
				TauxAfriSur = rest1994XKA0041A
						.getDouble("TauxAssuranceAfrisur");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return TauxAfriSur;
	}

	Statement st1994XKA0041AA;
	ResultSet rest1994XKA0041AA;

	public double GetTauxRawSur() {
		double TauxRawSur = 0;
		try {
			st1994XKA0041AA = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TauxAssuranceRawSur from parametrageassurance";
			rest1994XKA0041AA = st1994XKA0041AA.executeQuery(req);
			while (rest1994XKA0041AA.next()) {
				TauxRawSur = rest1994XKA0041AA.getDouble("TauxAssuranceRawSur");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return TauxRawSur;
	}

	ResultSet res1994c;
	Statement st1994c;

	public List<String> GetListeNumDossierAnalyseouComiteouVerification(
			int idAgence, String etatDossier) {
		List<String> ListeNumDossierAnalyseouComiteouVerification = new ArrayList<>();
		try {
			st1994c = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.NumDossierCredit from dossiercredit as dcr inner join assignationdossiercredit as aff on dcr.NumDossierCredit=aff.NumDossierCre where dcr.EtatDossierCredit='"
					+ etatDossier + "' and  aff.IDBranche='" + idAgence + "' ";
			res1994c = st1994c.executeQuery(req);
			while (res1994c.next()) {
				String doss = new String();
				doss = res1994c.getString("dcr.NumDossierCredit");
				ListeNumDossierAnalyseouComiteouVerification.add(doss);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeNumDossierAnalyseouComiteouVerification;
	}

	Statement st1994cc;

	public int UpdateBMTableAffectationDossierIL(String numDossierAtransferer,
			int idBmActuelAgence) {
		int nbr = 0;
		try {
			st1994cc = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update assignationdossiercredit set IDAssignateur='"
					+ idBmActuelAgence + "' where NumDossierCre='"
					+ numDossierAtransferer + "'";
			st1994cc.execute(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994cc25;

	public void EnbregistrementProductionProduitUsineFabriction(
			String LibelleProduction, int NbrUniteProduit,
			double PrixVenteParUnite, double VenteTotal, String NumeroDossierIL) {
		try {
			st1994cc25 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into production(LibelleProduction,NbrUniteProduit,PrixVenteParUnite,VenteTotal,NumeroDossierIL) values('"
					+ LibelleProduction
					+ "','"
					+ NbrUniteProduit
					+ "','"
					+ PrixVenteParUnite
					+ "','"
					+ VenteTotal
					+ "','"
					+ NumeroDossierIL + "')";
			st1994cc25.execute(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	Statement st1994cc25B;

	public int updateProductionProduitUsineFabriction(int ID,
			String LibelleProduction, int NbrUniteProduit,
			double PrixVenteParUnite, double VenteTotal, String NumeroDossierIL) {
		int n = 0;
		try {
			st1994cc25B = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update production set LibelleProduction='"
					+ LibelleProduction + "',NbrUniteProduit='"
					+ NbrUniteProduit + "',PrixVenteParUnite='"
					+ PrixVenteParUnite + "',VenteTotal='" + VenteTotal
					+ "',NumeroDossierIL='" + NumeroDossierIL
					+ "' where IdProduction='" + ID + "'";
			n = st1994cc25B.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	Statement st1994cc25SUP;

	public int DeleteProductionProduitUsineFabriction(int ID) {
		int n = 0;
		try {
			st1994cc25SUP = ConnexionBDLocal.getConnexion().createStatement();
			String req = "delete from production where IdProduction='" + ID
					+ "'";
			n = st1994cc25SUP.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	Statement st1994cc25SUPMP;

	public int DeleteProductionMPProduitUsineFabriction(int ID) {
		int n = 0;
		try {
			st1994cc25SUPMP = ConnexionBDLocal.getConnexion().createStatement();
			String req = "delete from materielproduction where IdMaterielProd='"
					+ ID + "'";
			n = st1994cc25SUPMP.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	Statement st1994c2025;
	ResultSet res1994c2025;

	public List<WorkflowEntite> GetListeProduitProductionUsineFabrication(
			String NumeroDossierIL) {
		List<WorkflowEntite> ListeProduitProductionUsineFabrication = new ArrayList<>();
		try {
			st1994c2025 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from production where NumeroDossierIL='"
					+ NumeroDossierIL + "'";
			res1994c2025 = st1994c2025.executeQuery(req);
			while (res1994c2025.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdproductionproddd(res1994c2025.getInt("IdProduction"));
				wk.setLibelleproductionproddd(res1994c2025
						.getString("LibelleProduction"));
				wk.setNbruniteproduitproddd(res1994c2025
						.getInt("NbrUniteProduit"));
				wk.setPrixventeparuniteproddd(res1994c2025
						.getDouble("PrixVenteParUnite"));
				wk.setVentetotalproddd(res1994c2025.getDouble("VenteTotal"));
				wk.setNumerodossierilproddd(res1994c2025
						.getString("NumeroDossierIL"));
				ListeProduitProductionUsineFabrication.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeProduitProductionUsineFabrication;
	}

	Statement st1994c2025BU;
	ResultSet res1994c2025BU;

	public List<WorkflowEntite> GetListeProduitProductionUsineFabricationPourModification(
			int ID) {
		List<WorkflowEntite> ListeProduitProductionUsineFabrication = new ArrayList<>();
		try {
			st1994c2025BU = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from production where IdProduction='" + ID
					+ "'";
			res1994c2025BU = st1994c2025BU.executeQuery(req);
			while (res1994c2025BU.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdproductionproddd(res1994c2025BU.getInt("IdProduction"));
				wk.setLibelleproductionproddd(res1994c2025BU
						.getString("LibelleProduction"));
				wk.setNbruniteproduitproddd(res1994c2025BU
						.getInt("NbrUniteProduit"));
				wk.setPrixventeparuniteproddd(res1994c2025BU
						.getDouble("PrixVenteParUnite"));
				wk.setVentetotalproddd(res1994c2025BU.getDouble("VenteTotal"));
				wk.setNumerodossierilproddd(res1994c2025BU
						.getString("NumeroDossierIL"));
				ListeProduitProductionUsineFabrication.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeProduitProductionUsineFabrication;
	}

	Statement st1994cc2525;

	public int EnbregistrementMatiereProduction(String LibelleMateriel,
			double PrixAchatMateriel, double CoutTotal, int IdProduction) {
		int nbr = 0;
		try {
			st1994cc2525 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into materielproduction(LibelleMatiere,PrixAchatMatiere,CoutTotal,IdProduction) values('"
					+ LibelleMateriel
					+ "','"
					+ PrixAchatMateriel
					+ "','"
					+ CoutTotal + "','" + IdProduction + "')";
			nbr = st1994cc2525.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994c2025100;
	ResultSet res1994c2025100;

	public List<WorkflowEntite> GetListeMatiereProduction(
			int idProduitProProduction) {
		List<WorkflowEntite> ListeMatiereProduction = new ArrayList<>();
		try {
			st1994c2025100 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from materielproduction where IdProduction='"
					+ idProduitProProduction + "'";
			res1994c2025100 = st1994c2025100.executeQuery(req);
			while (res1994c2025100.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdmaterielprod(res1994c2025100.getInt("IdMaterielProd"));
				wk.setLibellematiereprod(res1994c2025100
						.getString("LibelleMatiere"));
				wk.setPrixachatmatierepro(res1994c2025100
						.getDouble("PrixAchatMatiere"));
				wk.setCouttotalprod(res1994c2025100.getDouble("CoutTotal"));
				ListeMatiereProduction.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeMatiereProduction;
	}

	Statement st1994cc252500;

	public int EnbregistrementAnalyseVenteBaisse(double VenteBaisse,
			String PeriodeDebut, String PeriodeFin, String CommentaireAV,
			String NumDossierCre) {
		int nbr = 0;
		try {
			st1994cc252500 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into analysebaissevente(VenteBaisse,PeriodeDebut,PeriodeFin,CommentaireAV,NumDossierCre) values('"
					+ VenteBaisse
					+ "','"
					+ PeriodeDebut
					+ "','"
					+ PeriodeFin
					+ "','" + CommentaireAV + "','" + NumDossierCre + "')";
			nbr = st1994cc252500.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994cc252500U;

	public int UpdateAnalyseVenteBaisse(int ID, double VenteBaisse,
			String PeriodeDebut, String PeriodeFin, String CommentaireAV,
			String NumDossierCre) {
		int nbr = 0;
		try {
			st1994cc252500U = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update analysebaissevente set VenteBaisse='"
					+ VenteBaisse + "',PeriodeDebut='" + PeriodeDebut
					+ "',PeriodeFin='" + PeriodeFin + "',CommentaireAV='"
					+ CommentaireAV + "',NumDossierCre='" + NumDossierCre
					+ "' where Id='" + ID + "'";
			nbr = st1994cc252500U.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994c202510025;
	ResultSet res1994c202510025;

	public List<WorkflowEntite> GetListeInformationBaisseSaison(
			String NumDossierCre) {
		List<WorkflowEntite> ListeInformationBaisseSaison = new ArrayList<>();
		try {
			st1994c202510025 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from analysebaissevente where NumDossierCre='"
					+ NumDossierCre + "'";
			res1994c202510025 = st1994c202510025.executeQuery(req);
			while (res1994c202510025.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdventebaisse(res1994c202510025.getInt("Id"));
				wk.setVentebaisse(res1994c202510025.getDouble("VenteBaisse"));
				wk.setPeriodedebutbaisse(res1994c202510025
						.getString("PeriodeDebut"));
				wk.setPeriodefinbaisse(res1994c202510025
						.getString("PeriodeFin"));
				wk.setCommentairebaisse(res1994c202510025
						.getString("CommentaireAV"));
				ListeInformationBaisseSaison.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInformationBaisseSaison;
	}

	Statement st2050;
	ResultSet res2050;

	public double GetChiffreAffaireBaisseSaison(String numDossierCre) {
		double ChiffreAffaireBaisseSaison = 0;
		try {
			st2050 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select VenteBaisse from analysebaissevente where NumDossierCre='"
					+ numDossierCre + "'";
			res2050 = st2050.executeQuery(req);
			while (res2050.next()) {
				ChiffreAffaireBaisseSaison = res2050.getDouble("VenteBaisse");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ChiffreAffaireBaisseSaison;
	}

	public double CalculCoutMarchandiseVendueBaisseSaison(int idclientd,
			String NumDossierCre) {
		List<WorkflowEntite> ListeStockPrincipal = new ArrayList<>();
		double CoutMarchandiseVendue = 0;
		double ChiffreAffairesVentes = 0;
		double B = 0;
		double sommeMarge = 0;
		int nbr = 0;
		try {
			ListeStockPrincipal = ListeStockPrincipalBusiness1(NumDossierCre,
					idclientd);
			nbr = ListeStockPrincipal.size();

			if (nbr > 0) {

				for (WorkflowEntite wf : ListeStockPrincipal) {
					sommeMarge = sommeMarge + wf.getMargestockprincipaux();
				}
				B = sommeMarge / nbr;
				// ChiffreAffairesVentes =
				// CalculChiffreAffairesVentes(idclientd,
				// NumDossierCre);
				ChiffreAffairesVentes = GetChiffreAffaireBaisseSaison(NumDossierCre);
				CoutMarchandiseVendue = ChiffreAffairesVentes * (1 - B);
			} else {
				// ChiffreAffairesVentes =
				// CalculChiffreAffairesVentes(idclientd,
				// NumDossierCre);
				// CoutMarchandiseVendue = ChiffreAffairesVentes;
				CoutMarchandiseVendue = 0;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return CoutMarchandiseVendue;
	}

	Statement st1994cc2525000;

	public int EnbregistrementAnalyseSWOT(String Force, String Opportunite,
			String Faiblesse, String Menace, String NumDossierCre) {
		int nbr = 0;
		try {
			st1994cc2525000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "insert into analyseswot(`Force`,Opportunite,Faiblesse,Menace,NumDossierCre) values('"
					+ Force
					+ "','"
					+ Opportunite
					+ "','"
					+ Faiblesse
					+ "','"
					+ Menace + "','" + NumDossierCre + "')";
			nbr = st1994cc2525000.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994cc2525000B;

	public int UpdateAnalyseSWOT(int ID, String Force, String Opportunite,
			String Faiblesse, String Menace, String NumDossierCre) {
		int nbr = 0;
		try {
			st1994cc2525000B = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "update analyseswot set `Force`='" + Force
					+ "',Opportunite='" + Opportunite + "',Faiblesse='"
					+ Faiblesse + "',Menace='" + Menace + "',NumDossierCre='"
					+ NumDossierCre + "' where IdSwot='" + ID + "'";
			nbr = st1994cc2525000B.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994c2025100256;
	ResultSet res1994c2025100256;

	public List<WorkflowEntite> GetListeInformationAnalyseSWot(
			String NumDossierCre) {
		List<WorkflowEntite> ListeInformationAnalyseSWot = new ArrayList<>();
		try {
			st1994c2025100256 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from analyseswot where NumDossierCre='"
					+ NumDossierCre + "'";
			res1994c2025100256 = st1994c2025100256.executeQuery(req);
			while (res1994c2025100256.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdswot(res1994c2025100256.getInt("IdSwot"));
				wk.setForce(res1994c2025100256.getString("Force"));
				wk.setOpportunite(res1994c2025100256.getString("Opportunite"));
				wk.setFaiblesse(res1994c2025100256.getString("Faiblesse"));
				wk.setMenace(res1994c2025100256.getString("Menace"));
				ListeInformationAnalyseSWot.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInformationAnalyseSWot;
	}

	Statement st1994c20251002560;
	ResultSet res1994c20251002560;

	public double GetChiffreAffaireProductionAmeliorer(String NumDossierCre) {
		double ChiffreAffaireProductionAmeliorer = 0;
		try {
			st1994c20251002560 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select sum(prod.VenteTotal) as sommes from production as prod inner join dossiercredit as dosscre on prod.NumeroDossierIL=dosscre.NumDossierCredit where prod.NumeroDossierIL='"
					+ NumDossierCre + "'";
			res1994c20251002560 = st1994c20251002560.executeQuery(req);
			while (res1994c20251002560.next()) {
				ChiffreAffaireProductionAmeliorer = res1994c20251002560
						.getDouble("sommes");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ChiffreAffaireProductionAmeliorer;
	}

	Statement st1994c20251002560Cout;
	ResultSet res1994c20251002560Cout;

	public double GetCAMVProductionAmeliorer(String NumDossierCre) {
		double CAMVProductionAmeliorer = 0;
		try {
			st1994c20251002560Cout = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select sum(mp.CoutTotal) as sommes from production as prod inner join dossiercredit as dosscre on prod.NumeroDossierIL=dosscre.NumDossierCredit inner join materielproduction as mp on prod.IdProduction=mp.IdProduction where prod.NumeroDossierIL='"
					+ NumDossierCre + "'";
			res1994c20251002560Cout = st1994c20251002560Cout.executeQuery(req);
			while (res1994c20251002560Cout.next()) {
				CAMVProductionAmeliorer = res1994c20251002560Cout
						.getDouble("sommes");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CAMVProductionAmeliorer;
	}

	public double GetMensualite(double MontantPropose, int echeanceMois,
			String ProduitCreditProposition) {
		double AA = 0;
		try {

			if (MontantPropose == 0) {
				AA = 0;
			} else {
				int idproduitCredit = this
						.GetIDProduitCreditViaDescription(ProduitCreditProposition
								.replace("'", "''"));
				double tauxInteret = this
						.GetTauxInteretProduitCreditPourEcheance(idproduitCredit) / 100;
				// AA = (MontantPropose
				// * (Math.pow(1 + tauxInteret, echeanceMois)) * echeanceMois)
				// / (Math.pow(1 + tauxInteret, echeanceMois) - 1);
				AA = MontantPropose
						* (tauxInteret * Math
								.pow(1 + tauxInteret, echeanceMois))
						/ (Math.pow(1 + tauxInteret, echeanceMois) - 1);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return AA;
	}

	Statement st22626;
	ResultSet res22626;

	public int GetIDProposiionViaNumDossier(String NumDossier) {
		int IDProposiionViaNumDossier = 0;
		try {
			st22626 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id from proposition where NumDossierCre='"
					+ NumDossier + "'";
			res22626 = st22626.executeQuery(req);
			while (res22626.next()) {
				IDProposiionViaNumDossier = res22626.getInt("Id");
			}
		} catch (Exception ex) {
		}
		return IDProposiionViaNumDossier;
	}

	Statement st1994cc252500023;

	public int ModificationProposition(int id, String ProduitCreditProp,
			int MontantProp, int EcheanceProp, String NumDossierCre,
			String commentaireProp, double MensualiteProp) {
		int nbr = 0;
		try {
			st1994cc252500023 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "update proposition set ProduitCreditProp='"
					+ ProduitCreditProp + "',MontantProp='" + MontantProp
					+ "',EcheanceProp='" + EcheanceProp + "',NumDossierCre='"
					+ NumDossierCre + "',commentaireProp='" + commentaireProp
					+ "',MensualiteProp='" + MensualiteProp + "' where Id='"
					+ id + "'";
			nbr = st1994cc252500023.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st226261994;
	ResultSet res226261994;

	public String GetNomsClientAdbanking(int IdClient) {
		String NomsClientAdbanking = "";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st226261994 = cnx.createStatement();
			String req = "select pp_nom noms from ad_cli where id_client='"
					+ IdClient + "'";
			res226261994 = st226261994.executeQuery(req);
			while (res226261994.next()) {
				NomsClientAdbanking = res226261994.getString("noms");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res226261994 != null)
					res226261994.close();
			} catch (Exception e) {
			}
			try {
				if (st226261994 != null)
					st226261994.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return NomsClientAdbanking.trim();
	}

	Statement st226261994Radier;
	ResultSet res226261994Radier;

	public int GetCheckSiClientRadier(int IdClient) {
		int idclientSiRadier = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st226261994Radier = cnx.createStatement();
			// String req =
			// "SELECT b.id_client client FROM ad_dcr a JOIN ad_cli b ON b.id_client = a.id_client JOIN ad_etr e ON e.id_doss = a.id_doss JOIN adsys_niveau_agence n ON n.id = b.n_agence AND n.id_ag = b.id_ag JOIN adsys_produit_credit pr ON pr.id = a.id_prod AND pr.id_ag = a.id_ag WHERE a.etat = 9 AND e.remb = 'f' AND b.id_client='"
			// + IdClient + "'";
			String req = "SELECT a.id_doss,b.id_client clientop,b.pp_nom || ' ' || b.pp_prenom AS nom,b.num_tel AS telephone,b.adresse AS Adresse,pr.libel AS Produitcredit,(SELECT gi_nom FROM ad_cli WHERE id_client IN (SELECT id_grp_sol FROM ad_grp_sol WHERE id_membre = b.id_client) LIMIT 1) AS NomGroupe,n.libelle_niveau AS Agence,(SELECT SUM(e.solde_cap) FROM ad_etr e WHERE e.id_doss = a.id_doss) AS Encours,(SELECT SUM(e.solde_int) FROM ad_etr e WHERE e.id_doss =a.id_doss) AS Interet,(SELECT SUM(e.solde_pen) FROM ad_etr e WHERE e.id_doss = a.id_doss) AS Penalites,n.libelle_niveau AS Agence FROM ad_dcr a JOIN ad_cli b ON b.id_client =a.id_client JOIN ad_etr e ON e.id_doss = a.id_doss JOIN adsys_niveau_agence n ON n.id = b.n_agence AND n.id_ag = b.id_ag JOIN adsys_produit_credit pr ON pr.id = a.id_prod AND pr.id_ag =a.id_ag WHERE a.etat = 9 AND e.remb = 'f' AND b.id_client='"
					+ IdClient
					+ "' GROUP BY a.id_doss,b.id_client,b.pp_nom,b.pp_prenom,b.num_tel,b.adresse,pr.libel,n.libelle_niveau ORDER BY a.id_doss";
			res226261994Radier = st226261994Radier.executeQuery(req);
			while (res226261994Radier.next()) {
				idclientSiRadier = res226261994Radier.getInt("clientop");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res226261994Radier != null)
					res226261994Radier.close();
			} catch (Exception e) {
			}
			try {
				if (st226261994Radier != null)
					st226261994Radier.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return idclientSiRadier;
	}

	Statement st226261994Encours;
	ResultSet res226261994Encours;

	public int GetCheckSiClientEncour(int IdClient) {
		int idclientSiEncour = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st226261994Encours = cnx.createStatement();
			// String req =
			// "SELECT b.id_client client FROM ad_dcr a JOIN ad_cli b ON b.id_client = a.id_client JOIN ad_etr e ON e.id_doss = a.id_doss JOIN adsys_niveau_agence n ON n.id = b.n_agence AND n.id_ag = b.id_ag JOIN adsys_produit_credit pr ON pr.id = a.id_prod AND pr.id_ag = a.id_ag WHERE a.etat = 9 AND e.remb = 'f' AND b.id_client='"
			// + IdClient + "'";
			String req = "SELECT a.id_doss,b.id_client clientop,b.pp_nom || ' ' || b.pp_prenom AS nom,b.num_tel AS telephone,b.adresse AS Adresse,pr.libel AS Produit_credit,(SELECT gi_nom FROM ad_cli WHERE id_client IN (SELECT id_grp_sol FROM ad_grp_sol WHERE id_membre = b.id_client) LIMIT 1) AS NomduGroupe,n.libelle_niveau AS Agence,(SELECT SUM(e.solde_cap) FROM ad_etr e WHERE e.id_doss = a.id_doss) AS Encours,(SELECT SUM(e.solde_int) FROM ad_etr e WHERE e.id_doss =a.id_doss) AS Interet,(SELECT SUM(e.solde_pen) FROM ad_etr e WHERE e.id_doss = a.id_doss) AS Penalites,n.libelle_niveau AS Agence FROM ad_dcr a JOIN ad_cli b ON b.id_client =a.id_client JOIN ad_etr e ON e.id_doss = a.id_doss JOIN adsys_niveau_agence n ON n.id = b.n_agence AND n.id_ag = b.id_ag JOIN adsys_produit_credit pr ON pr.id = a.id_prod AND pr.id_ag =a.id_ag WHERE a.id_prod NOT IN (11) and a.etat = 5 AND e.remb = 'f' AND b.id_client='"
					+ IdClient
					+ "' GROUP BY a.id_doss,b.id_client,b.pp_nom,b.pp_prenom,b.num_tel,b.adresse,pr.libel,n.libelle_niveau ORDER BY a.id_doss";
			res226261994Encours = st226261994Encours.executeQuery(req);
			while (res226261994Encours.next()) {
				idclientSiEncour = res226261994Encours.getInt("clientop");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res226261994Encours != null)
					res226261994Encours.close();
			} catch (Exception e) {
			}
			try {
				if (st226261994Encours != null)
					st226261994Encours.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return idclientSiEncour;
	}

	Statement st22626KAO;
	ResultSet res22626KAO;

	public String GetIDDossierCreditEncourTraitementWFViaNumCbsClient(
			int idclientCbs) {
		String IDDossierCreditEncourTraitementWFViaNumCbsClient = "";
		try {
			st22626KAO = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select doss.NumDossierCredit from dossiercredit as doss inner join clientd as cli on doss.IdClientD=cli.idclient where cli.IdCbsCli='"
					+ idclientCbs
					+ "' and (doss.EtatDossierCredit='Creation'|| doss.EtatDossierCredit='Assignation' || doss.EtatDossierCredit='Analyse' || doss.EtatDossierCredit='Comite' || doss.EtatDossierCredit='Verification' || doss.EtatDossierCredit='Postage'|| doss.EtatDossierCredit='Terminer' || doss.EtatDossierCredit='Rejeter')";
			res22626KAO = st22626KAO.executeQuery(req);
			while (res22626KAO.next()) {
				IDDossierCreditEncourTraitementWFViaNumCbsClient = res22626KAO
						.getString("doss.NumDossierCredit");
			}
		} catch (Exception ex) {
		}
		return IDDossierCreditEncourTraitementWFViaNumCbsClient;
	}

	Statement st22626KAO2;
	ResultSet res22626KAO2;

	public int GetIDDossierCreditGLEncourTraitementWFViaNumCbsClient(
			int idclientCbs) {
		int IDDossierCreditGLEncourTraitementWFViaNumCbsClient = 0;
		try {
			st22626KAO2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dos.NumDossierGL from membregroupe as m inner join dossiercreditgl as dos on m.IdClientMembre=dos.IdMembreGL inner join groupegl as gl on gl.Id=m.IdGroupeLisanga where m.NumClientMembreCbs='"
					+ idclientCbs
					+ "' and (dos.EtatDossierGL='Creation' || dos.EtatDossierGL='Analyse' || dos.EtatDossierGL='Evaluation' || dos.EtatDossierGL='Comite' || dos.EtatDossierGL='Verification' || dos.EtatDossierGL='Postage')";
			res22626KAO2 = st22626KAO2.executeQuery(req);
			while (res22626KAO2.next()) {
				IDDossierCreditGLEncourTraitementWFViaNumCbsClient = res22626KAO2
						.getInt("dos.NumDossierGL");
			}
		} catch (Exception ex) {
		}
		return IDDossierCreditGLEncourTraitementWFViaNumCbsClient;
	}

	Statement st22626KAO25;
	ResultSet res22626KAO25;

	public int GetDetteCourtTermeClientVIaNumDossier(String NumDossier) {
		int DetteCourtTermeClientVIaNumDossier = 0;
		try {
			st22626KAO25 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select DetteCourTerme from businessoneactifdette where NumDossierCre='"
					+ NumDossier + "'";
			res22626KAO25 = st22626KAO25.executeQuery(req);
			while (res22626KAO25.next()) {
				DetteCourtTermeClientVIaNumDossier = res22626KAO25
						.getInt("DetteCourTerme");
			}
		} catch (Exception ex) {
		}
		return DetteCourtTermeClientVIaNumDossier;
	}

	Statement st22626KAO25EP;
	ResultSet res22626KAO25EP;

	public double GetTotalPayerInfoFinanciere(int NumDossier) {
		double TotalPayerInfoFinanciere = 0;
		try {
			st22626KAO25EP = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TotalApayerGL from informationfinanciereclientgl where IdDossierClientGL='"
					+ NumDossier + "'";
			res22626KAO25EP = st22626KAO25EP.executeQuery(req);
			while (res22626KAO25EP.next()) {
				TotalPayerInfoFinanciere = res22626KAO25EP
						.getDouble("TotalApayerGL");
			}
		} catch (Exception ex) {
		}
		return TotalPayerInfoFinanciere;
	}

	Statement st22626KAO25EP01;
	ResultSet res22626KAO25EP01;

	public double GetEpargneAPayerReunionInfoFinanciere(int NumDossier) {
		double EpargneAPayerReunionInfoFinanciere = 0;
		try {
			st22626KAO25EP01 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select EpargneGL from informationfinanciereclientgl where IdDossierClientGL='"
					+ NumDossier + "'";
			res22626KAO25EP01 = st22626KAO25EP01.executeQuery(req);
			while (res22626KAO25EP01.next()) {
				EpargneAPayerReunionInfoFinanciere = res22626KAO25EP01
						.getDouble("EpargneGL");
			}
		} catch (Exception ex) {
		}
		return EpargneAPayerReunionInfoFinanciere;
	}

	Statement st1994IF;

	public int ModificationInfoFin(int IDdossierGL, double MontantModif,
			double TotalRemboursement, double Remboursement, double epargne,
			double TotalApayerGL) {
		int nbr = 0;
		try {
			st1994IF = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update informationfinanciereclientgl set MontantPretGL='"
					+ MontantModif
					+ "',RemboursementGL='"
					+ Remboursement
					+ "',TotalRemboursementGL='"
					+ TotalRemboursement
					+ "',EpargneGL='"
					+ epargne
					+ "',TotalApayerGL='"
					+ TotalApayerGL
					+ "' where IdDossierClientGL='"
					+ IDdossierGL + "'";
			nbr = st1994IF.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st22626KAO25EPC;
	ResultSet res22626KAO25EPC;

	public int GetCycleDossierGL(int NumDossierGL) {
		int CycleDossierGL = 0;
		try {
			st22626KAO25EPC = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select CycleGL from dossiercreditgl where NumDossierGL='"
					+ NumDossierGL + "'";
			res22626KAO25EPC = st22626KAO25EPC.executeQuery(req);
			while (res22626KAO25EPC.next()) {
				CycleDossierGL = res22626KAO25EPC.getInt("CycleGL");
			}
		} catch (Exception ex) {
		}
		return CycleDossierGL;
	}

	Statement st1994c202510025600;
	ResultSet res1994c202510025600;

	public List<WorkflowEntite> GetListeInformationGroupeLisanga(
			String LibelleGroupe, int numGpCbs) {
		List<WorkflowEntite> ListeInformationGroupeLisanga = new ArrayList<>();
		try {
			st1994c202510025600 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from groupegl where NumeroGroupeCBS='"
					+ numGpCbs + "' and NomGroupe='" + LibelleGroupe + "'";
			res1994c202510025600 = st1994c202510025600.executeQuery(req);
			while (res1994c202510025600.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1994c202510025600.getString("Id"));
				ListeInformationGroupeLisanga.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInformationGroupeLisanga;
	}

	Statement st1994c202510025600R;
	ResultSet res1994c202510025600R;

	public List<WorkflowEntite> GetListeInformationGroupeLisangaBus(int numGpCbs) {
		List<WorkflowEntite> ListeInformationGroupeLisanga = new ArrayList<>();
		try {
			st1994c202510025600R = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from groupegl where NumeroGroupeCBS='"
					+ numGpCbs + "'";
			res1994c202510025600R = st1994c202510025600R.executeQuery(req);
			while (res1994c202510025600R.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(res1994c202510025600R.getString("Id"));
				ListeInformationGroupeLisanga.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInformationGroupeLisanga;
	}

	Statement st1994c202510025600Etat;
	ResultSet res1994c202510025600Etat;

	public String GetListeEtatGroupeLisangaPourRecap(String LibelleGroupe,
			int numGpCbs) {
		String EtatGroupeLisanga = "";
		try {
			st1994c202510025600Etat = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select EtatGroupGL from groupegl where NumeroGroupeCBS='"
					+ numGpCbs + "' and NomGroupe='" + LibelleGroupe + "'";
			res1994c202510025600Etat = st1994c202510025600Etat
					.executeQuery(req);
			while (res1994c202510025600Etat.next()) {
				EtatGroupeLisanga = res1994c202510025600Etat
						.getString("EtatGroupGL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EtatGroupeLisanga;
	}

	Statement st1994c202510025600EtatBus;
	ResultSet res1994c202510025600EtatBus;

	public String GetListeEtatGroupeLisangaPourRecapBus(int numGpCbs) {
		String EtatGroupeLisanga = "";
		try {
			st1994c202510025600EtatBus = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select EtatGroupGL from groupegl where NumeroGroupeCBS='"
					+ numGpCbs + "'";
			res1994c202510025600EtatBus = st1994c202510025600EtatBus
					.executeQuery(req);
			while (res1994c202510025600EtatBus.next()) {
				EtatGroupeLisanga = res1994c202510025600EtatBus
						.getString("EtatGroupGL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EtatGroupeLisanga;
	}

	Statement st2599000094;

	public int updateGroupeLisanga(String ID, int NumeroGroupeCBS,
			String NomGroupe, String AdresseGroupe, String ProvinceGroupe,
			String JourReunionGroupe, String HeureReunionGroupe,
			String NumeroTelephoneGroupe, int NbrHommeGroupe,
			int NbrFemmeGroupe, int NbrCycleGroupe,
			String CategorieRisqueGroupe, int PromoteurGroupe,
			int SuperviseurGL, String BrancheGroupGL, String etatGroupGL,
			String NomsChefAgenceMcpop) {
		int NbrLgne = 0;
		try {
			st2599000094 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update groupegl set NumeroGroupeCBS='"
					+ NumeroGroupeCBS + "',NomGroupe='"
					+ NomGroupe.replace("'", "''") + "',AdresseGroupe='"
					+ AdresseGroupe.replace("'", "''") + "',ProvinceGroupe='"
					+ ProvinceGroupe + "',JourReunionGroupe='"
					+ JourReunionGroupe.replace("'", "''")
					+ "',HeureReunionGroupe='" + HeureReunionGroupe
					+ "',NumeroTelephoneGroupe='" + NumeroTelephoneGroupe
					+ "',NbrHommeGroupe='" + NbrHommeGroupe
					+ "',NbrFemmeGroupe='" + NbrFemmeGroupe
					+ "',NbrCycleGroupe='" + NbrCycleGroupe
					+ "',CategorieRisqueGroupe='"
					+ CategorieRisqueGroupe.replace("'", "''")
					+ "',PromoteurGroupe='" + PromoteurGroupe
					+ "',SuperviseurGL='" + SuperviseurGL + "',BrancheGroupe='"
					+ BrancheGroupGL + "',EtatGroupGL='" + etatGroupGL
					+ "',ChefAgence='" + NomsChefAgenceMcpop + "' where Id='"
					+ ID + "'";
			NbrLgne = st2599000094.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st25990000940bus;

	public int updateGroupeLisangaForRecap(int NumeroGroupeCBS,
			int NbrHommeGroupe, int NbrFemmeGroupe, int NbrCycleGroupe,
			String CategorieRisqueGroupe, String etatGroupGL,
			String NomsChefAgenceMcpop) {
		int NbrLgne = 0;
		try {
			st25990000940bus = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "update groupegl set NumeroGroupeCBS='"
					+ NumeroGroupeCBS + "',NbrHommeGroupe='" + NbrHommeGroupe
					+ "',NbrFemmeGroupe='" + NbrFemmeGroupe
					+ "',NbrCycleGroupe='" + NbrCycleGroupe
					+ "',CategorieRisqueGroupe='"
					+ CategorieRisqueGroupe.replace("'", "''")
					+ "',EtatGroupGL='" + etatGroupGL + "',ChefAgence='"
					+ NomsChefAgenceMcpop + "' where NumeroGroupeCBS='"
					+ NumeroGroupeCBS + "'";
			NbrLgne = st25990000940bus.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st3600ras;

	public int EnregistrementDossierGlEtatCloturer(String DateTerminer,
			String AgenceID, String NumGroupeGL, int PromoteurID,
			int SuperviseurID, double MontantTotalPretGL, int Cycle) {
		int nbrLigne = 0;
		try {
			String req = "insert into statdossierglterminer(DateTerminer,AgenceID,NumGroupeGL,PromoteurID,SuperviseurID,MontantTotalPretGL,Cycle) values('"
					+ DateTerminer
					+ "','"
					+ AgenceID
					+ "','"
					+ NumGroupeGL
					+ "','"
					+ PromoteurID
					+ "','"
					+ SuperviseurID
					+ "','"
					+ MontantTotalPretGL + "','" + Cycle + "')";
			st3600ras = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st3600ras.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st1994c202510025600R5;
	ResultSet res1994c202510025600R5;

	public List<WorkflowEntite> GetStatOKGroupeLisangParAgence() {
		List<WorkflowEntite> StatOKGroupeLisangParAgence = new ArrayList<>();
		try {
			st1994c202510025600R5 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select AgenceID,count(NumGroupeGL) nbr,sum(MontantTotalPretGL) somok from statdossierglterminer group by AgenceID order by AgenceID asc";
			res1994c202510025600R5 = st1994c202510025600R5.executeQuery(req);
			while (res1994c202510025600R5.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setLibellebranchestat(res1994c202510025600R5
						.getString("AgenceID"));
				wk.setNbrdossierterminebranche(res1994c202510025600R5
						.getInt("nbr"));
				wk.setVolume(res1994c202510025600R5.getLong("somok"));
				StatOKGroupeLisangParAgence.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return StatOKGroupeLisangParAgence;
	}

	Statement st1994c202510025600R5E;
	ResultSet res1994c202510025600R5E;

	public List<WorkflowEntite> GetListeDecaisserPourVisualiserEcheance() {
		List<WorkflowEntite> ListeDecaisserPourVisualiserEcheance = new ArrayList<>();
		try {
			st1994c202510025600R5E = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select cli.IdCbsCli,doss.NumDossierCredit,doss.DtFluxTermine,comit.MontantCreditValider,comit.NbrEcheancierValide,br.LibelleBranche,CONCAT(cli.NomCli,' ',cli.PostNomCli,' ',cli.PrenomCli) AS nom_complet,ac.NomsUser from clientd as cli inner join dossiercredit as doss on cli.idclient=doss.IdClientD inner join assignationdossiercredit as ass on ass.NumDossierCre=doss.NumDossierCredit inner join comite as comit on comit.NumDossierCre=doss.NumDossierCredit inner join user as ac on ac.Iduser=ass.IDAnalysteDossierCredit inner join branche as br on br.IdBranche=ac.IdBranche where doss.EtatDossierCredit='Terminer' order by br.LibelleBranche,nom_complet asc";
			res1994c202510025600R5E = st1994c202510025600R5E.executeQuery(req);
			while (res1994c202510025600R5E.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumclientglcbs(res1994c202510025600R5E
						.getInt("cli.IdCbsCli"));
				wk.setNumdossiercreok(res1994c202510025600R5E
						.getString("doss.NumDossierCredit"));
				wk.setDatefluxterminerdossieril(res1994c202510025600R5E
						.getString("doss.DtFluxTermine"));
				wk.setMontantapprouvedossieril(res1994c202510025600R5E
						.getDouble("comit.MontantCreditValider"));
				wk.setNbrecheanciervalidecc(res1994c202510025600R5E
						.getInt("comit.NbrEcheancierValide"));
				wk.setLibellebranche(res1994c202510025600R5E
						.getString("br.LibelleBranche"));
				wk.setNomsclientsok(res1994c202510025600R5E
						.getString("nom_complet"));
				wk.setNomac(res1994c202510025600R5E.getString("ac.NomsUser"));
				ListeDecaisserPourVisualiserEcheance.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeDecaisserPourVisualiserEcheance;
	}

	Statement st1994c202510025600R5EFF;
	ResultSet res1994c202510025600R5EFF;

	public List<WorkflowEntite> EcheancierClient(int Id_Client) {
		List<WorkflowEntite> ListeEchCli = new ArrayList<>();
		DecimalFormat df = new DecimalFormat("0.00");
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st1994c202510025600R5EFF = cnx.createStatement();
			String req = "SELECT dcr.id_client as no_client,etr.id_doss as no_dossier,dcr.cre_date_debloc as date_deboursement,etr.date_ech as date_prevu_remboursement,etr.mnt_cap as montant_capital_Attendu,etr.mnt_int as montant_interet,etr.mnt_cap+etr.mnt_int as montant_a_rembourser,pc.libel as type_credits,etr.remb as remboursement FROM ad_etr etr JOIN ad_dcr dcr ON dcr.id_ag = etr.id_ag AND dcr.id_doss = etr.id_doss LEFT JOIN ad_grp_sol grp ON grp.id_ag = dcr.id_ag AND grp.id_grp_sol= dcr.id_client JOIN adsys_produit_credit pc ON pc.id_ag = dcr.id_ag AND pc.id= dcr.id_prod WHERE  dcr.id_client='"
					+ Id_Client
					+ "' and dcr.etat=5 order by date_prevu_remboursement asc";

			res1994c202510025600R5EFF = st1994c202510025600R5EFF
					.executeQuery(req);
			while (res1994c202510025600R5EFF.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setDateprevuremboursement(res1994c202510025600R5EFF
						.getString("date_prevu_remboursement").split(" ")[0]);
				double montant_capital_Attendu = res1994c202510025600R5EFF
						.getDouble("montant_capital_Attendu");
				montant_capital_Attendu = Double.parseDouble(df
						.format(montant_capital_Attendu));
				wk.setMontantcapitalattendu(montant_capital_Attendu);
				double montant_interet = res1994c202510025600R5EFF
						.getDouble("montant_interet");
				montant_interet = Double
						.parseDouble(df.format(montant_interet));
				wk.setMontantinteret(montant_interet);

				double montant_a_rembourser = res1994c202510025600R5EFF
						.getDouble("montant_a_rembourser");
				montant_a_rembourser = Double.parseDouble(df
						.format(montant_a_rembourser));
				wk.setMontantarembourse(montant_a_rembourser);
				wk.setTypecredit(res1994c202510025600R5EFF
						.getString("type_credits"));
				String remb = "";
				if (res1994c202510025600R5EFF.getString("remboursement")
						.equalsIgnoreCase("t")) {
					remb = "Oui";
				} else if (res1994c202510025600R5EFF.getString("remboursement")
						.equalsIgnoreCase("f")) {
					remb = "Non";
				}
				wk.setRemboursement(remb);

				ListeEchCli.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (res1994c202510025600R5EFF != null)
					res1994c202510025600R5EFF.close();
			} catch (Exception e) {
			}
			try {
				if (st1994c202510025600R5EFF != null)
					st1994c202510025600R5EFF.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return ListeEchCli;
	}

	Statement st2599000045MM;

	public int UpdateMembreDuGroupeLisanga(int Idcli, int NumClientMembreCbs,
			String NomMembreGroupe, String PostNomMembreGroupe,
			String PreNomMembreGroupe, String TelephoneMembreGroupe,
			String SexeMembreGroupe, String AdresseMembreGroupe,
			String CategorieMembreGroupe, String etatCivilCliLisanga,
			String DateNaissanceMembreGroupe, String Transfert,
			String GroupeTransfert, int priorityMembre, String NomsConjoint,
			String TelephoneConjoint, String SocieteMembre,
			String FonctionSocieteM, String AdresseSocieteM, String Salaire) {
		int NbrLgne = 0;
		try {
			st2599000045MM = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update membregroupe set NumClientMembreCbs='"
					+ NumClientMembreCbs + "',NomMembreGroupe='"
					+ NomMembreGroupe.replace("'", "''")
					+ "' ,PostNomMembreGroupe='"
					+ PostNomMembreGroupe.replace("'", "''")
					+ "',PreNomMembreGroupe='"
					+ PreNomMembreGroupe.replace("'", "''")
					+ "',TelephoneMembreGroupe='" + TelephoneMembreGroupe
					+ "',SexeMembreGroupe='" + SexeMembreGroupe
					+ "',AdresseMembreGroupe='"
					+ AdresseMembreGroupe.replace("'", "''")
					+ "',CategorieMembreGroupe='"
					+ CategorieMembreGroupe.replace("'", "''")
					+ "',etatCivilCliLisanga='" + etatCivilCliLisanga
					+ "',DateNaissanceMembreGroupe='"
					+ DateNaissanceMembreGroupe + "',Transfert='" + Transfert
					+ "',GroupeTransfert='" + GroupeTransfert
					+ "',NomsConjoint='" + NomsConjoint
					+ "',TelephoneConjoint='" + TelephoneConjoint
					+ "',SocieteMembre='" + SocieteMembre
					+ "',FonctionSocieteM='" + FonctionSocieteM
					+ "',AdresseSocieteM='" + AdresseSocieteM + "',Salaire='"
					+ Salaire + "',priority='" + priorityMembre
					+ "' where IdClientMembre='" + Idcli + "'";
			NbrLgne = st2599000045MM.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

	Statement st1994XXx100Delete;

	public int DeleteStatutUserTransfert(int IdDocument) {
		int nbr = 0;
		try {
			st1994XXx100Delete = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "delete from documentbusinessgl where Id='"
					+ IdDocument + "'";
			nbr = st1994XXx100Delete.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994XXx100DeleteIL;

	public int DeleteStatutUserTransfertIL(int IdDocument) {
		int nbr = 0;
		try {
			st1994XXx100DeleteIL = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "delete from documentbusiness where Id='" + IdDocument
					+ "'";
			nbr = st1994XXx100DeleteIL.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement st1994c202510025600R5EFFAA;
	ResultSet res1994c202510025600R5EFFAA;

	public String GetLibelleFichierDocumentBussnessGL(int IdDocument) {
		String Libelle = "";
		try {
			st1994c202510025600R5EFFAA = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select FichierUrl from documentbusinessgl where Id='"
					+ IdDocument + "'";
			res1994c202510025600R5EFFAA = st1994c202510025600R5EFFAA
					.executeQuery(req);
			while (res1994c202510025600R5EFFAA.next()) {
				Libelle = res1994c202510025600R5EFFAA.getString("FichierUrl");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Libelle;
	}

	Statement st1994c202510025600R5EFFAAIL;
	ResultSet res1994c202510025600R5EFFAAIL;

	public String GetLibelleFichierDocumentBussnessIL(int IdDocument) {
		String Libelle = "";
		try {
			st1994c202510025600R5EFFAAIL = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select FichierUrl from documentbusiness where Id='"
					+ IdDocument + "'";
			res1994c202510025600R5EFFAAIL = st1994c202510025600R5EFFAAIL
					.executeQuery(req);
			while (res1994c202510025600R5EFFAAIL.next()) {
				Libelle = res1994c202510025600R5EFFAAIL.getString("FichierUrl");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Libelle;
	}

	Statement stcheck1;
	ResultSet rescheck1;

	public List<WorkflowEntite> GetCheckDoublonMembreGL(int NumClientMembreCbs) {
		List<WorkflowEntite> CheckDoublonMembreGL = new ArrayList<>();
		try {
			stcheck1 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from membregroupe where NumClientMembreCbs='"
					+ NumClientMembreCbs + "'";
			rescheck1 = stcheck1.executeQuery(req);
			while (rescheck1.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsmembregroupe(rescheck1.getString("NomMembreGroupe"));
				CheckDoublonMembreGL.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CheckDoublonMembreGL;
	}

	Statement stcheck2;
	ResultSet rescheck2;

	public List<WorkflowEntite> GetCheckDoublonDossierGL(int NumClientMembre,
			int CycleGL) {
		List<WorkflowEntite> CheckDoublonDossierGL = new ArrayList<>();
		try {
			stcheck2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from dossiercreditgl where IdMembreGL='"
					+ NumClientMembre + "' and CycleGL='" + CycleGL + "'";
			rescheck2 = stcheck2.executeQuery(req);
			while (rescheck2.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumdossierglgl(rescheck2.getInt("NumDossierGL"));
				CheckDoublonDossierGL.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CheckDoublonDossierGL;
	}

	Statement stcheck3;
	ResultSet rescheck3;

	public List<WorkflowEntite> GetCheckDoublonBussnessGL(int NumClientMembre) {
		List<WorkflowEntite> CheckDoublonBussnessGL = new ArrayList<>();
		try {
			stcheck3 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from bussnessmembregl where IdClientGL='"
					+ NumClientMembre + "'";
			rescheck3 = stcheck3.executeQuery(req);
			while (rescheck3.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdbussnessglb(rescheck3.getInt("ID"));
				CheckDoublonBussnessGL.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CheckDoublonBussnessGL;
	}

	Statement stcheck4;
	ResultSet rescheck4;

	public List<WorkflowEntite> GetCheckDoublonFinanceGL(int NumClientMembre,
			int cycleGL) {
		List<WorkflowEntite> CheckDoublonFinanceGL = new ArrayList<>();
		try {
			stcheck4 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from informationfinanciereclientgl where IdClientGL='"
					+ NumClientMembre + "' and cycleGL='" + cycleGL + "'";
			rescheck4 = stcheck4.executeQuery(req);
			while (rescheck4.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdinfofinanciereglglgl(rescheck4.getInt("Id"));
				CheckDoublonFinanceGL.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CheckDoublonFinanceGL;
	}

	Statement stDf;
	ResultSet resDf;

	public int GetIdDepenseFamilliale(int Nourriture, int Combustiblecuisson,
			int loyer, int transport, int communication, int habillement,
			int education, int service, int soinmedicaux, int autresdepense,
			int imprevu, int loisir, int autredepenseprive,
			String NumDossierCredit) {
		int ID = 0;
		try {
			stDf = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id from depensefamiliale where Nourriture='"
					+ Nourriture + "' and Combustiblecuisson='"
					+ Combustiblecuisson + "' and loyer='" + loyer
					+ "' and transport='" + transport + "' and communication='"
					+ communication + "' and habillement='" + habillement
					+ "' and education='" + education + "' and service='"
					+ service + "' and soinmedicaux='" + service
					+ "' and autresdepense='" + autresdepense
					+ "' and imprevu='" + imprevu + "' and loisir='" + loisir
					+ "' and autredepenseprive='" + autredepenseprive
					+ "' and NumDossierCredit='" + NumDossierCredit + "'";
			resDf = stDf.executeQuery(req);
			while (resDf.next()) {
				ID = resDf.getInt("Id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ID;
	}

	Statement st1994AS;

	public int DeleteAutreStockBussnn1(int ID) {
		int nbr = 0;
		try {
			st1994AS = ConnexionBDLocal.getConnexion().createStatement();
			String req = "delete from businessoneautrestock where Id='" + ID
					+ "'";
			nbr = st1994AS.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nbr;
	}

	Statement stokkk;
	ResultSet resokkk;

	public String GetEtatDossier(int numdossier) {
		String etat = "";
		try {
			stokkk = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select EtatDossierCredit from dossiercredit where NumDossierCredit='"
					+ numdossier + "'";
			resokkk = stokkk.executeQuery(req);
			while (resokkk.next()) {
				etat = resokkk.getString("EtatDossierCredit");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return etat;
	}

	Statement stokkkDO;
	ResultSet resokkkDO;

	public int GetIdClientPourRecap(int IdCbsClient) {
		int IdCli = 0;
		try {
			stokkkDO = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select idclient from clientd where IdCbsCli='"
					+ IdCbsClient + "'";
			resokkkDO = stokkkDO.executeQuery(req);
			while (resokkkDO.next()) {
				IdCli = resokkkDO.getInt("idclient");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdCli;
	}

	Statement strecap;

	public void UpdateCycleRecap(int IdCbsClient, int nouveauCycleRecap) {
		try {
			strecap = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update clientd set cycleCliCbs='" + nouveauCycleRecap
					+ "' where IdCbsCli='" + IdCbsClient + "'";
			strecap.executeUpdate(req);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stcheck1994;
	ResultSet rescheck1994;

	public List<WorkflowEntite> GetCheckListeEtatDossierPourClientX(int NumCbs) {
		List<WorkflowEntite> CheckListeEtatDossierPourClientX = new ArrayList<>();
		try {
			stcheck1994 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select doss.EtatDossierCredit from dossiercredit as doss inner join clientd as cli on cli.idclient=doss.IdClientD where cli.IdCbsCli='"
					+ NumCbs + "'";
			rescheck1994 = stcheck1994.executeQuery(req);
			while (rescheck1994.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setEtatdossiercreditsession(rescheck1994
						.getString("doss.EtatDossierCredit"));
				CheckListeEtatDossierPourClientX.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CheckListeEtatDossierPourClientX;
	}

	Statement stp;
	ResultSet resp;

	public double GetmntFraisTenuCompteMGL() {
		double mntFraisTenuCompteMGL = 0;
		try {
			stp = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select mntFraisTenuCompte from parametragegl";
			resp = stp.executeQuery(req);
			while (resp.next()) {
				mntFraisTenuCompteMGL = resp.getDouble("mntFraisTenuCompte");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mntFraisTenuCompteMGL;
	}

	Statement stp1;
	ResultSet resp1;

	public double GetCoefficientDegressifGL() {
		double CoefficientDegressifGL = 0;
		try {
			stp1 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select CoefDegressif from parametragegl";
			resp1 = stp1.executeQuery(req);
			while (resp1.next()) {
				CoefficientDegressifGL = resp1.getDouble("CoefDegressif");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CoefficientDegressifGL;
	}

	Statement stp2;
	ResultSet resp2;

	public int GetNbrMaxMembreDansGL() {
		int NbrMaxMembreDansGL = 0;
		try {
			stp2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select nbrMaxMembreGL from parametragegl";
			resp2 = stp2.executeQuery(req);
			while (resp2.next()) {
				NbrMaxMembreDansGL = resp2.getInt("nbrMaxMembreGL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NbrMaxMembreDansGL;
	}

	Statement stp3;
	ResultSet resp3;

	public int GetNbrEcheanceGL() {
		int NbrEcheanceGL = 0;
		try {
			stp3 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NbrEcheance from parametragegl";
			resp3 = stp3.executeQuery(req);
			while (resp3.next()) {
				NbrEcheanceGL = resp3.getInt("NbrEcheance");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return NbrEcheanceGL;
	}

	Statement stp4;
	ResultSet resp4;

	public double GetCautionGL() {
		double CautionGL = 0;
		try {
			stp4 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select TauxCaution from parametragegl";
			resp4 = stp4.executeQuery(req);
			while (resp4.next()) {
				CautionGL = resp4.getDouble("TauxCaution");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CautionGL;
	}

	Statement stp5;
	ResultSet resp5;

	public double GetFraisSMSGL() {
		double FraisSMSGL = 0;
		try {
			stp5 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FraisSMSGL from parametragegl";
			resp5 = stp5.executeQuery(req);
			while (resp5.next()) {
				FraisSMSGL = resp5.getDouble("FraisSMSGL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return FraisSMSGL;
	}

	Statement stp6;
	ResultSet resp6;

	public double GetFraisCarnetGL() {
		double FraisCarnetGL = 0;
		try {
			stp6 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FraisCarnet from parametragegl";
			resp6 = stp6.executeQuery(req);
			while (resp6.next()) {
				FraisCarnetGL = resp6.getDouble("FraisCarnet");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return FraisCarnetGL;
	}

	Statement stp7;
	ResultSet resp7;

	public double GetFraisDossierGL() {
		double FraisDossierGL = 0;
		try {
			stp7 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select FraisDossierGL from parametragegl";
			resp7 = stp7.executeQuery(req);
			while (resp7.next()) {
				FraisDossierGL = resp7.getDouble("FraisDossierGL");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return FraisDossierGL;
	}

	Statement st124pmgl;

	public int EnregistrementProduitCreditParamGL(double CoefDegressif,
			double mntFraisTenuCompte, int nbrMaxMembreGL, int NbrEcheance,
			double FraisSMSGL, double FraisCarnet, double TauxCaution,
			double FraisDossierGL) {
		int nbrLigne = 0;
		try {
			String req = "insert into parametragegl(CoefDegressif,mntFraisTenuCompte,nbrMaxMembreGL,NbrEcheance,FraisSMSGL,FraisCarnet,TauxCaution,FraisDossierGL) values('"
					+ CoefDegressif
					+ "','"
					+ mntFraisTenuCompte
					+ "','"
					+ nbrMaxMembreGL
					+ "','"
					+ NbrEcheance
					+ "','"
					+ FraisSMSGL
					+ "','"
					+ FraisCarnet
					+ "','"
					+ TauxCaution
					+ "','"
					+ FraisDossierGL + "')";
			st124pmgl = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st124pmgl.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st124pmglMod;

	public int UpdateProduitCreditParamGL(int ID, double CoefDegressif,
			double mntFraisTenuCompte, int nbrMaxMembreGL, int NbrEcheance,
			double FraisSMSGL, double FraisCarnet, double TauxCaution,
			double FraisDossierGL) {
		int nbrLigne = 0;
		try {
			String req = "update parametragegl set CoefDegressif='"
					+ CoefDegressif + "',mntFraisTenuCompte='"
					+ mntFraisTenuCompte + "',nbrMaxMembreGL='"
					+ nbrMaxMembreGL + "',NbrEcheance='" + NbrEcheance
					+ "',FraisSMSGL='" + FraisSMSGL + "',FraisCarnet='"
					+ FraisCarnet + "',TauxCaution='" + TauxCaution
					+ "',FraisDossierGL='" + FraisDossierGL + "' where ID='"
					+ ID + "'";
			st124pmglMod = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st124pmglMod.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement stcheck1994PMGL;
	ResultSet rescheck1994PMGL;

	public List<WorkflowEntite> GetInformationParametrageGL() {
		List<WorkflowEntite> InformationParametrageGL = new ArrayList<>();
		try {
			stcheck1994PMGL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from parametragegl";
			rescheck1994PMGL = stcheck1994PMGL.executeQuery(req);
			while (rescheck1994PMGL.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setCoefdegressifgl(rescheck1994PMGL
						.getDouble("CoefDegressif"));
				wk.setMntfraistenucomptegl(rescheck1994PMGL
						.getDouble("mntFraisTenuCompte"));
				wk.setNbrmaxmembregl(rescheck1994PMGL.getInt("nbrMaxMembreGL"));
				wk.setNbrecheancegl(rescheck1994PMGL.getInt("NbrEcheance"));
				wk.setFraissmsgl(rescheck1994PMGL.getDouble("FraisSMSGL"));
				wk.setFraiscarnetgl(rescheck1994PMGL.getDouble("FraisCarnet"));
				wk.setTauxcautiongl(rescheck1994PMGL.getDouble("TauxCaution"));
				wk.setFraisdossiergl(rescheck1994PMGL
						.getDouble("FraisDossierGL"));
				wk.setIdparamgl(rescheck1994PMGL.getInt("ID"));

				InformationParametrageGL.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return InformationParametrageGL;
	}

	Statement stcheck1994PMGLM;
	ResultSet rescheck1994PMGLM;

	public List<WorkflowEntite> GetInformationParametrageGLPourModification(
			int ID) {
		List<WorkflowEntite> InformationParametrageGLPourModification = new ArrayList<>();
		try {
			stcheck1994PMGLM = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from parametragegl where ID='" + ID + "'";
			rescheck1994PMGLM = stcheck1994PMGLM.executeQuery(req);
			while (rescheck1994PMGLM.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setCoefdegressifgl(rescheck1994PMGLM
						.getDouble("CoefDegressif"));
				wk.setMntfraistenucomptegl(rescheck1994PMGLM
						.getDouble("mntFraisTenuCompte"));
				wk.setNbrmaxmembregl(rescheck1994PMGLM.getInt("nbrMaxMembreGL"));
				wk.setNbrecheancegl(rescheck1994PMGLM.getInt("NbrEcheance"));
				wk.setFraissmsgl(rescheck1994PMGLM.getDouble("FraisSMSGL"));
				wk.setFraiscarnetgl(rescheck1994PMGLM.getDouble("FraisCarnet"));
				wk.setTauxcautiongl(rescheck1994PMGLM.getDouble("TauxCaution"));
				wk.setFraisdossiergl(rescheck1994PMGLM
						.getDouble("FraisDossierGL"));
				wk.setIdparamgl(rescheck1994PMGLM.getInt("ID"));
				InformationParametrageGLPourModification.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return InformationParametrageGLPourModification;
	}

	Statement st12SUP;

	public int SupprimerClientILEchecConnexionWF(int NumClientCbs) {
		int nbrLigne = 0;
		try {
			String req = "delete from clientd where IdCbsCli='" + NumClientCbs
					+ "'";
			st12SUP = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = st12SUP.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	/*
	 * Statement st1421994ANA; ResultSet res1421994ANA;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard( int
	 * IDUser) { List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard = new
	 * ArrayList<>(); try { st1421994ANA =
	 * ConnexionBDLocal.getConnexion().createStatement(); String req =
	 * "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(dcr.MontantDemande)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxAnalyse)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where us.Iduser='"
	 * + IDUser +
	 * "' and dcr.EtatDossierCredit='Analyse' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc"
	 * ; res1421994ANA = st1421994ANA.executeQuery(req); while
	 * (res1421994ANA.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994ANA .getString("dcr.EtatDossierCredit"));
	 * wk.setNomscompletanalystedossieril(res1421994ANA
	 * .getString("us.NomsUser")); wk.setNombre(res1421994ANA.getLong("nbr"));
	 * wk.setVolume(res1421994ANA.getLong("vol"));
	 * wk.setNbrjourmoyentraitement(res1421994ANA .getLong("moyenne_jours"));
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard
	 * .add(wk); } } catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard(
			int IDUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Statement st = null;
		ResultSet rs = null;
		Connection cnx = null;

		try {
			// 1. Récupération de la connexion (1 connexion / thread)
			cnx = ConnexionBD.getConnexion();

			// 2. Création du Statement
			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			// 3. Requête SQL (inchangée)
			String req = "SELECT us.NomsUser, dcr.EtatDossierCredit, "
					+ "COUNT(*) AS nbr, "
					+ "SUM(dcr.MontantDemande) AS vol, "
					+ "AVG(DATEDIFF(CURDATE(), dcr.DtFluxAnalyse)) AS moyenne_jours "
					+ "FROM dossiercredit dcr "
					+ "INNER JOIN assignationdossiercredit aff ON aff.NumDossierCre = dcr.NumDossierCredit "
					+ "INNER JOIN user us ON aff.IDAnalysteDossierCredit = us.Iduser "
					+ "WHERE us.Iduser = " + IDUser + " "
					+ "AND dcr.EtatDossierCredit = 'Analyse' "
					+ "GROUP BY us.NomsUser, dcr.EtatDossierCredit";

			// Exécution
			rs = st.executeQuery(req);

			// Mapping résultat
			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(rs.getString("NomsUser"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				wk.setNbrjourmoyentraitement(rs.getLong("moyenne_jours"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. Fermeture propre
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}

			// IMPORTANT : libérer la connexion du thread
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	/*
	 * Statement st1421994bANACOM; ResultSet res1421994bANACOM;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard( int
	 * IdUser) { List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard = new
	 * ArrayList<>(); try { st1421994bANACOM = ConnexionBDLocal.getConnexion()
	 * .createStatement(); String req =
	 * "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(prop.MontantProp)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxComite)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
	 * + IdUser +
	 * "' and dcr.EtatDossierCredit='Comite' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc"
	 * ; res1421994bANACOM = st1421994bANACOM.executeQuery(req); while
	 * (res1421994bANACOM.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994bANACOM
	 * .getString("dcr.EtatDossierCredit"));
	 * wk.setNomscompletanalystedossieril(res1421994bANACOM
	 * .getString("us.NomsUser"));
	 * wk.setNombre(res1421994bANACOM.getLong("nbr"));
	 * wk.setVolume(res1421994bANACOM.getLong("vol"));
	 * wk.setNbrjourmoyentraitement(res1421994bANACOM
	 * .getLong("moyenne_jours"));
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard
	 * .add(wk); } } catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard; }
	 */
	/*
	 * Statement st1421994bbCom; ResultSet res1421994bbCom;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard( int
	 * IDuser) { List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard = new
	 * ArrayList<>(); try { st1421994bbCom =
	 * ConnexionBDLocal.getConnexion().createStatement(); String req =
	 * "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(com.MontantCreditValider)as vol,AVG(DATEDIFF(dcr.DtFluxTermine,dcr.DtFluxCreation)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
	 * + IDuser +
	 * "' and dcr.EtatDossierCredit='Terminer' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc"
	 * ; res1421994bbCom = st1421994bbCom.executeQuery(req); while
	 * (res1421994bbCom.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994bbCom
	 * .getString("dcr.EtatDossierCredit"));
	 * wk.setNomscompletanalystedossieril(res1421994bbCom
	 * .getString("us.NomsUser")); wk.setNombre(res1421994bbCom.getLong("nbr"));
	 * wk.setVolume(res1421994bbCom.getLong("vol"));
	 * wk.setNbrjourmoyentraitement(res1421994bbCom .getLong("moyenne_jours"));
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard
	 * .add(wk); } } catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard(
			int IDuser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser, dcr.EtatDossierCredit, "
					+ "COUNT(*) AS nbr, "
					+ "SUM(com.MontantCreditValider) AS vol, "
					+ "AVG(DATEDIFF(dcr.DtFluxTermine, dcr.DtFluxCreation)) AS moyenne_jours "
					+ "FROM dossiercredit dcr "
					+ "INNER JOIN assignationdossiercredit aff ON aff.NumDossierCre = dcr.NumDossierCredit "
					+ "INNER JOIN user us ON aff.IDAnalysteDossierCredit = us.Iduser "
					+ "INNER JOIN comite com ON com.NumDossierCre = dcr.NumDossierCredit "
					+ "WHERE us.Iduser = " + IDuser + " "
					+ "AND dcr.EtatDossierCredit = 'Terminer' "
					+ "GROUP BY us.NomsUser, dcr.EtatDossierCredit";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(rs.getString("NomsUser"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				wk.setNbrjourmoyentraitement(rs.getLong("moyenne_jours"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;

	}

	/*
	 * Statement st1421994bANACOMVal; ResultSet res1421994bANACOMVal;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard( int
	 * IdUser) { List<WorkflowEntite>
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard = new
	 * ArrayList<>(); try { st1421994bANACOMVal =
	 * ConnexionBDLocal.getConnexion() .createStatement(); String req =
	 * "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(cm.MontantCreditValider)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxVerification)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit inner join comite as cm on cm.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
	 * + IdUser +
	 * "' and dcr.EtatDossierCredit='Verification' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc"
	 * ; res1421994bANACOMVal = st1421994bANACOMVal.executeQuery(req); while
	 * (res1421994bANACOMVal.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994bANACOMVal
	 * .getString("dcr.EtatDossierCredit"));
	 * wk.setNomscompletanalystedossieril(res1421994bANACOMVal
	 * .getString("us.NomsUser"));
	 * wk.setNombre(res1421994bANACOMVal.getLong("nbr"));
	 * wk.setVolume(res1421994bANACOMVal.getLong("vol"));
	 * wk.setNbrjourmoyentraitement(res1421994bANACOMVal
	 * .getLong("moyenne_jours"));
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard
	 * .add(wk); } } catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard(
			int IdUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser, dcr.EtatDossierCredit, "
					+ "COUNT(*) AS nbr, "
					+ "SUM(cm.MontantCreditValider) AS vol, "
					+ "AVG(DATEDIFF(CURDATE(), dcr.DtFluxVerification)) AS moyenne_jours "
					+ "FROM dossiercredit dcr "
					+ "INNER JOIN assignationdossiercredit aff ON aff.NumDossierCre = dcr.NumDossierCredit "
					+ "INNER JOIN user us ON aff.IDAnalysteDossierCredit = us.Iduser "
					+ "INNER JOIN comite cm ON cm.NumDossierCre = dcr.NumDossierCredit "
					+ "WHERE us.Iduser = " + IdUser + " "
					+ "AND dcr.EtatDossierCredit = 'Verification' "
					+ "GROUP BY us.NomsUser, dcr.EtatDossierCredit";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(rs.getString("NomsUser"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				wk.setNbrjourmoyentraitement(rs.getLong("moyenne_jours"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	Statement stunikin;
	ResultSet resunikin;

	public int GetNbrUserTous() {
		int NbrUserTous = 0;
		try {
			stunikin = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(DISTINCT NomsUser) as nbr from user";
			resunikin = stunikin.executeQuery(req);
			while (resunikin.next()) {
				NbrUserTous = resunikin.getInt("nbr");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrUserTous;
	}

	Statement stunikin1;
	ResultSet resunikin1;

	public int GetNbrUserActif() {
		int NbrUserActif = 0;
		try {
			stunikin1 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(DISTINCT NomsUser) as nbr1 from user where Statut='Actif'";
			resunikin1 = stunikin1.executeQuery(req);
			while (resunikin1.next()) {
				NbrUserActif = resunikin1.getInt("nbr1");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrUserActif;
	}

	Statement stunikin2;
	ResultSet resunikin2;

	public int GetNbrUserNonActif() {
		int NbrUserNonActif = 0;
		try {
			stunikin2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select count(DISTINCT NomsUser) as nbr2 from user where Statut='Non-Actif'";
			resunikin2 = stunikin2.executeQuery(req);
			while (resunikin2.next()) {
				NbrUserNonActif = resunikin2.getInt("nbr2");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrUserNonActif;
	}

	Statement stML;
	ResultSet resML;

	public List<WorkflowEntite> GetDataAnalysePerfomanceAC(int IdUser) {
		List<WorkflowEntite> ListeDataAnalysePerfomanceAC = new ArrayList<>();
		List<WorkflowEntite> ListeDossierAnalyse = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComite = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValider = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminer = new ArrayList<>();
		try {
			ListeDossierAnalyse = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoard(IdUser);
			ListeDossierComite = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard(IdUser);
			ListeDossierValider = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboard(IdUser);
			ListeDossierTerminer = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboard(IdUser);
			ListeDataAnalysePerfomanceAC.addAll(ListeDossierAnalyse);
			ListeDataAnalysePerfomanceAC.addAll(ListeDossierComite);
			ListeDataAnalysePerfomanceAC.addAll(ListeDossierValider);
			ListeDataAnalysePerfomanceAC.addAll(ListeDossierTerminer);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDataAnalysePerfomanceAC;
	}

	/*
	 * 
	 * Statement st1421994ANAGP; ResultSet res1421994ANAGP;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard( int IDUser) {
	 * List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard = new
	 * ArrayList<>(); try { st1421994ANAGP =
	 * ConnexionBDLocal.getConnexion().createStatement(); String req =
	 * "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe where gp.EtatGroupGL='Analyse' and us.Iduser='"
	 * + IDUser + "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
	 * res1421994ANAGP = st1421994ANAGP.executeQuery(req); while
	 * (res1421994ANAGP.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994ANAGP .getString("gp.EtatGroupGL"));
	 * wk.setNombre(res1421994ANAGP.getLong("nbr"));
	 * wk.setVolume(res1421994ANAGP.getLong("vol"));
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard .add(wk); } }
	 * catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard(
			int IDUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga "
					+ "WHERE gp.EtatGroupGL = 'Analyse' "
					+ "AND gp.PromoteurGroupe = " + IDUser + " "
					+ "GROUP BY gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	/*
	 * Statement st1421994ComiteGP; ResultSet res1421994ComiteGP;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard( int IDUser) {
	 * List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard = new
	 * ArrayList<>(); try { st1421994ComiteGP = ConnexionBDLocal.getConnexion()
	 * .createStatement(); String req =
	 * "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe where gp.EtatGroupGL='Comite' and us.Iduser='"
	 * + IDUser + "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
	 * res1421994ComiteGP = st1421994ComiteGP.executeQuery(req); while
	 * (res1421994ComiteGP.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994ComiteGP .getString("gp.EtatGroupGL"));
	 * wk.setNombre(res1421994ComiteGP.getLong("nbr"));
	 * wk.setVolume(res1421994ComiteGP.getLong("vol"));
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard .add(wk); } }
	 * catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard(
			int IDUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga "
					+ "WHERE gp.EtatGroupGL = 'Comite' "
					+ "AND gp.PromoteurGroupe = " + IDUser + " "
					+ "GROUP BY gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	/*
	 * Statement st1421994VerificationGP; ResultSet res1421994VerificationGP;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard( int IDUser) {
	 * List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard = new
	 * ArrayList<>(); try { st1421994VerificationGP =
	 * ConnexionBDLocal.getConnexion() .createStatement(); String req =
	 * "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe where gp.EtatGroupGL='Verification' and us.Iduser='"
	 * + IDUser + "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
	 * res1421994VerificationGP = st1421994VerificationGP .executeQuery(req);
	 * while (res1421994VerificationGP.next()) { WorkflowEntite wk = new
	 * WorkflowEntite(); wk.setStatutdossieril(res1421994VerificationGP
	 * .getString("gp.EtatGroupGL"));
	 * wk.setNombre(res1421994VerificationGP.getLong("nbr"));
	 * wk.setVolume(res1421994VerificationGP.getLong("vol"));
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard .add(wk); } }
	 * catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard; }
	 */

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard(
			int IDUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga "
					+ "WHERE gp.EtatGroupGL = 'Verification' "
					+ "AND gp.PromoteurGroupe = " + IDUser + " "
					+ "GROUP BY gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	/*
	 * Statement st1421994TerminerGP; ResultSet res1421994TerminerGP;
	 * 
	 * public List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard( int IDUser)
	 * { List<WorkflowEntite>
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard = new
	 * ArrayList<>(); try { st1421994TerminerGP =
	 * ConnexionBDLocal.getConnexion() .createStatement(); String req =
	 * "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe where gp.EtatGroupGL='Terminer' and us.Iduser='"
	 * + IDUser + "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
	 * res1421994TerminerGP = st1421994TerminerGP.executeQuery(req); while
	 * (res1421994TerminerGP.next()) { WorkflowEntite wk = new WorkflowEntite();
	 * wk.setStatutdossieril(res1421994TerminerGP .getString("gp.EtatGroupGL"));
	 * wk.setNombre(res1421994TerminerGP.getLong("nbr"));
	 * wk.setVolume(res1421994TerminerGP.getLong("vol"));
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard .add(wk); } }
	 * catch (Exception ex) { ex.printStackTrace(); } return
	 * ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard; }
	 */
	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard(
			int IDUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga "
					+ "WHERE gp.EtatGroupGL = 'Terminer' "
					+ "AND gp.PromoteurGroupe = " + IDUser + " "
					+ "GROUP BY gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	public List<WorkflowEntite> GetDataAnalysePerfomanceACGL(int IdUser) {
		List<WorkflowEntite> ListeDataAnalysePerfomanceACGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierAnalyseGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerGL = new ArrayList<>();
		try {
			ListeDossierAnalyseGL = ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoard(IdUser);
			ListeDossierComiteGL = ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoard(IdUser);
			ListeDossierValiderGL = ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoard(IdUser);
			ListeDossierTerminerGL = ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoard(IdUser);
			ListeDataAnalysePerfomanceACGL.addAll(ListeDossierAnalyseGL);
			ListeDataAnalysePerfomanceACGL.addAll(ListeDossierComiteGL);
			ListeDataAnalysePerfomanceACGL.addAll(ListeDossierValiderGL);
			ListeDataAnalysePerfomanceACGL.addAll(ListeDossierTerminerGL);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDataAnalysePerfomanceACGL;
	}

	Statement stKAMA;
	ResultSet resKAMA;

	public int VerifieSiACestIL(int IDUser) {
		List<WorkflowEntite> ListeDossierIL = new ArrayList<>();
		try {
			stKAMA = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NumDossierCre from assignationdossiercredit where IDAnalysteDossierCredit='"
					+ IDUser + "'";
			resKAMA = stKAMA.executeQuery(req);
			while (resKAMA.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumdossiercreok(resKAMA.getString("NumDossierCre"));
				ListeDossierIL.add(wk);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierIL.size();
	}

	Statement stKAMA2;
	ResultSet resKAMA2;

	public int VerifieSiACesGP(int IDUser) {
		List<WorkflowEntite> ListeDossierGL = new ArrayList<>();
		try {
			stKAMA2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id from groupegl where PromoteurGroupe='"
					+ IDUser + "'";
			resKAMA2 = stKAMA2.executeQuery(req);
			while (resKAMA2.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(resKAMA2.getString("Id"));
				ListeDossierGL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierGL.size();
	}

	// pour dashboard du BM/Partie IL
	Statement st1421994ANABM;
	ResultSet res1421994ANABM;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardBM(
			int IdBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardBM = new ArrayList<>();
		try {
			st1421994ANABM = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(dcr.MontantDemande)as vol from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where br.IdBranche='"
					+ IdBranche
					+ "' and dcr.EtatDossierCredit='Analyse' group by dcr.EtatDossierCredit WITH ROLLUP HAVING dcr.EtatDossierCredit IS NOT NULL";
			res1421994ANABM = st1421994ANABM.executeQuery(req);
			while (res1421994ANABM.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ANABM
						.getString("dcr.EtatDossierCredit"));
				wk.setNombre(res1421994ANABM.getLong("nbr"));
				wk.setVolume(res1421994ANABM.getLong("vol"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardBM;
	}

	Statement st1421994bGLCOM;
	ResultSet res1421994bGLCOM;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardBM(
			int IdBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardBM = new ArrayList<>();
		try {
			st1421994bGLCOM = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(prop.MontantProp)as vol from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit where br.IdBranche='"
					+ IdBranche
					+ "' and dcr.EtatDossierCredit='Comite' group by dcr.EtatDossierCredit WITH ROLLUP HAVING dcr.EtatDossierCredit IS NOT NULL";
			res1421994bGLCOM = st1421994bGLCOM.executeQuery(req);
			while (res1421994bGLCOM.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bGLCOM
						.getString("dcr.EtatDossierCredit"));
				wk.setNombre(res1421994bGLCOM.getLong("nbr"));
				wk.setVolume(res1421994bGLCOM.getLong("vol"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardBM;
	}

	Statement st1421994bbT;
	ResultSet res1421994bbT;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardBM(
			int IDBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardBM = new ArrayList<>();
		try {
			st1421994bbT = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(com.MontantCreditValider)as vol from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where br.IdBranche='"
					+ IDBranche
					+ "' and dcr.EtatDossierCredit='Terminer' group by dcr.EtatDossierCredit WITH ROLLUP HAVING dcr.EtatDossierCredit IS NOT NULL";
			res1421994bbT = st1421994bbT.executeQuery(req);
			while (res1421994bbT.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bbT
						.getString("dcr.EtatDossierCredit"));
				wk.setNombre(res1421994bbT.getLong("nbr"));
				wk.setVolume(res1421994bbT.getLong("vol"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardBM;
	}

	Statement st1421994bANAVal;
	ResultSet res1421994bANAVal;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardBM(
			int IdBranche) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardBM = new ArrayList<>();
		try {
			st1421994bANAVal = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(cm.MontantCreditValider)as vol from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDAnalysteDossierCredit=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit inner join comite as cm on cm.NumDossierCre=dcr.NumDossierCredit where br.IdBranche='"
					+ IdBranche
					+ "' and dcr.EtatDossierCredit='Verification' group by dcr.EtatDossierCredit WITH ROLLUP HAVING dcr.EtatDossierCredit IS NOT NULL";
			res1421994bANAVal = st1421994bANAVal.executeQuery(req);
			while (res1421994bANAVal.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bANAVal
						.getString("dcr.EtatDossierCredit"));
				wk.setNombre(res1421994bANAVal.getLong("nbr"));
				wk.setVolume(res1421994bANAVal.getLong("vol"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardBM;
	}

	// pour dashboard du BM/Partie GL

	Statement st1421994ANAGPbm;
	ResultSet res1421994ANAGPbm;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardBMBM(
			int IDBranche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardBMBM = new ArrayList<>();
		try {
			st1421994ANAGPbm = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe inner join branche as br on us.IdBranche=br.IdBranche where gp.EtatGroupGL='Analyse' and br.IdBranche='"
					+ IDBranche
					+ "' group by gp.EtatGroupGL WITH ROLLUP HAVING gp.EtatGroupGL IS NOT NULL";
			res1421994ANAGPbm = st1421994ANAGPbm.executeQuery(req);
			while (res1421994ANAGPbm.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ANAGPbm
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994ANAGPbm.getLong("nbr"));
				wk.setVolume(res1421994ANAGPbm.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardBMBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardBMBM;
	}

	Statement st1421994ComiteGPp;
	ResultSet res1421994ComiteGPp;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardBMBM(
			int IDBranche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardBMBM = new ArrayList<>();
		try {
			st1421994ComiteGPp = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe inner join branche as br on us.IdBranche=br.IdBranche where gp.EtatGroupGL='Comite' and br.IdBranche='"
					+ IDBranche
					+ "' group by gp.EtatGroupGL WITH ROLLUP HAVING gp.EtatGroupGL IS NOT NULL";
			res1421994ComiteGPp = st1421994ComiteGPp.executeQuery(req);
			while (res1421994ComiteGPp.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ComiteGPp
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994ComiteGPp.getLong("nbr"));
				wk.setVolume(res1421994ComiteGPp.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardBMBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardBMBM;
	}

	Statement st1421994VerificationGP2;
	ResultSet res1421994VerificationGP2;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardBMBM(
			int IDBranche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardBMBM = new ArrayList<>();
		try {
			st1421994VerificationGP2 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe inner join branche as br on us.IdBranche=br.IdBranche where gp.EtatGroupGL='Verification' and br.IdBranche='"
					+ IDBranche
					+ "' group by gp.EtatGroupGL WITH ROLLUP HAVING gp.EtatGroupGL IS NOT NULL";
			res1421994VerificationGP2 = st1421994VerificationGP2
					.executeQuery(req);
			while (res1421994VerificationGP2.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994VerificationGP2
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994VerificationGP2.getLong("nbr"));
				wk.setVolume(res1421994VerificationGP2.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardBMBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardBMBM;
	}

	Statement st1421994TerminerGP3;
	ResultSet res1421994TerminerGP3;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardBMBM(
			int IDBranche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardBMBM = new ArrayList<>();
		try {
			st1421994TerminerGP3 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.PromoteurGroupe inner join branche as br on us.IdBranche=br.IdBranche where gp.EtatGroupGL='Terminer' and br.IdBranche='"
					+ IDBranche
					+ "' group by gp.EtatGroupGL WITH ROLLUP HAVING gp.EtatGroupGL IS NOT NULL";
			res1421994TerminerGP3 = st1421994TerminerGP3.executeQuery(req);
			while (res1421994TerminerGP3.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994TerminerGP3
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994TerminerGP3.getLong("nbr"));
				wk.setVolume(res1421994TerminerGP3.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardBMBM
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardBMBM;
	}

	public List<WorkflowEntite> GetDataAnalysePerfomanceBM(int IdBranche) {
		List<WorkflowEntite> ListeDataAnalysePerfomanceBM = new ArrayList<>();

		List<WorkflowEntite> ListeDossierAnalyseFull = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteFull = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderFull = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerFull = new ArrayList<>();

		List<WorkflowEntite> ListeDossierAnalyseIL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteIL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderIL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerIL = new ArrayList<>();

		List<WorkflowEntite> ListeDossierAnalyseGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderGL = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerGL = new ArrayList<>();
		try {

			ListeDossierAnalyseIL = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardBM(IdBranche);
			ListeDossierComiteIL = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardBM(IdBranche);
			ListeDossierValiderIL = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardBM(IdBranche);
			ListeDossierTerminerIL = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardBM(IdBranche);

			ListeDossierAnalyseGL = ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardBMBM(IdBranche);
			ListeDossierComiteGL = ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardBMBM(IdBranche);
			ListeDossierValiderGL = ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardBMBM(IdBranche);
			ListeDossierTerminerGL = ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardBMBM(IdBranche);

			ListeDossierAnalyseFull = sommerListesEtat(ListeDossierAnalyseIL,
					ListeDossierAnalyseGL);
			ListeDossierComiteFull = sommerListesEtat(ListeDossierComiteIL,
					ListeDossierComiteGL);
			ListeDossierValiderFull = sommerListesEtat(ListeDossierValiderIL,
					ListeDossierValiderGL);
			ListeDossierTerminerFull = sommerListesEtat(ListeDossierTerminerIL,
					ListeDossierTerminerGL);

			ListeDataAnalysePerfomanceBM.addAll(ListeDossierAnalyseFull);
			ListeDataAnalysePerfomanceBM.addAll(ListeDossierComiteFull);
			ListeDataAnalysePerfomanceBM.addAll(ListeDossierValiderFull);
			ListeDataAnalysePerfomanceBM.addAll(ListeDossierTerminerFull);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDataAnalysePerfomanceBM;
	}

	public List<WorkflowEntite> sommerListesEtat(List<WorkflowEntite> liste1,
			List<WorkflowEntite> liste2) {
		long totalVol = 0;
		int totalNbr = 0;
		String etatCommun = "";

		// Somme de la première liste
		if (!liste1.isEmpty()) {
			etatCommun = liste1.get(0).getStatutdossieril(); // on garde l'état
																// commun
			for (WorkflowEntite l : liste1) {
				totalVol += l.getVolume();
				totalNbr += l.getNombre();
			}
		}

		// Somme de la deuxième liste
		if (!liste2.isEmpty()) {
			if (etatCommun.isEmpty()) {
				etatCommun = liste2.get(0).getStatutdossieril();
			}
			for (WorkflowEntite l : liste2) {
				totalVol += l.getVolume();
				totalNbr += l.getNombre();
			}
		}

		// Créer la nouvelle liste avec une seule ligne
		List<WorkflowEntite> nouvelleListe = new ArrayList<>();
		WorkflowEntite wk = new WorkflowEntite();
		wk.setStatutdossieril(etatCommun);
		wk.setNombre(totalNbr);
		wk.setVolume(totalVol);
		nouvelleListe.add(wk);
		return nouvelleListe;
	}

	Statement stcherch;
	ResultSet rescherch;

	public String GetProfilUser(int IdUser) {
		String profilUser = "";
		try {
			stcherch = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select ProfilUser from user where Iduser='" + IdUser
					+ "'";
			rescherch = stcherch.executeQuery(req);
			while (rescherch.next()) {
				profilUser = rescherch.getString("ProfilUser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return profilUser;
	}

	Statement stcherch1;
	ResultSet rescherch1;

	public int GetBrancheUser(int IdUser) {
		int IdBrancheUser = 0;
		try {
			stcherch1 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select IdBranche from user where Iduser='" + IdUser
					+ "'";
			rescherch1 = stcherch1.executeQuery(req);
			while (rescherch1.next()) {
				IdBrancheUser = rescherch1.getInt("IdBranche");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdBrancheUser;
	}

	// Dashboad Pour Les superviseurs IL

	Statement st1421994ANASup;
	ResultSet res1421994ANASup;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardSUP(
			int IDUserSup) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardSUP = new ArrayList<>();
		try {
			st1421994ANASup = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(dcr.MontantDemande)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxAnalyse)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDsuperviseur=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche where us.Iduser='"
					+ IDUserSup
					+ "' and dcr.EtatDossierCredit='Analyse' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994ANASup = st1421994ANASup.executeQuery(req);
			while (res1421994ANASup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ANASup
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994ANASup
						.getString("us.NomsUser"));
				wk.setNombre(res1421994ANASup.getLong("nbr"));
				wk.setVolume(res1421994ANASup.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994ANASup
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardSUP
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardSUP;
	}

	Statement st1421994bANACOMSUP;
	ResultSet res1421994bANACOMSUP;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardSUP(
			int IdUserSup) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardSup = new ArrayList<>();
		try {
			st1421994bANACOMSUP = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(prop.MontantProp)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxComite)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDsuperviseur=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
					+ IdUserSup
					+ "' and dcr.EtatDossierCredit='Comite' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994bANACOMSUP = st1421994bANACOMSUP.executeQuery(req);
			while (res1421994bANACOMSUP.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bANACOMSUP
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994bANACOMSUP
						.getString("us.NomsUser"));
				wk.setNombre(res1421994bANACOMSUP.getLong("nbr"));
				wk.setVolume(res1421994bANACOMSUP.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994bANACOMSUP
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardSup;
	}

	Statement st1421994bANACOMValSUP;
	ResultSet res1421994bANACOMValSUP;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardSUP(
			int IdUserSup) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardSup = new ArrayList<>();
		try {
			st1421994bANACOMValSUP = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(cm.MontantCreditValider)as vol,AVG(DATEDIFF(CURDATE(),dcr.DtFluxVerification)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDsuperviseur=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join proposition as prop on prop.NumDossierCre=dcr.NumDossierCredit inner join comite as cm on cm.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
					+ IdUserSup
					+ "' and dcr.EtatDossierCredit='Verification' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994bANACOMValSUP = st1421994bANACOMValSUP.executeQuery(req);
			while (res1421994bANACOMValSUP.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bANACOMValSUP
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994bANACOMValSUP
						.getString("us.NomsUser"));
				wk.setNombre(res1421994bANACOMValSUP.getLong("nbr"));
				wk.setVolume(res1421994bANACOMValSUP.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994bANACOMValSUP
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardSup;
	}

	Statement st1421994bbComSup;
	ResultSet res1421994bbComSup;

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardSUP(
			int IDuserSup) {
		List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardSUP = new ArrayList<>();
		try {
			st1421994bbComSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select us.NomsUser,dcr.EtatDossierCredit,count(us.NomsUser) as nbr,sum(com.MontantCreditValider)as vol,AVG(DATEDIFF(dcr.DtFluxTermine,dcr.DtFluxCreation)) AS moyenne_jours from dossiercredit as dcr inner join assignationdossiercredit as aff on aff.NumDossierCre=dcr.NumDossierCredit inner join user as us on aff.IDsuperviseur=us.Iduser inner join branche as br on us.IdBranche=br.IdBranche inner join comite as com on com.NumDossierCre=dcr.NumDossierCredit where us.Iduser='"
					+ IDuserSup
					+ "' and dcr.EtatDossierCredit='Terminer' group by us.NomsUser,dcr.EtatDossierCredit order by us.NomsUser asc";
			res1421994bbComSup = st1421994bbComSup.executeQuery(req);
			while (res1421994bbComSup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994bbComSup
						.getString("dcr.EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(res1421994bbComSup
						.getString("us.NomsUser"));
				wk.setNombre(res1421994bbComSup.getLong("nbr"));
				wk.setVolume(res1421994bbComSup.getLong("vol"));
				wk.setNbrjourmoyentraitement(res1421994bbComSup
						.getLong("moyenne_jours"));
				ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardSUP
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardSUP;
	}

	public List<WorkflowEntite> GetDataAnalysePerfomanceSUP(int IdUserSup) {
		List<WorkflowEntite> ListeDataAnalysePerfomanceSUP = new ArrayList<>();
		List<WorkflowEntite> ListeDossierAnalyseSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerSup = new ArrayList<>();
		try {
			ListeDossierAnalyseSup = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeAnalyseDashBoardSUP(IdUserSup);
			ListeDossierComiteSup = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboardSUP(IdUserSup);
			ListeDossierValiderSup = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeValiderDahboardSUP(IdUserSup);
			ListeDossierTerminerSup = ListeDossierCreditIndividuelParAgenceENNbrEtVolumeTerminerDahboardSUP(IdUserSup);
			ListeDataAnalysePerfomanceSUP.addAll(ListeDossierAnalyseSup);
			ListeDataAnalysePerfomanceSUP.addAll(ListeDossierComiteSup);
			ListeDataAnalysePerfomanceSUP.addAll(ListeDossierValiderSup);
			ListeDataAnalysePerfomanceSUP.addAll(ListeDossierTerminerSup);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDataAnalysePerfomanceSUP;
	}

	// Dashboad Pour Les superviseurs GL

	Statement st1421994ANAGPSup;
	ResultSet res1421994ANAGPSup;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardSup(
			int IDUserSup) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardSup = new ArrayList<>();
		try {
			st1421994ANAGPSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.SuperviseurGL where gp.EtatGroupGL='Analyse' and us.Iduser='"
					+ IDUserSup
					+ "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
			res1421994ANAGPSup = st1421994ANAGPSup.executeQuery(req);
			while (res1421994ANAGPSup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ANAGPSup
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994ANAGPSup.getLong("nbr"));
				wk.setVolume(res1421994ANAGPSup.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardSup;
	}

	Statement st1421994ComiteGPSup;
	ResultSet res1421994ComiteGPSup;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardSup(
			int IDUserSup) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardSup = new ArrayList<>();
		try {
			st1421994ComiteGPSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.SuperviseurGL where gp.EtatGroupGL='Comite' and us.Iduser='"
					+ IDUserSup
					+ "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
			res1421994ComiteGPSup = st1421994ComiteGPSup.executeQuery(req);
			while (res1421994ComiteGPSup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994ComiteGPSup
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994ComiteGPSup.getLong("nbr"));
				wk.setVolume(res1421994ComiteGPSup.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardSup;
	}

	Statement st1421994VerificationGPSup;
	ResultSet res1421994VerificationGPSup;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardSup(
			int IDUserSup) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardSup = new ArrayList<>();
		try {
			st1421994VerificationGPSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.SuperviseurGL where gp.EtatGroupGL='Verification' and us.Iduser='"
					+ IDUserSup
					+ "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
			res1421994VerificationGPSup = st1421994VerificationGPSup
					.executeQuery(req);
			while (res1421994VerificationGPSup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994VerificationGPSup
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994VerificationGPSup.getLong("nbr"));
				wk.setVolume(res1421994VerificationGPSup.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardSup;
	}

	Statement st1421994TerminerGPSup;
	ResultSet res1421994TerminerGPSup;

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardSup(
			int IDUserSup) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardSup = new ArrayList<>();
		try {
			st1421994TerminerGPSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select gp.EtatGroupGL,sum(dossgl.PretAccorder) as vol,count(distinct gp.Id) as nbr from dossiercreditgl as dossgl inner join membregroupe as m on m.IdClientMembre=dossgl.IdMembreGL inner join groupegl as gp on gp.Id=m.IdGroupeLisanga inner join user as us on us.Iduser=gp.SuperviseurGL where gp.EtatGroupGL='Terminer' and us.Iduser='"
					+ IDUserSup
					+ "' group by gp.EtatGroupGL order by gp.EtatGroupGL asc";
			res1421994TerminerGPSup = st1421994TerminerGPSup.executeQuery(req);
			while (res1421994TerminerGPSup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(res1421994TerminerGPSup
						.getString("gp.EtatGroupGL"));
				wk.setNombre(res1421994TerminerGPSup.getLong("nbr"));
				wk.setVolume(res1421994TerminerGPSup.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardSup
						.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardSup;
	}

	public List<WorkflowEntite> GetDataAnalysePerfomanceACGLSUP(int IdUserSup) {
		List<WorkflowEntite> ListeDataAnalysePerfomanceACGLSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierAnalyseGLSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierComiteGLSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierValiderGLSup = new ArrayList<>();
		List<WorkflowEntite> ListeDossierTerminerGLSup = new ArrayList<>();
		try {
			ListeDossierAnalyseGLSup = ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyseDashBoardSup(IdUserSup);
			ListeDossierComiteGLSup = ListeDossierCreditGLParAgenceENNbrEtVolumeComiteDashBoardSup(IdUserSup);
			ListeDossierValiderGLSup = ListeDossierCreditGLParAgenceENNbrEtVolumeValiderDashBoardSup(IdUserSup);
			ListeDossierTerminerGLSup = ListeDossierCreditGLParAgenceENNbrEtVolumeTerminerDashBoardSup(IdUserSup);
			ListeDataAnalysePerfomanceACGLSup.addAll(ListeDossierAnalyseGLSup);
			ListeDataAnalysePerfomanceACGLSup.addAll(ListeDossierComiteGLSup);
			ListeDataAnalysePerfomanceACGLSup.addAll(ListeDossierValiderGLSup);
			ListeDataAnalysePerfomanceACGLSup.addAll(ListeDossierTerminerGLSup);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDataAnalysePerfomanceACGLSup;
	}

	Statement stKAMASupIL;
	ResultSet resKAMASupIL;

	public int VerifieSiestSupIL(int IDUserSup) {
		List<WorkflowEntite> ListeDossierSupIL = new ArrayList<>();
		try {
			stKAMASupIL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select NumDossierCre from assignationdossiercredit where IDsuperviseur='"
					+ IDUserSup + "'";
			resKAMASupIL = stKAMASupIL.executeQuery(req);
			while (resKAMASupIL.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNumdossiercreok(resKAMASupIL.getString("NumDossierCre"));
				ListeDossierSupIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierSupIL.size();
	}

	Statement stKAMA2Sup;
	ResultSet resKAMA2Sup;

	public int VerifieSiesGPSup(int IDUserSup) {
		List<WorkflowEntite> ListeDossierGLSup = new ArrayList<>();
		try {
			stKAMA2Sup = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Id from groupegl where SuperviseurGL='"
					+ IDUserSup + "'";
			resKAMA2Sup = stKAMA2Sup.executeQuery(req);
			while (resKAMA2Sup.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setIdgroupelisanga(resKAMA2Sup.getString("Id"));
				ListeDossierGLSup.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeDossierGLSup.size();
	}

	Statement st150204;
	ResultSet res150204;

	public String GetSociete() {
		String Societe = "";
		try {
			st150204 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select SocieteLibelle from societe";
			res150204 = st150204.executeQuery(req);
			while (res150204.next()) {
				Societe = res150204.getString("SocieteLibelle");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return Societe;
	}

	Statement st150204Eva;
	ResultSet res150204Eva;

	public String GetDecisionEvaluationSupGL(String NumGroupeLisanga) {
		String DecisionEvaluationSupGL = "";
		try {
			st150204Eva = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select AppreciationSupgl from evaluationgl where NumGroupeLisanga='"
					+ NumGroupeLisanga + "'";
			res150204Eva = st150204Eva.executeQuery(req);
			while (res150204Eva.next()) {
				DecisionEvaluationSupGL = res150204Eva
						.getString("AppreciationSupgl");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return DecisionEvaluationSupGL;
	}

	Statement stGLHz;
	ResultSet resGLHz;

	public int GetVerificationSiMembreExisteDansLeGroupe(int idclientCbs) {
		int VerificationSiMembreExisteDansLeGroupe = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			stGLHz = cnx.createStatement();
			String req = "SELECT id_grp_sol FROM ad_grp_sol WHERE id_membre ='"
					+ idclientCbs + "'";
			resGLHz = stGLHz.executeQuery(req);
			while (resGLHz.next()) {
				VerificationSiMembreExisteDansLeGroupe = resGLHz
						.getInt("id_grp_sol");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (resGLHz != null)
					resGLHz.close();
			} catch (Exception e) {
			}
			try {
				if (stGLHz != null)
					stGLHz.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return VerificationSiMembreExisteDansLeGroupe;
	}

	Statement stGLHz1;
	ResultSet resGLHz1;

	public int GetVerificationSiGroupePossedeUnPretEncour(int idGroupeLisangaCbs) {
		int VerificationSiGroupePossedeUnPretEncour = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			stGLHz1 = cnx.createStatement();
			String req = "SELECT id_dcr_grp_sol FROM ad_dcr WHERE id_client ='"
					+ idGroupeLisangaCbs + "' AND etat=5";
			resGLHz1 = stGLHz1.executeQuery(req);
			while (resGLHz1.next()) {
				VerificationSiGroupePossedeUnPretEncour = resGLHz1
						.getInt("id_dcr_grp_sol");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (resGLHz1 != null)
					resGLHz1.close();
			} catch (Exception e) {
			}
			try {
				if (stGLHz1 != null)
					stGLHz1.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return VerificationSiGroupePossedeUnPretEncour;
	}

	public List<WorkflowEntite> getPARAgentCredit(int idAgent, Date dateDebut,
			Date dateFin) {

		List<WorkflowEntite> listePar = new ArrayList<>();
		Connection cnx = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "SELECT t2.encours_total, "
				+ "       ROUND((t2.encours_total / t1.encours) * 100, 2) AS pourcentage "
				+ "FROM ( " + "   SELECT SUM(e.solde_cap) AS encours "
				+ "   FROM ad_etr e "
				+ "   JOIN ad_dcr dc ON dc.id_doss = e.id_doss "
				+ "   WHERE dc.id_agent_gest = ? "
				+ "     AND dc.cre_date_debloc BETWEEN ? AND ? "
				+ "     AND dc.etat IN (5,7) " + ") t1, ( "
				+ "   SELECT SUM(e.solde_cap) AS encours_total "
				+ "   FROM ad_etr e "
				+ "   JOIN ad_dcr dc ON dc.id_doss = e.id_doss "
				+ "   JOIN adsys_etat_credits ds ON ds.id = dc.cre_etat "
				+ "   WHERE dc.id_agent_gest = ? "
				+ "     AND dc.cre_date_debloc BETWEEN ? AND ? "
				+ "     AND dc.etat IN (5,7) "
				+ "     AND ds.id IN (2,3,4,5,6,7) " + ") t2";

		try {
			cnx = ConnexionADbanking.getConnexion();
			ps = cnx.prepareStatement(sql);

			ps.setInt(1, idAgent);
			ps.setDate(2, dateDebut);
			ps.setDate(3, dateFin);

			ps.setInt(4, idAgent);
			ps.setDate(5, dateDebut);
			ps.setDate(6, dateFin);

			rs = ps.executeQuery();

			while (rs.next()) {
				WorkflowEntite dto = new WorkflowEntite();
				dto.setEncoursTotal(rs.getDouble("encours_total"));
				dto.setPourcentage(rs.getDouble("pourcentage"));
				listePar.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
			}
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			}
		}

		return listePar;
	}

	Statement stGL2;
	ResultSet resGL2;

	public double GetPortefeuilleAC(int idAgentGest, Date dateDebut,
			Date dateFin) {

		double portefeuilleAC = 0;
		Connection cnx = null;

		try {
			cnx = ConnexionADbanking.getConnexion();
			stGL2 = cnx.createStatement();

			String req = "SELECT SUM(e.solde_cap) AS encours "
					+ "FROM ad_etr e "
					+ "JOIN ad_dcr dc ON dc.id_doss = e.id_doss "
					+ "WHERE dc.id_agent_gest = " + idAgentGest + " "
					+ "AND dc.cre_date_debloc BETWEEN '" + dateDebut
					+ "' AND '" + dateFin + "' " + "AND dc.etat IN (5, 7)";

			resGL2 = stGL2.executeQuery(req);

			if (resGL2.next()) {
				portefeuilleAC = resGL2.getDouble("encours");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {

			try {
				if (resGL2 != null)
					resGL2.close();
			} catch (Exception e) {
			}

			try {
				if (stGL2 != null)
					stGL2.close();
			} catch (Exception e) {
			}

			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			}
		}

		return portefeuilleAC;
	}

	Statement stSaveHistoMensuel;

	public void EnregistrerHistoMensuelCyclePasser(double ChiffreCaff,
			double Camv, double ProfitBrut, double DepenseOp, double ProfitNet,
			double AutreRevenuNet, double TotalDepensePrive,
			double CapacitePaiement, double ActifCirculant, double CaisseBM,
			double BanQue, double CreancePrepayement, double Stock,
			double ActifImmobilise, double Meuble, double EquipementOutils,
			double Vehicule, double LocalCommercial, double AutreGarantie,
			double TotalActifs, double TotalPassifs, double CourtTerme,
			double LongTerme, double CapitalPropre, double DSR, double RatioG,
			double RatioLiq, double LevierF, double RatioEndt, double RatioRot,
			String NumDossierIL, int IdClientIL, int CycleDossier, double c1,
			double c2, double c3) {
		if (ChiffreCaff == 0) {
			Camv = 0;
			ProfitBrut = 0;
			DepenseOp = 0;
			ProfitNet = 0;
			AutreRevenuNet = 0;
			TotalDepensePrive = 0;
			CapacitePaiement = 0;
			ActifCirculant = 0;
			CaisseBM = 0;
			BanQue = 0;
			CreancePrepayement = 0;
			Stock = 0;
			ActifImmobilise = 0;
			Meuble = 0;
			EquipementOutils = 0;
			Vehicule = 0;
			LocalCommercial = 0;
			AutreGarantie = 0;
			TotalActifs = 0;
			TotalPassifs = 0;
			CourtTerme = 0;
			LongTerme = 0;
			CapitalPropre = 0;
			DSR = 0;
			RatioG = 0;
			RatioLiq = 0;
			LevierF = 0;
			RatioEndt = 0;
			RatioRot = 0;
			c1 = 0;
			c2 = 0;
			c3 = 0;

		}
		try {
			String req = "insert into tablehistomensuel(ChiffreCaff,Camv,ProfitBrut,DepenseOp,ProfitNet,AutreRevenuNet,TotalDepensePrive,CapacitePaiement,ActifCirculant,CaisseBM,BanQue,CreancePrepayement,Stock,ActifImmobilise,Meuble,EquipementOutils,Vehicule,LocalCommercial,AutreGarantie,TotalActifs,TotalPassifs,CourtTerme,LongTerme,CapitalPropre,DSR,RatioG,RatioLiq,LevierF,RatioEndt,RatioRot,NumDossierIL,IdClientIL,CycleDossier,C1,C2,C3) values('"
					+ ChiffreCaff
					+ "','"
					+ Camv
					+ "','"
					+ ProfitBrut
					+ "','"
					+ DepenseOp
					+ "','"
					+ ProfitNet
					+ "','"
					+ AutreRevenuNet
					+ "','"
					+ TotalDepensePrive
					+ "','"
					+ CapacitePaiement
					+ "','"
					+ ActifCirculant
					+ "','"
					+ CaisseBM
					+ "','"
					+ BanQue
					+ "','"
					+ CreancePrepayement
					+ "','"
					+ Stock
					+ "','"
					+ ActifImmobilise
					+ "','"
					+ Meuble
					+ "','"
					+ EquipementOutils
					+ "','"
					+ Vehicule
					+ "','"
					+ LocalCommercial
					+ "','"
					+ AutreGarantie
					+ "','"
					+ TotalActifs
					+ "','"
					+ TotalPassifs
					+ "','"
					+ CourtTerme
					+ "','"
					+ LongTerme
					+ "','"
					+ CapitalPropre
					+ "','"
					+ DSR
					+ "','"
					+ RatioG
					+ "','"
					+ RatioLiq
					+ "','"
					+ LevierF
					+ "','"
					+ RatioEndt
					+ "','"
					+ RatioRot
					+ "','"
					+ NumDossierIL
					+ "','"
					+ IdClientIL
					+ "','"
					+ CycleDossier
					+ "','" + c1 + "','" + c2 + "','" + c3 + "')";
			stSaveHistoMensuel = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoMensuel.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoMinMax;

	public void EnregistrerHistoMinMaxCyclePasser(double ChiffreCaff,
			double Camv, double ProfitBrut, double DepenseOp, double ProfitNet,
			double AutreRevenuNet, double TotalDepensePrive,
			double CapacitePaiement, double ActifCirculant, double CaisseBM,
			double BanQue, double CreancePrepayement, double Stock,
			double ActifImmobilise, double Meuble, double EquipementOutils,
			double Vehicule, double LocalCommercial, double AutreGarantie,
			double TotalActifs, double TotalPassifs, double CourtTerme,
			double LongTerme, double CapitalPropre, double DSR, double RatioG,
			double RatioLiq, double LevierF, double RatioEndt, double RatioRot,
			String NumDossierIL, int IdClientIL, int CycleDossier, double c1,
			double c2, double c3) {
		if (ChiffreCaff == 0) {
			Camv = 0;
			ProfitBrut = 0;
			DepenseOp = 0;
			ProfitNet = 0;
			AutreRevenuNet = 0;
			TotalDepensePrive = 0;
			CapacitePaiement = 0;
			ActifCirculant = 0;
			CaisseBM = 0;
			BanQue = 0;
			CreancePrepayement = 0;
			Stock = 0;
			ActifImmobilise = 0;
			Meuble = 0;
			EquipementOutils = 0;
			Vehicule = 0;
			LocalCommercial = 0;
			AutreGarantie = 0;
			TotalActifs = 0;
			TotalPassifs = 0;
			CourtTerme = 0;
			LongTerme = 0;
			CapitalPropre = 0;
			DSR = 0;
			RatioG = 0;
			RatioLiq = 0;
			LevierF = 0;
			RatioEndt = 0;
			RatioRot = 0;
			c1 = 0;
			c2 = 0;
			c3 = 0;
		}
		try {
			String req = "insert into tablehistominmax(ChiffreCaff,Camv,ProfitBrut,DepenseOp,ProfitNet,AutreRevenuNet,TotalDepensePrive,CapacitePaiement,ActifCirculant,CaisseBM,BanQue,CreancePrepayement,Stock,ActifImmobilise,Meuble,EquipementOutils,Vehicule,LocalCommercial,AutreGarantie,TotalActifs,TotalPassifs,CourtTerme,LongTerme,CapitalPropre,DSR,RatioG,RatioLiq,LevierF,RatioEndt,RatioRot,NumDossierIL,IdClientIL,CycleDossier,C1,C2,C3) values('"
					+ ChiffreCaff
					+ "','"
					+ Camv
					+ "','"
					+ ProfitBrut
					+ "','"
					+ DepenseOp
					+ "','"
					+ ProfitNet
					+ "','"
					+ AutreRevenuNet
					+ "','"
					+ TotalDepensePrive
					+ "','"
					+ CapacitePaiement
					+ "','"
					+ ActifCirculant
					+ "','"
					+ CaisseBM
					+ "','"
					+ BanQue
					+ "','"
					+ CreancePrepayement
					+ "','"
					+ Stock
					+ "','"
					+ ActifImmobilise
					+ "','"
					+ Meuble
					+ "','"
					+ EquipementOutils
					+ "','"
					+ Vehicule
					+ "','"
					+ LocalCommercial
					+ "','"
					+ AutreGarantie
					+ "','"
					+ TotalActifs
					+ "','"
					+ TotalPassifs
					+ "','"
					+ CourtTerme
					+ "','"
					+ LongTerme
					+ "','"
					+ CapitalPropre
					+ "','"
					+ DSR
					+ "','"
					+ RatioG
					+ "','"
					+ RatioLiq
					+ "','"
					+ LevierF
					+ "','"
					+ RatioEndt
					+ "','"
					+ RatioRot
					+ "','"
					+ NumDossierIL
					+ "','"
					+ IdClientIL
					+ "','"
					+ CycleDossier
					+ "','" + c1 + "','" + c2 + "','" + c3 + "')";
			stSaveHistoMinMax = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoMinMax.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoJournalier;

	public void EnregistrerHistoJournalierCyclePasser(double ChiffreCaff,
			double Camv, double ProfitBrut, double DepenseOp, double ProfitNet,
			double AutreRevenuNet, double TotalDepensePrive,
			double CapacitePaiement, double ActifCirculant, double CaisseBM,
			double BanQue, double CreancePrepayement, double Stock,
			double ActifImmobilise, double Meuble, double EquipementOutils,
			double Vehicule, double LocalCommercial, double AutreGarantie,
			double TotalActifs, double TotalPassifs, double CourtTerme,
			double LongTerme, double CapitalPropre, double DSR, double RatioG,
			double RatioLiq, double LevierF, double RatioEndt, double RatioRot,
			String NumDossierIL, int IdClientIL, int CycleDossier, double c1,
			double c2, double c3) {

		if (ChiffreCaff == 0) {
			Camv = 0;
			ProfitBrut = 0;
			DepenseOp = 0;
			ProfitNet = 0;
			AutreRevenuNet = 0;
			TotalDepensePrive = 0;
			CapacitePaiement = 0;
			ActifCirculant = 0;
			CaisseBM = 0;
			BanQue = 0;
			CreancePrepayement = 0;
			Stock = 0;
			ActifImmobilise = 0;
			Meuble = 0;
			EquipementOutils = 0;
			Vehicule = 0;
			LocalCommercial = 0;
			AutreGarantie = 0;
			TotalActifs = 0;
			TotalPassifs = 0;
			CourtTerme = 0;
			LongTerme = 0;
			CapitalPropre = 0;
			DSR = 0;
			RatioG = 0;
			RatioLiq = 0;
			LevierF = 0;
			RatioEndt = 0;
			RatioRot = 0;
			c1 = 0;
			c2 = 0;
			c3 = 0;
		}

		try {
			String req = "insert into tablehistojournalier(ChiffreCaff,Camv,ProfitBrut,DepenseOp,ProfitNet,AutreRevenuNet,TotalDepensePrive,CapacitePaiement,ActifCirculant,CaisseBM,BanQue,CreancePrepayement,Stock,ActifImmobilise,Meuble,EquipementOutils,Vehicule,LocalCommercial,AutreGarantie,TotalActifs,TotalPassifs,CourtTerme,LongTerme,CapitalPropre,DSR,RatioG,RatioLiq,LevierF,RatioEndt,RatioRot,NumDossierIL,IdClientIL,CycleDossier,C1,C2,C3) values('"
					+ ChiffreCaff
					+ "','"
					+ Camv
					+ "','"
					+ ProfitBrut
					+ "','"
					+ DepenseOp
					+ "','"
					+ ProfitNet
					+ "','"
					+ AutreRevenuNet
					+ "','"
					+ TotalDepensePrive
					+ "','"
					+ CapacitePaiement
					+ "','"
					+ ActifCirculant
					+ "','"
					+ CaisseBM
					+ "','"
					+ BanQue
					+ "','"
					+ CreancePrepayement
					+ "','"
					+ Stock
					+ "','"
					+ ActifImmobilise
					+ "','"
					+ Meuble
					+ "','"
					+ EquipementOutils
					+ "','"
					+ Vehicule
					+ "','"
					+ LocalCommercial
					+ "','"
					+ AutreGarantie
					+ "','"
					+ TotalActifs
					+ "','"
					+ TotalPassifs
					+ "','"
					+ CourtTerme
					+ "','"
					+ LongTerme
					+ "','"
					+ CapitalPropre
					+ "','"
					+ DSR
					+ "','"
					+ RatioG
					+ "','"
					+ RatioLiq
					+ "','"
					+ LevierF
					+ "','"
					+ RatioEndt
					+ "','"
					+ RatioRot
					+ "','"
					+ NumDossierIL
					+ "','"
					+ IdClientIL
					+ "','"
					+ CycleDossier
					+ "','" + c1 + "','" + c2 + "','" + c3 + "')";
			stSaveHistoJournalier = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoJournalier.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoProduction;

	public void EnregistrerHistoProductionCyclePasser(double ChiffreCaff,
			double Camv, double ProfitBrut, double DepenseOp, double ProfitNet,
			double AutreRevenuNet, double TotalDepensePrive,
			double CapacitePaiement, double ActifCirculant, double CaisseBM,
			double BanQue, double CreancePrepayement, double Stock,
			double ActifImmobilise, double Meuble, double EquipementOutils,
			double Vehicule, double LocalCommercial, double AutreGarantie,
			double TotalActifs, double TotalPassifs, double CourtTerme,
			double LongTerme, double CapitalPropre, double DSR, double RatioG,
			double RatioLiq, double LevierF, double RatioEndt, double RatioRot,
			String NumDossierIL, int IdClientIL, int CycleDossier, double c1,
			double c2, double c3) {

		if (ChiffreCaff == 0) {
			Camv = 0;
			ProfitBrut = 0;
			DepenseOp = 0;
			ProfitNet = 0;
			AutreRevenuNet = 0;
			TotalDepensePrive = 0;
			CapacitePaiement = 0;
			ActifCirculant = 0;
			CaisseBM = 0;
			BanQue = 0;
			CreancePrepayement = 0;
			Stock = 0;
			ActifImmobilise = 0;
			Meuble = 0;
			EquipementOutils = 0;
			Vehicule = 0;
			LocalCommercial = 0;
			AutreGarantie = 0;
			TotalActifs = 0;
			TotalPassifs = 0;
			CourtTerme = 0;
			LongTerme = 0;
			CapitalPropre = 0;
			DSR = 0;
			RatioG = 0;
			RatioLiq = 0;
			LevierF = 0;
			RatioEndt = 0;
			RatioRot = 0;
			c1 = 0;
			c2 = 0;
			c3 = 0;
		}

		try {
			String req = "insert into tablehistoproduction(ChiffreCaff,Camv,ProfitBrut,DepenseOp,ProfitNet,AutreRevenuNet,TotalDepensePrive,CapacitePaiement,ActifCirculant,CaisseBM,BanQue,CreancePrepayement,Stock,ActifImmobilise,Meuble,EquipementOutils,Vehicule,LocalCommercial,AutreGarantie,TotalActifs,TotalPassifs,CourtTerme,LongTerme,CapitalPropre,DSR,RatioG,RatioLiq,LevierF,RatioEndt,RatioRot,NumDossierIL,IdClientIL,CycleDossier,C1,C2,C3) values('"
					+ ChiffreCaff
					+ "','"
					+ Camv
					+ "','"
					+ ProfitBrut
					+ "','"
					+ DepenseOp
					+ "','"
					+ ProfitNet
					+ "','"
					+ AutreRevenuNet
					+ "','"
					+ TotalDepensePrive
					+ "','"
					+ CapacitePaiement
					+ "','"
					+ ActifCirculant
					+ "','"
					+ CaisseBM
					+ "','"
					+ BanQue
					+ "','"
					+ CreancePrepayement
					+ "','"
					+ Stock
					+ "','"
					+ ActifImmobilise
					+ "','"
					+ Meuble
					+ "','"
					+ EquipementOutils
					+ "','"
					+ Vehicule
					+ "','"
					+ LocalCommercial
					+ "','"
					+ AutreGarantie
					+ "','"
					+ TotalActifs
					+ "','"
					+ TotalPassifs
					+ "','"
					+ CourtTerme
					+ "','"
					+ LongTerme
					+ "','"
					+ CapitalPropre
					+ "','"
					+ DSR
					+ "','"
					+ RatioG
					+ "','"
					+ RatioLiq
					+ "','"
					+ LevierF
					+ "','"
					+ RatioEndt
					+ "','"
					+ RatioRot
					+ "','"
					+ NumDossierIL
					+ "','"
					+ IdClientIL
					+ "','"
					+ CycleDossier
					+ "','" + c1 + "','" + c2 + "','" + c3 + "')";
			stSaveHistoProduction = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoProduction.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoMensuelSup;

	public void EnregistrerHistoMensuelCyclePasserSUP(int IdClientIL) {

		try {
			String req = "delete from tablehistomensuel where IdClientIL='"
					+ IdClientIL + "'";
			stSaveHistoMensuelSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoMensuelSup.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoMinMaxSup;

	public void EnregistrerHistoMinMaxCyclePasserSUP(int IdClientIL) {
		try {
			String req = "delete from tablehistominmax where IdClientIL='"
					+ IdClientIL + "'";
			stSaveHistoMinMaxSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoMinMaxSup.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoJournalierSup;

	public void EnregistrerHistoJournalierCyclePasserSUP(int IdClientIL) {

		try {
			String req = "delete from tablehistojournalier where IdClientIL='"
					+ IdClientIL + "'";
			stSaveHistoJournalierSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoJournalierSup.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stSaveHistoProductionSup;

	public void EnregistrerHistoProductionCyclePasserSUP(int IdClientIL) {

		try {
			String req = "delete from tablehistoproduction where IdClientIL='"
					+ IdClientIL + "'";
			stSaveHistoProductionSup = ConnexionBDLocal.getConnexion()
					.createStatement();
			stSaveHistoProductionSup.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	Statement stcheck199400;
	ResultSet rescheck1199400;

	public List<WorkflowEntite> GetInfoHistoJournalierCyclePasser(int Idclient) {
		List<WorkflowEntite> ListeInfoHistoJournalierCyclePasser = new ArrayList<>();
		try {
			stcheck199400 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from tablehistojournalier where IdClientIL='"
					+ Idclient + "'";
			rescheck1199400 = stcheck199400.executeQuery(req);
			while (rescheck1199400.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setChiffrecaffrdc(rescheck1199400.getDouble("ChiffreCaff"));
				wk.setCamvrdc(rescheck1199400.getDouble("Camv"));
				wk.setProfitbrutrdc(rescheck1199400.getDouble("ProfitBrut"));
				wk.setDepenseoprdc(rescheck1199400.getDouble("DepenseOp"));
				wk.setProfitnetrdc(rescheck1199400.getDouble("ProfitNet"));
				wk.setAutrerevenunetrdc(rescheck1199400
						.getDouble("AutreRevenuNet"));
				wk.setTotaldepensepriverdc(rescheck1199400
						.getDouble("TotalDepensePrive"));
				wk.setCapacitepaiementrdc(rescheck1199400
						.getDouble("CapacitePaiement"));
				wk.setActifcirculantrdc(rescheck1199400
						.getDouble("ActifCirculant"));
				wk.setCaissebmrdc(rescheck1199400.getDouble("CaisseBM"));
				wk.setBanquerdc(rescheck1199400.getDouble("BanQue"));
				wk.setCreanceprepayementrdc(rescheck1199400
						.getDouble("CreancePrepayement"));
				wk.setStockrdc(rescheck1199400.getDouble("Stock"));
				wk.setActifimmobiliserdc(rescheck1199400
						.getDouble("ActifImmobilise"));
				wk.setMeublerdc(rescheck1199400.getDouble("Meuble"));
				wk.setEquipementoutilsrdc(rescheck1199400
						.getDouble("EquipementOutils"));
				wk.setVehiculerdc(rescheck1199400.getDouble("Vehicule"));
				wk.setLocalcommercialrdc(rescheck1199400
						.getDouble("LocalCommercial"));
				wk.setAutregarantierdc(rescheck1199400
						.getDouble("AutreGarantie"));
				wk.setTotalactifsrdc(rescheck1199400.getDouble("TotalActifs"));
				wk.setTotalpassifsrdc(rescheck1199400.getDouble("TotalPassifs"));
				wk.setCourttermerdc(rescheck1199400.getDouble("CourtTerme"));
				wk.setLongtermerdc(rescheck1199400.getDouble("LongTerme"));
				wk.setCapitalproprerdc(rescheck1199400
						.getDouble("CapitalPropre"));
				wk.setDsrrdc(rescheck1199400.getDouble("DSR"));
				wk.setRatiogrdc(rescheck1199400.getDouble("RatioG"));
				wk.setRatioliqrdc(rescheck1199400.getDouble("RatioLiq"));
				wk.setLevierfrdc(rescheck1199400.getDouble("LevierF"));
				wk.setRatioendtrdc(rescheck1199400.getDouble("RatioEndt"));
				wk.setRatiorotrdc(rescheck1199400.getDouble("RatioRot"));
				wk.setC1(rescheck1199400.getDouble("C1"));
				wk.setC2(rescheck1199400.getDouble("C2"));
				wk.setC3(rescheck1199400.getDouble("C3"));
				ListeInfoHistoJournalierCyclePasser.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInfoHistoJournalierCyclePasser;
	}

	Statement stcheck1994000;
	ResultSet rescheck11994000;

	public List<WorkflowEntite> GetInfoHistoMensuelCyclePasser(int Idclient) {
		List<WorkflowEntite> ListeInfoHistoMensuelCyclePasser = new ArrayList<>();
		try {
			stcheck1994000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from tablehistomensuel where IdClientIL='"
					+ Idclient + "'";
			rescheck11994000 = stcheck1994000.executeQuery(req);
			while (rescheck11994000.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setChiffrecaffrdc(rescheck11994000.getDouble("ChiffreCaff"));
				wk.setCamvrdc(rescheck11994000.getDouble("Camv"));
				wk.setProfitbrutrdc(rescheck11994000.getDouble("ProfitBrut"));
				wk.setDepenseoprdc(rescheck11994000.getDouble("DepenseOp"));
				wk.setProfitnetrdc(rescheck11994000.getDouble("ProfitNet"));
				wk.setAutrerevenunetrdc(rescheck11994000
						.getDouble("AutreRevenuNet"));
				wk.setTotaldepensepriverdc(rescheck11994000
						.getDouble("TotalDepensePrive"));
				wk.setCapacitepaiementrdc(rescheck11994000
						.getDouble("CapacitePaiement"));
				wk.setActifcirculantrdc(rescheck11994000
						.getDouble("ActifCirculant"));
				wk.setCaissebmrdc(rescheck11994000.getDouble("CaisseBM"));
				wk.setBanquerdc(rescheck11994000.getDouble("BanQue"));
				wk.setCreanceprepayementrdc(rescheck11994000
						.getDouble("CreancePrepayement"));
				wk.setStockrdc(rescheck11994000.getDouble("Stock"));
				wk.setActifimmobiliserdc(rescheck11994000
						.getDouble("ActifImmobilise"));
				wk.setMeublerdc(rescheck11994000.getDouble("Meuble"));
				wk.setEquipementoutilsrdc(rescheck11994000
						.getDouble("EquipementOutils"));
				wk.setVehiculerdc(rescheck11994000.getDouble("Vehicule"));
				wk.setLocalcommercialrdc(rescheck11994000
						.getDouble("LocalCommercial"));
				wk.setAutregarantierdc(rescheck11994000
						.getDouble("AutreGarantie"));
				wk.setTotalactifsrdc(rescheck11994000.getDouble("TotalActifs"));
				wk.setTotalpassifsrdc(rescheck11994000
						.getDouble("TotalPassifs"));
				wk.setCourttermerdc(rescheck11994000.getDouble("CourtTerme"));
				wk.setLongtermerdc(rescheck11994000.getDouble("LongTerme"));
				wk.setCapitalproprerdc(rescheck11994000
						.getDouble("CapitalPropre"));
				wk.setDsrrdc(rescheck11994000.getDouble("DSR"));
				wk.setRatiogrdc(rescheck11994000.getDouble("RatioG"));
				wk.setRatioliqrdc(rescheck11994000.getDouble("RatioLiq"));
				wk.setLevierfrdc(rescheck11994000.getDouble("LevierF"));
				wk.setRatioendtrdc(rescheck11994000.getDouble("RatioEndt"));
				wk.setRatiorotrdc(rescheck11994000.getDouble("RatioRot"));
				wk.setC1(rescheck11994000.getDouble("C1"));
				wk.setC2(rescheck11994000.getDouble("C2"));
				wk.setC3(rescheck11994000.getDouble("C3"));
				ListeInfoHistoMensuelCyclePasser.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInfoHistoMensuelCyclePasser;
	}

	Statement stcheck1994000TMAX;
	ResultSet rescheck11994000TMAX;

	public List<WorkflowEntite> GetInfoHistoTotalMinMaxCyclePasser(int Idclient) {
		List<WorkflowEntite> ListeInfoHistoTotalMinMaxCyclePasser = new ArrayList<>();
		try {
			stcheck1994000TMAX = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select * from tablehistominmax where IdClientIL='"
					+ Idclient + "'";
			rescheck11994000TMAX = stcheck1994000TMAX.executeQuery(req);
			while (rescheck11994000TMAX.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setChiffrecaffrdc(rescheck11994000TMAX
						.getDouble("ChiffreCaff"));
				wk.setCamvrdc(rescheck11994000TMAX.getDouble("Camv"));
				wk.setProfitbrutrdc(rescheck11994000TMAX
						.getDouble("ProfitBrut"));
				wk.setDepenseoprdc(rescheck11994000TMAX.getDouble("DepenseOp"));
				wk.setProfitnetrdc(rescheck11994000TMAX.getDouble("ProfitNet"));
				wk.setAutrerevenunetrdc(rescheck11994000TMAX
						.getDouble("AutreRevenuNet"));
				wk.setTotaldepensepriverdc(rescheck11994000TMAX
						.getDouble("TotalDepensePrive"));
				wk.setCapacitepaiementrdc(rescheck11994000TMAX
						.getDouble("CapacitePaiement"));
				wk.setActifcirculantrdc(rescheck11994000TMAX
						.getDouble("ActifCirculant"));
				wk.setCaissebmrdc(rescheck11994000TMAX.getDouble("CaisseBM"));
				wk.setBanquerdc(rescheck11994000TMAX.getDouble("BanQue"));
				wk.setCreanceprepayementrdc(rescheck11994000TMAX
						.getDouble("CreancePrepayement"));
				wk.setStockrdc(rescheck11994000TMAX.getDouble("Stock"));
				wk.setActifimmobiliserdc(rescheck11994000TMAX
						.getDouble("ActifImmobilise"));
				wk.setMeublerdc(rescheck11994000TMAX.getDouble("Meuble"));
				wk.setEquipementoutilsrdc(rescheck11994000TMAX
						.getDouble("EquipementOutils"));
				wk.setVehiculerdc(rescheck11994000TMAX.getDouble("Vehicule"));
				wk.setLocalcommercialrdc(rescheck11994000TMAX
						.getDouble("LocalCommercial"));
				wk.setAutregarantierdc(rescheck11994000TMAX
						.getDouble("AutreGarantie"));
				wk.setTotalactifsrdc(rescheck11994000TMAX
						.getDouble("TotalActifs"));
				wk.setTotalpassifsrdc(rescheck11994000TMAX
						.getDouble("TotalPassifs"));
				wk.setCourttermerdc(rescheck11994000TMAX
						.getDouble("CourtTerme"));
				wk.setLongtermerdc(rescheck11994000TMAX.getDouble("LongTerme"));
				wk.setCapitalproprerdc(rescheck11994000TMAX
						.getDouble("CapitalPropre"));
				wk.setDsrrdc(rescheck11994000TMAX.getDouble("DSR"));
				wk.setRatiogrdc(rescheck11994000TMAX.getDouble("RatioG"));
				wk.setRatioliqrdc(rescheck11994000TMAX.getDouble("RatioLiq"));
				wk.setLevierfrdc(rescheck11994000TMAX.getDouble("LevierF"));
				wk.setRatioendtrdc(rescheck11994000TMAX.getDouble("RatioEndt"));
				wk.setRatiorotrdc(rescheck11994000TMAX.getDouble("RatioRot"));
				wk.setC1(rescheck11994000TMAX.getDouble("C1"));
				wk.setC2(rescheck11994000TMAX.getDouble("C2"));
				wk.setC3(rescheck11994000TMAX.getDouble("C3"));

				ListeInfoHistoTotalMinMaxCyclePasser.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInfoHistoTotalMinMaxCyclePasser;
	}

	Statement stcheck19940000;
	ResultSet rescheck119940000;

	public List<WorkflowEntite> GetInfoHistoProductionCyclePasser(int Idclient) {
		List<WorkflowEntite> ListeInfoHistoProductionCyclePasser = new ArrayList<>();
		try {
			stcheck19940000 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select * from tablehistoproduction where IdClientIL='"
					+ Idclient + "'";
			rescheck119940000 = stcheck19940000.executeQuery(req);
			while (rescheck119940000.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setChiffrecaffrdc(rescheck119940000.getDouble("ChiffreCaff"));
				wk.setCamvrdc(rescheck119940000.getDouble("Camv"));
				wk.setProfitbrutrdc(rescheck119940000.getDouble("ProfitBrut"));
				wk.setDepenseoprdc(rescheck119940000.getDouble("DepenseOp"));
				wk.setProfitnetrdc(rescheck119940000.getDouble("ProfitNet"));
				wk.setAutrerevenunetrdc(rescheck119940000
						.getDouble("AutreRevenuNet"));
				wk.setTotaldepensepriverdc(rescheck119940000
						.getDouble("TotalDepensePrive"));
				wk.setCapacitepaiementrdc(rescheck119940000
						.getDouble("CapacitePaiement"));
				wk.setActifcirculantrdc(rescheck119940000
						.getDouble("ActifCirculant"));
				wk.setCaissebmrdc(rescheck119940000.getDouble("CaisseBM"));
				wk.setBanquerdc(rescheck119940000.getDouble("BanQue"));
				wk.setCreanceprepayementrdc(rescheck119940000
						.getDouble("CreancePrepayement"));
				wk.setStockrdc(rescheck119940000.getDouble("Stock"));
				wk.setActifimmobiliserdc(rescheck119940000
						.getDouble("ActifImmobilise"));
				wk.setMeublerdc(rescheck119940000.getDouble("Meuble"));
				wk.setEquipementoutilsrdc(rescheck119940000
						.getDouble("EquipementOutils"));
				wk.setVehiculerdc(rescheck119940000.getDouble("Vehicule"));
				wk.setLocalcommercialrdc(rescheck119940000
						.getDouble("LocalCommercial"));
				wk.setAutregarantierdc(rescheck119940000
						.getDouble("AutreGarantie"));
				wk.setTotalactifsrdc(rescheck119940000.getDouble("TotalActifs"));
				wk.setTotalpassifsrdc(rescheck119940000
						.getDouble("TotalPassifs"));
				wk.setCourttermerdc(rescheck119940000.getDouble("CourtTerme"));
				wk.setLongtermerdc(rescheck119940000.getDouble("LongTerme"));
				wk.setCapitalproprerdc(rescheck119940000
						.getDouble("CapitalPropre"));
				wk.setDsrrdc(rescheck119940000.getDouble("DSR"));
				wk.setRatiogrdc(rescheck119940000.getDouble("RatioG"));
				wk.setRatioliqrdc(rescheck119940000.getDouble("RatioLiq"));
				wk.setLevierfrdc(rescheck119940000.getDouble("LevierF"));
				wk.setRatioendtrdc(rescheck119940000.getDouble("RatioEndt"));
				wk.setRatiorotrdc(rescheck119940000.getDouble("RatioRot"));
				wk.setC1(rescheck119940000.getDouble("C1"));
				wk.setC2(rescheck119940000.getDouble("C2"));
				wk.setC3(rescheck119940000.getDouble("C3"));

				ListeInfoHistoProductionCyclePasser.add(wk);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ListeInfoHistoProductionCyclePasser;
	}

	public List<WorkflowEntite> ListeDossierCreditIndividuelParAgenceENNbrEtVolumeComiteDahboard(
			int IdUser) {

		List<WorkflowEntite> liste = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			// Connexion par thread
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser, dcr.EtatDossierCredit, "
					+ "COUNT(*) AS nbr, "
					+ "SUM(prop.MontantProp) AS vol, "
					+ "AVG(DATEDIFF(CURDATE(), dcr.DtFluxComite)) AS moyenne_jours "
					+ "FROM dossiercredit dcr "
					+ "INNER JOIN assignationdossiercredit aff ON aff.NumDossierCre = dcr.NumDossierCredit "
					+ "INNER JOIN user us ON aff.IDAnalysteDossierCredit = us.Iduser "
					+ "INNER JOIN proposition prop ON prop.NumDossierCre = dcr.NumDossierCredit "
					+ "WHERE us.Iduser = " + IdUser + " "
					+ "AND dcr.EtatDossierCredit = 'Comite' "
					+ "GROUP BY us.NomsUser, dcr.EtatDossierCredit";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setStatutdossieril(rs.getString("EtatDossierCredit"));
				wk.setNomscompletanalystedossieril(rs.getString("NomsUser"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				wk.setNbrjourmoyentraitement(rs.getLong("moyenne_jours"));
				liste.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return liste;
	}

	Statement st1994cc25Bn;

	public int updateUtilisateur(int id, String NomsUser, String Telephone,
			String Email, String Statut, String Login, String MotPass,
			int IdBranche, String ProfilUser, int NumCbsU, int connected) {
		int n = 0;
		try {
			st1994cc25Bn = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update user set NomsUser='" + NomsUser
					+ "',Telephone='" + Telephone + "',Email='" + Email
					+ "',Statut='" + Statut + "',Login='" + Login
					+ "',MotPass='" + MotPass + "',IdBranche='" + IdBranche
					+ "',ProfilUser='" + ProfilUser + "',NumCbsU='" + NumCbsU
					+ "',Connected='" + connected + "' where Iduser='" + id
					+ "'";
			n = st1994cc25Bn.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	Statement st7226;
	ResultSet res7226;

	public List<WorkflowEntite> ListeInformationUserForUpdate(int id) {
		List<WorkflowEntite> ListeInformationTousUser = new ArrayList<>();
		try {
			String req = "select u.Iduser,u.NomsUser,u.Email,u.Statut,u.ProfilUser,b.LibelleBranche,u.Login,u.MotPass,u.Telephone,u.NumCbsU from user as u inner join branche as b on u.IdBranche=b.IdBranche where u.Iduser='"
					+ id + "'";
			st7226 = ConnexionBDLocal.getConnexion().createStatement();
			res7226 = st7226.executeQuery(req);
			while (res7226.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setIdutilisateur(res7226.getInt("u.Iduser"));
				wkentite.setNomsutilisateur(res7226.getString("u.NomsUser"));
				wkentite.setEmailutilisateur(res7226.getString("u.Email"));
				wkentite.setStatututilisateur(res7226.getString("u.Statut"));
				wkentite.setProfilutilisateur(res7226.getString("u.ProfilUser"));
				wkentite.setBrancheuse(res7226.getString("b.LibelleBranche"));
				wkentite.setLoginutilisateur(res7226.getString("u.Login"));
				wkentite.setMotpassutilisateur(res7226.getString("u.MotPass"));
				wkentite.setTelephoneutilisateur(res7226
						.getString("u.Telephone"));
				wkentite.setNumcbsutilisateur(res7226.getInt("u.NumCbsU"));
				ListeInformationTousUser.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationTousUser;
	}

	Statement st150204Eva2;
	ResultSet res150204Eva2;

	public String GetActuelPWDUser(int IdUser) {
		String ActuelPWDUser = "";
		try {
			st150204Eva2 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select MotPass from user where Iduser='" + IdUser
					+ "'";
			res150204Eva2 = st150204Eva2.executeQuery(req);
			while (res150204Eva2.next()) {
				ActuelPWDUser = res150204Eva2.getString("MotPass");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ActuelPWDUser;
	}

	Statement st1994cc25Bn1;

	public int updateMotPasseUtilisateur(int id, String NouveauMotPass,
			int connected) {
		int n = 0;
		try {
			st1994cc25Bn1 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "update user set MotPass='" + NouveauMotPass
					+ "', Connected='" + connected + "' where Iduser='" + id
					+ "'";
			n = st1994cc25Bn1.executeUpdate(req);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	Statement st105TT;
	ResultSet res105TT;

	public int GetIdUserViaLogin(String login) {
		int IdUserViaLogin = 0;
		try {
			String req = "select Iduser from user where Login='" + login + "'";
			st105TT = ConnexionBDLocal.getConnexion().createStatement();
			res105TT = st105TT.executeQuery(req);
			while (res105TT.next()) {
				IdUserViaLogin = res105TT.getInt("Iduser");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return IdUserViaLogin;
	}

	Statement stBloquer;

	public int BloquerUser(int IdUser) {
		int nbr = 0;
		try {
			stBloquer = ConnexionBDLocal.getConnexion().createStatement();
			String Statu = "Non-Actif";
			String req = "update user set Statut='" + Statu
					+ "' where Iduser='" + IdUser + "'";
			nbr = stBloquer.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbr;
	}

	Statement st149Q;
	ResultSet res149Q;

	public int GetCycleClientEtGL(int idclientCBS) {
		int CycleClientEtGL = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st149Q = cnx.createStatement();
			String req = "Select count(id_doss) nbr from ad_dcr where etat in (5,6,7,9) and id_client='"
					+ idclientCBS + "'";
			res149Q = st149Q.executeQuery(req);
			while (res149Q.next()) {
				CycleClientEtGL = res149Q.getInt("nbr");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res149Q != null)
					res149Q.close();
			} catch (Exception e) {
			}
			try {
				if (st149Q != null)
					st149Q.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return CycleClientEtGL;
	}

	Statement st7226AAA;
	ResultSet res7226AAA;

	public List<WorkflowEntite> GetListeInformationLoginUser(String login) {
		List<WorkflowEntite> ListeInformationLoginUser = new ArrayList<>();
		try {
			String req = "select Login from user where Login='" + login + "'";
			st7226AAA = ConnexionBDLocal.getConnexion().createStatement();
			res7226AAA = st7226AAA.executeQuery(req);
			while (res7226AAA.next()) {
				WorkflowEntite wkentite = new WorkflowEntite();
				wkentite.setLoginutilisateur(res7226AAA.getString("Login"));
				ListeInformationLoginUser.add(wkentite);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationLoginUser;
	}

	Statement stkkkk001;

	public int UpdateAffApresModifDemande(String numdossier, int idprodC) {
		int nbrLigne = 0;
		try {
			String req = "update assignationdossiercredit set IDProduitCredit='"
					+ idprodC + "' where NumDossierCre='" + numdossier + "'";
			stkkkk001 = ConnexionBDLocal.getConnexion().createStatement();
			nbrLigne = stkkkk001.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return nbrLigne;
	}

	Statement st203SJ;
	ResultSet res203SJ;

	public int GetStatutJuridiqueClientCbs(int idclientcbs) {
		int StatutJuridiqueClientCbs = 0;
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st203SJ = cnx.createStatement();
			String req = "select statut_juridique from ad_cli where id_client='"
					+ idclientcbs + "'";
			res203SJ = st203SJ.executeQuery(req);
			while (res203SJ.next()) {
				StatutJuridiqueClientCbs = res203SJ.getInt("statut_juridique");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res203SJ != null)
					res203SJ.close();
			} catch (Exception e) {
			}
			try {
				if (st203SJ != null)
					st203SJ.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return StatutJuridiqueClientCbs;
	}

	Statement st203SJRS;
	ResultSet res203SJRS;

	public String GetRaisonSocialClientCbs(int idclientcbs) {
		String RaisonSocialClientCbs = "NA";
		Connection cnx = null;
		try {
			cnx = ConnexionADbanking.getConnexion();
			st203SJRS = cnx.createStatement();
			String req = "select pm_raison_sociale from ad_cli where id_client='"
					+ idclientcbs + "'";
			res203SJRS = st203SJRS.executeQuery(req);
			while (res203SJRS.next()) {
				RaisonSocialClientCbs = res203SJRS
						.getString("pm_raison_sociale");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (res203SJRS != null)
					res203SJRS.close();
			} catch (Exception e) {
			}
			try {
				if (st203SJRS != null)
					st203SJRS.close();
			} catch (Exception e) {
			} // <-- ICI
			try {
				if (cnx != null)
					cnx.close();
			} catch (Exception e) {
			} // <-- ICI
		}

		return RaisonSocialClientCbs;
	}

	Statement st7226AAARS;
	ResultSet res7226AAARS;

	public String GetRaisonSocial(int idclient) {
		String RaisonSocial = "NA";
		try {
			String req = "select RaisonSocialPM from clientd where idclient='"
					+ idclient + "'";
			st7226AAARS = ConnexionBDLocal.getConnexion().createStatement();
			res7226AAARS = st7226AAARS.executeQuery(req);
			while (res7226AAARS.next()) {
				RaisonSocial = res7226AAARS.getString("RaisonSocialPM");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return RaisonSocial;
	}

	Statement st127SRR;
	ResultSet res127SRR;

	public List<WorkflowEntite> GetListeInformationRapportContratPredtIL(
			String dossier) {
		List<WorkflowEntite> ListeInformationRapportContratPredtIL = new ArrayList<>();
		try {
			st127SRR = ConnexionBDLocal.getConnexion().createStatement();
			String req = "SELECT DISTINCT cli.AdrsPM,cli.TelPM,"
					+ "cli.NomCli, "
					+ "cli.RaisonSocialPM,"
					+ "cli.PostNomCli, "
					+ "cli.PrenomCli, "
					+ "CONCAT_WS(' ', cli.NomCli, cli.PostNomCli, cli.PrenomCli) AS nom_complet, "
					+ "cli.AdresseDomicileCli, "
					+ "garant.NomG, "
					+ "garant.PostNomG, "
					+ "garant.PrenomG, "
					+ "garant.AdresseG, "
					+ "com.MontantCreditValider, "
					+ "com.NbrEcheancierValide, "
					+ "us.NomsUser, "
					+ "br.LibelleBranche, "
					+ "param.Caution, "
					+ "param.FraisDossier, "
					+ "param.Description, "
					+ "br.Province, "
					+ "garant.NomsConjoint, "
					+ "param.TauxInteretM "
					+ "FROM clientd AS cli "
					+ "INNER JOIN dossiercredit AS doss ON cli.idclient = doss.IdClientD "
					+ "INNER JOIN garantcreditindividuel AS garant ON doss.NumDossierCredit = garant.NumDossierCre "
					+ "INNER JOIN comite AS com ON com.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN assignationdossiercredit AS ass ON ass.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN user AS us ON ass.IDAssignateur = us.Iduser "
					+ "INNER JOIN paramproduitcredit AS param ON param.Id = com.IDProduitCreditComite "
					+ "INNER JOIN branche AS br ON br.IdBranche = us.IdBranche "
					+ "WHERE doss.NumDossierCredit ='" + dossier + "'";
			res127SRR = st127SRR.executeQuery(req);
			while (res127SRR.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomcli(res127SRR.getString("cli.NomCli"));
				wk.setPostnomcli(res127SRR.getString("cli.PostNomCli"));
				wk.setPrenomcli(res127SRR.getString("cli.PrenomCli"));
				String RS = res127SRR.getString("cli.RaisonSocialPM");
				if (RS.equals("NA")) {
					wk.setNom_complet(res127SRR.getString("nom_complet"));
					wk.setAdressedomicilecli(res127SRR
							.getString("cli.AdresseDomicileCli"));
				} else {
					wk.setNom_complet(RS);
					wk.setAdressedomicilecli(res127SRR.getString("cli.AdrsPM"));
				}
				wk.setNomg(res127SRR.getString("garant.NomG"));
				wk.setPostnomg(res127SRR.getString("garant.PostNomG"));
				wk.setPrenomg(res127SRR.getString("garant.PrenomG"));
				wk.setAdresseg(res127SRR.getString("garant.AdresseG"));
				wk.setMontantcreditvalider(res127SRR
						.getDouble("com.MontantCreditValider"));
				wk.setNbrecheanciervalide(res127SRR
						.getInt("com.NbrEcheancierValide"));
				wk.setNomsuser(res127SRR.getString("us.NomsUser"));
				wk.setLibellebranche(res127SRR.getString("br.LibelleBranche"));
				wk.setCaution(res127SRR.getDouble("param.Caution"));
				wk.setFraisdossier(res127SRR.getDouble("param.FraisDossier"));
				wk.setDescription(res127SRR.getString("param.Description"));
				wk.setProvince(res127SRR.getString("br.Province"));
				wk.setNomsconjoint(res127SRR.getString("garant.NomsConjoint"));
				wk.setTauxinteretm(res127SRR.getDouble("param.TauxInteretM"));
				ListeInformationRapportContratPredtIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationRapportContratPredtIL;
	}

	Statement st127SRC;
	ResultSet res127SRC;

	public List<WorkflowEntite> GetListeInformationRapportContratCautionnementIL(
			String dossier) {
		List<WorkflowEntite> ListeInformationRapportContratCautionnementIL = new ArrayList<>();
		try {
			st127SRC = ConnexionBDLocal.getConnexion().createStatement();
			String req = "SELECT DISTINCT cli.NomCli,cli.AdrsPM,cli.TelPM,cli.RaisonSocialPM,cli.PostNomCli, cli.PrenomCli, "
					+ "CONCAT_WS(' ', cli.NomCli, cli.PostNomCli, cli.PrenomCli) AS nom_complet, "
					+ "cli.AdresseDomicileCli, "
					+ "garant.NomG, garant.PostNomG, garant.PrenomG, "
					+ "CONCAT_WS(' ', garant.NomG, garant.PostNomG, garant.PrenomG) AS nomcompletg, "
					+ "garant.AdresseG, "
					+ "com.MontantCreditValider, com.NbrEcheancierValide, "
					+ "us.NomsUser, "
					+ "br.LibelleBranche, "
					+ "param.Caution, param.FraisDossier, param.Description, "
					+ "br.Province "
					+ "FROM clientd AS cli "
					+ "INNER JOIN dossiercredit AS doss ON cli.idclient = doss.IdClientD "
					+ "INNER JOIN garantcreditindividuel AS garant ON doss.NumDossierCredit = garant.NumDossierCre "
					+ "INNER JOIN comite AS com ON com.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN assignationdossiercredit AS ass ON ass.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN user AS us ON ass.IDAssignateur = us.Iduser "
					+ "INNER JOIN paramproduitcredit AS param ON param.Id = ass.IDProduitCredit "
					+ "INNER JOIN branche AS br ON br.IdBranche = us.IdBranche "
					+ "WHERE doss.NumDossierCredit = '" + dossier + "'";
			res127SRC = st127SRC.executeQuery(req);
			while (res127SRC.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomcli(res127SRC.getString("cli.NomCli"));
				wk.setPostnomcli(res127SRC.getString("cli.PostNomCli"));
				wk.setPrenomcli(res127SRC.getString("cli.PrenomCli"));
				String RS = res127SRC.getString("cli.RaisonSocialPM");
				if (RS.equals("NA")) {
					wk.setNom_complet(res127SRC.getString("nom_complet"));
					wk.setAdressedomicilecli(res127SRC
							.getString("cli.AdresseDomicileCli"));
				} else {
					wk.setNom_complet(RS);
					wk.setAdressedomicilecli(res127SRC.getString("cli.AdrsPM"));
				}
				wk.setNomg(res127SRC.getString("garant.NomG"));
				wk.setPostnomg(res127SRC.getString("garant.PostNomG"));
				wk.setPrenomg(res127SRC.getString("garant.PrenomG"));
				wk.setAdresseg(res127SRC.getString("garant.AdresseG"));
				wk.setMontantcreditvalider(res127SRC
						.getDouble("com.MontantCreditValider"));
				wk.setNbrecheanciervalide(res127SRC
						.getInt("com.NbrEcheancierValide"));
				wk.setNomsuser(res127SRC.getString("us.NomsUser"));
				wk.setLibellebranche(res127SRC.getString("br.LibelleBranche"));
				wk.setCaution(res127SRC.getDouble("param.Caution"));
				wk.setFraisdossier(res127SRC.getDouble("param.FraisDossier"));
				wk.setDescription(res127SRC.getString("param.Description"));
				wk.setProvince(res127SRC.getString("br.Province"));
				wk.setNomcompletg(res127SRC.getString("nomcompletg"));

				ListeInformationRapportContratCautionnementIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationRapportContratCautionnementIL;
	}

	Statement st127SRG;
	ResultSet res127SRG;

	public List<WorkflowEntite> GetListeInformationRapportContratGAGEtIL(
			String dossier) {
		List<WorkflowEntite> ListeInformationRapportContratGAGEtIL = new ArrayList<>();
		try {
			st127SRG = ConnexionBDLocal.getConnexion().createStatement();
			String req = "SELECT DISTINCT cli.NomCli,cli.AdrsPM,cli.TelPM,cli.RaisonSocialPM,cli.PostNomCli, cli.PrenomCli, "
					+ "CONCAT_WS(' ', cli.NomCli, cli.PostNomCli, cli.PrenomCli) AS nom_complet, "
					+ "cli.AdresseDomicileCli, "
					+ "garant.NomG, garant.PostNomG, garant.PrenomG, "
					+ "garant.AdresseG, "
					+ "com.MontantCreditValider, com.NbrEcheancierValide, "
					+ "us.NomsUser, "
					+ "br.LibelleBranche, "
					+ "param.Caution, param.FraisDossier, param.Description, "
					+ "br.Province, "
					+ "garant.NomsConjoint, "
					+ "param.TauxInteretM "
					+ "FROM clientd AS cli "
					+ "INNER JOIN dossiercredit AS doss ON cli.idclient = doss.IdClientD "
					+ "INNER JOIN garantcreditindividuel AS garant ON doss.NumDossierCredit = garant.NumDossierCre "
					+ "INNER JOIN comite AS com ON com.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN assignationdossiercredit AS ass ON ass.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN user AS us ON ass.IDAssignateur = us.Iduser "
					+ "INNER JOIN paramproduitcredit AS param ON param.Id = ass.IDProduitCredit "
					+ "INNER JOIN branche AS br ON br.IdBranche = us.IdBranche "
					+ "WHERE doss.NumDossierCredit ='" + dossier + "'";
			res127SRG = st127SRG.executeQuery(req);
			while (res127SRG.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomcli(res127SRG.getString("cli.NomCli"));
				wk.setPostnomcli(res127SRG.getString("cli.PostNomCli"));
				wk.setPrenomcli(res127SRG.getString("cli.PrenomCli"));
				String RS = res127SRG.getString("cli.RaisonSocialPM");
				if (RS.equals("NA")) {
					wk.setNom_complet(res127SRG.getString("nom_complet"));
					wk.setAdressedomicilecli(res127SRG
							.getString("cli.AdresseDomicileCli"));
				} else {
					wk.setNom_complet(RS);
					wk.setAdressedomicilecli(res127SRG.getString("cli.AdrsPM"));
				}

				wk.setNomg(res127SRG.getString("garant.NomG"));
				wk.setPostnomg(res127SRG.getString("garant.PostNomG"));
				wk.setPrenomg(res127SRG.getString("garant.PrenomG"));
				wk.setAdresseg(res127SRG.getString("garant.AdresseG"));
				wk.setMontantcreditvalider(res127SRG
						.getDouble("com.MontantCreditValider"));
				wk.setNbrecheanciervalide(res127SRG
						.getInt("com.NbrEcheancierValide"));
				wk.setNomsuser(res127SRG.getString("us.NomsUser"));
				wk.setLibellebranche(res127SRG.getString("br.LibelleBranche"));
				wk.setCaution(res127SRG.getDouble("param.Caution"));
				wk.setFraisdossier(res127SRG.getDouble("param.FraisDossier"));
				wk.setDescription(res127SRG.getString("param.Description"));
				wk.setProvince(res127SRG.getString("br.Province"));
				wk.setNomsconjoint(res127SRG.getString("garant.NomsConjoint"));
				wk.setTauxinteretm(res127SRG.getDouble("param.TauxInteretM"));
				ListeInformationRapportContratGAGEtIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationRapportContratGAGEtIL;
	}

	Statement st127SRGD;
	ResultSet res127SRGD;

	public List<WorkflowEntite> GetListeInformationRapportGarantieDeposerIL(
			String dossier) {
		List<WorkflowEntite> ListeInformationRapportGarantieDeposerIL = new ArrayList<>();
		try {
			st127SRGD = ConnexionBDLocal.getConnexion().createStatement();
			String req = "SELECT g.TypeGarantie, g.Description, g.AnneeFabrication, g.Etat, "
					+ "g.PrixAchat, g.ValeurMarchande, "
					+ "g.ClientGarant, "
					+ "gt.NomG, gt.PostNomG, gt.PrenomG, "
					+ "CONCAT_WS(' ', gt.NomG, gt.PostNomG, gt.PrenomG) AS nomcompletg, "
					+ "gt.NomsConjoint, "
					+ "cli.NomCli,cli.PostNomCli,cli.RaisonSocialPM,cli.PrenomCli, "
					+ "CONCAT_WS(' ', cli.NomCli, cli.PostNomCli, cli.PrenomCli) AS nom_complet, "
					+ "us.NomsUser, "
					+ "SUM(g.ValeurMarchande) AS sommevaleurmarchande "
					+ "FROM clientd AS cli "
					+ "INNER JOIN dossiercredit AS doss ON cli.idclient = doss.IdClientD "
					+ "INNER JOIN garantcreditindividuel AS gt ON doss.NumDossierCredit = gt.NumDossierCre "
					+ "INNER JOIN garantiecreditindividuel AS g ON doss.NumDossierCredit = g.NumDossierCre "
					+ "INNER JOIN assignationdossiercredit AS aff ON aff.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN user AS us ON us.Iduser = aff.IDAnalysteDossierCredit "
					+ "WHERE doss.NumDossierCredit ='"
					+ dossier
					+ "'"
					+ "GROUP BY g.TypeGarantie, g.Description, g.AnneeFabrication, g.Etat, "
					+ "g.PrixAchat, g.ValeurMarchande, g.ClientGarant, "
					+ "gt.NomG, gt.PostNomG, gt.PrenomG, gt.NomsConjoint, "
					+ "cli.NomCli, cli.PostNomCli, cli.PrenomCli, "
					+ "us.NomsUser";
			res127SRGD = st127SRGD.executeQuery(req);
			while (res127SRGD.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomcli(res127SRGD.getString("cli.NomCli"));
				wk.setPostnomcli(res127SRGD.getString("cli.PostNomCli"));
				wk.setPrenomcli(res127SRGD.getString("cli.PrenomCli"));
				String RS = res127SRGD.getString("cli.RaisonSocialPM");
				if (RS.equals("NA")) {
					wk.setNom_complet(res127SRGD.getString("nom_complet"));
				} else {
					wk.setNom_complet(RS);
				}

				wk.setNomg(res127SRGD.getString("gt.NomG"));
				wk.setPostnomg(res127SRGD.getString("gt.PostNomG"));
				wk.setPrenomg(res127SRGD.getString("gt.PrenomG"));
				wk.setNomsuser(res127SRGD.getString("us.NomsUser"));
				wk.setDescription(res127SRGD.getString("g.Description"));
				wk.setNomsconjoint(res127SRGD.getString("gt.NomsConjoint"));
				wk.setTypegarantie(res127SRGD.getString("g.TypeGarantie"));
				wk.setAnneefabrication(res127SRGD.getInt("g.AnneeFabrication"));
				wk.setEtat(res127SRGD.getString("g.Etat"));
				wk.setPrixachat(res127SRGD.getDouble("g.PrixAchat"));
				wk.setValeurmarchande(res127SRGD.getDouble("g.ValeurMarchande"));
				wk.setNomcompletg(res127SRGD.getString("nomcompletg"));
				wk.setSommevaleurmarchande(res127SRGD
						.getDouble("sommevaleurmarchande"));
				wk.setClientgarant(res127SRGD.getString("g.ClientGarant"));
				ListeInformationRapportGarantieDeposerIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationRapportGarantieDeposerIL;
	}

	Statement st127RL;
	ResultSet res127RL;

	public List<WorkflowEntite> GetListeInformationRapportLETTREIL(
			String dossier) {
		List<WorkflowEntite> ListeInformationRapportLETTREIL = new ArrayList<>();
		try {
			st127RL = ConnexionBDLocal.getConnexion().createStatement();
			String req = "SELECT cli.NomCli,cli.RaisonSocialPM,cli.AdrsPM,cli.TelPM,cli.PostNomCli, cli.PrenomCli, "
					+ "CONCAT_WS(' ', cli.NomCli, cli.PostNomCli, cli.PrenomCli) AS nom_complet, "
					+ "doss.MontantDemande, "
					+ "com.MontantCreditValider, com.NbrEcheancierValide, "
					+ "doss.DateDossier, "
					+ "cli.AdresseDomicileCli, "
					+ "us.NomsUser, "
					+ "param.TauxInteretM, param.FraisDossier "
					+ "FROM clientd AS cli "
					+ "INNER JOIN dossiercredit AS doss ON cli.idclient = doss.IdClientD "
					+ "INNER JOIN assignationdossiercredit AS aff ON aff.NumDossierCre = doss.NumDossierCredit "
					+ "INNER JOIN user AS us ON us.Iduser = aff.IDAssignateur "
					+ "INNER JOIN comite AS com ON doss.NumDossierCredit = com.NumDossierCre "
					+ "INNER JOIN paramproduitcredit AS param ON param.Id = com.IDProduitCreditComite "
					+ "WHERE doss.NumDossierCredit = '" + dossier + "' ";
			res127RL = st127RL.executeQuery(req);
			while (res127RL.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomcli(res127RL.getString("cli.NomCli"));
				wk.setPostnomcli(res127RL.getString("cli.PostNomCli"));
				wk.setPrenomcli(res127RL.getString("cli.PrenomCli"));
				String RS = res127RL.getString("cli.RaisonSocialPM");
				if (RS.equals("NA")) {
					wk.setNom_complet(res127RL.getString("nom_complet"));
					wk.setAdressedomicilecli(res127RL
							.getString("cli.AdresseDomicileCli"));
				} else {
					wk.setNom_complet(RS);
					wk.setAdressedomicilecli(res127RL.getString("cli.AdrsPM"));
				}

				wk.setMontantcreditvalider(res127RL
						.getDouble("com.MontantCreditValider"));
				wk.setNbrecheanciervalide(res127RL
						.getInt("com.NbrEcheancierValide"));
				wk.setNomsuser(res127RL.getString("us.NomsUser"));
				wk.setFraisdossier(res127RL.getDouble("param.FraisDossier"));
				wk.setTauxinteretm(res127RL.getDouble("param.TauxInteretM"));
				wk.setDatedossier(res127RL.getString("doss.DateDossier"));
				wk.setMontantdemande(res127RL.getDouble("doss.MontantDemande"));
				ListeInformationRapportLETTREIL.add(wk);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ListeInformationRapportLETTREIL;
	}

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyse(
			String Branche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyse = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser as ca,gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga inner join user us on us.Iduser=gp.PromoteurGroupe inner join branche br on br.IdBranche=us.IdBranche "
					+ "WHERE gp.EtatGroupGL = 'Analyse' "
					+ "AND br.LibelleBranche =  '" + Branche + "'"
					+ "GROUP BY us.NomsUser,gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsuser(rs.getString("ca"));
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyse.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return ListeDossierCreditGLParAgenceENNbrEtVolumeAnalyse;

	}

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComite(
			String Branche) {
		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeComite = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser as ca,gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga inner join user us on us.Iduser=gp.PromoteurGroupe inner join branche br on br.IdBranche=us.IdBranche "
					+ "WHERE gp.EtatGroupGL = 'Comite' "
					+ "AND br.LibelleBranche = '" + Branche + "' "
					+ "GROUP BY us.NomsUser,gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsuser(rs.getString("ca"));
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeComite.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return ListeDossierCreditGLParAgenceENNbrEtVolumeComite;

	}

	public List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminer(
			String Branche) {

		List<WorkflowEntite> ListeDossierCreditGLParAgenceENNbrEtVolumeTerminer = new ArrayList<>();
		Connection cnx = null;
		Statement st = null;
		ResultSet rs = null;

		try {
			cnx = ConnexionBD.getConnexion();

			st = cnx.createStatement(ResultSet.TYPE_FORWARD_ONLY,
					ResultSet.CONCUR_READ_ONLY);

			String req = "SELECT us.NomsUser as ca,gp.EtatGroupGL, "
					+ "SUM(dossgl.PretAccorder) AS vol, "
					+ "COUNT(DISTINCT gp.Id) AS nbr "
					+ "FROM dossiercreditgl dossgl "
					+ "INNER JOIN membregroupe m ON m.IdClientMembre = dossgl.IdMembreGL "
					+ "INNER JOIN groupegl gp ON gp.Id = m.IdGroupeLisanga inner join user us on us.Iduser=gp.PromoteurGroupe inner join branche br on br.IdBranche=us.IdBranche "
					+ "WHERE gp.EtatGroupGL = 'Terminer' "
					+ "AND br.LibelleBranche= '" + Branche + "' "
					+ "GROUP BY us.NomsUser,gp.EtatGroupGL";

			rs = st.executeQuery(req);

			while (rs.next()) {
				WorkflowEntite wk = new WorkflowEntite();
				wk.setNomsuser(rs.getString("ca"));
				wk.setStatutdossieril(rs.getString("EtatGroupGL"));
				wk.setNombre(rs.getLong("nbr"));
				wk.setVolume(rs.getLong("vol"));
				ListeDossierCreditGLParAgenceENNbrEtVolumeTerminer.add(wk);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception ignored) {
			}
			try {
				if (st != null)
					st.close();
			} catch (Exception ignored) {
			}
			ConnexionBD.closeConnection();
		}

		return ListeDossierCreditGLParAgenceENNbrEtVolumeTerminer;

	}

	Statement st1414;
	ResultSet res1414;

	public int GetValeurCapaciteCycle1() {
		int ValeurCapaciteCycle1 = 0;
		try {
			st1414 = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Cycle1 from paramil";
			res1414 = st1414.executeQuery(req);
			while (res1414.next()) {
				ValeurCapaciteCycle1 = res1414.getInt("Cycle1");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ValeurCapaciteCycle1;
	}

	Statement st1414bus;
	ResultSet res1414bus;

	public int GetValeurCapaciteCycle2() {
		int ValeurCapaciteCycle2 = 0;
		try {
			st1414bus = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select Cycle2 from paramil";
			res1414bus = st1414bus.executeQuery(req);
			while (res1414bus.next()) {
				ValeurCapaciteCycle2 = res1414bus.getInt("Cycle2");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ValeurCapaciteCycle2;
	}

	Statement st1414buss;
	ResultSet res1414buss;

	public int GetValeurCapaciteCyclePlus3() {
		int ValeurCapaciteCyclePlus3 = 0;
		try {
			st1414buss = ConnexionBDLocal.getConnexion().createStatement();
			String req = "select CycleSup3 from paramil";
			res1414buss = st1414buss.executeQuery(req);
			while (res1414buss.next()) {
				ValeurCapaciteCyclePlus3 = res1414buss.getInt("CycleSup3");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ValeurCapaciteCyclePlus3;
	}

	Statement st223000010GGKAP;
	ResultSet res223000010GGKAP;

	public int GetIDInfoFinanciereViaIdClientGlEtIdDossierGl(int IdClientGl,
			int IdDossierGL) {
		int IDInfoFinanciere = 0;
		try {
			st223000010GGKAP = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select Id from informationfinanciereclientgl where IdClientGL='"
					+ IdClientGl
					+ "' and IdDossierClientGL='"
					+ IdDossierGL
					+ "'";
			res223000010GGKAP = st223000010GGKAP.executeQuery(req);
			while (res223000010GGKAP.next()) {
				IDInfoFinanciere = res223000010GGKAP.getInt("Id");
			}
		} catch (Exception ex) {
		}
		return IDInfoFinanciere;
	}

	Statement st223000010GGKAP1;
	ResultSet res223000010GGKAP1;

	public double GetIDInfoMontantEpargneAlaReunionViaIdClientGlEtIdDossierGl(
			int IdClientGl, int IdDossierGL) {
		double EpargneGL = 0;
		try {
			st223000010GGKAP1 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "select EpargneGL from informationfinanciereclientgl where IdClientGL='"
					+ IdClientGl
					+ "' and IdDossierClientGL='"
					+ IdDossierGL
					+ "'";
			res223000010GGKAP1 = st223000010GGKAP1.executeQuery(req);
			while (res223000010GGKAP1.next()) {
				EpargneGL = res223000010GGKAP1.getDouble("EpargneGL");
			}
		} catch (Exception ex) {
		}
		return EpargneGL;
	}

	Statement st24752000Modif101;

	public int UpdateInfoFinancireClientGLApresModificationDemandeGL(int ID,
			double TotalApayerGL, double EpargneGL, double RemboursementGL,
			double TotalRemboursementGL, double EpargneBruteGL,
			double MontantPretGL) {
		int NbrLgne = 0;
		try {
			st24752000Modif101 = ConnexionBDLocal.getConnexion()
					.createStatement();
			String req = "update informationfinanciereclientgl set TotalApayerGL='"
					+ TotalApayerGL
					+ "',EpargneGL='"
					+ EpargneGL
					+ "',RemboursementGL='"
					+ RemboursementGL
					+ "',TotalRemboursementGL='"
					+ TotalRemboursementGL
					+ "',EpargneBruteGL='"
					+ EpargneBruteGL
					+ "',MontantPretGL='"
					+ MontantPretGL
					+ "' where Id='"
					+ ID
					+ "'";
			NbrLgne = st24752000Modif101.executeUpdate(req);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NbrLgne;
	}

}
