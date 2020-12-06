
package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnector {
	
	
	static Connection con = null;
	public static Connection getConnector() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
	}

}
