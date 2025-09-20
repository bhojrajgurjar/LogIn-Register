package com.company.connection;

public interface DbDetails {
	String URL = System.getenv("DB_URL");
	String USERNAME = System.getenv("DB_USER");
	String PASSWORD = System.getenv("DB_PASS");
	String DBDRIVER = "com.mysql.cj.jdbc.Driver";

}
