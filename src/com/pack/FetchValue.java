package com.pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.DatabaseConnector;



/**
 * Servlet implementation class FetchValue
 */
@WebServlet("/FetchValue")
public class FetchValue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String uname = request.getParameter("name");
		String mail = request.getParameter("mail");
		String table = request.getParameter("user");
		String stable = request.getParameter("stable");
		String center = request.getParameter("center");
		
		try {
			
			Connection con = DatabaseConnector.getConnector();
			PreparedStatement ps = con.prepareStatement("select * from "+stable+" where name='"+uname+"' and email='"+mail+"'");
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
			
				out.println("Already attempt");
				
			}else {
				
				
				request.setAttribute("uname", uname);
				request.setAttribute("mail", mail);
				request.setAttribute("table", table);
				request.setAttribute("stable", stable);
				request.setAttribute("center", center);
				
				RequestDispatcher res = request.getRequestDispatcher("fetchvalue.jsp");
				res.forward(request, response);
				
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			out.println("some thing is wrong");
		}
		
		
			
			
		
		
	}

}
