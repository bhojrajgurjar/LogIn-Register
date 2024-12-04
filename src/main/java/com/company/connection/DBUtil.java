package com.company.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil implements DbDetails {
	static {
		try {
			Class.forName(DBDRIVER);
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException{
		System.out.println("Connection build ho rha he ");
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
}  
