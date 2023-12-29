package form.com.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import form.com.DBConnection.DBConnection;
import form.com.model.User;
import jakarta.servlet.http.HttpSession;

public class UserDaos {
	public List<User> getAllUser(){
		List<User>  users = new ArrayList<>();
		
		String query = "select * from users WHERE role!=1 ORDER BY id DESC";
		Connection con = DBConnection.getConnection().getCon();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
                
				users.add(new User(
						rs.getInt("id"),
						rs.getString("username"),
						rs.getString("email"),
						rs.getString("password"),
						rs.getTimestamp("created_at")
						
						));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return users;
	}
	 

}
