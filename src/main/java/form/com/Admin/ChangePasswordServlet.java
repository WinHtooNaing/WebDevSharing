package form.com.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import form.com.DBConnection.DBConnection;
import form.com.model.User;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	        String newPassword = request.getParameter("new-password");
	        String confirmNewPassword = request.getParameter("re-new-password");
	        if (newPassword.equals(confirmNewPassword)) {
	        	if (updatePassword( newPassword)) {
		            
		            response.sendRedirect("Login.jsp");
		        }
	           
	        }
	        
	    }

	    private boolean updatePassword( String newPassword) {
	        
	        try (Connection connection = DBConnection.getConnection().getCon() ) {
	            String updateQuery = "UPDATE users SET password = ? WHERE id =1";
	            try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {
	                preparedStatement.setString(1, newPassword);
	                int affectedRows = preparedStatement.executeUpdate();
	                return affectedRows > 0;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	}

}
