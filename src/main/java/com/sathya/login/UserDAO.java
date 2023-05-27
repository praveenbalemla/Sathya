package com.sathya.login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class UserDAO {

	
	public static boolean checkLogin(String email, String password) {

		boolean result = false;
		try {
			Connection connection = TestConnection.createConnection();
			Statement statement = connection.createStatement();
			ResultSet set = statement.executeQuery("select email,password from user_details where email='"+email+"'and password='"+password+"'");
			
			  if (set.next()) { result = true; }

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	
	
	
	
	
}
