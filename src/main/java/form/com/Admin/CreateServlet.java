package form.com.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

/**
 * Servlet implementation class CreateServlet
 */
@WebServlet("/AddPost")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
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
		String title = request.getParameter("title");
        String content = request.getParameter("description");
        
//        Part imagePart = request.getPart("image");
        
//        if (title.isEmpty() || content.isEmpty() || imagePart.getSize() == 0) {
//            // Handle validation errors
//            response.sendRedirect("addPost.jsp?error=Some fields are empty");
//            return;
//        }
//
//        // Validate image type
//        String contentType = imagePart.getContentType();
//        if (!contentType.equals("image/png") && !contentType.equals("image/jpg") && !contentType.equals("image/jpeg")) {
//            // Handle invalid image type
//            response.sendRedirect("addPost.jsp?error=Image must be png, jpg, or jpeg");
//            return;
//        }
//
//        // Save image to server
//        try (InputStream input = imagePart.getInputStream()) {
//            String fileName = "images/" + imagePart.getSubmittedFileName();
//            Path imagePath = Paths.get(getServletContext().getRealPath(""), fileName);
//            Files.copy(input, imagePath, StandardCopyOption.REPLACE_EXISTING);
//        }

        
    
	}

}
