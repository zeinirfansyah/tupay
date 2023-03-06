package tupayproject;

import java.sql.*;

/**
 * Kelas untuk mempermudah pemanggilan MySQL JDBC Driver.
 */
public class DBConnection {
	/**
	 * Port 8001 digunakan untuk database yang berada dalam Docker.
	 * Anda dapat menggantinya menjadi 3306 (Port default) jika Anda tidak ingin menggunakan Docker sebagai tempat database.
	 */
	public static Connection connectDB(String port) throws SQLException {
		String DriverUrl = "jdbc:mysql://localhost:" + 3306 + "/akademik";
		return DriverManager.getConnection(DriverUrl, "root", "");
	}
}
