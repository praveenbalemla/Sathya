package com.sathya.login;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class TestConnection {

	public static Connection createConnection() {
		Connection connection = null;
		try {
			Properties properties = new Properties();
			// Load the properties file
			properties.load(new FileInputStream("C:\\Web apps\\AdvancedJava Project\\connection-info.properties"));

			// Get the data from properties file

			Class.forName(properties.getProperty("driver"));// error
			connection = DriverManager.getConnection(properties.getProperty("url"), properties.getProperty("username"),
					properties.getProperty("password"));
			System.out.println(connection);

		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
