package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionADbanking {

	// ozone :10.10.8.251
	// Lushi : 10.10.9.252
	// kabisa : 10.10.0.198
	// private static final String URL =
	// "jdbc:postgresql://10.10.9.252/adbanking";
	// private static final String USER = "adbanking";
	// private static final String PWD = "adbanking";

	private static final String URL = "jdbc:postgresql://192.168.60.42/adbanking";
	private static final String USER = "adbanking";
	private static final String PWD = "ADBMi20CroPoP24";

	public static Connection getConnexion() throws SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}

		return DriverManager.getConnection(URL, USER, PWD);
	}

}
