package com.pack;

import java.io.IOException;
import java.io.PrintWriter;
/*import java.io.PrintWriter;*/
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.DatabaseConnector;

/**
 * Servlet implementation class TableCreation
 */
@WebServlet("/TableCreation")
public class TableCreation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		
		String username = request.getParameter("user");
		String email = request.getParameter("mail");
		String table = request.getParameter("company");
		String studenttable = request.getParameter("student");
		/*String password = request.getParameter("pin");*/

		String ques1 = request.getParameter("ques1");
		String a1 = request.getParameter("a1");
		String b1 = request.getParameter("b1");
		String c1 = request.getParameter("c1");
		String d1 = request.getParameter("d1");

		String ques2 = request.getParameter("ques2");
		String a2 = request.getParameter("a2");
		String b2 = request.getParameter("b2");
		String c2 = request.getParameter("c2");
		String d2 = request.getParameter("d2");

		String ques3 = request.getParameter("ques3");
		String a3 = request.getParameter("a3");
		String b3 = request.getParameter("b3");
		String c3 = request.getParameter("c3");
		String d3 = request.getParameter("d3");

		String ques4 = request.getParameter("ques4");
		String a4 = request.getParameter("a4");
		String b4 = request.getParameter("b4");
		String c4 = request.getParameter("c4");
		String d4 = request.getParameter("d4");

		String ques5 = request.getParameter("ques5");
		String a5 = request.getParameter("a5");
		String b5 = request.getParameter("b5");
		String c5 = request.getParameter("c5");
		String d5 = request.getParameter("d5");

		String ques6 = request.getParameter("ques6");
		String a6 = request.getParameter("a6");
		String b6 = request.getParameter("b6");
		String c6 = request.getParameter("c6");
		String d6 = request.getParameter("d6");

		String ques7 = request.getParameter("ques7");
		String a7 = request.getParameter("a7");
		String b7 = request.getParameter("b7");
		String c7 = request.getParameter("c7");
		String d7 = request.getParameter("d7");

		String ques8 = request.getParameter("ques8");
		String a8 = request.getParameter("a8");
		String b8 = request.getParameter("b8");
		String c8 = request.getParameter("c8");
		String d8 = request.getParameter("d8");

		String ques9 = request.getParameter("ques9");
		String a9 = request.getParameter("a9");
		String b9 = request.getParameter("b9");
		String c9 = request.getParameter("c9");
		String d9 = request.getParameter("d9");

		String ques10 = request.getParameter("ques10");
		String a10 = request.getParameter("a10");
		String b10 = request.getParameter("b10");
		String c10 = request.getParameter("c10");
		String d10 = request.getParameter("d10");

		/*
		 * ################################################ GET ANSWER HERE--
		 * ########################################################
		 */

		String e1 = request.getParameter("e1");
		String e2 = request.getParameter("e2");
		String e3 = request.getParameter("e3");
		String e4 = request.getParameter("e4");
		String e5 = request.getParameter("e5");

		String e6 = request.getParameter("e6");
		String e7 = request.getParameter("e7");
		String e8 = request.getParameter("e8");
		String e9 = request.getParameter("e9");
		String e10 = request.getParameter("e10");

		try {

			Connection con = DatabaseConnector.getConnector();
			PreparedStatement pstmt1 = con.prepareStatement("create table " + studenttable+" (name varchar(100),email varchar(100) UNIQUE,roll varchar(100),result varchar(100),examDate datetime)");
		

			PreparedStatement pstmt = con.prepareStatement("create table " + table
					+ "(name varchar(200),email varchar(200) UNIQUE,"
					+ "q1 varchar(1000),oa1 varchar(500),ob1 varchar(500),oc1 varchar(500),od1 varchar(500),"
					+ "q2 varchar(1000),oa2 varchar(500),ob2 varchar(500),oc2 varchar(500),od2 varchar(500),"
					+ "q3 varchar(1000),oa3 varchar(500),ob3 varchar(500),oc3 varchar(500),od3 varchar(500),"
					+ "q4 varchar(1000),oa4 varchar(500),ob4 varchar(500),oc4 varchar(500),od4 varchar(500),"
					+ "q5 varchar(1000),oa5 varchar(500),ob5 varchar(500),oc5 varchar(500),od5 varchar(500),"
					+ "q6 varchar(1000),oa6 varchar(500),ob6 varchar(500),oc6 varchar(500),od6 varchar(500),"
					+ "q7 varchar(1000),oa7 varchar(500),ob7 varchar(500),oc7 varchar(500),od7 varchar(500),"
					+ "q8 varchar(1000),oa8 varchar(500),ob8 varchar(500),oc8 varchar(500),od8 varchar(500),"
					+ "q9 varchar(1000),oa9 varchar(500),ob9 varchar(500),oc9 varchar(500),od9 varchar(500),"
					+ "q10 varchar(1000),oa10 varchar(500),ob10 varchar(500),oc10 varchar(500),od10 varchar(500),"
					+ "oe1 varchar(50),oe2 varchar(50),oe3 varchar(50),oe4 varchar(50),oe5 varchar(50),"
					+ "oe6 varchar(50),oe7 varchar(50),oe8 varchar(50),oe9 varchar(50),oe10 varchar(50),comp varchar(100),examDate datetime)");
			
			pstmt.executeUpdate();
			pstmt1.executeUpdate();
			
			
			
			PreparedStatement ps = con.prepareStatement("insert into "+table+" values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
					+ ",?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())");
			
			ps.setString(1, username);
			ps.setString(2, email);
			
			
			/*question is started --------###############################################################*/
			
			ps.setString(3, ques1);
			ps.setString(4, a1);
			ps.setString(5, b1);
			ps.setString(6, c1);
			ps.setString(7, d1);
			
			ps.setString(8, ques2);
			ps.setString(9, a2);
			ps.setString(10, b2);
			ps.setString(11, c2);
			ps.setString(12, d2);
			
			ps.setString(13, ques3);
			ps.setString(14, a3);
			ps.setString(15, b3);
			ps.setString(16, c3);
			ps.setString(17, d3);
			
			ps.setString(18, ques4);
			ps.setString(19, a4);
			ps.setString(20, b4);
			ps.setString(21, c4);
			ps.setString(22, d4);
			
			ps.setString(23, ques5);
			ps.setString(24, a5);
			ps.setString(25, b5);
			ps.setString(26, c5);
			ps.setString(27, d5);
			
			ps.setString(28, ques6);
			ps.setString(29, a6);
			ps.setString(30, b6);
			ps.setString(31, c6);
			ps.setString(32, d6);
			
			ps.setString(33, ques7);
			ps.setString(34, a7);
			ps.setString(35, b7);
			ps.setString(36, c7);
			ps.setString(37, d7);
			
			ps.setString(38, ques8);
			ps.setString(39, a8);
			ps.setString(40, b8);
			ps.setString(41, c8);
			ps.setString(42, d8);
			
			ps.setString(43, ques9);
			ps.setString(44, a9);
			ps.setString(45, b9);
			ps.setString(46, c9);
			ps.setString(47, d9);
			
			ps.setString(48, ques10);
			ps.setString(49, a10);
			ps.setString(50, b10);
			ps.setString(51, c10);
			ps.setString(52, d10);
			
		/*	ANSWER IS INSERTED------------------------------------------------------------*/
			
			ps.setString(53, e1);
			ps.setString(54, e2);
			ps.setString(55, e3);
			ps.setString(56, e4);
			ps.setString(57, e5);
			
			ps.setString(58, e6);
			ps.setString(59, e7);
			ps.setString(60, e8);
			ps.setString(61, e9);
			ps.setString(62, e10);
			
			ps.setString(63, studenttable);
			
			ps.executeUpdate();
			
			con.close();
			
			out.println("<h5 color='white'> if you want to check your Question paper then fill your details");
		
			out.println("</h5>");
			RequestDispatcher rs = request.getRequestDispatcher("studentAccessTable.jsp");
			rs.include(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			out.println("<h5> Sorry");
			out.println(e.getMessage());
			out.println("</h5>");
			RequestDispatcher rs = request.getRequestDispatcher("createQues.jsp");
			rs.include(request, response);
		}
		
		
		
		
		
		
	

	}

}
