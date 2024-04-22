package controller.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.StringUtils;
import model.UserModel;

public class DBController {
	public Connection getConnection() throws SQLException, ClassNotFoundException {

		// Load the JDBC driver class specified by the StringUtils.DRIVER_NAME constant
		Class.forName(StringUtils.DRIVER_NAME);

		// Create a connection to the database using the provided credentials
		return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USERNAME,
				StringUtils.LOCALHOST_PASSWORD);
	}

	public int registerUser(UserModel user) {
	    try (Connection connection = getConnection()) {
			PreparedStatement stmt = getConnection()
			.prepareStatement(StringUtils.QUERY_REGISTER_USER);

		// Set the user information in the prepared statement
		stmt.setString(4, user.getGender());
		stmt.setString(5, user.getEmail());
		stmt.setString(6, user.getPhone());
		stmt.setString(8, user.getUsername());
		stmt.setString(9,  user.getPassword());
		stmt.setString(10, user.getImageUrlFromPart());
	
		// Execute the update statement and store the number of affected rows
		int result = stmt.executeUpdate();
	
		// Check if the update was successful (i.e., at least one row affected)
		if (result > 0) {
			return 1; // Registration successful
		} else {
			return 0; // Registration failed (no rows affected)
		}

	    } 
	    catch (ClassNotFoundException | SQLException ex) {
		// Print the stack trace for debugging purposes
		ex.printStackTrace();
		return -1; // Internal error
	    }
	}
	
}
