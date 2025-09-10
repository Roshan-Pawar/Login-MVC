package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

	String url = "jdbc:mysql://localhost:3306/roshan_jdbc", user = "root", pass = "root", q;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs;

	public LoginDao() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pass);
	}

	public boolean validate(Login bean) throws SQLException {
		q = "SELECT * FROM login WHERE username = ? AND password = ?";

		ps = con.prepareStatement(q);

		ps.setString(1, bean.getUserName());
		ps.setString(2, bean.getPassword());

		rs = ps.executeQuery();

		if (rs.next())
			return true;
		else
			return false;

	}
	
	public boolean createUser(Login bean) throws SQLException {
		q = "INSERT INTO login VALUES(?, ?)";
		
		ps = con.prepareStatement(q);
		
		ps.setString(1, bean.getUserName());
		ps.setString(2, bean.getPassword());
		
		int  r = ps.executeUpdate();
		
		if(r >0)
			return true;
		else 
			return false;
	}

}
