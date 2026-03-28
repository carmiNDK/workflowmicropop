package service;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Dao {
	Statement st;
	ResultSet res;

	public Client GetInformationClient(int idclient) {
		Client InformationClient = new Client();
		try {
			st = ConnexionBd.getConnexion().createStatement();
			String req = "select NomCli,PostNomCli,PrenomCli,photos from clientd where idclient='"
					+ idclient + "'";
			res = st.executeQuery(req);
			while (res.next()) {
				InformationClient.setNomclient(res.getString("NomCli"));
				InformationClient.setPostnomclient(res.getString("PostNomCli"));
				InformationClient.setPrenomclient(res.getString("PrenomCli"));
				InformationClient.setPhotoclient(res.getString("photos"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return InformationClient;
	}

}
