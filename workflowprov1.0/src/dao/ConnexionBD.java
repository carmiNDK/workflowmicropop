package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnexionBD {
	private static final ThreadLocal<Connection> threadConnection = new ThreadLocal<>();

	// worflowcredit,BaseTestworflowcredit,localhost;192.168.60.45
	private static final String URL = "jdbc:mysql://instancebd-micropopsa.cxesweums8f0.eu-west-3.rds.amazonaws.com:3306/worflowcredit?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
	// private static final String URL =
	// "jdbc:mysql://instancebd-micropopsa.cxesweums8f0.eu-west-3.rds.amazonaws.com:3306/worflowcredit"
	// + "?useUnicode=true&characterEncoding=utf8"
	// + "&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
	private static final String USER = "admin";
	private static final String PWD = "Micropop2026++";

	// String user = "root";String pwd = "Micropop@2025"; pour local
	// String user = "erp";String pwd = "Micropop@2024"; pour local serveur
	// mcpop
	static {
		try {
			// Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver"); // pour version recente
			// de mysql
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public static Connection getConnexion() {
		Connection cnx = threadConnection.get();

		try {

			if (cnx == null || cnx.isClosed()) {
				cnx = DriverManager.getConnection(URL, USER, PWD);
				threadConnection.set(cnx);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(" Connexion réussie !");
		return cnx;
	}

	// OPTIONNEL : à appeler à la fin du thread
	public static void closeConnection() {
		try {
			Connection cnx = threadConnection.get();
			if (cnx != null && !cnx.isClosed()) {
				cnx.close();
			}
			threadConnection.remove();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
