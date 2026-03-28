package com.micropop.api;

import java.sql.ResultSet;
import java.sql.Statement;

public class Dao {
	Statement st;
	ResultSet res;

	public String GetNomClient(int idclient) {
		String NomClient = "";
		try {
			st = ConnexionBD.getConnexion().createStatement();
			String req = "select NomCli from clientd where idclient='" + idclient + "'";
			res = st.executeQuery(req);
			while (res.next()) {
				NomClient = res.getString("NomCli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return NomClient;
	}

	Statement st2;
	ResultSet res2;

	public String GetPostNomClient(int idclient) {
		String PostNomClient = "";
		try {
			st2 = ConnexionBD.getConnexion().createStatement();
			String req = "select PostNomCli from clientd where idclient='" + idclient + "'";
			res2 = st2.executeQuery(req);
			while (res2.next()) {
				PostNomClient = res2.getString("PostNomCli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return PostNomClient;
	}

	Statement st3;
	ResultSet res3;

	public String GetPreNomClient(int idclient) {
		String PreNomClient = "";
		try {
			st3 = ConnexionBD.getConnexion().createStatement();
			String req = "select PrenomCli from clientd where idclient='" + idclient + "'";
			res3 = st3.executeQuery(req);
			while (res3.next()) {
				PreNomClient = res3.getString("PrenomCli");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return PreNomClient;
	}

	Statement st4;
	ResultSet res4;

	public String GetPhotos(int idclient) {
		String PreNomClient = "";
		try {
			st4 = ConnexionBD.getConnexion().createStatement();
			String req = "select photos from clientd where idclient='" + idclient + "'";
			res4 = st4.executeQuery(req);
			while (res4.next()) {
				PreNomClient = res4.getString("photos");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return PreNomClient;
	}
}
