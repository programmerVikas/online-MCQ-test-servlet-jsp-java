<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.DatabaseConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="img/cap.ico" rel="icon" />
<title>fecthstudentvalue</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

</head>
<body
	style="background-image: linear-gradient(to right, #74ebd5 0%, #9face6 100%); height: auto">
	<%
		String uname = request.getParameter("name");
		String mail = request.getParameter("mail");
		String roll = request.getParameter("roll");
		String table = request.getParameter("user");
		String stable = request.getParameter("stable");
		String center = request.getParameter("center");

		try {

			Connection con = DatabaseConnector.getConnector();
			PreparedStatement ps = con.prepareStatement("select * from " + stable + " where email='" + mail + "'");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
	%>

	<div class="container py-5 mt-5 ">
		<div class="card-header py-5 text-center border border-primary"
			style="background-image: linear-gradient(to top, #ff0844 0%, #ffb199 100%); box-shadow: 10px 10px 10px black; border-radius: 10px;">
			<h4>
				?? SORRY
				<%=uname%>
				You are already attempt this Quiz Test, so now you are not able to
				this exam.
			</h4>
			<div class="mt-5">
				<div class="" style="display: inline;">
					<a href="home.jsp" class="btn btn-danger">Go to Home</a>
				</div>
				<div class="ml-4" style="display: inline;">
					<a href="studentAccessTable.jsp" class="btn btn-danger">Back</a>
				</div>
			</div>
		</div>
	</div>

	<%
		} else {

				request.setAttribute("uname", uname);
				request.setAttribute("mail", mail);
				request.setAttribute("roll", roll);
				request.setAttribute("table", table);
				request.setAttribute("stable", stable);
				request.setAttribute("center", center);

				RequestDispatcher res = request.getRequestDispatcher("fetchvalue.jsp");
				res.forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
	%>

	<div class=" container text-center text-light img">

		<div class=" container row text-center mt-5">
			<div
				class=" col-lg-6 offset-3 col-md-6 col-sm-6 offset-sm-3 text-dark text-center align-self-center">
				<div class="card-1 card mr-5">
					<img src="img/2.jpg" class="card-img-top "
						alt="Some thing went Wrong..">
					<div class="card-body">
						<h5 class="card-title">Fill Carefully your student table-name
							which is privided by your author..</h5>
						<a href="studentAccessTable.jsp" class="btn btn-primary">Back</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
</body>
</html>