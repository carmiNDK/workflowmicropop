package service;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class ConnexionBd {
	private static Connection cnx = null;

	private ConnexionBd() {

		String url = "jdbc:mysql://localhost:3306/worflowcredit";
		String user = "root";
		String pwd = "Micropop@2025";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = (Connection) DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnexion() {
		new ConnexionBd();
		return cnx;
	}
}
