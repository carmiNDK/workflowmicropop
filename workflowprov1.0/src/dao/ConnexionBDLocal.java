package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnexionBDLocal {
	private static Connection cnx = null;

	private ConnexionBDLocal() {
		// String url =
		// "jdbc:mysql://localhost:3306/worflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		// String user = "root";
		// String pwd = "Micropop@2025";
		// basetestworflowcredit
		// worflowcredit
		// String url =
		// "jdbc:mysql://192.168.60.45:3306/BaseTestworflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		String url = "jdbc:mysql://192.168.60.45:3306/worflowcredit?useUnicode=true&characterEncoding=utf8&autoReconnect=true&connectTimeout=5000&socketTimeout=120000";
		String user = "erp";
		String pwd = "Micropop@2024";
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
