package form.com.daos;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import form.com.DBConnection.DBConnection;
import form.com.model.Posts;

public class PostDaos {
	public List<Posts> getAllPost(){
		List<Posts>  posts = new ArrayList<>();
				
				String query = "select * from posts ORDER BY id DESC";
				Connection con = DBConnection.getConnection().getCon();
				PreparedStatement stmt = null;
				ResultSet rs = null;
				try {
					stmt = con.prepareStatement(query);
					rs = stmt.executeQuery();
					
					while(rs.next()) {
		                
						posts.add(new Posts(
								rs.getInt("id"),
								rs.getString("title"),
								rs.getString("description"),
								rs.getString("image"),
								rs.getTimestamp("created_at")
								
								));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return posts;
				
			}
	
	
	public static Posts getPostById(int postId) {
		String query = "SELECT * FROM posts WHERE id = ?";
		Connection con = DBConnection.getConnection().getCon();
		PreparedStatement stmt = null;
		ResultSet rs = null;
        Posts post = null;

        try {
            
        	con = DBConnection.getConnection().getCon();
            stmt = con.prepareStatement(query);
            stmt.setInt(1, postId);

            rs = stmt.executeQuery();

            if (rs.next()) {
               post = new Posts();
                post.setId(rs.getInt("id"));
                post.setTitle(rs.getString("title"));
                post.setDescription(rs.getString("description"));
                post.setImage(rs.getString("image"));
                post.setCreated_at(rs.getTimestamp("created_at"));
            }else {
            	return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
      
        return post;
    }
	
	
	
	public static boolean createPost(Posts post) {
	    boolean isSuccess = false;
	    String sql = "INSERT INTO posts (title, description, image) VALUES (?, ?, ?)";
	    
	    Connection con = DBConnection.getConnection().getCon();
	    PreparedStatement stmt = null;
	    
	    try {
	        stmt = con.prepareStatement(sql);
	        stmt.setString(1, post.getTitle());
	        stmt.setString(2, post.getDescription());
	        stmt.setString(3, post.getImage());

	        int result = stmt.executeUpdate();
	        
	        if (result == 1) {
	            isSuccess = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (stmt != null) stmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return isSuccess;
	}
	
	
	public static boolean updatePost(Posts post) {
	    boolean isSuccess = false;
	    String sql = "UPDATE posts SET title = ?, description = ?, image = ? WHERE id = ?";
	    
	    Connection con = DBConnection.getConnection().getCon();
	    PreparedStatement stmt = null;
	    
	    try {
	        stmt = con.prepareStatement(sql);
	        stmt.setString(1, post.getTitle());
	        stmt.setString(2, post.getDescription());
	        stmt.setString(3, post.getImage());
	        stmt.setInt(4, post.getId());

	        int result = stmt.executeUpdate();
	        
	        if (result == 1) {
	            isSuccess = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (stmt != null) stmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return isSuccess;
	}
	
	public static boolean deletePost(int id) {
	    boolean isSuccess = false;
	    String sql = "DELETE FROM posts WHERE id = ?";
	    
	    Connection con = DBConnection.getConnection().getCon();
	    PreparedStatement stmt = null;
	    
	    try {
	        stmt = con.prepareStatement(sql);
	        stmt.setInt(1, id);

	        int result = stmt.executeUpdate();
	        
	        if (result == 1) {
	            isSuccess = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (stmt != null) stmt.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return isSuccess;
	}




}
