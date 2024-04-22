package controller.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.database.DBController;
import model.UserModel;
import util.StringUtils;
import util.ValidationUtil;

/**
 * Servlet implementation class RegisterUserServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { StringUtils.SERVLET_URL_REGISTER })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final DBController dbController;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterUserServlet() {
		this.dbController = new DBController();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Extract user information from request parameters
		String username = request.getParameter(StringUtils.USERNAME);
		String phone = request.getParameter(StringUtils.PHONE_NUMBER);
		String email = request.getParameter(StringUtils.EMAIL);
		String password = request.getParameter(StringUtils.PASSWORD);
		String gender = request.getParameter(StringUtils.GENDER);
		String image = request.getParameter(StringUtils.USER_PHOTO);

		// Create a UserModel object to hold user information
		UserModel user = new UserModel(username, phone, email, password, gender, image);

		// Validate the user information
		if(!ValidationUtil.isTextOnly(username) ||
				!ValidationUtil.isEmail(email) ||
				!ValidationUtil.isNumbersOnly(phone) ||
				!ValidationUtil.isGenderMatches(gender)) {
			request.setAttribute(StringUtils.MESSAGE_ERROR, StringUtils.MESSAGE_ERROR_INCORRECT_DATA);
			request.getRequestDispatcher(StringUtils.PAGE_URL_REGISTER).forward(request, response);
		}

		// Call DBController to register the student
		int result = dbController.registerUser(user);

	}

}
