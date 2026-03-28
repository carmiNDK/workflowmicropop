package com.micropop.api;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnexionBD {
	private static Connection cnx = null;

	private ConnexionBD() {

		String url = "jdbc:mysql://localhost:3306/worflowcredit";
		String user = "root";
		String pwd = "Micropop@2025";

		try {
			//Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnexion() {
		new ConnexionBD();
		return cnx;
	}
}
