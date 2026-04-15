package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnexionBDLocal {
	private static Connection cnx = null;

	private ConnexionBDLocal() {
		String url = "jdbc:mysql://instancebd-micropopsa.cxesweums8f0.eu-west-3.rds.amazonaws.com:3306/worflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		String user = "admin";
		String pwd = "Micropop2026++";
		// basetestworflowcredit
		// worflowcredit
		// String url =
		// "jdbc:mysql://192.168.60.45:3306/BaseTestworflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		// String url =
		// "jdbc:mysql://192.168.60.45:3306/worflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		// String user = "erp";
		// String pwd = "Micropop@2024";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnx = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnexion() {
		new ConnexionBDLocal();
		return cnx;
	}
}
