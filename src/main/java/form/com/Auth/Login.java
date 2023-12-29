package form.com.Auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import form.com.DBConnection.DBConnection;
import form.com.daos.UserDaos;
import form.com.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		UserDaos dao = new UserDaos();
		List<User> users = dao.getAllUser();
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String query = "select * from users where email=? and password=?";
		Connection con = DBConnection.getConnection().getCon();
		PreparedStatement stmt = null;
		ResultSet rs= null;
		RequestDispatcher dispatcher = null;
		HttpSession session = request.getSession();
		
		try {
			stmt = con.prepareStatement(query);
			
			stmt.setString(1, email);
			stmt.setString(2, password);
			
			rs = stmt.executeQuery();
			if(rs.next()) {
				 
				session.setAttribute("username",rs.getString("username"));
				session.setAttribute("password", password);
		         dispatcher = request.getRequestDispatcher("admin/dashboard.jsp");
		           
				dispatcher.forward(request, response);
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
