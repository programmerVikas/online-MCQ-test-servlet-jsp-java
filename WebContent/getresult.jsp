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
	content="width=device-width, initial-scale=1s, shrink-to-fit=no">
 <link href="img/cap.ico" rel="icon" />
<title>getresult</title>

<!-- nav bar *******************-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- nav bar Ending *******************-->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<style type="text/css">
.td {
	width: 30px;
}
</style>
</head>
<body
	style="background-image: linear-gradient(to top, #a18cd1 0%, #fbc2eb 100%); height: auto;
	background-repeat: no-repeat;
	">

	<%
		String stable = request.getParameter("stable");

		try {
			Connection con = DatabaseConnector.getConnector();

			PreparedStatement ps = con.prepareStatement(
					"select name,roll,result,examDate from " + stable);
			ResultSet rs = ps.executeQuery();
	%>

	<!-- nav bar is starting -->

	<nav class="navbar navbar-expand-sm navbar-dark bg-dark ">
	<div class="container">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse text-left"
			id="navbarTogglerDemo01">
			<h4 class="text-light">ExamHall.com</h4>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="home.jsp">Home</a></li>

				<li class="nav-item px-2"><a
					class="nav-link bg-dark text-light " href="viewresult.jsp">Back</a>
				</li>

			</ul>

		</div>
	</div>
	</nav>
	<!-- nav bar is Ending -->

	<div class="container">
		<div class="text-center bg-danger mt-3 rounded">
			<h1>Result Sheet</h1>
		</div>
	</div>
	<div class="container table-responsive mt-5 ">
		<table class="table table-bordered text-light">
			<thead>
				<tr class="bg-primary">

					
					<th scope="col" class="text-center">Student Name</th>
					<th scope="col" class="text-center">Roll No.</th>					
					<th scope="col" class="text-center">Marks</th>
					<th scope="col" class="text-center">Date/Time</th>
				</tr>
			</thead>
		</table>
	</div>
	<%
		while (rs.next()) {
	%>
	<div class="container table-responsive ">
		<table class="table table-bordered table-dark container">
			<tbody>
				<tr>

					
					<td class="text-center td"><%=rs.getString(1)%></td>
					<td class="text-center td"><%=rs.getString(2)%></td>
					<td class="text-center td"><%=rs.getString(3)%></td>
					<td class="text-center td"><%=rs.getString(4)%></td>
				</tr>
			</tbody>
		</table>
	</div>

	<%
		}
	%>
	<div class="card-footer text-center bg-dark text-light">
		<h2>Thanku you....</h2>
	</div>
	<%
		} catch (Exception e) {
			e.printStackTrace();
			%>
				<div class="container text-center text-light">
					<h4>Fill Carefully your student table-name
						which is provided by your author.. ?????</h4>
				</div>
			<%
			RequestDispatcher rs1 = request.getRequestDispatcher("viewresult.jsp");
			rs1.include(request, response);
		}
	%>




</body>
</html>