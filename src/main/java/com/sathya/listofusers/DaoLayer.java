package com.sathya.listofusers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sathya.login.TestConnection;



public class DaoLayer {

	public static ResultSet listOfUser() {
		ResultSet set = null;
		Connection connection = TestConnection.createConnection();
		try {
			Statement statement = connection.createStatement();
			set =	 statement.executeQuery("select username,password,gender,email,country,finalqual,finaltech,finaladdr,comments from user_details");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return set;
	}

}
