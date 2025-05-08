package com.jsp.servlet.cardb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCar")
public class AddCarServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("carId"));
		String model = req.getParameter("carModel");
		String brand = req.getParameter("carBrand");
		String colour = req.getParameter("carColour");
		int price = Integer.parseInt(req.getParameter("carPrice"));

		// JDBC LOGIC
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("INSERT INTO car VALUES(?,?,?,?,?)");
			pst.setInt(1, id);
			pst.setString(2, model);
			pst.setString(3, brand);
			pst.setString(4, colour);
			pst.setInt(5, price);
			pst.executeUpdate();

			resp.sendRedirect("index.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
